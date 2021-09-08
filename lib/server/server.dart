import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:ebc_dart/block_chain/block_chain.dart';
import 'package:ebc_dart/server/mutex.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_router/shelf_router.dart' as shelf_router;
import 'package:shelf_static/shelf_static.dart' as shelf_static;

class EbcServer {
  final mutex = Mutex();
  final int port;
  final BlockChain blockChain;

  EbcServer({required this.port, required this.blockChain});

  Future<void> start() async {
    final cascade = Cascade().add(_static).add(_router);

    final server = await shelf_io.serve(
      logRequests().addHandler(cascade.handler),
      InternetAddress.anyIPv4, // Allows external connections
      port,
    );

    print('STATUS: Serving at http://${server.address.host}:${server.port}');
  }

  late final _static = shelf_static.createStaticHandler('./public',
      defaultDocument: 'index.html');

  late final _router = shelf_router.Router()
    ..post('/api/blockchain/insert', _addBlock)
    ..get('/api/blockchain/query', _getBlock)
    ..get('/api/blockchain/all', _getBlockChain)
    ..get('/api/blockchain/count', _getBlockChainCount);

  Future<Response> _getBlockChainCount(Request request) async {
    return ResponseExtra.jsonOk({'count': await blockChain.count()});
  }

  Future<Response> _getBlockChain(Request request) async {
    return ResponseExtra.jsonOk(
        {'chains': await blockChain.getBlockChain().toList()});
  }

  Future<Response> _addBlock(Request request) async {
    final value = request.url.queryParameters['value'];
    print('Receive data $value');
    if (value == null) return Response.forbidden(null);

    var response;
    try {
      await mutex.lock();
      response =
          ResponseExtra.jsonOk({'block': await blockChain.insert(value)});
    } finally {
      mutex.unlock();
    }
    return response;
  }

  Future<Response> _getBlock(Request request) async {
    final index = int.tryParse(request.url.queryParameters['index'] ?? '');
    if (index == null) return Response.forbidden(null);
    return ResponseExtra.jsonOk({'block': await blockChain.get(index)});
  }
}

extension ResponseExtra on Response {
  static Response jsonOk(Object body) {
    return Response.ok(
      jsonEncode(body),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        'Access-Control-Allow-Origin': '*',
        'Access-Control-Allow-Headers': '*',
        'Access-Control-Allow-Methods': 'POST,GET,DELETE,PUT,OPTIONS'
      },
    );
  }
}
