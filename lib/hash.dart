import 'package:crypto/crypto.dart';
import 'dart:convert';

/// sha256 is default hash funtion
String defaultHash(String input) {
  final bytes = utf8.encode(input);
  return sha256.convert(bytes).toString();
}
