import 'dart:io';

import 'package:ebc_dart/block_chain/repository/block_chain_repository.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_router/shelf_router.dart' as shelf_router;

class EbcServer {
  final int port;
  final BlockChainRepository blockChainRepository;

  EbcServer({required this.port, required this.blockChainRepository});

  Future<void> start() async {
    final cascade = Cascade().add(_router);

    final server = await shelf_io.serve(
      logRequests().addHandler(cascade.handler),
      InternetAddress.anyIPv4, // Allows external connections
      port,
    );

    print('Serving at http://${server.address.host}:${server.port}');
  }

  late final _router = shelf_router.Router()
    ..get('/api/block-chain/all', _getBlockChain)
    ..get('/api/block-chain/count', _getBlockChainCount);

  Future<Response> _getBlockChainCount(Request request) async {
    return Response.ok({'count': await blockChainRepository.count()});
  }

  Future<Response> _getBlockChain(Request request) async {
    return Response.ok(
        {'chains': blockChainRepository.getBlockChain().toList()});
  }
}
