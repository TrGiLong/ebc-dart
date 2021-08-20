///
//  Generated code. Do not modify.
//  source: etcd/api/mvccpb/kv.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use keyValueDescriptor instead')
const KeyValue$json = const {
  '1': 'KeyValue',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'create_revision', '3': 2, '4': 1, '5': 3, '10': 'createRevision'},
    const {'1': 'mod_revision', '3': 3, '4': 1, '5': 3, '10': 'modRevision'},
    const {'1': 'version', '3': 4, '4': 1, '5': 3, '10': 'version'},
    const {'1': 'value', '3': 5, '4': 1, '5': 12, '10': 'value'},
    const {'1': 'lease', '3': 6, '4': 1, '5': 3, '10': 'lease'},
  ],
};

/// Descriptor for `KeyValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyValueDescriptor = $convert.base64Decode('CghLZXlWYWx1ZRIQCgNrZXkYASABKAxSA2tleRInCg9jcmVhdGVfcmV2aXNpb24YAiABKANSDmNyZWF0ZVJldmlzaW9uEiEKDG1vZF9yZXZpc2lvbhgDIAEoA1ILbW9kUmV2aXNpb24SGAoHdmVyc2lvbhgEIAEoA1IHdmVyc2lvbhIUCgV2YWx1ZRgFIAEoDFIFdmFsdWUSFAoFbGVhc2UYBiABKANSBWxlYXNl');
@$core.Deprecated('Use eventDescriptor instead')
const Event$json = const {
  '1': 'Event',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.mvccpb.Event.EventType', '10': 'type'},
    const {'1': 'kv', '3': 2, '4': 1, '5': 11, '6': '.mvccpb.KeyValue', '10': 'kv'},
    const {'1': 'prev_kv', '3': 3, '4': 1, '5': 11, '6': '.mvccpb.KeyValue', '10': 'prevKv'},
  ],
  '4': const [Event_EventType$json],
};

@$core.Deprecated('Use eventDescriptor instead')
const Event_EventType$json = const {
  '1': 'EventType',
  '2': const [
    const {'1': 'PUT', '2': 0},
    const {'1': 'DELETE', '2': 1},
  ],
};

/// Descriptor for `Event`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventDescriptor = $convert.base64Decode('CgVFdmVudBIrCgR0eXBlGAEgASgOMhcubXZjY3BiLkV2ZW50LkV2ZW50VHlwZVIEdHlwZRIgCgJrdhgCIAEoCzIQLm12Y2NwYi5LZXlWYWx1ZVICa3YSKQoHcHJldl9rdhgDIAEoCzIQLm12Y2NwYi5LZXlWYWx1ZVIGcHJldkt2IiAKCUV2ZW50VHlwZRIHCgNQVVQQABIKCgZERUxFVEUQAQ==');
