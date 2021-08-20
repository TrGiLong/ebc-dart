///
//  Generated code. Do not modify.
//  source: etcd/api/etcdserverpb/rpc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
import '../mvccpb/kv.pbjson.dart' as $1;
import '../authpb/auth.pbjson.dart' as $2;

@$core.Deprecated('Use alarmTypeDescriptor instead')
const AlarmType$json = const {
  '1': 'AlarmType',
  '2': const [
    const {'1': 'NONE', '2': 0},
    const {'1': 'NOSPACE', '2': 1},
    const {'1': 'CORRUPT', '2': 2},
  ],
};

/// Descriptor for `AlarmType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List alarmTypeDescriptor = $convert.base64Decode('CglBbGFybVR5cGUSCAoETk9ORRAAEgsKB05PU1BBQ0UQARILCgdDT1JSVVBUEAI=');
@$core.Deprecated('Use responseHeaderDescriptor instead')
const ResponseHeader$json = const {
  '1': 'ResponseHeader',
  '2': const [
    const {'1': 'cluster_id', '3': 1, '4': 1, '5': 4, '10': 'clusterId'},
    const {'1': 'member_id', '3': 2, '4': 1, '5': 4, '10': 'memberId'},
    const {'1': 'revision', '3': 3, '4': 1, '5': 3, '10': 'revision'},
    const {'1': 'raft_term', '3': 4, '4': 1, '5': 4, '10': 'raftTerm'},
  ],
};

/// Descriptor for `ResponseHeader`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseHeaderDescriptor = $convert.base64Decode('Cg5SZXNwb25zZUhlYWRlchIdCgpjbHVzdGVyX2lkGAEgASgEUgljbHVzdGVySWQSGwoJbWVtYmVyX2lkGAIgASgEUghtZW1iZXJJZBIaCghyZXZpc2lvbhgDIAEoA1IIcmV2aXNpb24SGwoJcmFmdF90ZXJtGAQgASgEUghyYWZ0VGVybQ==');
@$core.Deprecated('Use rangeRequestDescriptor instead')
const RangeRequest$json = const {
  '1': 'RangeRequest',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'range_end', '3': 2, '4': 1, '5': 12, '10': 'rangeEnd'},
    const {'1': 'limit', '3': 3, '4': 1, '5': 3, '10': 'limit'},
    const {'1': 'revision', '3': 4, '4': 1, '5': 3, '10': 'revision'},
    const {'1': 'sort_order', '3': 5, '4': 1, '5': 14, '6': '.etcdserverpb.RangeRequest.SortOrder', '10': 'sortOrder'},
    const {'1': 'sort_target', '3': 6, '4': 1, '5': 14, '6': '.etcdserverpb.RangeRequest.SortTarget', '10': 'sortTarget'},
    const {'1': 'serializable', '3': 7, '4': 1, '5': 8, '10': 'serializable'},
    const {'1': 'keys_only', '3': 8, '4': 1, '5': 8, '10': 'keysOnly'},
    const {'1': 'count_only', '3': 9, '4': 1, '5': 8, '10': 'countOnly'},
    const {'1': 'min_mod_revision', '3': 10, '4': 1, '5': 3, '10': 'minModRevision'},
    const {'1': 'max_mod_revision', '3': 11, '4': 1, '5': 3, '10': 'maxModRevision'},
    const {'1': 'min_create_revision', '3': 12, '4': 1, '5': 3, '10': 'minCreateRevision'},
    const {'1': 'max_create_revision', '3': 13, '4': 1, '5': 3, '10': 'maxCreateRevision'},
  ],
  '4': const [RangeRequest_SortOrder$json, RangeRequest_SortTarget$json],
};

@$core.Deprecated('Use rangeRequestDescriptor instead')
const RangeRequest_SortOrder$json = const {
  '1': 'SortOrder',
  '2': const [
    const {'1': 'NONE', '2': 0},
    const {'1': 'ASCEND', '2': 1},
    const {'1': 'DESCEND', '2': 2},
  ],
};

@$core.Deprecated('Use rangeRequestDescriptor instead')
const RangeRequest_SortTarget$json = const {
  '1': 'SortTarget',
  '2': const [
    const {'1': 'KEY', '2': 0},
    const {'1': 'VERSION', '2': 1},
    const {'1': 'CREATE', '2': 2},
    const {'1': 'MOD', '2': 3},
    const {'1': 'VALUE', '2': 4},
  ],
};

/// Descriptor for `RangeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rangeRequestDescriptor = $convert.base64Decode('CgxSYW5nZVJlcXVlc3QSEAoDa2V5GAEgASgMUgNrZXkSGwoJcmFuZ2VfZW5kGAIgASgMUghyYW5nZUVuZBIUCgVsaW1pdBgDIAEoA1IFbGltaXQSGgoIcmV2aXNpb24YBCABKANSCHJldmlzaW9uEkMKCnNvcnRfb3JkZXIYBSABKA4yJC5ldGNkc2VydmVycGIuUmFuZ2VSZXF1ZXN0LlNvcnRPcmRlclIJc29ydE9yZGVyEkYKC3NvcnRfdGFyZ2V0GAYgASgOMiUuZXRjZHNlcnZlcnBiLlJhbmdlUmVxdWVzdC5Tb3J0VGFyZ2V0Ugpzb3J0VGFyZ2V0EiIKDHNlcmlhbGl6YWJsZRgHIAEoCFIMc2VyaWFsaXphYmxlEhsKCWtleXNfb25seRgIIAEoCFIIa2V5c09ubHkSHQoKY291bnRfb25seRgJIAEoCFIJY291bnRPbmx5EigKEG1pbl9tb2RfcmV2aXNpb24YCiABKANSDm1pbk1vZFJldmlzaW9uEigKEG1heF9tb2RfcmV2aXNpb24YCyABKANSDm1heE1vZFJldmlzaW9uEi4KE21pbl9jcmVhdGVfcmV2aXNpb24YDCABKANSEW1pbkNyZWF0ZVJldmlzaW9uEi4KE21heF9jcmVhdGVfcmV2aXNpb24YDSABKANSEW1heENyZWF0ZVJldmlzaW9uIi4KCVNvcnRPcmRlchIICgROT05FEAASCgoGQVNDRU5EEAESCwoHREVTQ0VORBACIkIKClNvcnRUYXJnZXQSBwoDS0VZEAASCwoHVkVSU0lPThABEgoKBkNSRUFURRACEgcKA01PRBADEgkKBVZBTFVFEAQ=');
@$core.Deprecated('Use rangeResponseDescriptor instead')
const RangeResponse$json = const {
  '1': 'RangeResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
    const {'1': 'kvs', '3': 2, '4': 3, '5': 11, '6': '.mvccpb.KeyValue', '10': 'kvs'},
    const {'1': 'more', '3': 3, '4': 1, '5': 8, '10': 'more'},
    const {'1': 'count', '3': 4, '4': 1, '5': 3, '10': 'count'},
  ],
};

/// Descriptor for `RangeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rangeResponseDescriptor = $convert.base64Decode('Cg1SYW5nZVJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZXNwb25zZUhlYWRlclIGaGVhZGVyEiIKA2t2cxgCIAMoCzIQLm12Y2NwYi5LZXlWYWx1ZVIDa3ZzEhIKBG1vcmUYAyABKAhSBG1vcmUSFAoFY291bnQYBCABKANSBWNvdW50');
@$core.Deprecated('Use putRequestDescriptor instead')
const PutRequest$json = const {
  '1': 'PutRequest',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
    const {'1': 'lease', '3': 3, '4': 1, '5': 3, '10': 'lease'},
    const {'1': 'prev_kv', '3': 4, '4': 1, '5': 8, '10': 'prevKv'},
    const {'1': 'ignore_value', '3': 5, '4': 1, '5': 8, '10': 'ignoreValue'},
    const {'1': 'ignore_lease', '3': 6, '4': 1, '5': 8, '10': 'ignoreLease'},
  ],
};

/// Descriptor for `PutRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List putRequestDescriptor = $convert.base64Decode('CgpQdXRSZXF1ZXN0EhAKA2tleRgBIAEoDFIDa2V5EhQKBXZhbHVlGAIgASgMUgV2YWx1ZRIUCgVsZWFzZRgDIAEoA1IFbGVhc2USFwoHcHJldl9rdhgEIAEoCFIGcHJldkt2EiEKDGlnbm9yZV92YWx1ZRgFIAEoCFILaWdub3JlVmFsdWUSIQoMaWdub3JlX2xlYXNlGAYgASgIUgtpZ25vcmVMZWFzZQ==');
@$core.Deprecated('Use putResponseDescriptor instead')
const PutResponse$json = const {
  '1': 'PutResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
    const {'1': 'prev_kv', '3': 2, '4': 1, '5': 11, '6': '.mvccpb.KeyValue', '10': 'prevKv'},
  ],
};

/// Descriptor for `PutResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List putResponseDescriptor = $convert.base64Decode('CgtQdXRSZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlchIpCgdwcmV2X2t2GAIgASgLMhAubXZjY3BiLktleVZhbHVlUgZwcmV2S3Y=');
@$core.Deprecated('Use deleteRangeRequestDescriptor instead')
const DeleteRangeRequest$json = const {
  '1': 'DeleteRangeRequest',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'range_end', '3': 2, '4': 1, '5': 12, '10': 'rangeEnd'},
    const {'1': 'prev_kv', '3': 3, '4': 1, '5': 8, '10': 'prevKv'},
  ],
};

/// Descriptor for `DeleteRangeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRangeRequestDescriptor = $convert.base64Decode('ChJEZWxldGVSYW5nZVJlcXVlc3QSEAoDa2V5GAEgASgMUgNrZXkSGwoJcmFuZ2VfZW5kGAIgASgMUghyYW5nZUVuZBIXCgdwcmV2X2t2GAMgASgIUgZwcmV2S3Y=');
@$core.Deprecated('Use deleteRangeResponseDescriptor instead')
const DeleteRangeResponse$json = const {
  '1': 'DeleteRangeResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
    const {'1': 'deleted', '3': 2, '4': 1, '5': 3, '10': 'deleted'},
    const {'1': 'prev_kvs', '3': 3, '4': 3, '5': 11, '6': '.mvccpb.KeyValue', '10': 'prevKvs'},
  ],
};

