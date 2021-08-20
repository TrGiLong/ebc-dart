///
//  Generated code. Do not modify.
//  source: etcd/api/mvccpb/kv.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'kv.pbenum.dart';

export 'kv.pbenum.dart';

class KeyValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeyValue', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mvccpb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key', $pb.PbFieldType.OY)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createRevision')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modRevision')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OY)
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lease')
    ..hasRequiredFields = false
  ;

  KeyValue._() : super();
  factory KeyValue({
    $core.List<$core.int>? key,
    $fixnum.Int64? createRevision,
    $fixnum.Int64? modRevision,
    $fixnum.Int64? version,
    $core.List<$core.int>? value,
    $fixnum.Int64? lease,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (createRevision != null) {
      _result.createRevision = createRevision;
    }
    if (modRevision != null) {
      _result.modRevision = modRevision;
    }
    if (version != null) {
      _result.version = version;
    }
    if (value != null) {
      _result.value = value;
    }
    if (lease != null) {
      _result.lease = lease;
    }
    return _result;
  }
  factory KeyValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyValue clone() => KeyValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyValue copyWith(void Function(KeyValue) updates) => super.copyWith((message) => updates(message as KeyValue)) as KeyValue; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyValue create() => KeyValue._();
  KeyValue createEmptyInstance() => create();
  static $pb.PbList<KeyValue> createRepeated() => $pb.PbList<KeyValue>();
  @$core.pragma('dart2js:noInline')
  static KeyValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyValue>(create);
  static KeyValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get key => $_getN(0);
  @$pb.TagNumber(1)
  set key($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get createRevision => $_getI64(1);
  @$pb.TagNumber(2)
  set createRevision($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreateRevision() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreateRevision() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get modRevision => $_getI64(2);
  @$pb.TagNumber(3)
  set modRevision($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasModRevision() => $_has(2);
  @$pb.TagNumber(3)
  void clearModRevision() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get version => $_getI64(3);
  @$pb.TagNumber(4)
  set version($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersion() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get value => $_getN(4);
  @$pb.TagNumber(5)
  set value($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearValue() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get lease => $_getI64(5);
  @$pb.TagNumber(6)
  set lease($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLease() => $_has(5);
  @$pb.TagNumber(6)
  void clearLease() => clearField(6);
}

class Event extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Event', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mvccpb'), createEmptyInstance: create)
    ..e<Event_EventType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: Event_EventType.PUT, valueOf: Event_EventType.valueOf, enumValues: Event_EventType.values)
    ..aOM<KeyValue>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kv', subBuilder: KeyValue.create)
    ..aOM<KeyValue>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prevKv', subBuilder: KeyValue.create)
    ..hasRequiredFields = false
  ;

  Event._() : super();
  factory Event({
    Event_EventType? type,
    KeyValue? kv,
    KeyValue? prevKv,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (kv != null) {
      _result.kv = kv;
    }
    if (prevKv != null) {
      _result.prevKv = prevKv;
    }
    return _result;
  }
  factory Event.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Event.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Event clone() => Event()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Event copyWith(void Function(Event) updates) => super.copyWith((message) => updates(message as Event)) as Event; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Event create() => Event._();
  Event createEmptyInstance() => create();
  static $pb.PbList<Event> createRepeated() => $pb.PbList<Event>();
  @$core.pragma('dart2js:noInline')
  static Event getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Event>(create);
  static Event? _defaultInstance;

  @$pb.TagNumber(1)
  Event_EventType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(Event_EventType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  KeyValue get kv => $_getN(1);
  @$pb.TagNumber(2)
  set kv(KeyValue v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasKv() => $_has(1);
  @$pb.TagNumber(2)
  void clearKv() => clearField(2);
  @$pb.TagNumber(2)
  KeyValue ensureKv() => $_ensure(1);

  @$pb.TagNumber(3)
  KeyValue get prevKv => $_getN(2);
  @$pb.TagNumber(3)
  set prevKv(KeyValue v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrevKv() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrevKv() => clearField(3);
  @$pb.TagNumber(3)
  KeyValue ensurePrevKv() => $_ensure(2);
}

