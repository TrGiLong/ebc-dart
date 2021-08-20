///
//  Generated code. Do not modify.
//  source: etcd/api/authpb/auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use userAddOptionsDescriptor instead')
const UserAddOptions$json = const {
  '1': 'UserAddOptions',
  '2': const [
    const {'1': 'no_password', '3': 1, '4': 1, '5': 8, '10': 'noPassword'},
  ],
};

/// Descriptor for `UserAddOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userAddOptionsDescriptor = $convert.base64Decode('Cg5Vc2VyQWRkT3B0aW9ucxIfCgtub19wYXNzd29yZBgBIAEoCFIKbm9QYXNzd29yZA==');
@$core.Deprecated('Use userDescriptor instead')
const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 12, '10': 'name'},
    const {'1': 'password', '3': 2, '4': 1, '5': 12, '10': 'password'},
    const {'1': 'roles', '3': 3, '4': 3, '5': 9, '10': 'roles'},
    const {'1': 'options', '3': 4, '4': 1, '5': 11, '6': '.authpb.UserAddOptions', '10': 'options'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('CgRVc2VyEhIKBG5hbWUYASABKAxSBG5hbWUSGgoIcGFzc3dvcmQYAiABKAxSCHBhc3N3b3JkEhQKBXJvbGVzGAMgAygJUgVyb2xlcxIwCgdvcHRpb25zGAQgASgLMhYuYXV0aHBiLlVzZXJBZGRPcHRpb25zUgdvcHRpb25z');
@$core.Deprecated('Use permissionDescriptor instead')
const Permission$json = const {
  '1': 'Permission',
  '2': const [
    const {'1': 'permType', '3': 1, '4': 1, '5': 14, '6': '.authpb.Permission.Type', '10': 'permType'},
    const {'1': 'key', '3': 2, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'range_end', '3': 3, '4': 1, '5': 12, '10': 'rangeEnd'},
  ],
  '4': const [Permission_Type$json],
};

@$core.Deprecated('Use permissionDescriptor instead')
const Permission_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'READ', '2': 0},
    const {'1': 'WRITE', '2': 1},
    const {'1': 'READWRITE', '2': 2},
  ],
};

/// Descriptor for `Permission`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List permissionDescriptor = $convert.base64Decode('CgpQZXJtaXNzaW9uEjMKCHBlcm1UeXBlGAEgASgOMhcuYXV0aHBiLlBlcm1pc3Npb24uVHlwZVIIcGVybVR5cGUSEAoDa2V5GAIgASgMUgNrZXkSGwoJcmFuZ2VfZW5kGAMgASgMUghyYW5nZUVuZCIqCgRUeXBlEggKBFJFQUQQABIJCgVXUklURRABEg0KCVJFQURXUklURRAC');
@$core.Deprecated('Use roleDescriptor instead')
const Role$json = const {
  '1': 'Role',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 12, '10': 'name'},
    const {'1': 'keyPermission', '3': 2, '4': 3, '5': 11, '6': '.authpb.Permission', '10': 'keyPermission'},
  ],
};

/// Descriptor for `Role`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roleDescriptor = $convert.base64Decode('CgRSb2xlEhIKBG5hbWUYASABKAxSBG5hbWUSOAoNa2V5UGVybWlzc2lvbhgCIAMoCzISLmF1dGhwYi5QZXJtaXNzaW9uUg1rZXlQZXJtaXNzaW9u');