/// Descriptor for `DeleteRangeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRangeResponseDescriptor = $convert.base64Decode('ChNEZWxldGVSYW5nZVJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZXNwb25zZUhlYWRlclIGaGVhZGVyEhgKB2RlbGV0ZWQYAiABKANSB2RlbGV0ZWQSKwoIcHJldl9rdnMYAyADKAsyEC5tdmNjcGIuS2V5VmFsdWVSB3ByZXZLdnM=');
@$core.Deprecated('Use requestOpDescriptor instead')
const RequestOp$json = const {
  '1': 'RequestOp',
  '2': const [
    const {'1': 'request_range', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.RangeRequest', '9': 0, '10': 'requestRange'},
    const {'1': 'request_put', '3': 2, '4': 1, '5': 11, '6': '.etcdserverpb.PutRequest', '9': 0, '10': 'requestPut'},
    const {'1': 'request_delete_range', '3': 3, '4': 1, '5': 11, '6': '.etcdserverpb.DeleteRangeRequest', '9': 0, '10': 'requestDeleteRange'},
    const {'1': 'request_txn', '3': 4, '4': 1, '5': 11, '6': '.etcdserverpb.TxnRequest', '9': 0, '10': 'requestTxn'},
  ],
  '8': const [
    const {'1': 'request'},
  ],
};

/// Descriptor for `RequestOp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestOpDescriptor = $convert.base64Decode('CglSZXF1ZXN0T3ASQQoNcmVxdWVzdF9yYW5nZRgBIAEoCzIaLmV0Y2RzZXJ2ZXJwYi5SYW5nZVJlcXVlc3RIAFIMcmVxdWVzdFJhbmdlEjsKC3JlcXVlc3RfcHV0GAIgASgLMhguZXRjZHNlcnZlcnBiLlB1dFJlcXVlc3RIAFIKcmVxdWVzdFB1dBJUChRyZXF1ZXN0X2RlbGV0ZV9yYW5nZRgDIAEoCzIgLmV0Y2RzZXJ2ZXJwYi5EZWxldGVSYW5nZVJlcXVlc3RIAFIScmVxdWVzdERlbGV0ZVJhbmdlEjsKC3JlcXVlc3RfdHhuGAQgASgLMhguZXRjZHNlcnZlcnBiLlR4blJlcXVlc3RIAFIKcmVxdWVzdFR4bkIJCgdyZXF1ZXN0');
@$core.Deprecated('Use responseOpDescriptor instead')
const ResponseOp$json = const {
  '1': 'ResponseOp',
  '2': const [
    const {'1': 'response_range', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.RangeResponse', '9': 0, '10': 'responseRange'},
    const {'1': 'response_put', '3': 2, '4': 1, '5': 11, '6': '.etcdserverpb.PutResponse', '9': 0, '10': 'responsePut'},
    const {'1': 'response_delete_range', '3': 3, '4': 1, '5': 11, '6': '.etcdserverpb.DeleteRangeResponse', '9': 0, '10': 'responseDeleteRange'},
    const {'1': 'response_txn', '3': 4, '4': 1, '5': 11, '6': '.etcdserverpb.TxnResponse', '9': 0, '10': 'responseTxn'},
  ],
  '8': const [
    const {'1': 'response'},
  ],
};

/// Descriptor for `ResponseOp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseOpDescriptor = $convert.base64Decode('CgpSZXNwb25zZU9wEkQKDnJlc3BvbnNlX3JhbmdlGAEgASgLMhsuZXRjZHNlcnZlcnBiLlJhbmdlUmVzcG9uc2VIAFINcmVzcG9uc2VSYW5nZRI+CgxyZXNwb25zZV9wdXQYAiABKAsyGS5ldGNkc2VydmVycGIuUHV0UmVzcG9uc2VIAFILcmVzcG9uc2VQdXQSVwoVcmVzcG9uc2VfZGVsZXRlX3JhbmdlGAMgASgLMiEuZXRjZHNlcnZlcnBiLkRlbGV0ZVJhbmdlUmVzcG9uc2VIAFITcmVzcG9uc2VEZWxldGVSYW5nZRI+CgxyZXNwb25zZV90eG4YBCABKAsyGS5ldGNkc2VydmVycGIuVHhuUmVzcG9uc2VIAFILcmVzcG9uc2VUeG5CCgoIcmVzcG9uc2U=');
@$core.Deprecated('Use compareDescriptor instead')
const Compare$json = const {
  '1': 'Compare',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.etcdserverpb.Compare.CompareResult', '10': 'result'},
    const {'1': 'target', '3': 2, '4': 1, '5': 14, '6': '.etcdserverpb.Compare.CompareTarget', '10': 'target'},
    const {'1': 'key', '3': 3, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'version', '3': 4, '4': 1, '5': 3, '9': 0, '10': 'version'},
    const {'1': 'create_revision', '3': 5, '4': 1, '5': 3, '9': 0, '10': 'createRevision'},
    const {'1': 'mod_revision', '3': 6, '4': 1, '5': 3, '9': 0, '10': 'modRevision'},
    const {'1': 'value', '3': 7, '4': 1, '5': 12, '9': 0, '10': 'value'},
    const {'1': 'lease', '3': 8, '4': 1, '5': 3, '9': 0, '10': 'lease'},
    const {'1': 'range_end', '3': 64, '4': 1, '5': 12, '10': 'rangeEnd'},
  ],
  '4': const [Compare_CompareResult$json, Compare_CompareTarget$json],
  '8': const [
    const {'1': 'target_union'},
  ],
};

@$core.Deprecated('Use compareDescriptor instead')
const Compare_CompareResult$json = const {
  '1': 'CompareResult',
  '2': const [
    const {'1': 'EQUAL', '2': 0},
    const {'1': 'GREATER', '2': 1},
    const {'1': 'LESS', '2': 2},
    const {'1': 'NOT_EQUAL', '2': 3},
  ],
};

@$core.Deprecated('Use compareDescriptor instead')
const Compare_CompareTarget$json = const {
  '1': 'CompareTarget',
  '2': const [
    const {'1': 'VERSION', '2': 0},
    const {'1': 'CREATE', '2': 1},
    const {'1': 'MOD', '2': 2},
    const {'1': 'VALUE', '2': 3},
    const {'1': 'LEASE', '2': 4},
  ],
};

/// Descriptor for `Compare`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List compareDescriptor = $convert.base64Decode('CgdDb21wYXJlEjsKBnJlc3VsdBgBIAEoDjIjLmV0Y2RzZXJ2ZXJwYi5Db21wYXJlLkNvbXBhcmVSZXN1bHRSBnJlc3VsdBI7CgZ0YXJnZXQYAiABKA4yIy5ldGNkc2VydmVycGIuQ29tcGFyZS5Db21wYXJlVGFyZ2V0UgZ0YXJnZXQSEAoDa2V5GAMgASgMUgNrZXkSGgoHdmVyc2lvbhgEIAEoA0gAUgd2ZXJzaW9uEikKD2NyZWF0ZV9yZXZpc2lvbhgFIAEoA0gAUg5jcmVhdGVSZXZpc2lvbhIjCgxtb2RfcmV2aXNpb24YBiABKANIAFILbW9kUmV2aXNpb24SFgoFdmFsdWUYByABKAxIAFIFdmFsdWUSFgoFbGVhc2UYCCABKANIAFIFbGVhc2USGwoJcmFuZ2VfZW5kGEAgASgMUghyYW5nZUVuZCJACg1Db21wYXJlUmVzdWx0EgkKBUVRVUFMEAASCwoHR1JFQVRFUhABEggKBExFU1MQAhINCglOT1RfRVFVQUwQAyJHCg1Db21wYXJlVGFyZ2V0EgsKB1ZFUlNJT04QABIKCgZDUkVBVEUQARIHCgNNT0QQAhIJCgVWQUxVRRADEgkKBUxFQVNFEARCDgoMdGFyZ2V0X3VuaW9u');
@$core.Deprecated('Use txnRequestDescriptor instead')
const TxnRequest$json = const {
  '1': 'TxnRequest',
  '2': const [
    const {'1': 'compare', '3': 1, '4': 3, '5': 11, '6': '.etcdserverpb.Compare', '10': 'compare'},
    const {'1': 'success', '3': 2, '4': 3, '5': 11, '6': '.etcdserverpb.RequestOp', '10': 'success'},
    const {'1': 'failure', '3': 3, '4': 3, '5': 11, '6': '.etcdserverpb.RequestOp', '10': 'failure'},
  ],
};

/// Descriptor for `TxnRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txnRequestDescriptor = $convert.base64Decode('CgpUeG5SZXF1ZXN0Ei8KB2NvbXBhcmUYASADKAsyFS5ldGNkc2VydmVycGIuQ29tcGFyZVIHY29tcGFyZRIxCgdzdWNjZXNzGAIgAygLMhcuZXRjZHNlcnZlcnBiLlJlcXVlc3RPcFIHc3VjY2VzcxIxCgdmYWlsdXJlGAMgAygLMhcuZXRjZHNlcnZlcnBiLlJlcXVlc3RPcFIHZmFpbHVyZQ==');
@$core.Deprecated('Use txnResponseDescriptor instead')
const TxnResponse$json = const {
  '1': 'TxnResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
    const {'1': 'succeeded', '3': 2, '4': 1, '5': 8, '10': 'succeeded'},
    const {'1': 'responses', '3': 3, '4': 3, '5': 11, '6': '.etcdserverpb.ResponseOp', '10': 'responses'},
  ],
};

/// Descriptor for `TxnResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txnResponseDescriptor = $convert.base64Decode('CgtUeG5SZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlchIcCglzdWNjZWVkZWQYAiABKAhSCXN1Y2NlZWRlZBI2CglyZXNwb25zZXMYAyADKAsyGC5ldGNkc2VydmVycGIuUmVzcG9uc2VPcFIJcmVzcG9uc2Vz');
@$core.Deprecated('Use compactionRequestDescriptor instead')
const CompactionRequest$json = const {
  '1': 'CompactionRequest',
  '2': const [
    const {'1': 'revision', '3': 1, '4': 1, '5': 3, '10': 'revision'},
    const {'1': 'physical', '3': 2, '4': 1, '5': 8, '10': 'physical'},
  ],
};

/// Descriptor for `CompactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List compactionRequestDescriptor = $convert.base64Decode('ChFDb21wYWN0aW9uUmVxdWVzdBIaCghyZXZpc2lvbhgBIAEoA1IIcmV2aXNpb24SGgoIcGh5c2ljYWwYAiABKAhSCHBoeXNpY2Fs');
@$core.Deprecated('Use compactionResponseDescriptor instead')
const CompactionResponse$json = const {
  '1': 'CompactionResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `CompactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List compactionResponseDescriptor = $convert.base64Decode('ChJDb21wYWN0aW9uUmVzcG9uc2USNAoGaGVhZGVyGAEgASgLMhwuZXRjZHNlcnZlcnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXI=');
@$core.Deprecated('Use hashRequestDescriptor instead')
const HashRequest$json = const {
  '1': 'HashRequest',
};

/// Descriptor for `HashRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hashRequestDescriptor = $convert.base64Decode('CgtIYXNoUmVxdWVzdA==');
@$core.Deprecated('Use hashKVRequestDescriptor instead')
const HashKVRequest$json = const {
  '1': 'HashKVRequest',
  '2': const [
    const {'1': 'revision', '3': 1, '4': 1, '5': 3, '10': 'revision'},
  ],
};

/// Descriptor for `HashKVRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hashKVRequestDescriptor = $convert.base64Decode('Cg1IYXNoS1ZSZXF1ZXN0EhoKCHJldmlzaW9uGAEgASgDUghyZXZpc2lvbg==');
@$core.Deprecated('Use hashKVResponseDescriptor instead')
const HashKVResponse$json = const {
  '1': 'HashKVResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
    const {'1': 'hash', '3': 2, '4': 1, '5': 13, '10': 'hash'},
    const {'1': 'compact_revision', '3': 3, '4': 1, '5': 3, '10': 'compactRevision'},
  ],
};

/// Descriptor for `HashKVResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hashKVResponseDescriptor = $convert.base64Decode('Cg5IYXNoS1ZSZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlchISCgRoYXNoGAIgASgNUgRoYXNoEikKEGNvbXBhY3RfcmV2aXNpb24YAyABKANSD2NvbXBhY3RSZXZpc2lvbg==');
@$core.Deprecated('Use hashResponseDescriptor instead')
const HashResponse$json = const {
  '1': 'HashResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
    const {'1': 'hash', '3': 2, '4': 1, '5': 13, '10': 'hash'},
  ],
};

/// Descriptor for `HashResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hashResponseDescriptor = $convert.base64Decode('CgxIYXNoUmVzcG9uc2USNAoGaGVhZGVyGAEgASgLMhwuZXRjZHNlcnZlcnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXISEgoEaGFzaBgCIAEoDVIEaGFzaA==');
@$core.Deprecated('Use snapshotRequestDescriptor instead')
const SnapshotRequest$json = const {
  '1': 'SnapshotRequest',
};

/// Descriptor for `SnapshotRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List snapshotRequestDescriptor = $convert.base64Decode('Cg9TbmFwc2hvdFJlcXVlc3Q=');
@$core.Deprecated('Use snapshotResponseDescriptor instead')
const SnapshotResponse$json = const {
  '1': 'SnapshotResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
    const {'1': 'remaining_bytes', '3': 2, '4': 1, '5': 4, '10': 'remainingBytes'},
    const {'1': 'blob', '3': 3, '4': 1, '5': 12, '10': 'blob'},
  ],
};

/// Descriptor for `SnapshotResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List snapshotResponseDescriptor = $convert.base64Decode('ChBTbmFwc2hvdFJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZXNwb25zZUhlYWRlclIGaGVhZGVyEicKD3JlbWFpbmluZ19ieXRlcxgCIAEoBFIOcmVtYWluaW5nQnl0ZXMSEgoEYmxvYhgDIAEoDFIEYmxvYg==');
@$core.Deprecated('Use watchRequestDescriptor instead')
const WatchRequest$json = const {
  '1': 'WatchRequest',
  '2': const [
    const {'1': 'create_request', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.WatchCreateRequest', '9': 0, '10': 'createRequest'},
    const {'1': 'cancel_request', '3': 2, '4': 1, '5': 11, '6': '.etcdserverpb.WatchCancelRequest', '9': 0, '10': 'cancelRequest'},
    const {'1': 'progress_request', '3': 3, '4': 1, '5': 11, '6': '.etcdserverpb.WatchProgressRequest', '9': 0, '10': 'progressRequest'},
  ],
  '8': const [
    const {'1': 'request_union'},
  ],
};

/// Descriptor for `WatchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List watchRequestDescriptor = $convert.base64Decode('CgxXYXRjaFJlcXVlc3QSSQoOY3JlYXRlX3JlcXVlc3QYASABKAsyIC5ldGNkc2VydmVycGIuV2F0Y2hDcmVhdGVSZXF1ZXN0SABSDWNyZWF0ZVJlcXVlc3QSSQoOY2FuY2VsX3JlcXVlc3QYAiABKAsyIC5ldGNkc2VydmVycGIuV2F0Y2hDYW5jZWxSZXF1ZXN0SABSDWNhbmNlbFJlcXVlc3QSTwoQcHJvZ3Jlc3NfcmVxdWVzdBgDIAEoCzIiLmV0Y2RzZXJ2ZXJwYi5XYXRjaFByb2dyZXNzUmVxdWVzdEgAUg9wcm9ncmVzc1JlcXVlc3RCDwoNcmVxdWVzdF91bmlvbg==');
@$core.Deprecated('Use watchCreateRequestDescriptor instead')
const WatchCreateRequest$json = const {
  '1': 'WatchCreateRequest',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'range_end', '3': 2, '4': 1, '5': 12, '10': 'rangeEnd'},
    const {'1': 'start_revision', '3': 3, '4': 1, '5': 3, '10': 'startRevision'},
    const {'1': 'progress_notify', '3': 4, '4': 1, '5': 8, '10': 'progressNotify'},
    const {'1': 'filters', '3': 5, '4': 3, '5': 14, '6': '.etcdserverpb.WatchCreateRequest.FilterType', '10': 'filters'},
    const {'1': 'prev_kv', '3': 6, '4': 1, '5': 8, '10': 'prevKv'},
    const {'1': 'watch_id', '3': 7, '4': 1, '5': 3, '10': 'watchId'},
    const {'1': 'fragment', '3': 8, '4': 1, '5': 8, '10': 'fragment'},
  ],
  '4': const [WatchCreateRequest_FilterType$json],
};

