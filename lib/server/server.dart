import 'dart:convert';
import 'dart:io';

import 'package:ebc_dart/block_chain/block_chain.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_router/shelf_router.dart' as shelf_router;

class EbcServer {
  final int port;
  final BlockChain blockChain;

  EbcServer({required this.port, required this.blockChain});

  Future<void> start() async {
    final cascade = Cascade().add(_router);

    final server = await shelf_io.serve(
      logRequests().addHandler(cascade.handler),
      InternetAddress.anyIPv4, // Allows external connections
      port,
    );

    print('STATUS: Serving at http://${server.address.host}:${server.port}');
  }

  late final _router = shelf_router.Router()
    ..post('/api/block-chain/insert', _addBlockChain)
    ..get('/api/block-chain/query', _getBlock)
    ..get('/api/block-chain/all', _getBlockChain)
    ..get('/api/block-chain/count', _getBlockChainCount);

  Future<Response> _getBlockChainCount(Request request) async {
    return ResponseExtra.jsonOk({'count': await blockChain.count()});
  }

  Future<Response> _getBlockChain(Request request) async {
    final test = await blockChain.getBlockChain().toList();
    return ResponseExtra.jsonOk(
        {'chains': await blockChain.getBlockChain().toList()});
  }

  Future<Response> _addBlockChain(Request request) async {
    final value = request.url.queryParameters['value'];
    if (value == null) return Response.forbidden(null);
    return ResponseExtra.jsonOk({'block': await blockChain.insert(value)});
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