///
//  Generated code. Do not modify.
//  source: etcd/api/authpb/auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Permission_Type extends $pb.ProtobufEnum {
  static const Permission_Type READ = Permission_Type._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'READ');
  static const Permission_Type WRITE = Permission_Type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WRITE');
  static const Permission_Type READWRITE = Permission_Type._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'READWRITE');

  static const $core.List<Permission_Type> values = <Permission_Type> [
    READ,
    WRITE,
    READWRITE,
  ];

  static final $core.Map<$core.int, Permission_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Permission_Type? valueOf($core.int value) => _byValue[value];

  const Permission_Type._($core.int v, $core.String n) : super(v, n);
}