@$core.Deprecated('Use watchCreateRequestDescriptor instead')
const WatchCreateRequest_FilterType$json = const {
  '1': 'FilterType',
  '2': const [
    const {'1': 'NOPUT', '2': 0},
    const {'1': 'NODELETE', '2': 1},
  ],
};

/// Descriptor for `WatchCreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List watchCreateRequestDescriptor = $convert.base64Decode('ChJXYXRjaENyZWF0ZVJlcXVlc3QSEAoDa2V5GAEgASgMUgNrZXkSGwoJcmFuZ2VfZW5kGAIgASgMUghyYW5nZUVuZBIlCg5zdGFydF9yZXZpc2lvbhgDIAEoA1INc3RhcnRSZXZpc2lvbhInCg9wcm9ncmVzc19ub3RpZnkYBCABKAhSDnByb2dyZXNzTm90aWZ5EkUKB2ZpbHRlcnMYBSADKA4yKy5ldGNkc2VydmVycGIuV2F0Y2hDcmVhdGVSZXF1ZXN0LkZpbHRlclR5cGVSB2ZpbHRlcnMSFwoHcHJldl9rdhgGIAEoCFIGcHJldkt2EhkKCHdhdGNoX2lkGAcgASgDUgd3YXRjaElkEhoKCGZyYWdtZW50GAggASgIUghmcmFnbWVudCIlCgpGaWx0ZXJUeXBlEgkKBU5PUFVUEAASDAoITk9ERUxFVEUQAQ==');
@$core.Deprecated('Use watchCancelRequestDescriptor instead')
const WatchCancelRequest$json = const {
  '1': 'WatchCancelRequest',
  '2': const [
    const {'1': 'watch_id', '3': 1, '4': 1, '5': 3, '10': 'watchId'},
  ],
};

/// Descriptor for `WatchCancelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List watchCancelRequestDescriptor = $convert.base64Decode('ChJXYXRjaENhbmNlbFJlcXVlc3QSGQoId2F0Y2hfaWQYASABKANSB3dhdGNoSWQ=');
@$core.Deprecated('Use watchProgressRequestDescriptor instead')
const WatchProgressRequest$json = const {
  '1': 'WatchProgressRequest',
};

/// Descriptor for `WatchProgressRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List watchProgressRequestDescriptor = $convert.base64Decode('ChRXYXRjaFByb2dyZXNzUmVxdWVzdA==');
@$core.Deprecated('Use watchResponseDescriptor instead')
const WatchResponse$json = const {
  '1': 'WatchResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
    const {'1': 'watch_id', '3': 2, '4': 1, '5': 3, '10': 'watchId'},
    const {'1': 'created', '3': 3, '4': 1, '5': 8, '10': 'created'},
    const {'1': 'canceled', '3': 4, '4': 1, '5': 8, '10': 'canceled'},
    const {'1': 'compact_revision', '3': 5, '4': 1, '5': 3, '10': 'compactRevision'},
    const {'1': 'cancel_reason', '3': 6, '4': 1, '5': 9, '10': 'cancelReason'},
    const {'1': 'fragment', '3': 7, '4': 1, '5': 8, '10': 'fragment'},
    const {'1': 'events', '3': 11, '4': 3, '5': 11, '6': '.mvccpb.Event', '10': 'events'},
  ],
};

/// Descriptor for `WatchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List watchResponseDescriptor = $convert.base64Decode('Cg1XYXRjaFJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZXNwb25zZUhlYWRlclIGaGVhZGVyEhkKCHdhdGNoX2lkGAIgASgDUgd3YXRjaElkEhgKB2NyZWF0ZWQYAyABKAhSB2NyZWF0ZWQSGgoIY2FuY2VsZWQYBCABKAhSCGNhbmNlbGVkEikKEGNvbXBhY3RfcmV2aXNpb24YBSABKANSD2NvbXBhY3RSZXZpc2lvbhIjCg1jYW5jZWxfcmVhc29uGAYgASgJUgxjYW5jZWxSZWFzb24SGgoIZnJhZ21lbnQYByABKAhSCGZyYWdtZW50EiUKBmV2ZW50cxgLIAMoCzINLm12Y2NwYi5FdmVudFIGZXZlbnRz');
@$core.Deprecated('Use leaseGrantRequestDescriptor instead')
const LeaseGrantRequest$json = const {
  '1': 'LeaseGrantRequest',
  '2': const [
    const {'1': 'TTL', '3': 1, '4': 1, '5': 3, '10': 'TTL'},
    const {'1': 'ID', '3': 2, '4': 1, '5': 3, '10': 'ID'},
  ],
};

/// Descriptor for `LeaseGrantRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseGrantRequestDescriptor = $convert.base64Decode('ChFMZWFzZUdyYW50UmVxdWVzdBIQCgNUVEwYASABKANSA1RUTBIOCgJJRBgCIAEoA1ICSUQ=');
@$core.Deprecated('Use leaseGrantResponseDescriptor instead')
const LeaseGrantResponse$json = const {
  '1': 'LeaseGrantResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
    const {'1': 'ID', '3': 2, '4': 1, '5': 3, '10': 'ID'},
    const {'1': 'TTL', '3': 3, '4': 1, '5': 3, '10': 'TTL'},
    const {'1': 'error', '3': 4, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `LeaseGrantResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseGrantResponseDescriptor = $convert.base64Decode('ChJMZWFzZUdyYW50UmVzcG9uc2USNAoGaGVhZGVyGAEgASgLMhwuZXRjZHNlcnZlcnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXISDgoCSUQYAiABKANSAklEEhAKA1RUTBgDIAEoA1IDVFRMEhQKBWVycm9yGAQgASgJUgVlcnJvcg==');
@$core.Deprecated('Use leaseRevokeRequestDescriptor instead')
const LeaseRevokeRequest$json = const {
  '1': 'LeaseRevokeRequest',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 3, '10': 'ID'},
  ],
};

/// Descriptor for `LeaseRevokeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseRevokeRequestDescriptor = $convert.base64Decode('ChJMZWFzZVJldm9rZVJlcXVlc3QSDgoCSUQYASABKANSAklE');
@$core.Deprecated('Use leaseRevokeResponseDescriptor instead')
const LeaseRevokeResponse$json = const {
  '1': 'LeaseRevokeResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `LeaseRevokeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseRevokeResponseDescriptor = $convert.base64Decode('ChNMZWFzZVJldm9rZVJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZXNwb25zZUhlYWRlclIGaGVhZGVy');
@$core.Deprecated('Use leaseCheckpointDescriptor instead')
const LeaseCheckpoint$json = const {
  '1': 'LeaseCheckpoint',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 3, '10': 'ID'},
    const {'1': 'remaining_TTL', '3': 2, '4': 1, '5': 3, '10': 'remainingTTL'},
  ],
};

/// Descriptor for `LeaseCheckpoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseCheckpointDescriptor = $convert.base64Decode('Cg9MZWFzZUNoZWNrcG9pbnQSDgoCSUQYASABKANSAklEEiMKDXJlbWFpbmluZ19UVEwYAiABKANSDHJlbWFpbmluZ1RUTA==');
@$core.Deprecated('Use leaseCheckpointRequestDescriptor instead')
const LeaseCheckpointRequest$json = const {
  '1': 'LeaseCheckpointRequest',
  '2': const [
    const {'1': 'checkpoints', '3': 1, '4': 3, '5': 11, '6': '.etcdserverpb.LeaseCheckpoint', '10': 'checkpoints'},
  ],
};

/// Descriptor for `LeaseCheckpointRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseCheckpointRequestDescriptor = $convert.base64Decode('ChZMZWFzZUNoZWNrcG9pbnRSZXF1ZXN0Ej8KC2NoZWNrcG9pbnRzGAEgAygLMh0uZXRjZHNlcnZlcnBiLkxlYXNlQ2hlY2twb2ludFILY2hlY2twb2ludHM=');
@$core.Deprecated('Use leaseCheckpointResponseDescriptor instead')
const LeaseCheckpointResponse$json = const {
  '1': 'LeaseCheckpointResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `LeaseCheckpointResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseCheckpointResponseDescriptor = $convert.base64Decode('ChdMZWFzZUNoZWNrcG9pbnRSZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlcg==');
@$core.Deprecated('Use leaseKeepAliveRequestDescriptor instead')
const LeaseKeepAliveRequest$json = const {
  '1': 'LeaseKeepAliveRequest',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 3, '10': 'ID'},
  ],
};

/// Descriptor for `LeaseKeepAliveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseKeepAliveRequestDescriptor = $convert.base64Decode('ChVMZWFzZUtlZXBBbGl2ZVJlcXVlc3QSDgoCSUQYASABKANSAklE');
@$core.Deprecated('Use leaseKeepAliveResponseDescriptor instead')
const LeaseKeepAliveResponse$json = const {
  '1': 'LeaseKeepAliveResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
    const {'1': 'ID', '3': 2, '4': 1, '5': 3, '10': 'ID'},
    const {'1': 'TTL', '3': 3, '4': 1, '5': 3, '10': 'TTL'},
  ],
};

/// Descriptor for `LeaseKeepAliveResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseKeepAliveResponseDescriptor = $convert.base64Decode('ChZMZWFzZUtlZXBBbGl2ZVJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZXNwb25zZUhlYWRlclIGaGVhZGVyEg4KAklEGAIgASgDUgJJRBIQCgNUVEwYAyABKANSA1RUTA==');
@$core.Deprecated('Use leaseTimeToLiveRequestDescriptor instead')
const LeaseTimeToLiveRequest$json = const {
  '1': 'LeaseTimeToLiveRequest',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 3, '10': 'ID'},
    const {'1': 'keys', '3': 2, '4': 1, '5': 8, '10': 'keys'},
  ],
};

/// Descriptor for `LeaseTimeToLiveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseTimeToLiveRequestDescriptor = $convert.base64Decode('ChZMZWFzZVRpbWVUb0xpdmVSZXF1ZXN0Eg4KAklEGAEgASgDUgJJRBISCgRrZXlzGAIgASgIUgRrZXlz');
@$core.Deprecated('Use leaseTimeToLiveResponseDescriptor instead')
const LeaseTimeToLiveResponse$json = const {
  '1': 'LeaseTimeToLiveResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
    const {'1': 'ID', '3': 2, '4': 1, '5': 3, '10': 'ID'},
    const {'1': 'TTL', '3': 3, '4': 1, '5': 3, '10': 'TTL'},
    const {'1': 'grantedTTL', '3': 4, '4': 1, '5': 3, '10': 'grantedTTL'},
    const {'1': 'keys', '3': 5, '4': 3, '5': 12, '10': 'keys'},
  ],
};

/// Descriptor for `LeaseTimeToLiveResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseTimeToLiveResponseDescriptor = $convert.base64Decode('ChdMZWFzZVRpbWVUb0xpdmVSZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlchIOCgJJRBgCIAEoA1ICSUQSEAoDVFRMGAMgASgDUgNUVEwSHgoKZ3JhbnRlZFRUTBgEIAEoA1IKZ3JhbnRlZFRUTBISCgRrZXlzGAUgAygMUgRrZXlz');
@$core.Deprecated('Use leaseLeasesRequestDescriptor instead')
const LeaseLeasesRequest$json = const {
  '1': 'LeaseLeasesRequest',
};

/// Descriptor for `LeaseLeasesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseLeasesRequestDescriptor = $convert.base64Decode('ChJMZWFzZUxlYXNlc1JlcXVlc3Q=');
@$core.Deprecated('Use leaseStatusDescriptor instead')
const LeaseStatus$json = const {
  '1': 'LeaseStatus',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 3, '10': 'ID'},
  ],
};

/// Descriptor for `LeaseStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseStatusDescriptor = $convert.base64Decode('CgtMZWFzZVN0YXR1cxIOCgJJRBgBIAEoA1ICSUQ=');
@$core.Deprecated('Use leaseLeasesResponseDescriptor instead')
const LeaseLeasesResponse$json = const {
  '1': 'LeaseLeasesResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
    const {'1': 'leases', '3': 2, '4': 3, '5': 11, '6': '.etcdserverpb.LeaseStatus', '10': 'leases'},
  ],
};

