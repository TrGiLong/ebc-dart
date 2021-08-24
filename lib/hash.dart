import 'package:crypto/crypto.dart' as cp;
import 'dart:convert';

String sha256(String input) {
  final bytes = utf8.encode(input);
  return cp.sha256.convert(bytes).toString();
}

String sha1(String input) {
  final bytes = utf8.encode(input);
  return cp.sha1.convert(bytes).toString();
}