/// Descriptor for `LeaseLeasesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseLeasesResponseDescriptor = $convert.base64Decode('ChNMZWFzZUxlYXNlc1Jlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZXNwb25zZUhlYWRlclIGaGVhZGVyEjEKBmxlYXNlcxgCIAMoCzIZLmV0Y2RzZXJ2ZXJwYi5MZWFzZVN0YXR1c1IGbGVhc2Vz');
@$core.Deprecated('Use memberDescriptor instead')
const Member$json = const {
  '1': 'Member',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 4, '10': 'ID'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'peerURLs', '3': 3, '4': 3, '5': 9, '10': 'peerURLs'},
    const {'1': 'clientURLs', '3': 4, '4': 3, '5': 9, '10': 'clientURLs'},
    const {'1': 'isLearner', '3': 5, '4': 1, '5': 8, '10': 'isLearner'},
  ],
};

/// Descriptor for `Member`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberDescriptor = $convert.base64Decode('CgZNZW1iZXISDgoCSUQYASABKARSAklEEhIKBG5hbWUYAiABKAlSBG5hbWUSGgoIcGVlclVSTHMYAyADKAlSCHBlZXJVUkxzEh4KCmNsaWVudFVSTHMYBCADKAlSCmNsaWVudFVSTHMSHAoJaXNMZWFybmVyGAUgASgIUglpc0xlYXJuZXI=');
@$core.Deprecated('Use memberAddRequestDescriptor instead')
const MemberAddRequest$json = const {
  '1': 'MemberAddRequest',
  '2': const [
    const {'1': 'peerURLs', '3': 1, '4': 3, '5': 9, '10': 'peerURLs'},
    const {'1': 'isLearner', '3': 2, '4': 1, '5': 8, '10': 'isLearner'},
  ],
};

/// Descriptor for `MemberAddRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberAddRequestDescriptor = $convert.base64Decode('ChBNZW1iZXJBZGRSZXF1ZXN0EhoKCHBlZXJVUkxzGAEgAygJUghwZWVyVVJMcxIcCglpc0xlYXJuZXIYAiABKAhSCWlzTGVhcm5lcg==');
@$core.Deprecated('Use memberAddResponseDescriptor instead')
const MemberAddResponse$json = const {
  '1': 'MemberAddResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
    const {'1': 'member', '3': 2, '4': 1, '5': 11, '6': '.etcdserverpb.Member', '10': 'member'},
    const {'1': 'members', '3': 3, '4': 3, '5': 11, '6': '.etcdserverpb.Member', '10': 'members'},
  ],
};

/// Descriptor for `MemberAddResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberAddResponseDescriptor = $convert.base64Decode('ChFNZW1iZXJBZGRSZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlchIsCgZtZW1iZXIYAiABKAsyFC5ldGNkc2VydmVycGIuTWVtYmVyUgZtZW1iZXISLgoHbWVtYmVycxgDIAMoCzIULmV0Y2RzZXJ2ZXJwYi5NZW1iZXJSB21lbWJlcnM=');
@$core.Deprecated('Use memberRemoveRequestDescriptor instead')
const MemberRemoveRequest$json = const {
  '1': 'MemberRemoveRequest',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 4, '10': 'ID'},
  ],
};

/// Descriptor for `MemberRemoveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberRemoveRequestDescriptor = $convert.base64Decode('ChNNZW1iZXJSZW1vdmVSZXF1ZXN0Eg4KAklEGAEgASgEUgJJRA==');
@$core.Deprecated('Use memberRemoveResponseDescriptor instead')
const MemberRemoveResponse$json = const {
  '1': 'MemberRemoveResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
    const {'1': 'members', '3': 2, '4': 3, '5': 11, '6': '.etcdserverpb.Member', '10': 'members'},
  ],
};

/// Descriptor for `MemberRemoveResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberRemoveResponseDescriptor = $convert.base64Decode('ChRNZW1iZXJSZW1vdmVSZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlchIuCgdtZW1iZXJzGAIgAygLMhQuZXRjZHNlcnZlcnBiLk1lbWJlclIHbWVtYmVycw==');
@$core.Deprecated('Use memberUpdateRequestDescriptor instead')
const MemberUpdateRequest$json = const {
  '1': 'MemberUpdateRequest',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 4, '10': 'ID'},
    const {'1': 'peerURLs', '3': 2, '4': 3, '5': 9, '10': 'peerURLs'},
  ],
};

/// Descriptor for `MemberUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberUpdateRequestDescriptor = $convert.base64Decode('ChNNZW1iZXJVcGRhdGVSZXF1ZXN0Eg4KAklEGAEgASgEUgJJRBIaCghwZWVyVVJMcxgCIAMoCVIIcGVlclVSTHM=');
@$core.Deprecated('Use memberUpdateResponseDescriptor instead')
const MemberUpdateResponse$json = const {
  '1': 'MemberUpdateResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
    const {'1': 'members', '3': 2, '4': 3, '5': 11, '6': '.etcdserverpb.Member', '10': 'members'},
  ],
};

/// Descriptor for `MemberUpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberUpdateResponseDescriptor = $convert.base64Decode('ChRNZW1iZXJVcGRhdGVSZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlchIuCgdtZW1iZXJzGAIgAygLMhQuZXRjZHNlcnZlcnBiLk1lbWJlclIHbWVtYmVycw==');
@$core.Deprecated('Use memberListRequestDescriptor instead')
const MemberListRequest$json = const {
  '1': 'MemberListRequest',
  '2': const [
    const {'1': 'linearizable', '3': 1, '4': 1, '5': 8, '10': 'linearizable'},
  ],
};

/// Descriptor for `MemberListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberListRequestDescriptor = $convert.base64Decode('ChFNZW1iZXJMaXN0UmVxdWVzdBIiCgxsaW5lYXJpemFibGUYASABKAhSDGxpbmVhcml6YWJsZQ==');
@$core.Deprecated('Use memberListResponseDescriptor instead')
const MemberListResponse$json = const {
  '1': 'MemberListResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
    const {'1': 'members', '3': 2, '4': 3, '5': 11, '6': '.etcdserverpb.Member', '10': 'members'},
  ],
};

/// Descriptor for `MemberListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberListResponseDescriptor = $convert.base64Decode('ChJNZW1iZXJMaXN0UmVzcG9uc2USNAoGaGVhZGVyGAEgASgLMhwuZXRjZHNlcnZlcnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXISLgoHbWVtYmVycxgCIAMoCzIULmV0Y2RzZXJ2ZXJwYi5NZW1iZXJSB21lbWJlcnM=');
@$core.Deprecated('Use memberPromoteRequestDescriptor instead')
const MemberPromoteRequest$json = const {
  '1': 'MemberPromoteRequest',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 4, '10': 'ID'},
  ],
};

/// Descriptor for `MemberPromoteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberPromoteRequestDescriptor = $convert.base64Decode('ChRNZW1iZXJQcm9tb3RlUmVxdWVzdBIOCgJJRBgBIAEoBFICSUQ=');
@$core.Deprecated('Use memberPromoteResponseDescriptor instead')
const MemberPromoteResponse$json = const {
  '1': 'MemberPromoteResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
    const {'1': 'members', '3': 2, '4': 3, '5': 11, '6': '.etcdserverpb.Member', '10': 'members'},
  ],
};

/// Descriptor for `MemberPromoteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberPromoteResponseDescriptor = $convert.base64Decode('ChVNZW1iZXJQcm9tb3RlUmVzcG9uc2USNAoGaGVhZGVyGAEgASgLMhwuZXRjZHNlcnZlcnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXISLgoHbWVtYmVycxgCIAMoCzIULmV0Y2RzZXJ2ZXJwYi5NZW1iZXJSB21lbWJlcnM=');
@$core.Deprecated('Use defragmentRequestDescriptor instead')
const DefragmentRequest$json = const {
  '1': 'DefragmentRequest',
};

/// Descriptor for `DefragmentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List defragmentRequestDescriptor = $convert.base64Decode('ChFEZWZyYWdtZW50UmVxdWVzdA==');
@$core.Deprecated('Use defragmentResponseDescriptor instead')
const DefragmentResponse$json = const {
  '1': 'DefragmentResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `DefragmentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List defragmentResponseDescriptor = $convert.base64Decode('ChJEZWZyYWdtZW50UmVzcG9uc2USNAoGaGVhZGVyGAEgASgLMhwuZXRjZHNlcnZlcnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXI=');
@$core.Deprecated('Use moveLeaderRequestDescriptor instead')
const MoveLeaderRequest$json = const {
  '1': 'MoveLeaderRequest',
  '2': const [
    const {'1': 'targetID', '3': 1, '4': 1, '5': 4, '10': 'targetID'},
  ],
};

/// Descriptor for `MoveLeaderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moveLeaderRequestDescriptor = $convert.base64Decode('ChFNb3ZlTGVhZGVyUmVxdWVzdBIaCgh0YXJnZXRJRBgBIAEoBFIIdGFyZ2V0SUQ=');
@$core.Deprecated('Use moveLeaderResponseDescriptor instead')
const MoveLeaderResponse$json = const {
  '1': 'MoveLeaderResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `MoveLeaderResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moveLeaderResponseDescriptor = $convert.base64Decode('ChJNb3ZlTGVhZGVyUmVzcG9uc2USNAoGaGVhZGVyGAEgASgLMhwuZXRjZHNlcnZlcnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXI=');
@$core.Deprecated('Use alarmRequestDescriptor instead')
const AlarmRequest$json = const {
  '1': 'AlarmRequest',
  '2': const [
    const {'1': 'action', '3': 1, '4': 1, '5': 14, '6': '.etcdserverpb.AlarmRequest.AlarmAction', '10': 'action'},
    const {'1': 'memberID', '3': 2, '4': 1, '5': 4, '10': 'memberID'},
    const {'1': 'alarm', '3': 3, '4': 1, '5': 14, '6': '.etcdserverpb.AlarmType', '10': 'alarm'},
  ],
  '4': const [AlarmRequest_AlarmAction$json],
};

@$core.Deprecated('Use alarmRequestDescriptor instead')
const AlarmRequest_AlarmAction$json = const {
  '1': 'AlarmAction',
  '2': const [
    const {'1': 'GET', '2': 0},
    const {'1': 'ACTIVATE', '2': 1},
    const {'1': 'DEACTIVATE', '2': 2},
  ],
};

/// Descriptor for `AlarmRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alarmRequestDescriptor = $convert.base64Decode('CgxBbGFybVJlcXVlc3QSPgoGYWN0aW9uGAEgASgOMiYuZXRjZHNlcnZlcnBiLkFsYXJtUmVxdWVzdC5BbGFybUFjdGlvblIGYWN0aW9uEhoKCG1lbWJlcklEGAIgASgEUghtZW1iZXJJRBItCgVhbGFybRgDIAEoDjIXLmV0Y2RzZXJ2ZXJwYi5BbGFybVR5cGVSBWFsYXJtIjQKC0FsYXJtQWN0aW9uEgcKA0dFVBAAEgwKCEFDVElWQVRFEAESDgoKREVBQ1RJVkFURRAC');
@$core.Deprecated('Use alarmMemberDescriptor instead')
const AlarmMember$json = const {
  '1': 'AlarmMember',
  '2': const [
    const {'1': 'memberID', '3': 1, '4': 1, '5': 4, '10': 'memberID'},
    const {'1': 'alarm', '3': 2, '4': 1, '5': 14, '6': '.etcdserverpb.AlarmType', '10': 'alarm'},
  ],
};

/// Descriptor for `AlarmMember`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alarmMemberDescriptor = $convert.base64Decode('CgtBbGFybU1lbWJlchIaCghtZW1iZXJJRBgBIAEoBFIIbWVtYmVySUQSLQoFYWxhcm0YAiABKA4yFy5ldGNkc2VydmVycGIuQWxhcm1UeXBlUgVhbGFybQ==');
@$core.Deprecated('Use alarmResponseDescriptor instead')
const AlarmResponse$json = const {
  '1': 'AlarmResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
    const {'1': 'alarms', '3': 2, '4': 3, '5': 11, '6': '.etcdserverpb.AlarmMember', '10': 'alarms'},
  ],
};

/// Descriptor for `AlarmResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alarmResponseDescriptor = $convert.base64Decode('Cg1BbGFybVJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZXNwb25zZUhlYWRlclIGaGVhZGVyEjEKBmFsYXJtcxgCIAMoCzIZLmV0Y2RzZXJ2ZXJwYi5BbGFybU1lbWJlclIGYWxhcm1z');
@$core.Deprecated('Use downgradeRequestDescriptor instead')
const DowngradeRequest$json = const {
  '1': 'DowngradeRequest',
  '2': const [
    const {'1': 'action', '3': 1, '4': 1, '5': 14, '6': '.etcdserverpb.DowngradeRequest.DowngradeAction', '10': 'action'},
    const {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
  ],
  '4': const [DowngradeRequest_DowngradeAction$json],
};

@$core.Deprecated('Use downgradeRequestDescriptor instead')
const DowngradeRequest_DowngradeAction$json = const {
  '1': 'DowngradeAction',
  '2': const [
    const {'1': 'VALIDATE', '2': 0},
    const {'1': 'ENABLE', '2': 1},
    const {'1': 'CANCEL', '2': 2},
  ],
};

/// Descriptor for `DowngradeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downgradeRequestDescriptor = $convert.base64Decode('ChBEb3duZ3JhZGVSZXF1ZXN0EkYKBmFjdGlvbhgBIAEoDjIuLmV0Y2RzZXJ2ZXJwYi5Eb3duZ3JhZGVSZXF1ZXN0LkRvd25ncmFkZUFjdGlvblIGYWN0aW9uEhgKB3ZlcnNpb24YAiABKAlSB3ZlcnNpb24iNwoPRG93bmdyYWRlQWN0aW9uEgwKCFZBTElEQVRFEAASCgoGRU5BQkxFEAESCgoGQ0FOQ0VMEAI=');
@$core.Deprecated('Use downgradeResponseDescriptor instead')
const DowngradeResponse$json = const {
  '1': 'DowngradeResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
    const {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `DowngradeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downgradeResponseDescriptor = $convert.base64Decode('ChFEb3duZ3JhZGVSZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlchIYCgd2ZXJzaW9uGAIgASgJUgd2ZXJzaW9u');
@$core.Deprecated('Use statusRequestDescriptor instead')
const StatusRequest$json = const {
  '1': 'StatusRequest',
};

/// Descriptor for `StatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusRequestDescriptor = $convert.base64Decode('Cg1TdGF0dXNSZXF1ZXN0');
@$core.Deprecated('Use statusResponseDescriptor instead')
const StatusResponse$json = const {
  '1': 'StatusResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
    const {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'dbSize', '3': 3, '4': 1, '5': 3, '10': 'dbSize'},
    const {'1': 'leader', '3': 4, '4': 1, '5': 4, '10': 'leader'},
    const {'1': 'raftIndex', '3': 5, '4': 1, '5': 4, '10': 'raftIndex'},
    const {'1': 'raftTerm', '3': 6, '4': 1, '5': 4, '10': 'raftTerm'},
    const {'1': 'raftAppliedIndex', '3': 7, '4': 1, '5': 4, '10': 'raftAppliedIndex'},
    const {'1': 'errors', '3': 8, '4': 3, '5': 9, '10': 'errors'},
    const {'1': 'dbSizeInUse', '3': 9, '4': 1, '5': 3, '10': 'dbSizeInUse'},
    const {'1': 'isLearner', '3': 10, '4': 1, '5': 8, '10': 'isLearner'},
  ],
};

/// Descriptor for `StatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusResponseDescriptor = $convert.base64Decode('Cg5TdGF0dXNSZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlchIYCgd2ZXJzaW9uGAIgASgJUgd2ZXJzaW9uEhYKBmRiU2l6ZRgDIAEoA1IGZGJTaXplEhYKBmxlYWRlchgEIAEoBFIGbGVhZGVyEhwKCXJhZnRJbmRleBgFIAEoBFIJcmFmdEluZGV4EhoKCHJhZnRUZXJtGAYgASgEUghyYWZ0VGVybRIqChByYWZ0QXBwbGllZEluZGV4GAcgASgEUhByYWZ0QXBwbGllZEluZGV4EhYKBmVycm9ycxgIIAMoCVIGZXJyb3JzEiAKC2RiU2l6ZUluVXNlGAkgASgDUgtkYlNpemVJblVzZRIcCglpc0xlYXJuZXIYCiABKAhSCWlzTGVhcm5lcg==');
@$core.Deprecated('Use authEnableRequestDescriptor instead')
const AuthEnableRequest$json = const {
  '1': 'AuthEnableRequest',
};

/// Descriptor for `AuthEnableRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authEnableRequestDescriptor = $convert.base64Decode('ChFBdXRoRW5hYmxlUmVxdWVzdA==');
@$core.Deprecated('Use authDisableRequestDescriptor instead')
const AuthDisableRequest$json = const {
  '1': 'AuthDisableRequest',
};

/// Descriptor for `AuthDisableRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authDisableRequestDescriptor = $convert.base64Decode('ChJBdXRoRGlzYWJsZVJlcXVlc3Q=');
@$core.Deprecated('Use authStatusRequestDescriptor instead')
const AuthStatusRequest$json = const {
  '1': 'AuthStatusRequest',
};

/// Descriptor for `AuthStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authStatusRequestDescriptor = $convert.base64Decode('ChFBdXRoU3RhdHVzUmVxdWVzdA==');
@$core.Deprecated('Use authenticateRequestDescriptor instead')
const AuthenticateRequest$json = const {
  '1': 'AuthenticateRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `AuthenticateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticateRequestDescriptor = $convert.base64Decode('ChNBdXRoZW50aWNhdGVSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSGgoIcGFzc3dvcmQYAiABKAlSCHBhc3N3b3Jk');
@$core.Deprecated('Use authUserAddRequestDescriptor instead')
const AuthUserAddRequest$json = const {
  '1': 'AuthUserAddRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'options', '3': 3, '4': 1, '5': 11, '6': '.authpb.UserAddOptions', '10': 'options'},
    const {'1': 'hashedPassword', '3': 4, '4': 1, '5': 9, '10': 'hashedPassword'},
  ],
};

/// Descriptor for `AuthUserAddRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserAddRequestDescriptor = $convert.base64Decode('ChJBdXRoVXNlckFkZFJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRIaCghwYXNzd29yZBgCIAEoCVIIcGFzc3dvcmQSMAoHb3B0aW9ucxgDIAEoCzIWLmF1dGhwYi5Vc2VyQWRkT3B0aW9uc1IHb3B0aW9ucxImCg5oYXNoZWRQYXNzd29yZBgEIAEoCVIOaGFzaGVkUGFzc3dvcmQ=');
@$core.Deprecated('Use authUserGetRequestDescriptor instead')
const AuthUserGetRequest$json = const {
  '1': 'AuthUserGetRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `AuthUserGetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserGetRequestDescriptor = $convert.base64Decode('ChJBdXRoVXNlckdldFJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use authUserDeleteRequestDescriptor instead')
const AuthUserDeleteRequest$json = const {
  '1': 'AuthUserDeleteRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `AuthUserDeleteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserDeleteRequestDescriptor = $convert.base64Decode('ChVBdXRoVXNlckRlbGV0ZVJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use authUserChangePasswordRequestDescriptor instead')
const AuthUserChangePasswordRequest$json = const {
  '1': 'AuthUserChangePasswordRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'hashedPassword', '3': 3, '4': 1, '5': 9, '10': 'hashedPassword'},
  ],
};

/// Descriptor for `AuthUserChangePasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserChangePasswordRequestDescriptor = $convert.base64Decode('Ch1BdXRoVXNlckNoYW5nZVBhc3N3b3JkUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZBImCg5oYXNoZWRQYXNzd29yZBgDIAEoCVIOaGFzaGVkUGFzc3dvcmQ=');
@$core.Deprecated('Use authUserGrantRoleRequestDescriptor instead')
const AuthUserGrantRoleRequest$json = const {
  '1': 'AuthUserGrantRoleRequest',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 9, '10': 'user'},
    const {'1': 'role', '3': 2, '4': 1, '5': 9, '10': 'role'},
  ],
};

/// Descriptor for `AuthUserGrantRoleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserGrantRoleRequestDescriptor = $convert.base64Decode('ChhBdXRoVXNlckdyYW50Um9sZVJlcXVlc3QSEgoEdXNlchgBIAEoCVIEdXNlchISCgRyb2xlGAIgASgJUgRyb2xl');
@$core.Deprecated('Use authUserRevokeRoleRequestDescriptor instead')
const AuthUserRevokeRoleRequest$json = const {
  '1': 'AuthUserRevokeRoleRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'role', '3': 2, '4': 1, '5': 9, '10': 'role'},
  ],
};

/// Descriptor for `AuthUserRevokeRoleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserRevokeRoleRequestDescriptor = $convert.base64Decode('ChlBdXRoVXNlclJldm9rZVJvbGVSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSEgoEcm9sZRgCIAEoCVIEcm9sZQ==');
@$core.Deprecated('Use authRoleAddRequestDescriptor instead')
const AuthRoleAddRequest$json = const {
  '1': 'AuthRoleAddRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `AuthRoleAddRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRoleAddRequestDescriptor = $convert.base64Decode('ChJBdXRoUm9sZUFkZFJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use authRoleGetRequestDescriptor instead')
const AuthRoleGetRequest$json = const {
  '1': 'AuthRoleGetRequest',
  '2': const [
    const {'1': 'role', '3': 1, '4': 1, '5': 9, '10': 'role'},
  ],
};

/// Descriptor for `AuthRoleGetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRoleGetRequestDescriptor = $convert.base64Decode('ChJBdXRoUm9sZUdldFJlcXVlc3QSEgoEcm9sZRgBIAEoCVIEcm9sZQ==');
@$core.Deprecated('Use authUserListRequestDescriptor instead')
const AuthUserListRequest$json = const {
  '1': 'AuthUserListRequest',
};

/// Descriptor for `AuthUserListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserListRequestDescriptor = $convert.base64Decode('ChNBdXRoVXNlckxpc3RSZXF1ZXN0');
@$core.Deprecated('Use authRoleListRequestDescriptor instead')
const AuthRoleListRequest$json = const {
  '1': 'AuthRoleListRequest',
};

/// Descriptor for `AuthRoleListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRoleListRequestDescriptor = $convert.base64Decode('ChNBdXRoUm9sZUxpc3RSZXF1ZXN0');
@$core.Deprecated('Use authRoleDeleteRequestDescriptor instead')
const AuthRoleDeleteRequest$json = const {
  '1': 'AuthRoleDeleteRequest',
  '2': const [
    const {'1': 'role', '3': 1, '4': 1, '5': 9, '10': 'role'},
  ],
};

/// Descriptor for `AuthRoleDeleteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRoleDeleteRequestDescriptor = $convert.base64Decode('ChVBdXRoUm9sZURlbGV0ZVJlcXVlc3QSEgoEcm9sZRgBIAEoCVIEcm9sZQ==');
@$core.Deprecated('Use authRoleGrantPermissionRequestDescriptor instead')
const AuthRoleGrantPermissionRequest$json = const {
  '1': 'AuthRoleGrantPermissionRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'perm', '3': 2, '4': 1, '5': 11, '6': '.authpb.Permission', '10': 'perm'},
  ],
};

/// Descriptor for `AuthRoleGrantPermissionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRoleGrantPermissionRequestDescriptor = $convert.base64Decode('Ch5BdXRoUm9sZUdyYW50UGVybWlzc2lvblJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRImCgRwZXJtGAIgASgLMhIuYXV0aHBiLlBlcm1pc3Npb25SBHBlcm0=');
@$core.Deprecated('Use authRoleRevokePermissionRequestDescriptor instead')
const AuthRoleRevokePermissionRequest$json = const {
  '1': 'AuthRoleRevokePermissionRequest',
  '2': const [
    const {'1': 'role', '3': 1, '4': 1, '5': 9, '10': 'role'},
    const {'1': 'key', '3': 2, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'range_end', '3': 3, '4': 1, '5': 12, '10': 'rangeEnd'},
  ],
};

/// Descriptor for `AuthRoleRevokePermissionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRoleRevokePermissionRequestDescriptor = $convert.base64Decode('Ch9BdXRoUm9sZVJldm9rZVBlcm1pc3Npb25SZXF1ZXN0EhIKBHJvbGUYASABKAlSBHJvbGUSEAoDa2V5GAIgASgMUgNrZXkSGwoJcmFuZ2VfZW5kGAMgASgMUghyYW5nZUVuZA==');
@$core.Deprecated('Use authEnableResponseDescriptor instead')
const AuthEnableResponse$json = const {
  '1': 'AuthEnableResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `AuthEnableResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authEnableResponseDescriptor = $convert.base64Decode('ChJBdXRoRW5hYmxlUmVzcG9uc2USNAoGaGVhZGVyGAEgASgLMhwuZXRjZHNlcnZlcnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXI=');
@$core.Deprecated('Use authDisableResponseDescriptor instead')
const AuthDisableResponse$json = const {
  '1': 'AuthDisableResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `AuthDisableResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authDisableResponseDescriptor = $convert.base64Decode('ChNBdXRoRGlzYWJsZVJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZXNwb25zZUhlYWRlclIGaGVhZGVy');
@$core.Deprecated('Use authStatusResponseDescriptor instead')
const AuthStatusResponse$json = const {
  '1': 'AuthStatusResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
    const {'1': 'enabled', '3': 2, '4': 1, '5': 8, '10': 'enabled'},
    const {'1': 'authRevision', '3': 3, '4': 1, '5': 4, '10': 'authRevision'},
  ],
};

/// Descriptor for `AuthStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authStatusResponseDescriptor = $convert.base64Decode('ChJBdXRoU3RhdHVzUmVzcG9uc2USNAoGaGVhZGVyGAEgASgLMhwuZXRjZHNlcnZlcnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXISGAoHZW5hYmxlZBgCIAEoCFIHZW5hYmxlZBIiCgxhdXRoUmV2aXNpb24YAyABKARSDGF1dGhSZXZpc2lvbg==');
@$core.Deprecated('Use authenticateResponseDescriptor instead')
const AuthenticateResponse$json = const {
  '1': 'AuthenticateResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `AuthenticateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticateResponseDescriptor = $convert.base64Decode('ChRBdXRoZW50aWNhdGVSZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlchIUCgV0b2tlbhgCIAEoCVIFdG9rZW4=');
@$core.Deprecated('Use authUserAddResponseDescriptor instead')
const AuthUserAddResponse$json = const {
  '1': 'AuthUserAddResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `AuthUserAddResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserAddResponseDescriptor = $convert.base64Decode('ChNBdXRoVXNlckFkZFJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZXNwb25zZUhlYWRlclIGaGVhZGVy');
@$core.Deprecated('Use authUserGetResponseDescriptor instead')
const AuthUserGetResponse$json = const {
  '1': 'AuthUserGetResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
    const {'1': 'roles', '3': 2, '4': 3, '5': 9, '10': 'roles'},
  ],
};

/// Descriptor for `AuthUserGetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserGetResponseDescriptor = $convert.base64Decode('ChNBdXRoVXNlckdldFJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZXNwb25zZUhlYWRlclIGaGVhZGVyEhQKBXJvbGVzGAIgAygJUgVyb2xlcw==');
@$core.Deprecated('Use authUserDeleteResponseDescriptor instead')
const AuthUserDeleteResponse$json = const {
  '1': 'AuthUserDeleteResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `AuthUserDeleteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserDeleteResponseDescriptor = $convert.base64Decode('ChZBdXRoVXNlckRlbGV0ZVJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZXNwb25zZUhlYWRlclIGaGVhZGVy');
@$core.Deprecated('Use authUserChangePasswordResponseDescriptor instead')
const AuthUserChangePasswordResponse$json = const {
  '1': 'AuthUserChangePasswordResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `AuthUserChangePasswordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserChangePasswordResponseDescriptor = $convert.base64Decode('Ch5BdXRoVXNlckNoYW5nZVBhc3N3b3JkUmVzcG9uc2USNAoGaGVhZGVyGAEgASgLMhwuZXRjZHNlcnZlcnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXI=');
@$core.Deprecated('Use authUserGrantRoleResponseDescriptor instead')
const AuthUserGrantRoleResponse$json = const {
  '1': 'AuthUserGrantRoleResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `AuthUserGrantRoleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserGrantRoleResponseDescriptor = $convert.base64Decode('ChlBdXRoVXNlckdyYW50Um9sZVJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZXNwb25zZUhlYWRlclIGaGVhZGVy');
@$core.Deprecated('Use authUserRevokeRoleResponseDescriptor instead')
const AuthUserRevokeRoleResponse$json = const {
  '1': 'AuthUserRevokeRoleResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `AuthUserRevokeRoleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserRevokeRoleResponseDescriptor = $convert.base64Decode('ChpBdXRoVXNlclJldm9rZVJvbGVSZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlcg==');
@$core.Deprecated('Use authRoleAddResponseDescriptor instead')
const AuthRoleAddResponse$json = const {
  '1': 'AuthRoleAddResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `AuthRoleAddResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRoleAddResponseDescriptor = $convert.base64Decode('ChNBdXRoUm9sZUFkZFJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZXNwb25zZUhlYWRlclIGaGVhZGVy');
@$core.Deprecated('Use authRoleGetResponseDescriptor instead')
const AuthRoleGetResponse$json = const {
  '1': 'AuthRoleGetResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
    const {'1': 'perm', '3': 2, '4': 3, '5': 11, '6': '.authpb.Permission', '10': 'perm'},
  ],
};

/// Descriptor for `AuthRoleGetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRoleGetResponseDescriptor = $convert.base64Decode('ChNBdXRoUm9sZUdldFJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZXNwb25zZUhlYWRlclIGaGVhZGVyEiYKBHBlcm0YAiADKAsyEi5hdXRocGIuUGVybWlzc2lvblIEcGVybQ==');
@$core.Deprecated('Use authRoleListResponseDescriptor instead')
const AuthRoleListResponse$json = const {
  '1': 'AuthRoleListResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
    const {'1': 'roles', '3': 2, '4': 3, '5': 9, '10': 'roles'},
  ],
};

/// Descriptor for `AuthRoleListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRoleListResponseDescriptor = $convert.base64Decode('ChRBdXRoUm9sZUxpc3RSZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlchIUCgVyb2xlcxgCIAMoCVIFcm9sZXM=');
@$core.Deprecated('Use authUserListResponseDescriptor instead')
const AuthUserListResponse$json = const {
  '1': 'AuthUserListResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
    const {'1': 'users', '3': 2, '4': 3, '5': 9, '10': 'users'},
  ],
};

/// Descriptor for `AuthUserListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authUserListResponseDescriptor = $convert.base64Decode('ChRBdXRoVXNlckxpc3RSZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlchIUCgV1c2VycxgCIAMoCVIFdXNlcnM=');
@$core.Deprecated('Use authRoleDeleteResponseDescriptor instead')
const AuthRoleDeleteResponse$json = const {
  '1': 'AuthRoleDeleteResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `AuthRoleDeleteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRoleDeleteResponseDescriptor = $convert.base64Decode('ChZBdXRoUm9sZURlbGV0ZVJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZXNwb25zZUhlYWRlclIGaGVhZGVy');
@$core.Deprecated('Use authRoleGrantPermissionResponseDescriptor instead')
const AuthRoleGrantPermissionResponse$json = const {
  '1': 'AuthRoleGrantPermissionResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `AuthRoleGrantPermissionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRoleGrantPermissionResponseDescriptor = $convert.base64Decode('Ch9BdXRoUm9sZUdyYW50UGVybWlzc2lvblJlc3BvbnNlEjQKBmhlYWRlchgBIAEoCzIcLmV0Y2RzZXJ2ZXJwYi5SZXNwb25zZUhlYWRlclIGaGVhZGVy');
@$core.Deprecated('Use authRoleRevokePermissionResponseDescriptor instead')
const AuthRoleRevokePermissionResponse$json = const {
  '1': 'AuthRoleRevokePermissionResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.etcdserverpb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `AuthRoleRevokePermissionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRoleRevokePermissionResponseDescriptor = $convert.base64Decode('CiBBdXRoUm9sZVJldm9rZVBlcm1pc3Npb25SZXNwb25zZRI0CgZoZWFkZXIYASABKAsyHC5ldGNkc2VydmVycGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlcg==');
const $core.Map<$core.String, $core.dynamic> KVServiceBase$json = const {
  '1': 'KV',
  '2': const [
    const {'1': 'Range', '2': '.etcdserverpb.RangeRequest', '3': '.etcdserverpb.RangeResponse', '4': const {}},
    const {'1': 'Put', '2': '.etcdserverpb.PutRequest', '3': '.etcdserverpb.PutResponse', '4': const {}},
    const {'1': 'DeleteRange', '2': '.etcdserverpb.DeleteRangeRequest', '3': '.etcdserverpb.DeleteRangeResponse', '4': const {}},
    const {'1': 'Txn', '2': '.etcdserverpb.TxnRequest', '3': '.etcdserverpb.TxnResponse', '4': const {}},
    const {'1': 'Compact', '2': '.etcdserverpb.CompactionRequest', '3': '.etcdserverpb.CompactionResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use kVServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> KVServiceBase$messageJson = const {
  '.etcdserverpb.RangeRequest': RangeRequest$json,
  '.etcdserverpb.RangeResponse': RangeResponse$json,
  '.etcdserverpb.ResponseHeader': ResponseHeader$json,
  '.mvccpb.KeyValue': $1.KeyValue$json,
  '.etcdserverpb.PutRequest': PutRequest$json,
  '.etcdserverpb.PutResponse': PutResponse$json,
  '.etcdserverpb.DeleteRangeRequest': DeleteRangeRequest$json,
  '.etcdserverpb.DeleteRangeResponse': DeleteRangeResponse$json,
  '.etcdserverpb.TxnRequest': TxnRequest$json,
  '.etcdserverpb.Compare': Compare$json,
  '.etcdserverpb.RequestOp': RequestOp$json,
  '.etcdserverpb.TxnResponse': TxnResponse$json,
  '.etcdserverpb.ResponseOp': ResponseOp$json,
  '.etcdserverpb.CompactionRequest': CompactionRequest$json,
  '.etcdserverpb.CompactionResponse': CompactionResponse$json,
};

/// Descriptor for `KV`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List kVServiceDescriptor = $convert.base64Decode('CgJLVhJZCgVSYW5nZRIaLmV0Y2RzZXJ2ZXJwYi5SYW5nZVJlcXVlc3QaGy5ldGNkc2VydmVycGIuUmFuZ2VSZXNwb25zZSIXgtPkkwIRIgwvdjMva3YvcmFuZ2U6ASoSUQoDUHV0EhguZXRjZHNlcnZlcnBiLlB1dFJlcXVlc3QaGS5ldGNkc2VydmVycGIuUHV0UmVzcG9uc2UiFYLT5JMCDyIKL3YzL2t2L3B1dDoBKhJxCgtEZWxldGVSYW5nZRIgLmV0Y2RzZXJ2ZXJwYi5EZWxldGVSYW5nZVJlcXVlc3QaIS5ldGNkc2VydmVycGIuRGVsZXRlUmFuZ2VSZXNwb25zZSIdgtPkkwIXIhIvdjMva3YvZGVsZXRlcmFuZ2U6ASoSUQoDVHhuEhguZXRjZHNlcnZlcnBiLlR4blJlcXVlc3QaGS5ldGNkc2VydmVycGIuVHhuUmVzcG9uc2UiFYLT5JMCDyIKL3YzL2t2L3R4bjoBKhJqCgdDb21wYWN0Eh8uZXRjZHNlcnZlcnBiLkNvbXBhY3Rpb25SZXF1ZXN0GiAuZXRjZHNlcnZlcnBiLkNvbXBhY3Rpb25SZXNwb25zZSIcgtPkkwIWIhEvdjMva3YvY29tcGFjdGlvbjoBKg==');
const $core.Map<$core.String, $core.dynamic> WatchServiceBase$json = const {
  '1': 'Watch',
  '2': const [
    const {'1': 'Watch', '2': '.etcdserverpb.WatchRequest', '3': '.etcdserverpb.WatchResponse', '4': const {}, '5': true, '6': true},
  ],
};

@$core.Deprecated('Use watchServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> WatchServiceBase$messageJson = const {
  '.etcdserverpb.WatchRequest': WatchRequest$json,
  '.etcdserverpb.WatchCreateRequest': WatchCreateRequest$json,
  '.etcdserverpb.WatchCancelRequest': WatchCancelRequest$json,
  '.etcdserverpb.WatchProgressRequest': WatchProgressRequest$json,
  '.etcdserverpb.WatchResponse': WatchResponse$json,
  '.etcdserverpb.ResponseHeader': ResponseHeader$json,
  '.mvccpb.Event': $1.Event$json,
  '.mvccpb.KeyValue': $1.KeyValue$json,
};

/// Descriptor for `Watch`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List watchServiceDescriptor = $convert.base64Decode('CgVXYXRjaBJaCgVXYXRjaBIaLmV0Y2RzZXJ2ZXJwYi5XYXRjaFJlcXVlc3QaGy5ldGNkc2VydmVycGIuV2F0Y2hSZXNwb25zZSIUgtPkkwIOIgkvdjMvd2F0Y2g6ASooATAB');
const $core.Map<$core.String, $core.dynamic> LeaseServiceBase$json = const {
  '1': 'Lease',
  '2': const [
    const {'1': 'LeaseGrant', '2': '.etcdserverpb.LeaseGrantRequest', '3': '.etcdserverpb.LeaseGrantResponse', '4': const {}},
    const {'1': 'LeaseRevoke', '2': '.etcdserverpb.LeaseRevokeRequest', '3': '.etcdserverpb.LeaseRevokeResponse', '4': const {}},
    const {'1': 'LeaseKeepAlive', '2': '.etcdserverpb.LeaseKeepAliveRequest', '3': '.etcdserverpb.LeaseKeepAliveResponse', '4': const {}, '5': true, '6': true},
    const {'1': 'LeaseTimeToLive', '2': '.etcdserverpb.LeaseTimeToLiveRequest', '3': '.etcdserverpb.LeaseTimeToLiveResponse', '4': const {}},
    const {'1': 'LeaseLeases', '2': '.etcdserverpb.LeaseLeasesRequest', '3': '.etcdserverpb.LeaseLeasesResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use leaseServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> LeaseServiceBase$messageJson = const {
  '.etcdserverpb.LeaseGrantRequest': LeaseGrantRequest$json,
  '.etcdserverpb.LeaseGrantResponse': LeaseGrantResponse$json,
  '.etcdserverpb.ResponseHeader': ResponseHeader$json,
  '.etcdserverpb.LeaseRevokeRequest': LeaseRevokeRequest$json,
  '.etcdserverpb.LeaseRevokeResponse': LeaseRevokeResponse$json,
  '.etcdserverpb.LeaseKeepAliveRequest': LeaseKeepAliveRequest$json,
  '.etcdserverpb.LeaseKeepAliveResponse': LeaseKeepAliveResponse$json,
  '.etcdserverpb.LeaseTimeToLiveRequest': LeaseTimeToLiveRequest$json,
  '.etcdserverpb.LeaseTimeToLiveResponse': LeaseTimeToLiveResponse$json,
  '.etcdserverpb.LeaseLeasesRequest': LeaseLeasesRequest$json,
  '.etcdserverpb.LeaseLeasesResponse': LeaseLeasesResponse$json,
  '.etcdserverpb.LeaseStatus': LeaseStatus$json,
};

/// Descriptor for `Lease`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List leaseServiceDescriptor = $convert.base64Decode('CgVMZWFzZRJrCgpMZWFzZUdyYW50Eh8uZXRjZHNlcnZlcnBiLkxlYXNlR3JhbnRSZXF1ZXN0GiAuZXRjZHNlcnZlcnBiLkxlYXNlR3JhbnRSZXNwb25zZSIagtPkkwIUIg8vdjMvbGVhc2UvZ3JhbnQ6ASoSiQEKC0xlYXNlUmV2b2tlEiAuZXRjZHNlcnZlcnBiLkxlYXNlUmV2b2tlUmVxdWVzdBohLmV0Y2RzZXJ2ZXJwYi5MZWFzZVJldm9rZVJlc3BvbnNlIjWC0+STAi8iEC92My9sZWFzZS9yZXZva2U6ASpaGCITL3YzL2t2L2xlYXNlL3Jldm9rZToBKhJ/Cg5MZWFzZUtlZXBBbGl2ZRIjLmV0Y2RzZXJ2ZXJwYi5MZWFzZUtlZXBBbGl2ZVJlcXVlc3QaJC5ldGNkc2VydmVycGIuTGVhc2VLZWVwQWxpdmVSZXNwb25zZSIegtPkkwIYIhMvdjMvbGVhc2Uva2VlcGFsaXZlOgEqKAEwARKdAQoPTGVhc2VUaW1lVG9MaXZlEiQuZXRjZHNlcnZlcnBiLkxlYXNlVGltZVRvTGl2ZVJlcXVlc3QaJS5ldGNkc2VydmVycGIuTGVhc2VUaW1lVG9MaXZlUmVzcG9uc2UiPYLT5JMCNyIUL3YzL2xlYXNlL3RpbWV0b2xpdmU6ASpaHCIXL3YzL2t2L2xlYXNlL3RpbWV0b2xpdmU6ASoSiQEKC0xlYXNlTGVhc2VzEiAuZXRjZHNlcnZlcnBiLkxlYXNlTGVhc2VzUmVxdWVzdBohLmV0Y2RzZXJ2ZXJwYi5MZWFzZUxlYXNlc1Jlc3BvbnNlIjWC0+STAi8iEC92My9sZWFzZS9sZWFzZXM6ASpaGCITL3YzL2t2L2xlYXNlL2xlYXNlczoBKg==');
const $core.Map<$core.String, $core.dynamic> ClusterServiceBase$json = const {
  '1': 'Cluster',
  '2': const [
    const {'1': 'MemberAdd', '2': '.etcdserverpb.MemberAddRequest', '3': '.etcdserverpb.MemberAddResponse', '4': const {}},
    const {'1': 'MemberRemove', '2': '.etcdserverpb.MemberRemoveRequest', '3': '.etcdserverpb.MemberRemoveResponse', '4': const {}},
    const {'1': 'MemberUpdate', '2': '.etcdserverpb.MemberUpdateRequest', '3': '.etcdserverpb.MemberUpdateResponse', '4': const {}},
    const {'1': 'MemberList', '2': '.etcdserverpb.MemberListRequest', '3': '.etcdserverpb.MemberListResponse', '4': const {}},
    const {'1': 'MemberPromote', '2': '.etcdserverpb.MemberPromoteRequest', '3': '.etcdserverpb.MemberPromoteResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use clusterServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> ClusterServiceBase$messageJson = const {
  '.etcdserverpb.MemberAddRequest': MemberAddRequest$json,
  '.etcdserverpb.MemberAddResponse': MemberAddResponse$json,
  '.etcdserverpb.ResponseHeader': ResponseHeader$json,
  '.etcdserverpb.Member': Member$json,
  '.etcdserverpb.MemberRemoveRequest': MemberRemoveRequest$json,
  '.etcdserverpb.MemberRemoveResponse': MemberRemoveResponse$json,
  '.etcdserverpb.MemberUpdateRequest': MemberUpdateRequest$json,
  '.etcdserverpb.MemberUpdateResponse': MemberUpdateResponse$json,
  '.etcdserverpb.MemberListRequest': MemberListRequest$json,
  '.etcdserverpb.MemberListResponse': MemberListResponse$json,
  '.etcdserverpb.MemberPromoteRequest': MemberPromoteRequest$json,
  '.etcdserverpb.MemberPromoteResponse': MemberPromoteResponse$json,
};

/// Descriptor for `Cluster`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List clusterServiceDescriptor = $convert.base64Decode('CgdDbHVzdGVyEm8KCU1lbWJlckFkZBIeLmV0Y2RzZXJ2ZXJwYi5NZW1iZXJBZGRSZXF1ZXN0Gh8uZXRjZHNlcnZlcnBiLk1lbWJlckFkZFJlc3BvbnNlIiGC0+STAhsiFi92My9jbHVzdGVyL21lbWJlci9hZGQ6ASoSewoMTWVtYmVyUmVtb3ZlEiEuZXRjZHNlcnZlcnBiLk1lbWJlclJlbW92ZVJlcXVlc3QaIi5ldGNkc2VydmVycGIuTWVtYmVyUmVtb3ZlUmVzcG9uc2UiJILT5JMCHiIZL3YzL2NsdXN0ZXIvbWVtYmVyL3JlbW92ZToBKhJ7CgxNZW1iZXJVcGRhdGUSIS5ldGNkc2VydmVycGIuTWVtYmVyVXBkYXRlUmVxdWVzdBoiLmV0Y2RzZXJ2ZXJwYi5NZW1iZXJVcGRhdGVSZXNwb25zZSIkgtPkkwIeIhkvdjMvY2x1c3Rlci9tZW1iZXIvdXBkYXRlOgEqEnMKCk1lbWJlckxpc3QSHy5ldGNkc2VydmVycGIuTWVtYmVyTGlzdFJlcXVlc3QaIC5ldGNkc2VydmVycGIuTWVtYmVyTGlzdFJlc3BvbnNlIiKC0+STAhwiFy92My9jbHVzdGVyL21lbWJlci9saXN0OgEqEn8KDU1lbWJlclByb21vdGUSIi5ldGNkc2VydmVycGIuTWVtYmVyUHJvbW90ZVJlcXVlc3QaIy5ldGNkc2VydmVycGIuTWVtYmVyUHJvbW90ZVJlc3BvbnNlIiWC0+STAh8iGi92My9jbHVzdGVyL21lbWJlci9wcm9tb3RlOgEq');
const $core.Map<$core.String, $core.dynamic> MaintenanceServiceBase$json = const {
  '1': 'Maintenance',
  '2': const [
    const {'1': 'Alarm', '2': '.etcdserverpb.AlarmRequest', '3': '.etcdserverpb.AlarmResponse', '4': const {}},
    const {'1': 'Status', '2': '.etcdserverpb.StatusRequest', '3': '.etcdserverpb.StatusResponse', '4': const {}},
    const {'1': 'Defragment', '2': '.etcdserverpb.DefragmentRequest', '3': '.etcdserverpb.DefragmentResponse', '4': const {}},
    const {'1': 'Hash', '2': '.etcdserverpb.HashRequest', '3': '.etcdserverpb.HashResponse', '4': const {}},
    const {'1': 'HashKV', '2': '.etcdserverpb.HashKVRequest', '3': '.etcdserverpb.HashKVResponse', '4': const {}},
    const {'1': 'Snapshot', '2': '.etcdserverpb.SnapshotRequest', '3': '.etcdserverpb.SnapshotResponse', '4': const {}, '6': true},
    const {'1': 'MoveLeader', '2': '.etcdserverpb.MoveLeaderRequest', '3': '.etcdserverpb.MoveLeaderResponse', '4': const {}},
    const {'1': 'Downgrade', '2': '.etcdserverpb.DowngradeRequest', '3': '.etcdserverpb.DowngradeResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use maintenanceServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> MaintenanceServiceBase$messageJson = const {
  '.etcdserverpb.AlarmRequest': AlarmRequest$json,
  '.etcdserverpb.AlarmResponse': AlarmResponse$json,
  '.etcdserverpb.ResponseHeader': ResponseHeader$json,
  '.etcdserverpb.AlarmMember': AlarmMember$json,
  '.etcdserverpb.StatusRequest': StatusRequest$json,
  '.etcdserverpb.StatusResponse': StatusResponse$json,
  '.etcdserverpb.DefragmentRequest': DefragmentRequest$json,
  '.etcdserverpb.DefragmentResponse': DefragmentResponse$json,
  '.etcdserverpb.HashRequest': HashRequest$json,
  '.etcdserverpb.HashResponse': HashResponse$json,
  '.etcdserverpb.HashKVRequest': HashKVRequest$json,
  '.etcdserverpb.HashKVResponse': HashKVResponse$json,
  '.etcdserverpb.SnapshotRequest': SnapshotRequest$json,
  '.etcdserverpb.SnapshotResponse': SnapshotResponse$json,
  '.etcdserverpb.MoveLeaderRequest': MoveLeaderRequest$json,
  '.etcdserverpb.MoveLeaderResponse': MoveLeaderResponse$json,
  '.etcdserverpb.DowngradeRequest': DowngradeRequest$json,
  '.etcdserverpb.DowngradeResponse': DowngradeResponse$json,
};

/// Descriptor for `Maintenance`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List maintenanceServiceDescriptor = $convert.base64Decode('CgtNYWludGVuYW5jZRJiCgVBbGFybRIaLmV0Y2RzZXJ2ZXJwYi5BbGFybVJlcXVlc3QaGy5ldGNkc2VydmVycGIuQWxhcm1SZXNwb25zZSIggtPkkwIaIhUvdjMvbWFpbnRlbmFuY2UvYWxhcm06ASoSZgoGU3RhdHVzEhsuZXRjZHNlcnZlcnBiLlN0YXR1c1JlcXVlc3QaHC5ldGNkc2VydmVycGIuU3RhdHVzUmVzcG9uc2UiIYLT5JMCGyIWL3YzL21haW50ZW5hbmNlL3N0YXR1czoBKhJ2CgpEZWZyYWdtZW50Eh8uZXRjZHNlcnZlcnBiLkRlZnJhZ21lbnRSZXF1ZXN0GiAuZXRjZHNlcnZlcnBiLkRlZnJhZ21lbnRSZXNwb25zZSIlgtPkkwIfIhovdjMvbWFpbnRlbmFuY2UvZGVmcmFnbWVudDoBKhJeCgRIYXNoEhkuZXRjZHNlcnZlcnBiLkhhc2hSZXF1ZXN0GhouZXRjZHNlcnZlcnBiLkhhc2hSZXNwb25zZSIfgtPkkwIZIhQvdjMvbWFpbnRlbmFuY2UvaGFzaDoBKhJkCgZIYXNoS1YSGy5ldGNkc2VydmVycGIuSGFzaEtWUmVxdWVzdBocLmV0Y2RzZXJ2ZXJwYi5IYXNoS1ZSZXNwb25zZSIfgtPkkwIZIhQvdjMvbWFpbnRlbmFuY2UvaGFzaDoBKhJwCghTbmFwc2hvdBIdLmV0Y2RzZXJ2ZXJwYi5TbmFwc2hvdFJlcXVlc3QaHi5ldGNkc2VydmVycGIuU25hcHNob3RSZXNwb25zZSIjgtPkkwIdIhgvdjMvbWFpbnRlbmFuY2Uvc25hcHNob3Q6ASowARJ/CgpNb3ZlTGVhZGVyEh8uZXRjZHNlcnZlcnBiLk1vdmVMZWFkZXJSZXF1ZXN0GiAuZXRjZHNlcnZlcnBiLk1vdmVMZWFkZXJSZXNwb25zZSIugtPkkwIoIiMvdjMvbWFpbnRlbmFuY2UvdHJhbnNmZXItbGVhZGVyc2hpcDoBKhJyCglEb3duZ3JhZGUSHi5ldGNkc2VydmVycGIuRG93bmdyYWRlUmVxdWVzdBofLmV0Y2RzZXJ2ZXJwYi5Eb3duZ3JhZGVSZXNwb25zZSIkgtPkkwIeIhkvdjMvbWFpbnRlbmFuY2UvZG93bmdyYWRlOgEq');
const $core.Map<$core.String, $core.dynamic> AuthServiceBase$json = const {
  '1': 'Auth',
  '2': const [
    const {'1': 'AuthEnable', '2': '.etcdserverpb.AuthEnableRequest', '3': '.etcdserverpb.AuthEnableResponse', '4': const {}},
    const {'1': 'AuthDisable', '2': '.etcdserverpb.AuthDisableRequest', '3': '.etcdserverpb.AuthDisableResponse', '4': const {}},
    const {'1': 'AuthStatus', '2': '.etcdserverpb.AuthStatusRequest', '3': '.etcdserverpb.AuthStatusResponse', '4': const {}},
    const {'1': 'Authenticate', '2': '.etcdserverpb.AuthenticateRequest', '3': '.etcdserverpb.AuthenticateResponse', '4': const {}},
    const {'1': 'UserAdd', '2': '.etcdserverpb.AuthUserAddRequest', '3': '.etcdserverpb.AuthUserAddResponse', '4': const {}},
    const {'1': 'UserGet', '2': '.etcdserverpb.AuthUserGetRequest', '3': '.etcdserverpb.AuthUserGetResponse', '4': const {}},
    const {'1': 'UserList', '2': '.etcdserverpb.AuthUserListRequest', '3': '.etcdserverpb.AuthUserListResponse', '4': const {}},
    const {'1': 'UserDelete', '2': '.etcdserverpb.AuthUserDeleteRequest', '3': '.etcdserverpb.AuthUserDeleteResponse', '4': const {}},
    const {'1': 'UserChangePassword', '2': '.etcdserverpb.AuthUserChangePasswordRequest', '3': '.etcdserverpb.AuthUserChangePasswordResponse', '4': const {}},
    const {'1': 'UserGrantRole', '2': '.etcdserverpb.AuthUserGrantRoleRequest', '3': '.etcdserverpb.AuthUserGrantRoleResponse', '4': const {}},
    const {'1': 'UserRevokeRole', '2': '.etcdserverpb.AuthUserRevokeRoleRequest', '3': '.etcdserverpb.AuthUserRevokeRoleResponse', '4': const {}},
    const {'1': 'RoleAdd', '2': '.etcdserverpb.AuthRoleAddRequest', '3': '.etcdserverpb.AuthRoleAddResponse', '4': const {}},
    const {'1': 'RoleGet', '2': '.etcdserverpb.AuthRoleGetRequest', '3': '.etcdserverpb.AuthRoleGetResponse', '4': const {}},
    const {'1': 'RoleList', '2': '.etcdserverpb.AuthRoleListRequest', '3': '.etcdserverpb.AuthRoleListResponse', '4': const {}},
    const {'1': 'RoleDelete', '2': '.etcdserverpb.AuthRoleDeleteRequest', '3': '.etcdserverpb.AuthRoleDeleteResponse', '4': const {}},
    const {'1': 'RoleGrantPermission', '2': '.etcdserverpb.AuthRoleGrantPermissionRequest', '3': '.etcdserverpb.AuthRoleGrantPermissionResponse', '4': const {}},
    const {'1': 'RoleRevokePermission', '2': '.etcdserverpb.AuthRoleRevokePermissionRequest', '3': '.etcdserverpb.AuthRoleRevokePermissionResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use authServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> AuthServiceBase$messageJson = const {
  '.etcdserverpb.AuthEnableRequest': AuthEnableRequest$json,
  '.etcdserverpb.AuthEnableResponse': AuthEnableResponse$json,
  '.etcdserverpb.ResponseHeader': ResponseHeader$json,
  '.etcdserverpb.AuthDisableRequest': AuthDisableRequest$json,
  '.etcdserverpb.AuthDisableResponse': AuthDisableResponse$json,
  '.etcdserverpb.AuthStatusRequest': AuthStatusRequest$json,
  '.etcdserverpb.AuthStatusResponse': AuthStatusResponse$json,
  '.etcdserverpb.AuthenticateRequest': AuthenticateRequest$json,
  '.etcdserverpb.AuthenticateResponse': AuthenticateResponse$json,
  '.etcdserverpb.AuthUserAddRequest': AuthUserAddRequest$json,
  '.authpb.UserAddOptions': $2.UserAddOptions$json,
  '.etcdserverpb.AuthUserAddResponse': AuthUserAddResponse$json,
  '.etcdserverpb.AuthUserGetRequest': AuthUserGetRequest$json,
  '.etcdserverpb.AuthUserGetResponse': AuthUserGetResponse$json,
  '.etcdserverpb.AuthUserListRequest': AuthUserListRequest$json,
  '.etcdserverpb.AuthUserListResponse': AuthUserListResponse$json,
  '.etcdserverpb.AuthUserDeleteRequest': AuthUserDeleteRequest$json,
  '.etcdserverpb.AuthUserDeleteResponse': AuthUserDeleteResponse$json,
  '.etcdserverpb.AuthUserChangePasswordRequest': AuthUserChangePasswordRequest$json,
  '.etcdserverpb.AuthUserChangePasswordResponse': AuthUserChangePasswordResponse$json,
  '.etcdserverpb.AuthUserGrantRoleRequest': AuthUserGrantRoleRequest$json,
  '.etcdserverpb.AuthUserGrantRoleResponse': AuthUserGrantRoleResponse$json,
  '.etcdserverpb.AuthUserRevokeRoleRequest': AuthUserRevokeRoleRequest$json,
  '.etcdserverpb.AuthUserRevokeRoleResponse': AuthUserRevokeRoleResponse$json,
  '.etcdserverpb.AuthRoleAddRequest': AuthRoleAddRequest$json,
  '.etcdserverpb.AuthRoleAddResponse': AuthRoleAddResponse$json,
  '.etcdserverpb.AuthRoleGetRequest': AuthRoleGetRequest$json,
  '.etcdserverpb.AuthRoleGetResponse': AuthRoleGetResponse$json,
  '.authpb.Permission': $2.Permission$json,
  '.etcdserverpb.AuthRoleListRequest': AuthRoleListRequest$json,
  '.etcdserverpb.AuthRoleListResponse': AuthRoleListResponse$json,
  '.etcdserverpb.AuthRoleDeleteRequest': AuthRoleDeleteRequest$json,
  '.etcdserverpb.AuthRoleDeleteResponse': AuthRoleDeleteResponse$json,
  '.etcdserverpb.AuthRoleGrantPermissionRequest': AuthRoleGrantPermissionRequest$json,
  '.etcdserverpb.AuthRoleGrantPermissionResponse': AuthRoleGrantPermissionResponse$json,
  '.etcdserverpb.AuthRoleRevokePermissionRequest': AuthRoleRevokePermissionRequest$json,
  '.etcdserverpb.AuthRoleRevokePermissionResponse': AuthRoleRevokePermissionResponse$json,
};

/// Descriptor for `Auth`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List authServiceDescriptor = $convert.base64Decode('CgRBdXRoEmsKCkF1dGhFbmFibGUSHy5ldGNkc2VydmVycGIuQXV0aEVuYWJsZVJlcXVlc3QaIC5ldGNkc2VydmVycGIuQXV0aEVuYWJsZVJlc3BvbnNlIhqC0+STAhQiDy92My9hdXRoL2VuYWJsZToBKhJvCgtBdXRoRGlzYWJsZRIgLmV0Y2RzZXJ2ZXJwYi5BdXRoRGlzYWJsZVJlcXVlc3QaIS5ldGNkc2VydmVycGIuQXV0aERpc2FibGVSZXNwb25zZSIbgtPkkwIVIhAvdjMvYXV0aC9kaXNhYmxlOgEqEmsKCkF1dGhTdGF0dXMSHy5ldGNkc2VydmVycGIuQXV0aFN0YXR1c1JlcXVlc3QaIC5ldGNkc2VydmVycGIuQXV0aFN0YXR1c1Jlc3BvbnNlIhqC0+STAhQiDy92My9hdXRoL3N0YXR1czoBKhJ3CgxBdXRoZW50aWNhdGUSIS5ldGNkc2VydmVycGIuQXV0aGVudGljYXRlUmVxdWVzdBoiLmV0Y2RzZXJ2ZXJwYi5BdXRoZW50aWNhdGVSZXNwb25zZSIggtPkkwIaIhUvdjMvYXV0aC9hdXRoZW50aWNhdGU6ASoSbAoHVXNlckFkZBIgLmV0Y2RzZXJ2ZXJwYi5BdXRoVXNlckFkZFJlcXVlc3QaIS5ldGNkc2VydmVycGIuQXV0aFVzZXJBZGRSZXNwb25zZSIcgtPkkwIWIhEvdjMvYXV0aC91c2VyL2FkZDoBKhJsCgdVc2VyR2V0EiAuZXRjZHNlcnZlcnBiLkF1dGhVc2VyR2V0UmVxdWVzdBohLmV0Y2RzZXJ2ZXJwYi5BdXRoVXNlckdldFJlc3BvbnNlIhyC0+STAhYiES92My9hdXRoL3VzZXIvZ2V0OgEqEnAKCFVzZXJMaXN0EiEuZXRjZHNlcnZlcnBiLkF1dGhVc2VyTGlzdFJlcXVlc3QaIi5ldGNkc2VydmVycGIuQXV0aFVzZXJMaXN0UmVzcG9uc2UiHYLT5JMCFyISL3YzL2F1dGgvdXNlci9saXN0OgEqEngKClVzZXJEZWxldGUSIy5ldGNkc2VydmVycGIuQXV0aFVzZXJEZWxldGVSZXF1ZXN0GiQuZXRjZHNlcnZlcnBiLkF1dGhVc2VyRGVsZXRlUmVzcG9uc2UiH4LT5JMCGSIUL3YzL2F1dGgvdXNlci9kZWxldGU6ASoSkgEKElVzZXJDaGFuZ2VQYXNzd29yZBIrLmV0Y2RzZXJ2ZXJwYi5BdXRoVXNlckNoYW5nZVBhc3N3b3JkUmVxdWVzdBosLmV0Y2RzZXJ2ZXJwYi5BdXRoVXNlckNoYW5nZVBhc3N3b3JkUmVzcG9uc2UiIYLT5JMCGyIWL3YzL2F1dGgvdXNlci9jaGFuZ2VwdzoBKhKAAQoNVXNlckdyYW50Um9sZRImLmV0Y2RzZXJ2ZXJwYi5BdXRoVXNlckdyYW50Um9sZVJlcXVlc3QaJy5ldGNkc2VydmVycGIuQXV0aFVzZXJHcmFudFJvbGVSZXNwb25zZSIegtPkkwIYIhMvdjMvYXV0aC91c2VyL2dyYW50OgEqEoQBCg5Vc2VyUmV2b2tlUm9sZRInLmV0Y2RzZXJ2ZXJwYi5BdXRoVXNlclJldm9rZVJvbGVSZXF1ZXN0GiguZXRjZHNlcnZlcnBiLkF1dGhVc2VyUmV2b2tlUm9sZVJlc3BvbnNlIh+C0+STAhkiFC92My9hdXRoL3VzZXIvcmV2b2tlOgEqEmwKB1JvbGVBZGQSIC5ldGNkc2VydmVycGIuQXV0aFJvbGVBZGRSZXF1ZXN0GiEuZXRjZHNlcnZlcnBiLkF1dGhSb2xlQWRkUmVzcG9uc2UiHILT5JMCFiIRL3YzL2F1dGgvcm9sZS9hZGQ6ASoSbAoHUm9sZUdldBIgLmV0Y2RzZXJ2ZXJwYi5BdXRoUm9sZUdldFJlcXVlc3QaIS5ldGNkc2VydmVycGIuQXV0aFJvbGVHZXRSZXNwb25zZSIcgtPkkwIWIhEvdjMvYXV0aC9yb2xlL2dldDoBKhJwCghSb2xlTGlzdBIhLmV0Y2RzZXJ2ZXJwYi5BdXRoUm9sZUxpc3RSZXF1ZXN0GiIuZXRjZHNlcnZlcnBiLkF1dGhSb2xlTGlzdFJlc3BvbnNlIh2C0+STAhciEi92My9hdXRoL3JvbGUvbGlzdDoBKhJ4CgpSb2xlRGVsZXRlEiMuZXRjZHNlcnZlcnBiLkF1dGhSb2xlRGVsZXRlUmVxdWVzdBokLmV0Y2RzZXJ2ZXJwYi5BdXRoUm9sZURlbGV0ZVJlc3BvbnNlIh+C0+STAhkiFC92My9hdXRoL3JvbGUvZGVsZXRlOgEqEpIBChNSb2xlR3JhbnRQZXJtaXNzaW9uEiwuZXRjZHNlcnZlcnBiLkF1dGhSb2xlR3JhbnRQZXJtaXNzaW9uUmVxdWVzdBotLmV0Y2RzZXJ2ZXJwYi5BdXRoUm9sZUdyYW50UGVybWlzc2lvblJlc3BvbnNlIh6C0+STAhgiEy92My9hdXRoL3JvbGUvZ3JhbnQ6ASoSlgEKFFJvbGVSZXZva2VQZXJtaXNzaW9uEi0uZXRjZHNlcnZlcnBiLkF1dGhSb2xlUmV2b2tlUGVybWlzc2lvblJlcXVlc3QaLi5ldGNkc2VydmVycGIuQXV0aFJvbGVSZXZva2VQZXJtaXNzaW9uUmVzcG9uc2UiH4LT5JMCGSIUL3YzL2F1dGgvcm9sZS9yZXZva2U6ASo=');
