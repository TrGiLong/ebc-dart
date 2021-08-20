///
//  Generated code. Do not modify.
//  source: etcd/api/etcdserverpb/rpc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../mvccpb/kv.pb.dart' as $1;
import '../authpb/auth.pb.dart' as $2;

import 'rpc.pbenum.dart';

export 'rpc.pbenum.dart';

class ResponseHeader extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResponseHeader', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clusterId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'memberId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'revision')
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'raftTerm', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ResponseHeader._() : super();
  factory ResponseHeader({
    $fixnum.Int64? clusterId,
    $fixnum.Int64? memberId,
    $fixnum.Int64? revision,
    $fixnum.Int64? raftTerm,
  }) {
    final _result = create();
    if (clusterId != null) {
      _result.clusterId = clusterId;
    }
    if (memberId != null) {
      _result.memberId = memberId;
    }
    if (revision != null) {
      _result.revision = revision;
    }
    if (raftTerm != null) {
      _result.raftTerm = raftTerm;
    }
    return _result;
  }
  factory ResponseHeader.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResponseHeader.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResponseHeader clone() => ResponseHeader()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResponseHeader copyWith(void Function(ResponseHeader) updates) => super.copyWith((message) => updates(message as ResponseHeader)) as ResponseHeader; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResponseHeader create() => ResponseHeader._();
  ResponseHeader createEmptyInstance() => create();
  static $pb.PbList<ResponseHeader> createRepeated() => $pb.PbList<ResponseHeader>();
  @$core.pragma('dart2js:noInline')
  static ResponseHeader getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResponseHeader>(create);
  static ResponseHeader? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get clusterId => $_getI64(0);
  @$pb.TagNumber(1)
  set clusterId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClusterId() => $_has(0);
  @$pb.TagNumber(1)
  void clearClusterId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get memberId => $_getI64(1);
  @$pb.TagNumber(2)
  set memberId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMemberId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMemberId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get revision => $_getI64(2);
  @$pb.TagNumber(3)
  set revision($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRevision() => $_has(2);
  @$pb.TagNumber(3)
  void clearRevision() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get raftTerm => $_getI64(3);
  @$pb.TagNumber(4)
  set raftTerm($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRaftTerm() => $_has(3);
  @$pb.TagNumber(4)
  void clearRaftTerm() => clearField(4);
}

class RangeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RangeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rangeEnd', $pb.PbFieldType.OY)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'revision')
    ..e<RangeRequest_SortOrder>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sortOrder', $pb.PbFieldType.OE, defaultOrMaker: RangeRequest_SortOrder.NONE, valueOf: RangeRequest_SortOrder.valueOf, enumValues: RangeRequest_SortOrder.values)
    ..e<RangeRequest_SortTarget>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sortTarget', $pb.PbFieldType.OE, defaultOrMaker: RangeRequest_SortTarget.KEY, valueOf: RangeRequest_SortTarget.valueOf, enumValues: RangeRequest_SortTarget.values)
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serializable')
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keysOnly')
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countOnly')
    ..aInt64(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minModRevision')
    ..aInt64(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxModRevision')
    ..aInt64(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minCreateRevision')
    ..aInt64(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxCreateRevision')
    ..hasRequiredFields = false
  ;

  RangeRequest._() : super();
  factory RangeRequest({
    $core.List<$core.int>? key,
    $core.List<$core.int>? rangeEnd,
    $fixnum.Int64? limit,
    $fixnum.Int64? revision,
    RangeRequest_SortOrder? sortOrder,
    RangeRequest_SortTarget? sortTarget,
    $core.bool? serializable,
    $core.bool? keysOnly,
    $core.bool? countOnly,
    $fixnum.Int64? minModRevision,
    $fixnum.Int64? maxModRevision,
    $fixnum.Int64? minCreateRevision,
    $fixnum.Int64? maxCreateRevision,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (rangeEnd != null) {
      _result.rangeEnd = rangeEnd;
    }
    if (limit != null) {
      _result.limit = limit;
    }
    if (revision != null) {
      _result.revision = revision;
    }
    if (sortOrder != null) {
      _result.sortOrder = sortOrder;
    }
    if (sortTarget != null) {
      _result.sortTarget = sortTarget;
    }
    if (serializable != null) {
      _result.serializable = serializable;
    }
    if (keysOnly != null) {
      _result.keysOnly = keysOnly;
    }
    if (countOnly != null) {
      _result.countOnly = countOnly;
    }
    if (minModRevision != null) {
      _result.minModRevision = minModRevision;
    }
    if (maxModRevision != null) {
      _result.maxModRevision = maxModRevision;
    }
    if (minCreateRevision != null) {
      _result.minCreateRevision = minCreateRevision;
    }
    if (maxCreateRevision != null) {
      _result.maxCreateRevision = maxCreateRevision;
    }
    return _result;
  }
  factory RangeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RangeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RangeRequest clone() => RangeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RangeRequest copyWith(void Function(RangeRequest) updates) => super.copyWith((message) => updates(message as RangeRequest)) as RangeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RangeRequest create() => RangeRequest._();
  RangeRequest createEmptyInstance() => create();
  static $pb.PbList<RangeRequest> createRepeated() => $pb.PbList<RangeRequest>();
  @$core.pragma('dart2js:noInline')
  static RangeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RangeRequest>(create);
  static RangeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get key => $_getN(0);
  @$pb.TagNumber(1)
  set key($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get rangeEnd => $_getN(1);
  @$pb.TagNumber(2)
  set rangeEnd($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRangeEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearRangeEnd() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get limit => $_getI64(2);
  @$pb.TagNumber(3)
  set limit($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearLimit() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get revision => $_getI64(3);
  @$pb.TagNumber(4)
  set revision($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRevision() => $_has(3);
  @$pb.TagNumber(4)
  void clearRevision() => clearField(4);

  @$pb.TagNumber(5)
  RangeRequest_SortOrder get sortOrder => $_getN(4);
  @$pb.TagNumber(5)
  set sortOrder(RangeRequest_SortOrder v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSortOrder() => $_has(4);
  @$pb.TagNumber(5)
  void clearSortOrder() => clearField(5);

  @$pb.TagNumber(6)
  RangeRequest_SortTarget get sortTarget => $_getN(5);
  @$pb.TagNumber(6)
  set sortTarget(RangeRequest_SortTarget v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasSortTarget() => $_has(5);
  @$pb.TagNumber(6)
  void clearSortTarget() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get serializable => $_getBF(6);
  @$pb.TagNumber(7)
  set serializable($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSerializable() => $_has(6);
  @$pb.TagNumber(7)
  void clearSerializable() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get keysOnly => $_getBF(7);
  @$pb.TagNumber(8)
  set keysOnly($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasKeysOnly() => $_has(7);
  @$pb.TagNumber(8)
  void clearKeysOnly() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get countOnly => $_getBF(8);
  @$pb.TagNumber(9)
  set countOnly($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCountOnly() => $_has(8);
  @$pb.TagNumber(9)
  void clearCountOnly() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get minModRevision => $_getI64(9);
  @$pb.TagNumber(10)
  set minModRevision($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasMinModRevision() => $_has(9);
  @$pb.TagNumber(10)
  void clearMinModRevision() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get maxModRevision => $_getI64(10);
  @$pb.TagNumber(11)
  set maxModRevision($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasMaxModRevision() => $_has(10);
  @$pb.TagNumber(11)
  void clearMaxModRevision() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get minCreateRevision => $_getI64(11);
  @$pb.TagNumber(12)
  set minCreateRevision($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasMinCreateRevision() => $_has(11);
  @$pb.TagNumber(12)
  void clearMinCreateRevision() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get maxCreateRevision => $_getI64(12);
  @$pb.TagNumber(13)
  set maxCreateRevision($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasMaxCreateRevision() => $_has(12);
  @$pb.TagNumber(13)
  void clearMaxCreateRevision() => clearField(13);
}

class RangeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RangeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..pc<$1.KeyValue>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kvs', $pb.PbFieldType.PM, subBuilder: $1.KeyValue.create)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'more')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count')
    ..hasRequiredFields = false
  ;

  RangeResponse._() : super();
  factory RangeResponse({
    ResponseHeader? header,
    $core.Iterable<$1.KeyValue>? kvs,
    $core.bool? more,
    $fixnum.Int64? count,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (kvs != null) {
      _result.kvs.addAll(kvs);
    }
    if (more != null) {
      _result.more = more;
    }
    if (count != null) {
      _result.count = count;
    }
    return _result;
  }
  factory RangeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RangeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RangeResponse clone() => RangeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RangeResponse copyWith(void Function(RangeResponse) updates) => super.copyWith((message) => updates(message as RangeResponse)) as RangeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RangeResponse create() => RangeResponse._();
  RangeResponse createEmptyInstance() => create();
  static $pb.PbList<RangeResponse> createRepeated() => $pb.PbList<RangeResponse>();
  @$core.pragma('dart2js:noInline')
  static RangeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RangeResponse>(create);
  static RangeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$1.KeyValue> get kvs => $_getList(1);

  @$pb.TagNumber(3)
  $core.bool get more => $_getBF(2);
  @$pb.TagNumber(3)
  set more($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMore() => $_has(2);
  @$pb.TagNumber(3)
  void clearMore() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get count => $_getI64(3);
  @$pb.TagNumber(4)
  set count($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearCount() => clearField(4);
}

class PutRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PutRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OY)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lease')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prevKv')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ignoreValue')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ignoreLease')
    ..hasRequiredFields = false
  ;

  PutRequest._() : super();
  factory PutRequest({
    $core.List<$core.int>? key,
    $core.List<$core.int>? value,
    $fixnum.Int64? lease,
    $core.bool? prevKv,
    $core.bool? ignoreValue,
    $core.bool? ignoreLease,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (value != null) {
      _result.value = value;
    }
    if (lease != null) {
      _result.lease = lease;
    }
    if (prevKv != null) {
      _result.prevKv = prevKv;
    }
    if (ignoreValue != null) {
      _result.ignoreValue = ignoreValue;
    }
    if (ignoreLease != null) {
      _result.ignoreLease = ignoreLease;
    }
    return _result;
  }
  factory PutRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PutRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PutRequest clone() => PutRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PutRequest copyWith(void Function(PutRequest) updates) => super.copyWith((message) => updates(message as PutRequest)) as PutRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PutRequest create() => PutRequest._();
  PutRequest createEmptyInstance() => create();
  static $pb.PbList<PutRequest> createRepeated() => $pb.PbList<PutRequest>();
  @$core.pragma('dart2js:noInline')
  static PutRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PutRequest>(create);
  static PutRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get key => $_getN(0);
  @$pb.TagNumber(1)
  set key($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get lease => $_getI64(2);
  @$pb.TagNumber(3)
  set lease($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLease() => $_has(2);
  @$pb.TagNumber(3)
  void clearLease() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get prevKv => $_getBF(3);
  @$pb.TagNumber(4)
  set prevKv($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrevKv() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrevKv() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get ignoreValue => $_getBF(4);
  @$pb.TagNumber(5)
  set ignoreValue($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIgnoreValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearIgnoreValue() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get ignoreLease => $_getBF(5);
  @$pb.TagNumber(6)
  set ignoreLease($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIgnoreLease() => $_has(5);
  @$pb.TagNumber(6)
  void clearIgnoreLease() => clearField(6);
}

class PutResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PutResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..aOM<$1.KeyValue>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prevKv', subBuilder: $1.KeyValue.create)
    ..hasRequiredFields = false
  ;

  PutResponse._() : super();
  factory PutResponse({
    ResponseHeader? header,
    $1.KeyValue? prevKv,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (prevKv != null) {
      _result.prevKv = prevKv;
    }
    return _result;
  }
  factory PutResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PutResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PutResponse clone() => PutResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PutResponse copyWith(void Function(PutResponse) updates) => super.copyWith((message) => updates(message as PutResponse)) as PutResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PutResponse create() => PutResponse._();
  PutResponse createEmptyInstance() => create();
  static $pb.PbList<PutResponse> createRepeated() => $pb.PbList<PutResponse>();
  @$core.pragma('dart2js:noInline')
  static PutResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PutResponse>(create);
  static PutResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.KeyValue get prevKv => $_getN(1);
  @$pb.TagNumber(2)
  set prevKv($1.KeyValue v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrevKv() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrevKv() => clearField(2);
  @$pb.TagNumber(2)
  $1.KeyValue ensurePrevKv() => $_ensure(1);
}

class DeleteRangeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteRangeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rangeEnd', $pb.PbFieldType.OY)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prevKv')
    ..hasRequiredFields = false
  ;

  DeleteRangeRequest._() : super();
  factory DeleteRangeRequest({
    $core.List<$core.int>? key,
    $core.List<$core.int>? rangeEnd,
    $core.bool? prevKv,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (rangeEnd != null) {
      _result.rangeEnd = rangeEnd;
    }
    if (prevKv != null) {
      _result.prevKv = prevKv;
    }
    return _result;
  }
  factory DeleteRangeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteRangeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteRangeRequest clone() => DeleteRangeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteRangeRequest copyWith(void Function(DeleteRangeRequest) updates) => super.copyWith((message) => updates(message as DeleteRangeRequest)) as DeleteRangeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteRangeRequest create() => DeleteRangeRequest._();
  DeleteRangeRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteRangeRequest> createRepeated() => $pb.PbList<DeleteRangeRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteRangeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteRangeRequest>(create);
  static DeleteRangeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get key => $_getN(0);
  @$pb.TagNumber(1)
  set key($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get rangeEnd => $_getN(1);
  @$pb.TagNumber(2)
  set rangeEnd($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRangeEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearRangeEnd() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get prevKv => $_getBF(2);
  @$pb.TagNumber(3)
  set prevKv($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrevKv() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrevKv() => clearField(3);
}

class DeleteRangeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteRangeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleted')
    ..pc<$1.KeyValue>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prevKvs', $pb.PbFieldType.PM, subBuilder: $1.KeyValue.create)
    ..hasRequiredFields = false
  ;

  DeleteRangeResponse._() : super();
  factory DeleteRangeResponse({
    ResponseHeader? header,
    $fixnum.Int64? deleted,
    $core.Iterable<$1.KeyValue>? prevKvs,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (deleted != null) {
      _result.deleted = deleted;
    }
    if (prevKvs != null) {
      _result.prevKvs.addAll(prevKvs);
    }
    return _result;
  }
  factory DeleteRangeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteRangeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteRangeResponse clone() => DeleteRangeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteRangeResponse copyWith(void Function(DeleteRangeResponse) updates) => super.copyWith((message) => updates(message as DeleteRangeResponse)) as DeleteRangeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteRangeResponse create() => DeleteRangeResponse._();
  DeleteRangeResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteRangeResponse> createRepeated() => $pb.PbList<DeleteRangeResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteRangeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteRangeResponse>(create);
  static DeleteRangeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get deleted => $_getI64(1);
  @$pb.TagNumber(2)
  set deleted($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeleted() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeleted() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$1.KeyValue> get prevKvs => $_getList(2);
}

enum RequestOp_Request {
  requestRange, 
  requestPut, 
  requestDeleteRange, 
  requestTxn, 
  notSet
}

class RequestOp extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, RequestOp_Request> _RequestOp_RequestByTag = {
    1 : RequestOp_Request.requestRange,
    2 : RequestOp_Request.requestPut,
    3 : RequestOp_Request.requestDeleteRange,
    4 : RequestOp_Request.requestTxn,
    0 : RequestOp_Request.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RequestOp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<RangeRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestRange', subBuilder: RangeRequest.create)
    ..aOM<PutRequest>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestPut', subBuilder: PutRequest.create)
    ..aOM<DeleteRangeRequest>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestDeleteRange', subBuilder: DeleteRangeRequest.create)
    ..aOM<TxnRequest>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestTxn', subBuilder: TxnRequest.create)
    ..hasRequiredFields = false
  ;

  RequestOp._() : super();
  factory RequestOp({
    RangeRequest? requestRange,
    PutRequest? requestPut,
    DeleteRangeRequest? requestDeleteRange,
    TxnRequest? requestTxn,
  }) {
    final _result = create();
    if (requestRange != null) {
      _result.requestRange = requestRange;
    }
    if (requestPut != null) {
      _result.requestPut = requestPut;
    }
    if (requestDeleteRange != null) {
      _result.requestDeleteRange = requestDeleteRange;
    }
    if (requestTxn != null) {
      _result.requestTxn = requestTxn;
    }
    return _result;
  }
  factory RequestOp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestOp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestOp clone() => RequestOp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestOp copyWith(void Function(RequestOp) updates) => super.copyWith((message) => updates(message as RequestOp)) as RequestOp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestOp create() => RequestOp._();
  RequestOp createEmptyInstance() => create();
  static $pb.PbList<RequestOp> createRepeated() => $pb.PbList<RequestOp>();
  @$core.pragma('dart2js:noInline')
  static RequestOp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestOp>(create);
  static RequestOp? _defaultInstance;

  RequestOp_Request whichRequest() => _RequestOp_RequestByTag[$_whichOneof(0)]!;
  void clearRequest() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  RangeRequest get requestRange => $_getN(0);
  @$pb.TagNumber(1)
  set requestRange(RangeRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestRange() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestRange() => clearField(1);
  @$pb.TagNumber(1)
  RangeRequest ensureRequestRange() => $_ensure(0);

  @$pb.TagNumber(2)
  PutRequest get requestPut => $_getN(1);
  @$pb.TagNumber(2)
  set requestPut(PutRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestPut() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestPut() => clearField(2);
  @$pb.TagNumber(2)
  PutRequest ensureRequestPut() => $_ensure(1);

  @$pb.TagNumber(3)
  DeleteRangeRequest get requestDeleteRange => $_getN(2);
  @$pb.TagNumber(3)
  set requestDeleteRange(DeleteRangeRequest v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequestDeleteRange() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestDeleteRange() => clearField(3);
  @$pb.TagNumber(3)
  DeleteRangeRequest ensureRequestDeleteRange() => $_ensure(2);

  @$pb.TagNumber(4)
  TxnRequest get requestTxn => $_getN(3);
  @$pb.TagNumber(4)
  set requestTxn(TxnRequest v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRequestTxn() => $_has(3);
  @$pb.TagNumber(4)
  void clearRequestTxn() => clearField(4);
  @$pb.TagNumber(4)
  TxnRequest ensureRequestTxn() => $_ensure(3);
}

enum ResponseOp_Response {
  responseRange, 
  responsePut, 
  responseDeleteRange, 
  responseTxn, 
  notSet
}

class ResponseOp extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ResponseOp_Response> _ResponseOp_ResponseByTag = {
    1 : ResponseOp_Response.responseRange,
    2 : ResponseOp_Response.responsePut,
    3 : ResponseOp_Response.responseDeleteRange,
    4 : ResponseOp_Response.responseTxn,
    0 : ResponseOp_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResponseOp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<RangeResponse>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseRange', subBuilder: RangeResponse.create)
    ..aOM<PutResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responsePut', subBuilder: PutResponse.create)
    ..aOM<DeleteRangeResponse>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseDeleteRange', subBuilder: DeleteRangeResponse.create)
    ..aOM<TxnResponse>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseTxn', subBuilder: TxnResponse.create)
    ..hasRequiredFields = false
  ;

  ResponseOp._() : super();
  factory ResponseOp({
    RangeResponse? responseRange,
    PutResponse? responsePut,
    DeleteRangeResponse? responseDeleteRange,
    TxnResponse? responseTxn,
  }) {
    final _result = create();
    if (responseRange != null) {
      _result.responseRange = responseRange;
    }
    if (responsePut != null) {
      _result.responsePut = responsePut;
    }
    if (responseDeleteRange != null) {
      _result.responseDeleteRange = responseDeleteRange;
    }
    if (responseTxn != null) {
      _result.responseTxn = responseTxn;
    }
    return _result;
  }
  factory ResponseOp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResponseOp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResponseOp clone() => ResponseOp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResponseOp copyWith(void Function(ResponseOp) updates) => super.copyWith((message) => updates(message as ResponseOp)) as ResponseOp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResponseOp create() => ResponseOp._();
  ResponseOp createEmptyInstance() => create();
  static $pb.PbList<ResponseOp> createRepeated() => $pb.PbList<ResponseOp>();
  @$core.pragma('dart2js:noInline')
  static ResponseOp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResponseOp>(create);
  static ResponseOp? _defaultInstance;

  ResponseOp_Response whichResponse() => _ResponseOp_ResponseByTag[$_whichOneof(0)]!;
  void clearResponse() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  RangeResponse get responseRange => $_getN(0);
  @$pb.TagNumber(1)
  set responseRange(RangeResponse v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResponseRange() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponseRange() => clearField(1);
  @$pb.TagNumber(1)
  RangeResponse ensureResponseRange() => $_ensure(0);

  @$pb.TagNumber(2)
  PutResponse get responsePut => $_getN(1);
  @$pb.TagNumber(2)
  set responsePut(PutResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResponsePut() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponsePut() => clearField(2);
  @$pb.TagNumber(2)
  PutResponse ensureResponsePut() => $_ensure(1);

  @$pb.TagNumber(3)
  DeleteRangeResponse get responseDeleteRange => $_getN(2);
  @$pb.TagNumber(3)
  set responseDeleteRange(DeleteRangeResponse v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasResponseDeleteRange() => $_has(2);
  @$pb.TagNumber(3)
  void clearResponseDeleteRange() => clearField(3);
  @$pb.TagNumber(3)
  DeleteRangeResponse ensureResponseDeleteRange() => $_ensure(2);

  @$pb.TagNumber(4)
  TxnResponse get responseTxn => $_getN(3);
  @$pb.TagNumber(4)
  set responseTxn(TxnResponse v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasResponseTxn() => $_has(3);
  @$pb.TagNumber(4)
  void clearResponseTxn() => clearField(4);
  @$pb.TagNumber(4)
  TxnResponse ensureResponseTxn() => $_ensure(3);
}

enum Compare_TargetUnion {
  version, 
  createRevision, 
  modRevision, 
  value, 
  lease, 
  notSet
}

class Compare extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Compare_TargetUnion> _Compare_TargetUnionByTag = {
    4 : Compare_TargetUnion.version,
    5 : Compare_TargetUnion.createRevision,
    6 : Compare_TargetUnion.modRevision,
    7 : Compare_TargetUnion.value,
    8 : Compare_TargetUnion.lease,
    0 : Compare_TargetUnion.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Compare', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..oo(0, [4, 5, 6, 7, 8])
    ..e<Compare_CompareResult>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: Compare_CompareResult.EQUAL, valueOf: Compare_CompareResult.valueOf, enumValues: Compare_CompareResult.values)
    ..e<Compare_CompareTarget>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'target', $pb.PbFieldType.OE, defaultOrMaker: Compare_CompareTarget.VERSION, valueOf: Compare_CompareTarget.valueOf, enumValues: Compare_CompareTarget.values)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key', $pb.PbFieldType.OY)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createRevision')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modRevision')
    ..a<$core.List<$core.int>>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OY)
    ..aInt64(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lease')
    ..a<$core.List<$core.int>>(64, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rangeEnd', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Compare._() : super();
  factory Compare({
    Compare_CompareResult? result,
    Compare_CompareTarget? target,
    $core.List<$core.int>? key,
    $fixnum.Int64? version,
    $fixnum.Int64? createRevision,
    $fixnum.Int64? modRevision,
    $core.List<$core.int>? value,
    $fixnum.Int64? lease,
    $core.List<$core.int>? rangeEnd,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    if (target != null) {
      _result.target = target;
    }
    if (key != null) {
      _result.key = key;
    }
    if (version != null) {
      _result.version = version;
    }
    if (createRevision != null) {
      _result.createRevision = createRevision;
    }
    if (modRevision != null) {
      _result.modRevision = modRevision;
    }
    if (value != null) {
      _result.value = value;
    }
    if (lease != null) {
      _result.lease = lease;
    }
    if (rangeEnd != null) {
      _result.rangeEnd = rangeEnd;
    }
    return _result;
  }
  factory Compare.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Compare.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Compare clone() => Compare()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Compare copyWith(void Function(Compare) updates) => super.copyWith((message) => updates(message as Compare)) as Compare; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Compare create() => Compare._();
  Compare createEmptyInstance() => create();
  static $pb.PbList<Compare> createRepeated() => $pb.PbList<Compare>();
  @$core.pragma('dart2js:noInline')
  static Compare getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Compare>(create);
  static Compare? _defaultInstance;

  Compare_TargetUnion whichTargetUnion() => _Compare_TargetUnionByTag[$_whichOneof(0)]!;
  void clearTargetUnion() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Compare_CompareResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Compare_CompareResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  @$pb.TagNumber(2)
  Compare_CompareTarget get target => $_getN(1);
  @$pb.TagNumber(2)
  set target(Compare_CompareTarget v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTarget() => $_has(1);
  @$pb.TagNumber(2)
  void clearTarget() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get key => $_getN(2);
  @$pb.TagNumber(3)
  set key($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearKey() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get version => $_getI64(3);
  @$pb.TagNumber(4)
  set version($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersion() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get createRevision => $_getI64(4);
  @$pb.TagNumber(5)
  set createRevision($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreateRevision() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreateRevision() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get modRevision => $_getI64(5);
  @$pb.TagNumber(6)
  set modRevision($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasModRevision() => $_has(5);
  @$pb.TagNumber(6)
  void clearModRevision() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get value => $_getN(6);
  @$pb.TagNumber(7)
  set value($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasValue() => $_has(6);
  @$pb.TagNumber(7)
  void clearValue() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get lease => $_getI64(7);
  @$pb.TagNumber(8)
  set lease($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLease() => $_has(7);
  @$pb.TagNumber(8)
  void clearLease() => clearField(8);

  @$pb.TagNumber(64)
  $core.List<$core.int> get rangeEnd => $_getN(8);
  @$pb.TagNumber(64)
  set rangeEnd($core.List<$core.int> v) { $_setBytes(8, v); }
  @$pb.TagNumber(64)
  $core.bool hasRangeEnd() => $_has(8);
  @$pb.TagNumber(64)
  void clearRangeEnd() => clearField(64);
}

class TxnRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxnRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..pc<Compare>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'compare', $pb.PbFieldType.PM, subBuilder: Compare.create)
    ..pc<RequestOp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success', $pb.PbFieldType.PM, subBuilder: RequestOp.create)
    ..pc<RequestOp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failure', $pb.PbFieldType.PM, subBuilder: RequestOp.create)
    ..hasRequiredFields = false
  ;

  TxnRequest._() : super();
  factory TxnRequest({
    $core.Iterable<Compare>? compare,
    $core.Iterable<RequestOp>? success,
    $core.Iterable<RequestOp>? failure,
  }) {
    final _result = create();
    if (compare != null) {
      _result.compare.addAll(compare);
    }
    if (success != null) {
      _result.success.addAll(success);
    }
    if (failure != null) {
      _result.failure.addAll(failure);
    }
    return _result;
  }
  factory TxnRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxnRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxnRequest clone() => TxnRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxnRequest copyWith(void Function(TxnRequest) updates) => super.copyWith((message) => updates(message as TxnRequest)) as TxnRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxnRequest create() => TxnRequest._();
  TxnRequest createEmptyInstance() => create();
  static $pb.PbList<TxnRequest> createRepeated() => $pb.PbList<TxnRequest>();
  @$core.pragma('dart2js:noInline')
  static TxnRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxnRequest>(create);
  static TxnRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Compare> get compare => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<RequestOp> get success => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<RequestOp> get failure => $_getList(2);
}

class TxnResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxnResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'succeeded')
    ..pc<ResponseOp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responses', $pb.PbFieldType.PM, subBuilder: ResponseOp.create)
    ..hasRequiredFields = false
  ;

  TxnResponse._() : super();
  factory TxnResponse({
    ResponseHeader? header,
    $core.bool? succeeded,
    $core.Iterable<ResponseOp>? responses,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (succeeded != null) {
      _result.succeeded = succeeded;
    }
    if (responses != null) {
      _result.responses.addAll(responses);
    }
    return _result;
  }
  factory TxnResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxnResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxnResponse clone() => TxnResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxnResponse copyWith(void Function(TxnResponse) updates) => super.copyWith((message) => updates(message as TxnResponse)) as TxnResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxnResponse create() => TxnResponse._();
  TxnResponse createEmptyInstance() => create();
  static $pb.PbList<TxnResponse> createRepeated() => $pb.PbList<TxnResponse>();
  @$core.pragma('dart2js:noInline')
  static TxnResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxnResponse>(create);
  static TxnResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get succeeded => $_getBF(1);
  @$pb.TagNumber(2)
  set succeeded($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSucceeded() => $_has(1);
  @$pb.TagNumber(2)
  void clearSucceeded() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<ResponseOp> get responses => $_getList(2);
}

class CompactionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CompactionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'revision')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'physical')
    ..hasRequiredFields = false
  ;

  CompactionRequest._() : super();
  factory CompactionRequest({
    $fixnum.Int64? revision,
    $core.bool? physical,
  }) {
    final _result = create();
    if (revision != null) {
      _result.revision = revision;
    }
    if (physical != null) {
      _result.physical = physical;
    }
    return _result;
  }
  factory CompactionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CompactionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CompactionRequest clone() => CompactionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CompactionRequest copyWith(void Function(CompactionRequest) updates) => super.copyWith((message) => updates(message as CompactionRequest)) as CompactionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CompactionRequest create() => CompactionRequest._();
  CompactionRequest createEmptyInstance() => create();
  static $pb.PbList<CompactionRequest> createRepeated() => $pb.PbList<CompactionRequest>();
  @$core.pragma('dart2js:noInline')
  static CompactionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CompactionRequest>(create);
  static CompactionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get revision => $_getI64(0);
  @$pb.TagNumber(1)
  set revision($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRevision() => $_has(0);
  @$pb.TagNumber(1)
  void clearRevision() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get physical => $_getBF(1);
  @$pb.TagNumber(2)
  set physical($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPhysical() => $_has(1);
  @$pb.TagNumber(2)
  void clearPhysical() => clearField(2);
}

class CompactionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CompactionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  CompactionResponse._() : super();
  factory CompactionResponse({
    ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory CompactionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CompactionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CompactionResponse clone() => CompactionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CompactionResponse copyWith(void Function(CompactionResponse) updates) => super.copyWith((message) => updates(message as CompactionResponse)) as CompactionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CompactionResponse create() => CompactionResponse._();
  CompactionResponse createEmptyInstance() => create();
  static $pb.PbList<CompactionResponse> createRepeated() => $pb.PbList<CompactionResponse>();
  @$core.pragma('dart2js:noInline')
  static CompactionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CompactionResponse>(create);
  static CompactionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class HashRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HashRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  HashRequest._() : super();
  factory HashRequest() => create();
  factory HashRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HashRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HashRequest clone() => HashRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HashRequest copyWith(void Function(HashRequest) updates) => super.copyWith((message) => updates(message as HashRequest)) as HashRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HashRequest create() => HashRequest._();
  HashRequest createEmptyInstance() => create();
  static $pb.PbList<HashRequest> createRepeated() => $pb.PbList<HashRequest>();
  @$core.pragma('dart2js:noInline')
  static HashRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HashRequest>(create);
  static HashRequest? _defaultInstance;
}

class HashKVRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HashKVRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'revision')
    ..hasRequiredFields = false
  ;

  HashKVRequest._() : super();
  factory HashKVRequest({
    $fixnum.Int64? revision,
  }) {
    final _result = create();
    if (revision != null) {
      _result.revision = revision;
    }
    return _result;
  }
  factory HashKVRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HashKVRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HashKVRequest clone() => HashKVRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HashKVRequest copyWith(void Function(HashKVRequest) updates) => super.copyWith((message) => updates(message as HashKVRequest)) as HashKVRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HashKVRequest create() => HashKVRequest._();
  HashKVRequest createEmptyInstance() => create();
  static $pb.PbList<HashKVRequest> createRepeated() => $pb.PbList<HashKVRequest>();
  @$core.pragma('dart2js:noInline')
  static HashKVRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HashKVRequest>(create);
  static HashKVRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get revision => $_getI64(0);
  @$pb.TagNumber(1)
  set revision($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRevision() => $_has(0);
  @$pb.TagNumber(1)
  void clearRevision() => clearField(1);
}

class HashKVResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HashKVResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hash', $pb.PbFieldType.OU3)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'compactRevision')
    ..hasRequiredFields = false
  ;

  HashKVResponse._() : super();
  factory HashKVResponse({
    ResponseHeader? header,
    $core.int? hash,
    $fixnum.Int64? compactRevision,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (hash != null) {
      _result.hash = hash;
    }
    if (compactRevision != null) {
      _result.compactRevision = compactRevision;
    }
    return _result;
  }
  factory HashKVResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HashKVResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HashKVResponse clone() => HashKVResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HashKVResponse copyWith(void Function(HashKVResponse) updates) => super.copyWith((message) => updates(message as HashKVResponse)) as HashKVResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HashKVResponse create() => HashKVResponse._();
  HashKVResponse createEmptyInstance() => create();
  static $pb.PbList<HashKVResponse> createRepeated() => $pb.PbList<HashKVResponse>();
  @$core.pragma('dart2js:noInline')
  static HashKVResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HashKVResponse>(create);
  static HashKVResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get hash => $_getIZ(1);
  @$pb.TagNumber(2)
  set hash($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearHash() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get compactRevision => $_getI64(2);
  @$pb.TagNumber(3)
  set compactRevision($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCompactRevision() => $_has(2);
  @$pb.TagNumber(3)
  void clearCompactRevision() => clearField(3);
}

class HashResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HashResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hash', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  HashResponse._() : super();
  factory HashResponse({
    ResponseHeader? header,
    $core.int? hash,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (hash != null) {
      _result.hash = hash;
    }
    return _result;
  }
  factory HashResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HashResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HashResponse clone() => HashResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HashResponse copyWith(void Function(HashResponse) updates) => super.copyWith((message) => updates(message as HashResponse)) as HashResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HashResponse create() => HashResponse._();
  HashResponse createEmptyInstance() => create();
  static $pb.PbList<HashResponse> createRepeated() => $pb.PbList<HashResponse>();
  @$core.pragma('dart2js:noInline')
  static HashResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HashResponse>(create);
  static HashResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get hash => $_getIZ(1);
  @$pb.TagNumber(2)
  set hash($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearHash() => clearField(2);
}

class SnapshotRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SnapshotRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  SnapshotRequest._() : super();
  factory SnapshotRequest() => create();
  factory SnapshotRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SnapshotRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SnapshotRequest clone() => SnapshotRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SnapshotRequest copyWith(void Function(SnapshotRequest) updates) => super.copyWith((message) => updates(message as SnapshotRequest)) as SnapshotRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SnapshotRequest create() => SnapshotRequest._();
  SnapshotRequest createEmptyInstance() => create();
  static $pb.PbList<SnapshotRequest> createRepeated() => $pb.PbList<SnapshotRequest>();
  @$core.pragma('dart2js:noInline')
  static SnapshotRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SnapshotRequest>(create);
  static SnapshotRequest? _defaultInstance;
}

class SnapshotResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SnapshotResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remainingBytes', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blob', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SnapshotResponse._() : super();
  factory SnapshotResponse({
    ResponseHeader? header,
    $fixnum.Int64? remainingBytes,
    $core.List<$core.int>? blob,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (remainingBytes != null) {
      _result.remainingBytes = remainingBytes;
    }
    if (blob != null) {
      _result.blob = blob;
    }
    return _result;
  }
  factory SnapshotResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SnapshotResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SnapshotResponse clone() => SnapshotResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SnapshotResponse copyWith(void Function(SnapshotResponse) updates) => super.copyWith((message) => updates(message as SnapshotResponse)) as SnapshotResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SnapshotResponse create() => SnapshotResponse._();
  SnapshotResponse createEmptyInstance() => create();
  static $pb.PbList<SnapshotResponse> createRepeated() => $pb.PbList<SnapshotResponse>();
  @$core.pragma('dart2js:noInline')
  static SnapshotResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SnapshotResponse>(create);
  static SnapshotResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get remainingBytes => $_getI64(1);
  @$pb.TagNumber(2)
  set remainingBytes($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRemainingBytes() => $_has(1);
  @$pb.TagNumber(2)
  void clearRemainingBytes() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get blob => $_getN(2);
  @$pb.TagNumber(3)
  set blob($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBlob() => $_has(2);
  @$pb.TagNumber(3)
  void clearBlob() => clearField(3);
}

enum WatchRequest_RequestUnion {
  createRequest, 
  cancelRequest, 
  progressRequest, 
  notSet
}

class WatchRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, WatchRequest_RequestUnion> _WatchRequest_RequestUnionByTag = {
    1 : WatchRequest_RequestUnion.createRequest,
    2 : WatchRequest_RequestUnion.cancelRequest,
    3 : WatchRequest_RequestUnion.progressRequest,
    0 : WatchRequest_RequestUnion.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WatchRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<WatchCreateRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createRequest', subBuilder: WatchCreateRequest.create)
    ..aOM<WatchCancelRequest>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cancelRequest', subBuilder: WatchCancelRequest.create)
    ..aOM<WatchProgressRequest>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'progressRequest', subBuilder: WatchProgressRequest.create)
    ..hasRequiredFields = false
  ;

  WatchRequest._() : super();
  factory WatchRequest({
    WatchCreateRequest? createRequest,
    WatchCancelRequest? cancelRequest,
    WatchProgressRequest? progressRequest,
  }) {
    final _result = create();
    if (createRequest != null) {
      _result.createRequest = createRequest;
    }
    if (cancelRequest != null) {
      _result.cancelRequest = cancelRequest;
    }
    if (progressRequest != null) {
      _result.progressRequest = progressRequest;
    }
    return _result;
  }
  factory WatchRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WatchRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WatchRequest clone() => WatchRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WatchRequest copyWith(void Function(WatchRequest) updates) => super.copyWith((message) => updates(message as WatchRequest)) as WatchRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WatchRequest create() => WatchRequest._();
  WatchRequest createEmptyInstance() => create();
  static $pb.PbList<WatchRequest> createRepeated() => $pb.PbList<WatchRequest>();
  @$core.pragma('dart2js:noInline')
  static WatchRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WatchRequest>(create);
  static WatchRequest? _defaultInstance;

  WatchRequest_RequestUnion whichRequestUnion() => _WatchRequest_RequestUnionByTag[$_whichOneof(0)]!;
  void clearRequestUnion() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  WatchCreateRequest get createRequest => $_getN(0);
  @$pb.TagNumber(1)
  set createRequest(WatchCreateRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreateRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreateRequest() => clearField(1);
  @$pb.TagNumber(1)
  WatchCreateRequest ensureCreateRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  WatchCancelRequest get cancelRequest => $_getN(1);
  @$pb.TagNumber(2)
  set cancelRequest(WatchCancelRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCancelRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearCancelRequest() => clearField(2);
  @$pb.TagNumber(2)
  WatchCancelRequest ensureCancelRequest() => $_ensure(1);

  @$pb.TagNumber(3)
  WatchProgressRequest get progressRequest => $_getN(2);
  @$pb.TagNumber(3)
  set progressRequest(WatchProgressRequest v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasProgressRequest() => $_has(2);
  @$pb.TagNumber(3)
  void clearProgressRequest() => clearField(3);
  @$pb.TagNumber(3)
  WatchProgressRequest ensureProgressRequest() => $_ensure(2);
}

class WatchCreateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WatchCreateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rangeEnd', $pb.PbFieldType.OY)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startRevision')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'progressNotify')
    ..pc<WatchCreateRequest_FilterType>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'filters', $pb.PbFieldType.PE, valueOf: WatchCreateRequest_FilterType.valueOf, enumValues: WatchCreateRequest_FilterType.values)
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prevKv')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'watchId')
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fragment')
    ..hasRequiredFields = false
  ;

  WatchCreateRequest._() : super();
  factory WatchCreateRequest({
    $core.List<$core.int>? key,
    $core.List<$core.int>? rangeEnd,
    $fixnum.Int64? startRevision,
    $core.bool? progressNotify,
    $core.Iterable<WatchCreateRequest_FilterType>? filters,
    $core.bool? prevKv,
    $fixnum.Int64? watchId,
    $core.bool? fragment,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (rangeEnd != null) {
      _result.rangeEnd = rangeEnd;
    }
    if (startRevision != null) {
      _result.startRevision = startRevision;
    }
    if (progressNotify != null) {
      _result.progressNotify = progressNotify;
    }
    if (filters != null) {
      _result.filters.addAll(filters);
    }
    if (prevKv != null) {
      _result.prevKv = prevKv;
    }
    if (watchId != null) {
      _result.watchId = watchId;
    }
    if (fragment != null) {
      _result.fragment = fragment;
    }
    return _result;
  }
  factory WatchCreateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WatchCreateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WatchCreateRequest clone() => WatchCreateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WatchCreateRequest copyWith(void Function(WatchCreateRequest) updates) => super.copyWith((message) => updates(message as WatchCreateRequest)) as WatchCreateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WatchCreateRequest create() => WatchCreateRequest._();
  WatchCreateRequest createEmptyInstance() => create();
  static $pb.PbList<WatchCreateRequest> createRepeated() => $pb.PbList<WatchCreateRequest>();
  @$core.pragma('dart2js:noInline')
  static WatchCreateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WatchCreateRequest>(create);
  static WatchCreateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get key => $_getN(0);
  @$pb.TagNumber(1)
  set key($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get rangeEnd => $_getN(1);
  @$pb.TagNumber(2)
  set rangeEnd($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRangeEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearRangeEnd() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get startRevision => $_getI64(2);
  @$pb.TagNumber(3)
  set startRevision($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStartRevision() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartRevision() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get progressNotify => $_getBF(3);
  @$pb.TagNumber(4)
  set progressNotify($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasProgressNotify() => $_has(3);
  @$pb.TagNumber(4)
  void clearProgressNotify() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<WatchCreateRequest_FilterType> get filters => $_getList(4);

  @$pb.TagNumber(6)
  $core.bool get prevKv => $_getBF(5);
  @$pb.TagNumber(6)
  set prevKv($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPrevKv() => $_has(5);
  @$pb.TagNumber(6)
  void clearPrevKv() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get watchId => $_getI64(6);
  @$pb.TagNumber(7)
  set watchId($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasWatchId() => $_has(6);
  @$pb.TagNumber(7)
  void clearWatchId() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get fragment => $_getBF(7);
  @$pb.TagNumber(8)
  set fragment($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFragment() => $_has(7);
  @$pb.TagNumber(8)
  void clearFragment() => clearField(8);
}

class WatchCancelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WatchCancelRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'watchId')
    ..hasRequiredFields = false
  ;

  WatchCancelRequest._() : super();
  factory WatchCancelRequest({
    $fixnum.Int64? watchId,
  }) {
    final _result = create();
    if (watchId != null) {
      _result.watchId = watchId;
    }
    return _result;
  }
  factory WatchCancelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WatchCancelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WatchCancelRequest clone() => WatchCancelRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WatchCancelRequest copyWith(void Function(WatchCancelRequest) updates) => super.copyWith((message) => updates(message as WatchCancelRequest)) as WatchCancelRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WatchCancelRequest create() => WatchCancelRequest._();
  WatchCancelRequest createEmptyInstance() => create();
  static $pb.PbList<WatchCancelRequest> createRepeated() => $pb.PbList<WatchCancelRequest>();
  @$core.pragma('dart2js:noInline')
  static WatchCancelRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WatchCancelRequest>(create);
  static WatchCancelRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get watchId => $_getI64(0);
  @$pb.TagNumber(1)
  set watchId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWatchId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWatchId() => clearField(1);
}

class WatchProgressRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WatchProgressRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  WatchProgressRequest._() : super();
  factory WatchProgressRequest() => create();
  factory WatchProgressRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WatchProgressRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WatchProgressRequest clone() => WatchProgressRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WatchProgressRequest copyWith(void Function(WatchProgressRequest) updates) => super.copyWith((message) => updates(message as WatchProgressRequest)) as WatchProgressRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WatchProgressRequest create() => WatchProgressRequest._();
  WatchProgressRequest createEmptyInstance() => create();
  static $pb.PbList<WatchProgressRequest> createRepeated() => $pb.PbList<WatchProgressRequest>();
  @$core.pragma('dart2js:noInline')
  static WatchProgressRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WatchProgressRequest>(create);
  static WatchProgressRequest? _defaultInstance;
}

class WatchResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WatchResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'watchId')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'created')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'canceled')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'compactRevision')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cancelReason')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fragment')
    ..pc<$1.Event>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'events', $pb.PbFieldType.PM, subBuilder: $1.Event.create)
    ..hasRequiredFields = false
  ;

  WatchResponse._() : super();
  factory WatchResponse({
    ResponseHeader? header,
    $fixnum.Int64? watchId,
    $core.bool? created,
    $core.bool? canceled,
    $fixnum.Int64? compactRevision,
    $core.String? cancelReason,
    $core.bool? fragment,
    $core.Iterable<$1.Event>? events,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (watchId != null) {
      _result.watchId = watchId;
    }
    if (created != null) {
      _result.created = created;
    }
    if (canceled != null) {
      _result.canceled = canceled;
    }
    if (compactRevision != null) {
      _result.compactRevision = compactRevision;
    }
    if (cancelReason != null) {
      _result.cancelReason = cancelReason;
    }
    if (fragment != null) {
      _result.fragment = fragment;
    }
    if (events != null) {
      _result.events.addAll(events);
    }
    return _result;
  }
  factory WatchResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WatchResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WatchResponse clone() => WatchResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WatchResponse copyWith(void Function(WatchResponse) updates) => super.copyWith((message) => updates(message as WatchResponse)) as WatchResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WatchResponse create() => WatchResponse._();
  WatchResponse createEmptyInstance() => create();
  static $pb.PbList<WatchResponse> createRepeated() => $pb.PbList<WatchResponse>();
  @$core.pragma('dart2js:noInline')
  static WatchResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WatchResponse>(create);
  static WatchResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get watchId => $_getI64(1);
  @$pb.TagNumber(2)
  set watchId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWatchId() => $_has(1);
  @$pb.TagNumber(2)
  void clearWatchId() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get created => $_getBF(2);
  @$pb.TagNumber(3)
  set created($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreated() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreated() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get canceled => $_getBF(3);
  @$pb.TagNumber(4)
  set canceled($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCanceled() => $_has(3);
  @$pb.TagNumber(4)
  void clearCanceled() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get compactRevision => $_getI64(4);
  @$pb.TagNumber(5)
  set compactRevision($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCompactRevision() => $_has(4);
  @$pb.TagNumber(5)
  void clearCompactRevision() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get cancelReason => $_getSZ(5);
  @$pb.TagNumber(6)
  set cancelReason($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCancelReason() => $_has(5);
  @$pb.TagNumber(6)
  void clearCancelReason() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get fragment => $_getBF(6);
  @$pb.TagNumber(7)
  set fragment($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFragment() => $_has(6);
  @$pb.TagNumber(7)
  void clearFragment() => clearField(7);

  @$pb.TagNumber(11)
  $core.List<$1.Event> get events => $_getList(7);
}

class LeaseGrantRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LeaseGrantRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TTL', protoName: 'TTL')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..hasRequiredFields = false
  ;

  LeaseGrantRequest._() : super();
  factory LeaseGrantRequest({
    $fixnum.Int64? tTL,
    $fixnum.Int64? iD,
  }) {
    final _result = create();
    if (tTL != null) {
      _result.tTL = tTL;
    }
    if (iD != null) {
      _result.iD = iD;
    }
    return _result;
  }
  factory LeaseGrantRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LeaseGrantRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LeaseGrantRequest clone() => LeaseGrantRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LeaseGrantRequest copyWith(void Function(LeaseGrantRequest) updates) => super.copyWith((message) => updates(message as LeaseGrantRequest)) as LeaseGrantRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LeaseGrantRequest create() => LeaseGrantRequest._();
  LeaseGrantRequest createEmptyInstance() => create();
  static $pb.PbList<LeaseGrantRequest> createRepeated() => $pb.PbList<LeaseGrantRequest>();
  @$core.pragma('dart2js:noInline')
  static LeaseGrantRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LeaseGrantRequest>(create);
  static LeaseGrantRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get tTL => $_getI64(0);
  @$pb.TagNumber(1)
  set tTL($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTTL() => $_has(0);
  @$pb.TagNumber(1)
  void clearTTL() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get iD => $_getI64(1);
  @$pb.TagNumber(2)
  set iD($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasID() => $_has(1);
  @$pb.TagNumber(2)
  void clearID() => clearField(2);
}

class LeaseGrantResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LeaseGrantResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TTL', protoName: 'TTL')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..hasRequiredFields = false
  ;

  LeaseGrantResponse._() : super();
  factory LeaseGrantResponse({
    ResponseHeader? header,
    $fixnum.Int64? iD,
    $fixnum.Int64? tTL,
    $core.String? error,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (iD != null) {
      _result.iD = iD;
    }
    if (tTL != null) {
      _result.tTL = tTL;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory LeaseGrantResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LeaseGrantResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LeaseGrantResponse clone() => LeaseGrantResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LeaseGrantResponse copyWith(void Function(LeaseGrantResponse) updates) => super.copyWith((message) => updates(message as LeaseGrantResponse)) as LeaseGrantResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LeaseGrantResponse create() => LeaseGrantResponse._();
  LeaseGrantResponse createEmptyInstance() => create();
  static $pb.PbList<LeaseGrantResponse> createRepeated() => $pb.PbList<LeaseGrantResponse>();
  @$core.pragma('dart2js:noInline')
  static LeaseGrantResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LeaseGrantResponse>(create);
  static LeaseGrantResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get iD => $_getI64(1);
  @$pb.TagNumber(2)
  set iD($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasID() => $_has(1);
  @$pb.TagNumber(2)
  void clearID() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get tTL => $_getI64(2);
  @$pb.TagNumber(3)
  set tTL($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTTL() => $_has(2);
  @$pb.TagNumber(3)
  void clearTTL() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get error => $_getSZ(3);
  @$pb.TagNumber(4)
  set error($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasError() => $_has(3);
  @$pb.TagNumber(4)
  void clearError() => clearField(4);
}

class LeaseRevokeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LeaseRevokeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..hasRequiredFields = false
  ;

  LeaseRevokeRequest._() : super();
  factory LeaseRevokeRequest({
    $fixnum.Int64? iD,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    return _result;
  }
  factory LeaseRevokeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LeaseRevokeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LeaseRevokeRequest clone() => LeaseRevokeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LeaseRevokeRequest copyWith(void Function(LeaseRevokeRequest) updates) => super.copyWith((message) => updates(message as LeaseRevokeRequest)) as LeaseRevokeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LeaseRevokeRequest create() => LeaseRevokeRequest._();
  LeaseRevokeRequest createEmptyInstance() => create();
  static $pb.PbList<LeaseRevokeRequest> createRepeated() => $pb.PbList<LeaseRevokeRequest>();
  @$core.pragma('dart2js:noInline')
  static LeaseRevokeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LeaseRevokeRequest>(create);
  static LeaseRevokeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get iD => $_getI64(0);
  @$pb.TagNumber(1)
  set iD($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);
}

class LeaseRevokeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LeaseRevokeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  LeaseRevokeResponse._() : super();
  factory LeaseRevokeResponse({
    ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory LeaseRevokeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LeaseRevokeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LeaseRevokeResponse clone() => LeaseRevokeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LeaseRevokeResponse copyWith(void Function(LeaseRevokeResponse) updates) => super.copyWith((message) => updates(message as LeaseRevokeResponse)) as LeaseRevokeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LeaseRevokeResponse create() => LeaseRevokeResponse._();
  LeaseRevokeResponse createEmptyInstance() => create();
  static $pb.PbList<LeaseRevokeResponse> createRepeated() => $pb.PbList<LeaseRevokeResponse>();
  @$core.pragma('dart2js:noInline')
  static LeaseRevokeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LeaseRevokeResponse>(create);
  static LeaseRevokeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class LeaseCheckpoint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LeaseCheckpoint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remainingTTL', protoName: 'remaining_TTL')
    ..hasRequiredFields = false
  ;

  LeaseCheckpoint._() : super();
  factory LeaseCheckpoint({
    $fixnum.Int64? iD,
    $fixnum.Int64? remainingTTL,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    if (remainingTTL != null) {
      _result.remainingTTL = remainingTTL;
    }
    return _result;
  }
  factory LeaseCheckpoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LeaseCheckpoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LeaseCheckpoint clone() => LeaseCheckpoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LeaseCheckpoint copyWith(void Function(LeaseCheckpoint) updates) => super.copyWith((message) => updates(message as LeaseCheckpoint)) as LeaseCheckpoint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LeaseCheckpoint create() => LeaseCheckpoint._();
  LeaseCheckpoint createEmptyInstance() => create();
  static $pb.PbList<LeaseCheckpoint> createRepeated() => $pb.PbList<LeaseCheckpoint>();
  @$core.pragma('dart2js:noInline')
  static LeaseCheckpoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LeaseCheckpoint>(create);
  static LeaseCheckpoint? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get iD => $_getI64(0);
  @$pb.TagNumber(1)
  set iD($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get remainingTTL => $_getI64(1);
  @$pb.TagNumber(2)
  set remainingTTL($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRemainingTTL() => $_has(1);
  @$pb.TagNumber(2)
  void clearRemainingTTL() => clearField(2);
}

class LeaseCheckpointRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LeaseCheckpointRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..pc<LeaseCheckpoint>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'checkpoints', $pb.PbFieldType.PM, subBuilder: LeaseCheckpoint.create)
    ..hasRequiredFields = false
  ;

  LeaseCheckpointRequest._() : super();
  factory LeaseCheckpointRequest({
    $core.Iterable<LeaseCheckpoint>? checkpoints,
  }) {
    final _result = create();
    if (checkpoints != null) {
      _result.checkpoints.addAll(checkpoints);
    }
    return _result;
  }
  factory LeaseCheckpointRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LeaseCheckpointRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LeaseCheckpointRequest clone() => LeaseCheckpointRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LeaseCheckpointRequest copyWith(void Function(LeaseCheckpointRequest) updates) => super.copyWith((message) => updates(message as LeaseCheckpointRequest)) as LeaseCheckpointRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LeaseCheckpointRequest create() => LeaseCheckpointRequest._();
  LeaseCheckpointRequest createEmptyInstance() => create();
  static $pb.PbList<LeaseCheckpointRequest> createRepeated() => $pb.PbList<LeaseCheckpointRequest>();
  @$core.pragma('dart2js:noInline')
  static LeaseCheckpointRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LeaseCheckpointRequest>(create);
  static LeaseCheckpointRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<LeaseCheckpoint> get checkpoints => $_getList(0);
}

class LeaseCheckpointResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LeaseCheckpointResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  LeaseCheckpointResponse._() : super();
  factory LeaseCheckpointResponse({
    ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory LeaseCheckpointResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LeaseCheckpointResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LeaseCheckpointResponse clone() => LeaseCheckpointResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LeaseCheckpointResponse copyWith(void Function(LeaseCheckpointResponse) updates) => super.copyWith((message) => updates(message as LeaseCheckpointResponse)) as LeaseCheckpointResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LeaseCheckpointResponse create() => LeaseCheckpointResponse._();
  LeaseCheckpointResponse createEmptyInstance() => create();
  static $pb.PbList<LeaseCheckpointResponse> createRepeated() => $pb.PbList<LeaseCheckpointResponse>();
  @$core.pragma('dart2js:noInline')
  static LeaseCheckpointResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LeaseCheckpointResponse>(create);
  static LeaseCheckpointResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class LeaseKeepAliveRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LeaseKeepAliveRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..hasRequiredFields = false
  ;

  LeaseKeepAliveRequest._() : super();
  factory LeaseKeepAliveRequest({
    $fixnum.Int64? iD,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    return _result;
  }
  factory LeaseKeepAliveRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LeaseKeepAliveRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LeaseKeepAliveRequest clone() => LeaseKeepAliveRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LeaseKeepAliveRequest copyWith(void Function(LeaseKeepAliveRequest) updates) => super.copyWith((message) => updates(message as LeaseKeepAliveRequest)) as LeaseKeepAliveRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LeaseKeepAliveRequest create() => LeaseKeepAliveRequest._();
  LeaseKeepAliveRequest createEmptyInstance() => create();
  static $pb.PbList<LeaseKeepAliveRequest> createRepeated() => $pb.PbList<LeaseKeepAliveRequest>();
  @$core.pragma('dart2js:noInline')
  static LeaseKeepAliveRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LeaseKeepAliveRequest>(create);
  static LeaseKeepAliveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get iD => $_getI64(0);
  @$pb.TagNumber(1)
  set iD($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);
}

class LeaseKeepAliveResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LeaseKeepAliveResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TTL', protoName: 'TTL')
    ..hasRequiredFields = false
  ;

  LeaseKeepAliveResponse._() : super();
  factory LeaseKeepAliveResponse({
    ResponseHeader? header,
    $fixnum.Int64? iD,
    $fixnum.Int64? tTL,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (iD != null) {
      _result.iD = iD;
    }
    if (tTL != null) {
      _result.tTL = tTL;
    }
    return _result;
  }
  factory LeaseKeepAliveResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LeaseKeepAliveResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LeaseKeepAliveResponse clone() => LeaseKeepAliveResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LeaseKeepAliveResponse copyWith(void Function(LeaseKeepAliveResponse) updates) => super.copyWith((message) => updates(message as LeaseKeepAliveResponse)) as LeaseKeepAliveResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LeaseKeepAliveResponse create() => LeaseKeepAliveResponse._();
  LeaseKeepAliveResponse createEmptyInstance() => create();
  static $pb.PbList<LeaseKeepAliveResponse> createRepeated() => $pb.PbList<LeaseKeepAliveResponse>();
  @$core.pragma('dart2js:noInline')
  static LeaseKeepAliveResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LeaseKeepAliveResponse>(create);
  static LeaseKeepAliveResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get iD => $_getI64(1);
  @$pb.TagNumber(2)
  set iD($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasID() => $_has(1);
  @$pb.TagNumber(2)
  void clearID() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get tTL => $_getI64(2);
  @$pb.TagNumber(3)
  set tTL($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTTL() => $_has(2);
  @$pb.TagNumber(3)
  void clearTTL() => clearField(3);
}

class LeaseTimeToLiveRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LeaseTimeToLiveRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keys')
    ..hasRequiredFields = false
  ;

  LeaseTimeToLiveRequest._() : super();
  factory LeaseTimeToLiveRequest({
    $fixnum.Int64? iD,
    $core.bool? keys,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    if (keys != null) {
      _result.keys = keys;
    }
    return _result;
  }
  factory LeaseTimeToLiveRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LeaseTimeToLiveRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LeaseTimeToLiveRequest clone() => LeaseTimeToLiveRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LeaseTimeToLiveRequest copyWith(void Function(LeaseTimeToLiveRequest) updates) => super.copyWith((message) => updates(message as LeaseTimeToLiveRequest)) as LeaseTimeToLiveRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LeaseTimeToLiveRequest create() => LeaseTimeToLiveRequest._();
  LeaseTimeToLiveRequest createEmptyInstance() => create();
  static $pb.PbList<LeaseTimeToLiveRequest> createRepeated() => $pb.PbList<LeaseTimeToLiveRequest>();
  @$core.pragma('dart2js:noInline')
  static LeaseTimeToLiveRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LeaseTimeToLiveRequest>(create);
  static LeaseTimeToLiveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get iD => $_getI64(0);
  @$pb.TagNumber(1)
  set iD($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get keys => $_getBF(1);
  @$pb.TagNumber(2)
  set keys($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKeys() => $_has(1);
  @$pb.TagNumber(2)
  void clearKeys() => clearField(2);
}

class LeaseTimeToLiveResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LeaseTimeToLiveResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TTL', protoName: 'TTL')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'grantedTTL', protoName: 'grantedTTL')
    ..p<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keys', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  LeaseTimeToLiveResponse._() : super();
  factory LeaseTimeToLiveResponse({
    ResponseHeader? header,
    $fixnum.Int64? iD,
    $fixnum.Int64? tTL,
    $fixnum.Int64? grantedTTL,
    $core.Iterable<$core.List<$core.int>>? keys,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (iD != null) {
      _result.iD = iD;
    }
    if (tTL != null) {
      _result.tTL = tTL;
    }
    if (grantedTTL != null) {
      _result.grantedTTL = grantedTTL;
    }
    if (keys != null) {
      _result.keys.addAll(keys);
    }
    return _result;
  }
  factory LeaseTimeToLiveResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LeaseTimeToLiveResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LeaseTimeToLiveResponse clone() => LeaseTimeToLiveResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LeaseTimeToLiveResponse copyWith(void Function(LeaseTimeToLiveResponse) updates) => super.copyWith((message) => updates(message as LeaseTimeToLiveResponse)) as LeaseTimeToLiveResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LeaseTimeToLiveResponse create() => LeaseTimeToLiveResponse._();
  LeaseTimeToLiveResponse createEmptyInstance() => create();
  static $pb.PbList<LeaseTimeToLiveResponse> createRepeated() => $pb.PbList<LeaseTimeToLiveResponse>();
  @$core.pragma('dart2js:noInline')
  static LeaseTimeToLiveResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LeaseTimeToLiveResponse>(create);
  static LeaseTimeToLiveResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get iD => $_getI64(1);
  @$pb.TagNumber(2)
  set iD($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasID() => $_has(1);
  @$pb.TagNumber(2)
  void clearID() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get tTL => $_getI64(2);
  @$pb.TagNumber(3)
  set tTL($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTTL() => $_has(2);
  @$pb.TagNumber(3)
  void clearTTL() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get grantedTTL => $_getI64(3);
  @$pb.TagNumber(4)
  set grantedTTL($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGrantedTTL() => $_has(3);
  @$pb.TagNumber(4)
  void clearGrantedTTL() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.List<$core.int>> get keys => $_getList(4);
}

class LeaseLeasesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LeaseLeasesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  LeaseLeasesRequest._() : super();
  factory LeaseLeasesRequest() => create();
  factory LeaseLeasesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LeaseLeasesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LeaseLeasesRequest clone() => LeaseLeasesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LeaseLeasesRequest copyWith(void Function(LeaseLeasesRequest) updates) => super.copyWith((message) => updates(message as LeaseLeasesRequest)) as LeaseLeasesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LeaseLeasesRequest create() => LeaseLeasesRequest._();
  LeaseLeasesRequest createEmptyInstance() => create();
  static $pb.PbList<LeaseLeasesRequest> createRepeated() => $pb.PbList<LeaseLeasesRequest>();
  @$core.pragma('dart2js:noInline')
  static LeaseLeasesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LeaseLeasesRequest>(create);
  static LeaseLeasesRequest? _defaultInstance;
}

class LeaseStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LeaseStatus', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..hasRequiredFields = false
  ;

  LeaseStatus._() : super();
  factory LeaseStatus({
    $fixnum.Int64? iD,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    return _result;
  }
  factory LeaseStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LeaseStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LeaseStatus clone() => LeaseStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LeaseStatus copyWith(void Function(LeaseStatus) updates) => super.copyWith((message) => updates(message as LeaseStatus)) as LeaseStatus; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LeaseStatus create() => LeaseStatus._();
  LeaseStatus createEmptyInstance() => create();
  static $pb.PbList<LeaseStatus> createRepeated() => $pb.PbList<LeaseStatus>();
  @$core.pragma('dart2js:noInline')
  static LeaseStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LeaseStatus>(create);
  static LeaseStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get iD => $_getI64(0);
  @$pb.TagNumber(1)
  set iD($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);
}

class LeaseLeasesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LeaseLeasesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..pc<LeaseStatus>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'leases', $pb.PbFieldType.PM, subBuilder: LeaseStatus.create)
    ..hasRequiredFields = false
  ;

  LeaseLeasesResponse._() : super();
  factory LeaseLeasesResponse({
    ResponseHeader? header,
    $core.Iterable<LeaseStatus>? leases,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (leases != null) {
      _result.leases.addAll(leases);
    }
    return _result;
  }
  factory LeaseLeasesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LeaseLeasesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LeaseLeasesResponse clone() => LeaseLeasesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LeaseLeasesResponse copyWith(void Function(LeaseLeasesResponse) updates) => super.copyWith((message) => updates(message as LeaseLeasesResponse)) as LeaseLeasesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LeaseLeasesResponse create() => LeaseLeasesResponse._();
  LeaseLeasesResponse createEmptyInstance() => create();
  static $pb.PbList<LeaseLeasesResponse> createRepeated() => $pb.PbList<LeaseLeasesResponse>();
  @$core.pragma('dart2js:noInline')
  static LeaseLeasesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LeaseLeasesResponse>(create);
  static LeaseLeasesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<LeaseStatus> get leases => $_getList(1);
}

class Member extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Member', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', $pb.PbFieldType.OU6, protoName: 'ID', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peerURLs', protoName: 'peerURLs')
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientURLs', protoName: 'clientURLs')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isLearner', protoName: 'isLearner')
    ..hasRequiredFields = false
  ;

  Member._() : super();
  factory Member({
    $fixnum.Int64? iD,
    $core.String? name,
    $core.Iterable<$core.String>? peerURLs,
    $core.Iterable<$core.String>? clientURLs,
    $core.bool? isLearner,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    if (name != null) {
      _result.name = name;
    }
    if (peerURLs != null) {
      _result.peerURLs.addAll(peerURLs);
    }
    if (clientURLs != null) {
      _result.clientURLs.addAll(clientURLs);
    }
    if (isLearner != null) {
      _result.isLearner = isLearner;
    }
    return _result;
  }
  factory Member.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Member.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Member clone() => Member()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Member copyWith(void Function(Member) updates) => super.copyWith((message) => updates(message as Member)) as Member; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Member create() => Member._();
  Member createEmptyInstance() => create();
  static $pb.PbList<Member> createRepeated() => $pb.PbList<Member>();
  @$core.pragma('dart2js:noInline')
  static Member getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Member>(create);
  static Member? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get iD => $_getI64(0);
  @$pb.TagNumber(1)
  set iD($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get peerURLs => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get clientURLs => $_getList(3);

  @$pb.TagNumber(5)
  $core.bool get isLearner => $_getBF(4);
  @$pb.TagNumber(5)
  set isLearner($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIsLearner() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsLearner() => clearField(5);
}

class MemberAddRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MemberAddRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peerURLs', protoName: 'peerURLs')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isLearner', protoName: 'isLearner')
    ..hasRequiredFields = false
  ;

  MemberAddRequest._() : super();
  factory MemberAddRequest({
    $core.Iterable<$core.String>? peerURLs,
    $core.bool? isLearner,
  }) {
    final _result = create();
    if (peerURLs != null) {
      _result.peerURLs.addAll(peerURLs);
    }
    if (isLearner != null) {
      _result.isLearner = isLearner;
    }
    return _result;
  }
  factory MemberAddRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberAddRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberAddRequest clone() => MemberAddRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberAddRequest copyWith(void Function(MemberAddRequest) updates) => super.copyWith((message) => updates(message as MemberAddRequest)) as MemberAddRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MemberAddRequest create() => MemberAddRequest._();
  MemberAddRequest createEmptyInstance() => create();
  static $pb.PbList<MemberAddRequest> createRepeated() => $pb.PbList<MemberAddRequest>();
  @$core.pragma('dart2js:noInline')
  static MemberAddRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberAddRequest>(create);
  static MemberAddRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get peerURLs => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get isLearner => $_getBF(1);
  @$pb.TagNumber(2)
  set isLearner($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsLearner() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsLearner() => clearField(2);
}

class MemberAddResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MemberAddResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..aOM<Member>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'member', subBuilder: Member.create)
    ..pc<Member>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'members', $pb.PbFieldType.PM, subBuilder: Member.create)
    ..hasRequiredFields = false
  ;

  MemberAddResponse._() : super();
  factory MemberAddResponse({
    ResponseHeader? header,
    Member? member,
    $core.Iterable<Member>? members,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (member != null) {
      _result.member = member;
    }
    if (members != null) {
      _result.members.addAll(members);
    }
    return _result;
  }
  factory MemberAddResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberAddResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberAddResponse clone() => MemberAddResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberAddResponse copyWith(void Function(MemberAddResponse) updates) => super.copyWith((message) => updates(message as MemberAddResponse)) as MemberAddResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MemberAddResponse create() => MemberAddResponse._();
  MemberAddResponse createEmptyInstance() => create();
  static $pb.PbList<MemberAddResponse> createRepeated() => $pb.PbList<MemberAddResponse>();
  @$core.pragma('dart2js:noInline')
  static MemberAddResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberAddResponse>(create);
  static MemberAddResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  Member get member => $_getN(1);
  @$pb.TagNumber(2)
  set member(Member v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMember() => $_has(1);
  @$pb.TagNumber(2)
  void clearMember() => clearField(2);
  @$pb.TagNumber(2)
  Member ensureMember() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<Member> get members => $_getList(2);
}

class MemberRemoveRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MemberRemoveRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', $pb.PbFieldType.OU6, protoName: 'ID', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  MemberRemoveRequest._() : super();
  factory MemberRemoveRequest({
    $fixnum.Int64? iD,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    return _result;
  }
  factory MemberRemoveRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberRemoveRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberRemoveRequest clone() => MemberRemoveRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberRemoveRequest copyWith(void Function(MemberRemoveRequest) updates) => super.copyWith((message) => updates(message as MemberRemoveRequest)) as MemberRemoveRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MemberRemoveRequest create() => MemberRemoveRequest._();
  MemberRemoveRequest createEmptyInstance() => create();
  static $pb.PbList<MemberRemoveRequest> createRepeated() => $pb.PbList<MemberRemoveRequest>();
  @$core.pragma('dart2js:noInline')
  static MemberRemoveRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberRemoveRequest>(create);
  static MemberRemoveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get iD => $_getI64(0);
  @$pb.TagNumber(1)
  set iD($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);
}

class MemberRemoveResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MemberRemoveResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..pc<Member>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'members', $pb.PbFieldType.PM, subBuilder: Member.create)
    ..hasRequiredFields = false
  ;

  MemberRemoveResponse._() : super();
  factory MemberRemoveResponse({
    ResponseHeader? header,
    $core.Iterable<Member>? members,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (members != null) {
      _result.members.addAll(members);
    }
    return _result;
  }
  factory MemberRemoveResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberRemoveResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberRemoveResponse clone() => MemberRemoveResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberRemoveResponse copyWith(void Function(MemberRemoveResponse) updates) => super.copyWith((message) => updates(message as MemberRemoveResponse)) as MemberRemoveResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MemberRemoveResponse create() => MemberRemoveResponse._();
  MemberRemoveResponse createEmptyInstance() => create();
  static $pb.PbList<MemberRemoveResponse> createRepeated() => $pb.PbList<MemberRemoveResponse>();
  @$core.pragma('dart2js:noInline')
  static MemberRemoveResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberRemoveResponse>(create);
  static MemberRemoveResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<Member> get members => $_getList(1);
}

class MemberUpdateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MemberUpdateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', $pb.PbFieldType.OU6, protoName: 'ID', defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peerURLs', protoName: 'peerURLs')
    ..hasRequiredFields = false
  ;

  MemberUpdateRequest._() : super();
  factory MemberUpdateRequest({
    $fixnum.Int64? iD,
    $core.Iterable<$core.String>? peerURLs,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    if (peerURLs != null) {
      _result.peerURLs.addAll(peerURLs);
    }
    return _result;
  }
  factory MemberUpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberUpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberUpdateRequest clone() => MemberUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberUpdateRequest copyWith(void Function(MemberUpdateRequest) updates) => super.copyWith((message) => updates(message as MemberUpdateRequest)) as MemberUpdateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MemberUpdateRequest create() => MemberUpdateRequest._();
  MemberUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<MemberUpdateRequest> createRepeated() => $pb.PbList<MemberUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static MemberUpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberUpdateRequest>(create);
  static MemberUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get iD => $_getI64(0);
  @$pb.TagNumber(1)
  set iD($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get peerURLs => $_getList(1);
}

class MemberUpdateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MemberUpdateResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..pc<Member>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'members', $pb.PbFieldType.PM, subBuilder: Member.create)
    ..hasRequiredFields = false
  ;

  MemberUpdateResponse._() : super();
  factory MemberUpdateResponse({
    ResponseHeader? header,
    $core.Iterable<Member>? members,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (members != null) {
      _result.members.addAll(members);
    }
    return _result;
  }
  factory MemberUpdateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberUpdateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberUpdateResponse clone() => MemberUpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberUpdateResponse copyWith(void Function(MemberUpdateResponse) updates) => super.copyWith((message) => updates(message as MemberUpdateResponse)) as MemberUpdateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MemberUpdateResponse create() => MemberUpdateResponse._();
  MemberUpdateResponse createEmptyInstance() => create();
  static $pb.PbList<MemberUpdateResponse> createRepeated() => $pb.PbList<MemberUpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static MemberUpdateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberUpdateResponse>(create);
  static MemberUpdateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<Member> get members => $_getList(1);
}

class MemberListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MemberListRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linearizable')
    ..hasRequiredFields = false
  ;

  MemberListRequest._() : super();
  factory MemberListRequest({
    $core.bool? linearizable,
  }) {
    final _result = create();
    if (linearizable != null) {
      _result.linearizable = linearizable;
    }
    return _result;
  }
  factory MemberListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberListRequest clone() => MemberListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberListRequest copyWith(void Function(MemberListRequest) updates) => super.copyWith((message) => updates(message as MemberListRequest)) as MemberListRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MemberListRequest create() => MemberListRequest._();
  MemberListRequest createEmptyInstance() => create();
  static $pb.PbList<MemberListRequest> createRepeated() => $pb.PbList<MemberListRequest>();
  @$core.pragma('dart2js:noInline')
  static MemberListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberListRequest>(create);
  static MemberListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get linearizable => $_getBF(0);
  @$pb.TagNumber(1)
  set linearizable($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLinearizable() => $_has(0);
  @$pb.TagNumber(1)
  void clearLinearizable() => clearField(1);
}

class MemberListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MemberListResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..pc<Member>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'members', $pb.PbFieldType.PM, subBuilder: Member.create)
    ..hasRequiredFields = false
  ;

  MemberListResponse._() : super();
  factory MemberListResponse({
    ResponseHeader? header,
    $core.Iterable<Member>? members,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (members != null) {
      _result.members.addAll(members);
    }
    return _result;
  }
  factory MemberListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberListResponse clone() => MemberListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberListResponse copyWith(void Function(MemberListResponse) updates) => super.copyWith((message) => updates(message as MemberListResponse)) as MemberListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MemberListResponse create() => MemberListResponse._();
  MemberListResponse createEmptyInstance() => create();
  static $pb.PbList<MemberListResponse> createRepeated() => $pb.PbList<MemberListResponse>();
  @$core.pragma('dart2js:noInline')
  static MemberListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberListResponse>(create);
  static MemberListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<Member> get members => $_getList(1);
}

class MemberPromoteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MemberPromoteRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', $pb.PbFieldType.OU6, protoName: 'ID', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  MemberPromoteRequest._() : super();
  factory MemberPromoteRequest({
    $fixnum.Int64? iD,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    return _result;
  }
  factory MemberPromoteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberPromoteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberPromoteRequest clone() => MemberPromoteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberPromoteRequest copyWith(void Function(MemberPromoteRequest) updates) => super.copyWith((message) => updates(message as MemberPromoteRequest)) as MemberPromoteRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MemberPromoteRequest create() => MemberPromoteRequest._();
  MemberPromoteRequest createEmptyInstance() => create();
  static $pb.PbList<MemberPromoteRequest> createRepeated() => $pb.PbList<MemberPromoteRequest>();
  @$core.pragma('dart2js:noInline')
  static MemberPromoteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberPromoteRequest>(create);
  static MemberPromoteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get iD => $_getI64(0);
  @$pb.TagNumber(1)
  set iD($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);
}

class MemberPromoteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MemberPromoteResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..pc<Member>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'members', $pb.PbFieldType.PM, subBuilder: Member.create)
    ..hasRequiredFields = false
  ;

  MemberPromoteResponse._() : super();
  factory MemberPromoteResponse({
    ResponseHeader? header,
    $core.Iterable<Member>? members,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (members != null) {
      _result.members.addAll(members);
    }
    return _result;
  }
  factory MemberPromoteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MemberPromoteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MemberPromoteResponse clone() => MemberPromoteResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MemberPromoteResponse copyWith(void Function(MemberPromoteResponse) updates) => super.copyWith((message) => updates(message as MemberPromoteResponse)) as MemberPromoteResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MemberPromoteResponse create() => MemberPromoteResponse._();
  MemberPromoteResponse createEmptyInstance() => create();
  static $pb.PbList<MemberPromoteResponse> createRepeated() => $pb.PbList<MemberPromoteResponse>();
  @$core.pragma('dart2js:noInline')
  static MemberPromoteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemberPromoteResponse>(create);
  static MemberPromoteResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<Member> get members => $_getList(1);
}

class DefragmentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DefragmentRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DefragmentRequest._() : super();
  factory DefragmentRequest() => create();
  factory DefragmentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DefragmentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DefragmentRequest clone() => DefragmentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DefragmentRequest copyWith(void Function(DefragmentRequest) updates) => super.copyWith((message) => updates(message as DefragmentRequest)) as DefragmentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DefragmentRequest create() => DefragmentRequest._();
  DefragmentRequest createEmptyInstance() => create();
  static $pb.PbList<DefragmentRequest> createRepeated() => $pb.PbList<DefragmentRequest>();
  @$core.pragma('dart2js:noInline')
  static DefragmentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DefragmentRequest>(create);
  static DefragmentRequest? _defaultInstance;
}

class DefragmentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DefragmentResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  DefragmentResponse._() : super();
  factory DefragmentResponse({
    ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory DefragmentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DefragmentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DefragmentResponse clone() => DefragmentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DefragmentResponse copyWith(void Function(DefragmentResponse) updates) => super.copyWith((message) => updates(message as DefragmentResponse)) as DefragmentResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DefragmentResponse create() => DefragmentResponse._();
  DefragmentResponse createEmptyInstance() => create();
  static $pb.PbList<DefragmentResponse> createRepeated() => $pb.PbList<DefragmentResponse>();
  @$core.pragma('dart2js:noInline')
  static DefragmentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DefragmentResponse>(create);
  static DefragmentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class MoveLeaderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoveLeaderRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetID', $pb.PbFieldType.OU6, protoName: 'targetID', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  MoveLeaderRequest._() : super();
  factory MoveLeaderRequest({
    $fixnum.Int64? targetID,
  }) {
    final _result = create();
    if (targetID != null) {
      _result.targetID = targetID;
    }
    return _result;
  }
  factory MoveLeaderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoveLeaderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoveLeaderRequest clone() => MoveLeaderRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoveLeaderRequest copyWith(void Function(MoveLeaderRequest) updates) => super.copyWith((message) => updates(message as MoveLeaderRequest)) as MoveLeaderRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoveLeaderRequest create() => MoveLeaderRequest._();
  MoveLeaderRequest createEmptyInstance() => create();
  static $pb.PbList<MoveLeaderRequest> createRepeated() => $pb.PbList<MoveLeaderRequest>();
  @$core.pragma('dart2js:noInline')
  static MoveLeaderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoveLeaderRequest>(create);
  static MoveLeaderRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get targetID => $_getI64(0);
  @$pb.TagNumber(1)
  set targetID($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTargetID() => $_has(0);
  @$pb.TagNumber(1)
  void clearTargetID() => clearField(1);
}

class MoveLeaderResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoveLeaderResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  MoveLeaderResponse._() : super();
  factory MoveLeaderResponse({
    ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory MoveLeaderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoveLeaderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoveLeaderResponse clone() => MoveLeaderResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoveLeaderResponse copyWith(void Function(MoveLeaderResponse) updates) => super.copyWith((message) => updates(message as MoveLeaderResponse)) as MoveLeaderResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoveLeaderResponse create() => MoveLeaderResponse._();
  MoveLeaderResponse createEmptyInstance() => create();
  static $pb.PbList<MoveLeaderResponse> createRepeated() => $pb.PbList<MoveLeaderResponse>();
  @$core.pragma('dart2js:noInline')
  static MoveLeaderResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoveLeaderResponse>(create);
  static MoveLeaderResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class AlarmRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AlarmRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..e<AlarmRequest_AlarmAction>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'action', $pb.PbFieldType.OE, defaultOrMaker: AlarmRequest_AlarmAction.GET, valueOf: AlarmRequest_AlarmAction.valueOf, enumValues: AlarmRequest_AlarmAction.values)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'memberID', $pb.PbFieldType.OU6, protoName: 'memberID', defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<AlarmType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alarm', $pb.PbFieldType.OE, defaultOrMaker: AlarmType.NONE, valueOf: AlarmType.valueOf, enumValues: AlarmType.values)
    ..hasRequiredFields = false
  ;

  AlarmRequest._() : super();
  factory AlarmRequest({
    AlarmRequest_AlarmAction? action,
    $fixnum.Int64? memberID,
    AlarmType? alarm,
  }) {
    final _result = create();
    if (action != null) {
      _result.action = action;
    }
    if (memberID != null) {
      _result.memberID = memberID;
    }
    if (alarm != null) {
      _result.alarm = alarm;
    }
    return _result;
  }
  factory AlarmRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AlarmRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AlarmRequest clone() => AlarmRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AlarmRequest copyWith(void Function(AlarmRequest) updates) => super.copyWith((message) => updates(message as AlarmRequest)) as AlarmRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AlarmRequest create() => AlarmRequest._();
  AlarmRequest createEmptyInstance() => create();
  static $pb.PbList<AlarmRequest> createRepeated() => $pb.PbList<AlarmRequest>();
  @$core.pragma('dart2js:noInline')
  static AlarmRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AlarmRequest>(create);
  static AlarmRequest? _defaultInstance;

  @$pb.TagNumber(1)
  AlarmRequest_AlarmAction get action => $_getN(0);
  @$pb.TagNumber(1)
  set action(AlarmRequest_AlarmAction v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAction() => $_has(0);
  @$pb.TagNumber(1)
  void clearAction() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get memberID => $_getI64(1);
  @$pb.TagNumber(2)
  set memberID($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMemberID() => $_has(1);
  @$pb.TagNumber(2)
  void clearMemberID() => clearField(2);

  @$pb.TagNumber(3)
  AlarmType get alarm => $_getN(2);
  @$pb.TagNumber(3)
  set alarm(AlarmType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAlarm() => $_has(2);
  @$pb.TagNumber(3)
  void clearAlarm() => clearField(3);
}

class AlarmMember extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AlarmMember', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'memberID', $pb.PbFieldType.OU6, protoName: 'memberID', defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<AlarmType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alarm', $pb.PbFieldType.OE, defaultOrMaker: AlarmType.NONE, valueOf: AlarmType.valueOf, enumValues: AlarmType.values)
    ..hasRequiredFields = false
  ;

  AlarmMember._() : super();
  factory AlarmMember({
    $fixnum.Int64? memberID,
    AlarmType? alarm,
  }) {
    final _result = create();
    if (memberID != null) {
      _result.memberID = memberID;
    }
    if (alarm != null) {
      _result.alarm = alarm;
    }
    return _result;
  }
  factory AlarmMember.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AlarmMember.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AlarmMember clone() => AlarmMember()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AlarmMember copyWith(void Function(AlarmMember) updates) => super.copyWith((message) => updates(message as AlarmMember)) as AlarmMember; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AlarmMember create() => AlarmMember._();
  AlarmMember createEmptyInstance() => create();
  static $pb.PbList<AlarmMember> createRepeated() => $pb.PbList<AlarmMember>();
  @$core.pragma('dart2js:noInline')
  static AlarmMember getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AlarmMember>(create);
  static AlarmMember? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get memberID => $_getI64(0);
  @$pb.TagNumber(1)
  set memberID($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMemberID() => $_has(0);
  @$pb.TagNumber(1)
  void clearMemberID() => clearField(1);

  @$pb.TagNumber(2)
  AlarmType get alarm => $_getN(1);
  @$pb.TagNumber(2)
  set alarm(AlarmType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAlarm() => $_has(1);
  @$pb.TagNumber(2)
  void clearAlarm() => clearField(2);
}

class AlarmResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AlarmResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..pc<AlarmMember>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alarms', $pb.PbFieldType.PM, subBuilder: AlarmMember.create)
    ..hasRequiredFields = false
  ;

  AlarmResponse._() : super();
  factory AlarmResponse({
    ResponseHeader? header,
    $core.Iterable<AlarmMember>? alarms,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (alarms != null) {
      _result.alarms.addAll(alarms);
    }
    return _result;
  }
  factory AlarmResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AlarmResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AlarmResponse clone() => AlarmResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AlarmResponse copyWith(void Function(AlarmResponse) updates) => super.copyWith((message) => updates(message as AlarmResponse)) as AlarmResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AlarmResponse create() => AlarmResponse._();
  AlarmResponse createEmptyInstance() => create();
  static $pb.PbList<AlarmResponse> createRepeated() => $pb.PbList<AlarmResponse>();
  @$core.pragma('dart2js:noInline')
  static AlarmResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AlarmResponse>(create);
  static AlarmResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<AlarmMember> get alarms => $_getList(1);
}

class DowngradeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DowngradeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..e<DowngradeRequest_DowngradeAction>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'action', $pb.PbFieldType.OE, defaultOrMaker: DowngradeRequest_DowngradeAction.VALIDATE, valueOf: DowngradeRequest_DowngradeAction.valueOf, enumValues: DowngradeRequest_DowngradeAction.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..hasRequiredFields = false
  ;

  DowngradeRequest._() : super();
  factory DowngradeRequest({
    DowngradeRequest_DowngradeAction? action,
    $core.String? version,
  }) {
    final _result = create();
    if (action != null) {
      _result.action = action;
    }
    if (version != null) {
      _result.version = version;
    }
    return _result;
  }
  factory DowngradeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DowngradeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DowngradeRequest clone() => DowngradeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DowngradeRequest copyWith(void Function(DowngradeRequest) updates) => super.copyWith((message) => updates(message as DowngradeRequest)) as DowngradeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DowngradeRequest create() => DowngradeRequest._();
  DowngradeRequest createEmptyInstance() => create();
  static $pb.PbList<DowngradeRequest> createRepeated() => $pb.PbList<DowngradeRequest>();
  @$core.pragma('dart2js:noInline')
  static DowngradeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DowngradeRequest>(create);
  static DowngradeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  DowngradeRequest_DowngradeAction get action => $_getN(0);
  @$pb.TagNumber(1)
  set action(DowngradeRequest_DowngradeAction v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAction() => $_has(0);
  @$pb.TagNumber(1)
  void clearAction() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);
}

class DowngradeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DowngradeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..hasRequiredFields = false
  ;

  DowngradeResponse._() : super();
  factory DowngradeResponse({
    ResponseHeader? header,
    $core.String? version,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (version != null) {
      _result.version = version;
    }
    return _result;
  }
  factory DowngradeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DowngradeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DowngradeResponse clone() => DowngradeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DowngradeResponse copyWith(void Function(DowngradeResponse) updates) => super.copyWith((message) => updates(message as DowngradeResponse)) as DowngradeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DowngradeResponse create() => DowngradeResponse._();
  DowngradeResponse createEmptyInstance() => create();
  static $pb.PbList<DowngradeResponse> createRepeated() => $pb.PbList<DowngradeResponse>();
  @$core.pragma('dart2js:noInline')
  static DowngradeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DowngradeResponse>(create);
  static DowngradeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);
}

class StatusRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StatusRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  StatusRequest._() : super();
  factory StatusRequest() => create();
  factory StatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatusRequest clone() => StatusRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatusRequest copyWith(void Function(StatusRequest) updates) => super.copyWith((message) => updates(message as StatusRequest)) as StatusRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StatusRequest create() => StatusRequest._();
  StatusRequest createEmptyInstance() => create();
  static $pb.PbList<StatusRequest> createRepeated() => $pb.PbList<StatusRequest>();
  @$core.pragma('dart2js:noInline')
  static StatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatusRequest>(create);
  static StatusRequest? _defaultInstance;
}

class StatusResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StatusResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dbSize', protoName: 'dbSize')
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'leader', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'raftIndex', $pb.PbFieldType.OU6, protoName: 'raftIndex', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'raftTerm', $pb.PbFieldType.OU6, protoName: 'raftTerm', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'raftAppliedIndex', $pb.PbFieldType.OU6, protoName: 'raftAppliedIndex', defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errors')
    ..aInt64(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dbSizeInUse', protoName: 'dbSizeInUse')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isLearner', protoName: 'isLearner')
    ..hasRequiredFields = false
  ;

  StatusResponse._() : super();
  factory StatusResponse({
    ResponseHeader? header,
    $core.String? version,
    $fixnum.Int64? dbSize,
    $fixnum.Int64? leader,
    $fixnum.Int64? raftIndex,
    $fixnum.Int64? raftTerm,
    $fixnum.Int64? raftAppliedIndex,
    $core.Iterable<$core.String>? errors,
    $fixnum.Int64? dbSizeInUse,
    $core.bool? isLearner,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (version != null) {
      _result.version = version;
    }
    if (dbSize != null) {
      _result.dbSize = dbSize;
    }
    if (leader != null) {
      _result.leader = leader;
    }
    if (raftIndex != null) {
      _result.raftIndex = raftIndex;
    }
    if (raftTerm != null) {
      _result.raftTerm = raftTerm;
    }
    if (raftAppliedIndex != null) {
      _result.raftAppliedIndex = raftAppliedIndex;
    }
    if (errors != null) {
      _result.errors.addAll(errors);
    }
    if (dbSizeInUse != null) {
      _result.dbSizeInUse = dbSizeInUse;
    }
    if (isLearner != null) {
      _result.isLearner = isLearner;
    }
    return _result;
  }
  factory StatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatusResponse clone() => StatusResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatusResponse copyWith(void Function(StatusResponse) updates) => super.copyWith((message) => updates(message as StatusResponse)) as StatusResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StatusResponse create() => StatusResponse._();
  StatusResponse createEmptyInstance() => create();
  static $pb.PbList<StatusResponse> createRepeated() => $pb.PbList<StatusResponse>();
  @$core.pragma('dart2js:noInline')
  static StatusResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatusResponse>(create);
  static StatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get dbSize => $_getI64(2);
  @$pb.TagNumber(3)
  set dbSize($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDbSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearDbSize() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get leader => $_getI64(3);
  @$pb.TagNumber(4)
  set leader($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLeader() => $_has(3);
  @$pb.TagNumber(4)
  void clearLeader() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get raftIndex => $_getI64(4);
  @$pb.TagNumber(5)
  set raftIndex($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRaftIndex() => $_has(4);
  @$pb.TagNumber(5)
  void clearRaftIndex() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get raftTerm => $_getI64(5);
  @$pb.TagNumber(6)
  set raftTerm($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRaftTerm() => $_has(5);
  @$pb.TagNumber(6)
  void clearRaftTerm() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get raftAppliedIndex => $_getI64(6);
  @$pb.TagNumber(7)
  set raftAppliedIndex($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRaftAppliedIndex() => $_has(6);
  @$pb.TagNumber(7)
  void clearRaftAppliedIndex() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.String> get errors => $_getList(7);

  @$pb.TagNumber(9)
  $fixnum.Int64 get dbSizeInUse => $_getI64(8);
  @$pb.TagNumber(9)
  set dbSizeInUse($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDbSizeInUse() => $_has(8);
  @$pb.TagNumber(9)
  void clearDbSizeInUse() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get isLearner => $_getBF(9);
  @$pb.TagNumber(10)
  set isLearner($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasIsLearner() => $_has(9);
  @$pb.TagNumber(10)
  void clearIsLearner() => clearField(10);
}

class AuthEnableRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthEnableRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  AuthEnableRequest._() : super();
  factory AuthEnableRequest() => create();
  factory AuthEnableRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthEnableRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthEnableRequest clone() => AuthEnableRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthEnableRequest copyWith(void Function(AuthEnableRequest) updates) => super.copyWith((message) => updates(message as AuthEnableRequest)) as AuthEnableRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthEnableRequest create() => AuthEnableRequest._();
  AuthEnableRequest createEmptyInstance() => create();
  static $pb.PbList<AuthEnableRequest> createRepeated() => $pb.PbList<AuthEnableRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthEnableRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthEnableRequest>(create);
  static AuthEnableRequest? _defaultInstance;
}

class AuthDisableRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthDisableRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  AuthDisableRequest._() : super();
  factory AuthDisableRequest() => create();
  factory AuthDisableRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthDisableRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthDisableRequest clone() => AuthDisableRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthDisableRequest copyWith(void Function(AuthDisableRequest) updates) => super.copyWith((message) => updates(message as AuthDisableRequest)) as AuthDisableRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthDisableRequest create() => AuthDisableRequest._();
  AuthDisableRequest createEmptyInstance() => create();
  static $pb.PbList<AuthDisableRequest> createRepeated() => $pb.PbList<AuthDisableRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthDisableRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthDisableRequest>(create);
  static AuthDisableRequest? _defaultInstance;
}

class AuthStatusRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthStatusRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  AuthStatusRequest._() : super();
  factory AuthStatusRequest() => create();
  factory AuthStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthStatusRequest clone() => AuthStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthStatusRequest copyWith(void Function(AuthStatusRequest) updates) => super.copyWith((message) => updates(message as AuthStatusRequest)) as AuthStatusRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthStatusRequest create() => AuthStatusRequest._();
  AuthStatusRequest createEmptyInstance() => create();
  static $pb.PbList<AuthStatusRequest> createRepeated() => $pb.PbList<AuthStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthStatusRequest>(create);
  static AuthStatusRequest? _defaultInstance;
}

class AuthenticateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthenticateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  AuthenticateRequest._() : super();
  factory AuthenticateRequest({
    $core.String? name,
    $core.String? password,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory AuthenticateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthenticateRequest clone() => AuthenticateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthenticateRequest copyWith(void Function(AuthenticateRequest) updates) => super.copyWith((message) => updates(message as AuthenticateRequest)) as AuthenticateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthenticateRequest create() => AuthenticateRequest._();
  AuthenticateRequest createEmptyInstance() => create();
  static $pb.PbList<AuthenticateRequest> createRepeated() => $pb.PbList<AuthenticateRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthenticateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthenticateRequest>(create);
  static AuthenticateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class AuthUserAddRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthUserAddRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..aOM<$2.UserAddOptions>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'options', subBuilder: $2.UserAddOptions.create)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hashedPassword', protoName: 'hashedPassword')
    ..hasRequiredFields = false
  ;

  AuthUserAddRequest._() : super();
  factory AuthUserAddRequest({
    $core.String? name,
    $core.String? password,
    $2.UserAddOptions? options,
    $core.String? hashedPassword,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (password != null) {
      _result.password = password;
    }
    if (options != null) {
      _result.options = options;
    }
    if (hashedPassword != null) {
      _result.hashedPassword = hashedPassword;
    }
    return _result;
  }
  factory AuthUserAddRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthUserAddRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthUserAddRequest clone() => AuthUserAddRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthUserAddRequest copyWith(void Function(AuthUserAddRequest) updates) => super.copyWith((message) => updates(message as AuthUserAddRequest)) as AuthUserAddRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthUserAddRequest create() => AuthUserAddRequest._();
  AuthUserAddRequest createEmptyInstance() => create();
  static $pb.PbList<AuthUserAddRequest> createRepeated() => $pb.PbList<AuthUserAddRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthUserAddRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthUserAddRequest>(create);
  static AuthUserAddRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $2.UserAddOptions get options => $_getN(2);
  @$pb.TagNumber(3)
  set options($2.UserAddOptions v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOptions() => $_has(2);
  @$pb.TagNumber(3)
  void clearOptions() => clearField(3);
  @$pb.TagNumber(3)
  $2.UserAddOptions ensureOptions() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get hashedPassword => $_getSZ(3);
  @$pb.TagNumber(4)
  set hashedPassword($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHashedPassword() => $_has(3);
  @$pb.TagNumber(4)
  void clearHashedPassword() => clearField(4);
}

class AuthUserGetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthUserGetRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  AuthUserGetRequest._() : super();
  factory AuthUserGetRequest({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory AuthUserGetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthUserGetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthUserGetRequest clone() => AuthUserGetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthUserGetRequest copyWith(void Function(AuthUserGetRequest) updates) => super.copyWith((message) => updates(message as AuthUserGetRequest)) as AuthUserGetRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthUserGetRequest create() => AuthUserGetRequest._();
  AuthUserGetRequest createEmptyInstance() => create();
  static $pb.PbList<AuthUserGetRequest> createRepeated() => $pb.PbList<AuthUserGetRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthUserGetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthUserGetRequest>(create);
  static AuthUserGetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class AuthUserDeleteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthUserDeleteRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  AuthUserDeleteRequest._() : super();
  factory AuthUserDeleteRequest({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory AuthUserDeleteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthUserDeleteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthUserDeleteRequest clone() => AuthUserDeleteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthUserDeleteRequest copyWith(void Function(AuthUserDeleteRequest) updates) => super.copyWith((message) => updates(message as AuthUserDeleteRequest)) as AuthUserDeleteRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthUserDeleteRequest create() => AuthUserDeleteRequest._();
  AuthUserDeleteRequest createEmptyInstance() => create();
  static $pb.PbList<AuthUserDeleteRequest> createRepeated() => $pb.PbList<AuthUserDeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthUserDeleteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthUserDeleteRequest>(create);
  static AuthUserDeleteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class AuthUserChangePasswordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthUserChangePasswordRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hashedPassword', protoName: 'hashedPassword')
    ..hasRequiredFields = false
  ;

  AuthUserChangePasswordRequest._() : super();
  factory AuthUserChangePasswordRequest({
    $core.String? name,
    $core.String? password,
    $core.String? hashedPassword,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (password != null) {
      _result.password = password;
    }
    if (hashedPassword != null) {
      _result.hashedPassword = hashedPassword;
    }
    return _result;
  }
  factory AuthUserChangePasswordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthUserChangePasswordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthUserChangePasswordRequest clone() => AuthUserChangePasswordRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthUserChangePasswordRequest copyWith(void Function(AuthUserChangePasswordRequest) updates) => super.copyWith((message) => updates(message as AuthUserChangePasswordRequest)) as AuthUserChangePasswordRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthUserChangePasswordRequest create() => AuthUserChangePasswordRequest._();
  AuthUserChangePasswordRequest createEmptyInstance() => create();
  static $pb.PbList<AuthUserChangePasswordRequest> createRepeated() => $pb.PbList<AuthUserChangePasswordRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthUserChangePasswordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthUserChangePasswordRequest>(create);
  static AuthUserChangePasswordRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get hashedPassword => $_getSZ(2);
  @$pb.TagNumber(3)
  set hashedPassword($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHashedPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearHashedPassword() => clearField(3);
}

class AuthUserGrantRoleRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthUserGrantRoleRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'role')
    ..hasRequiredFields = false
  ;

  AuthUserGrantRoleRequest._() : super();
  factory AuthUserGrantRoleRequest({
    $core.String? user,
    $core.String? role,
  }) {
    final _result = create();
    if (user != null) {
      _result.user = user;
    }
    if (role != null) {
      _result.role = role;
    }
    return _result;
  }
  factory AuthUserGrantRoleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthUserGrantRoleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthUserGrantRoleRequest clone() => AuthUserGrantRoleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthUserGrantRoleRequest copyWith(void Function(AuthUserGrantRoleRequest) updates) => super.copyWith((message) => updates(message as AuthUserGrantRoleRequest)) as AuthUserGrantRoleRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthUserGrantRoleRequest create() => AuthUserGrantRoleRequest._();
  AuthUserGrantRoleRequest createEmptyInstance() => create();
  static $pb.PbList<AuthUserGrantRoleRequest> createRepeated() => $pb.PbList<AuthUserGrantRoleRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthUserGrantRoleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthUserGrantRoleRequest>(create);
  static AuthUserGrantRoleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get user => $_getSZ(0);
  @$pb.TagNumber(1)
  set user($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get role => $_getSZ(1);
  @$pb.TagNumber(2)
  set role($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRole() => $_has(1);
  @$pb.TagNumber(2)
  void clearRole() => clearField(2);
}

class AuthUserRevokeRoleRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthUserRevokeRoleRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'role')
    ..hasRequiredFields = false
  ;

  AuthUserRevokeRoleRequest._() : super();
  factory AuthUserRevokeRoleRequest({
    $core.String? name,
    $core.String? role,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (role != null) {
      _result.role = role;
    }
    return _result;
  }
  factory AuthUserRevokeRoleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthUserRevokeRoleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthUserRevokeRoleRequest clone() => AuthUserRevokeRoleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthUserRevokeRoleRequest copyWith(void Function(AuthUserRevokeRoleRequest) updates) => super.copyWith((message) => updates(message as AuthUserRevokeRoleRequest)) as AuthUserRevokeRoleRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthUserRevokeRoleRequest create() => AuthUserRevokeRoleRequest._();
  AuthUserRevokeRoleRequest createEmptyInstance() => create();
  static $pb.PbList<AuthUserRevokeRoleRequest> createRepeated() => $pb.PbList<AuthUserRevokeRoleRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthUserRevokeRoleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthUserRevokeRoleRequest>(create);
  static AuthUserRevokeRoleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get role => $_getSZ(1);
  @$pb.TagNumber(2)
  set role($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRole() => $_has(1);
  @$pb.TagNumber(2)
  void clearRole() => clearField(2);
}

class AuthRoleAddRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthRoleAddRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  AuthRoleAddRequest._() : super();
  factory AuthRoleAddRequest({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory AuthRoleAddRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthRoleAddRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthRoleAddRequest clone() => AuthRoleAddRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthRoleAddRequest copyWith(void Function(AuthRoleAddRequest) updates) => super.copyWith((message) => updates(message as AuthRoleAddRequest)) as AuthRoleAddRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthRoleAddRequest create() => AuthRoleAddRequest._();
  AuthRoleAddRequest createEmptyInstance() => create();
  static $pb.PbList<AuthRoleAddRequest> createRepeated() => $pb.PbList<AuthRoleAddRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthRoleAddRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthRoleAddRequest>(create);
  static AuthRoleAddRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class AuthRoleGetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthRoleGetRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'role')
    ..hasRequiredFields = false
  ;

  AuthRoleGetRequest._() : super();
  factory AuthRoleGetRequest({
    $core.String? role,
  }) {
    final _result = create();
    if (role != null) {
      _result.role = role;
    }
    return _result;
  }
  factory AuthRoleGetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthRoleGetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthRoleGetRequest clone() => AuthRoleGetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthRoleGetRequest copyWith(void Function(AuthRoleGetRequest) updates) => super.copyWith((message) => updates(message as AuthRoleGetRequest)) as AuthRoleGetRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthRoleGetRequest create() => AuthRoleGetRequest._();
  AuthRoleGetRequest createEmptyInstance() => create();
  static $pb.PbList<AuthRoleGetRequest> createRepeated() => $pb.PbList<AuthRoleGetRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthRoleGetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthRoleGetRequest>(create);
  static AuthRoleGetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get role => $_getSZ(0);
  @$pb.TagNumber(1)
  set role($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRole() => $_has(0);
  @$pb.TagNumber(1)
  void clearRole() => clearField(1);
}

class AuthUserListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthUserListRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  AuthUserListRequest._() : super();
  factory AuthUserListRequest() => create();
  factory AuthUserListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthUserListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthUserListRequest clone() => AuthUserListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthUserListRequest copyWith(void Function(AuthUserListRequest) updates) => super.copyWith((message) => updates(message as AuthUserListRequest)) as AuthUserListRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthUserListRequest create() => AuthUserListRequest._();
  AuthUserListRequest createEmptyInstance() => create();
  static $pb.PbList<AuthUserListRequest> createRepeated() => $pb.PbList<AuthUserListRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthUserListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthUserListRequest>(create);
  static AuthUserListRequest? _defaultInstance;
}

class AuthRoleListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthRoleListRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  AuthRoleListRequest._() : super();
  factory AuthRoleListRequest() => create();
  factory AuthRoleListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthRoleListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthRoleListRequest clone() => AuthRoleListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthRoleListRequest copyWith(void Function(AuthRoleListRequest) updates) => super.copyWith((message) => updates(message as AuthRoleListRequest)) as AuthRoleListRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthRoleListRequest create() => AuthRoleListRequest._();
  AuthRoleListRequest createEmptyInstance() => create();
  static $pb.PbList<AuthRoleListRequest> createRepeated() => $pb.PbList<AuthRoleListRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthRoleListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthRoleListRequest>(create);
  static AuthRoleListRequest? _defaultInstance;
}

class AuthRoleDeleteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthRoleDeleteRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'role')
    ..hasRequiredFields = false
  ;

  AuthRoleDeleteRequest._() : super();
  factory AuthRoleDeleteRequest({
    $core.String? role,
  }) {
    final _result = create();
    if (role != null) {
      _result.role = role;
    }
    return _result;
  }
  factory AuthRoleDeleteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthRoleDeleteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthRoleDeleteRequest clone() => AuthRoleDeleteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthRoleDeleteRequest copyWith(void Function(AuthRoleDeleteRequest) updates) => super.copyWith((message) => updates(message as AuthRoleDeleteRequest)) as AuthRoleDeleteRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthRoleDeleteRequest create() => AuthRoleDeleteRequest._();
  AuthRoleDeleteRequest createEmptyInstance() => create();
  static $pb.PbList<AuthRoleDeleteRequest> createRepeated() => $pb.PbList<AuthRoleDeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthRoleDeleteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthRoleDeleteRequest>(create);
  static AuthRoleDeleteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get role => $_getSZ(0);
  @$pb.TagNumber(1)
  set role($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRole() => $_has(0);
  @$pb.TagNumber(1)
  void clearRole() => clearField(1);
}

class AuthRoleGrantPermissionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthRoleGrantPermissionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOM<$2.Permission>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'perm', subBuilder: $2.Permission.create)
    ..hasRequiredFields = false
  ;

  AuthRoleGrantPermissionRequest._() : super();
  factory AuthRoleGrantPermissionRequest({
    $core.String? name,
    $2.Permission? perm,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (perm != null) {
      _result.perm = perm;
    }
    return _result;
  }
  factory AuthRoleGrantPermissionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthRoleGrantPermissionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthRoleGrantPermissionRequest clone() => AuthRoleGrantPermissionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthRoleGrantPermissionRequest copyWith(void Function(AuthRoleGrantPermissionRequest) updates) => super.copyWith((message) => updates(message as AuthRoleGrantPermissionRequest)) as AuthRoleGrantPermissionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthRoleGrantPermissionRequest create() => AuthRoleGrantPermissionRequest._();
  AuthRoleGrantPermissionRequest createEmptyInstance() => create();
  static $pb.PbList<AuthRoleGrantPermissionRequest> createRepeated() => $pb.PbList<AuthRoleGrantPermissionRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthRoleGrantPermissionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthRoleGrantPermissionRequest>(create);
  static AuthRoleGrantPermissionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $2.Permission get perm => $_getN(1);
  @$pb.TagNumber(2)
  set perm($2.Permission v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPerm() => $_has(1);
  @$pb.TagNumber(2)
  void clearPerm() => clearField(2);
  @$pb.TagNumber(2)
  $2.Permission ensurePerm() => $_ensure(1);
}

class AuthRoleRevokePermissionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthRoleRevokePermissionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'role')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rangeEnd', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  AuthRoleRevokePermissionRequest._() : super();
  factory AuthRoleRevokePermissionRequest({
    $core.String? role,
    $core.List<$core.int>? key,
    $core.List<$core.int>? rangeEnd,
  }) {
    final _result = create();
    if (role != null) {
      _result.role = role;
    }
    if (key != null) {
      _result.key = key;
    }
    if (rangeEnd != null) {
      _result.rangeEnd = rangeEnd;
    }
    return _result;
  }
  factory AuthRoleRevokePermissionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthRoleRevokePermissionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthRoleRevokePermissionRequest clone() => AuthRoleRevokePermissionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthRoleRevokePermissionRequest copyWith(void Function(AuthRoleRevokePermissionRequest) updates) => super.copyWith((message) => updates(message as AuthRoleRevokePermissionRequest)) as AuthRoleRevokePermissionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthRoleRevokePermissionRequest create() => AuthRoleRevokePermissionRequest._();
  AuthRoleRevokePermissionRequest createEmptyInstance() => create();
  static $pb.PbList<AuthRoleRevokePermissionRequest> createRepeated() => $pb.PbList<AuthRoleRevokePermissionRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthRoleRevokePermissionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthRoleRevokePermissionRequest>(create);
  static AuthRoleRevokePermissionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get role => $_getSZ(0);
  @$pb.TagNumber(1)
  set role($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRole() => $_has(0);
  @$pb.TagNumber(1)
  void clearRole() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get key => $_getN(1);
  @$pb.TagNumber(2)
  set key($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get rangeEnd => $_getN(2);
  @$pb.TagNumber(3)
  set rangeEnd($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRangeEnd() => $_has(2);
  @$pb.TagNumber(3)
  void clearRangeEnd() => clearField(3);
}

class AuthEnableResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthEnableResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  AuthEnableResponse._() : super();
  factory AuthEnableResponse({
    ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory AuthEnableResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthEnableResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthEnableResponse clone() => AuthEnableResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthEnableResponse copyWith(void Function(AuthEnableResponse) updates) => super.copyWith((message) => updates(message as AuthEnableResponse)) as AuthEnableResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthEnableResponse create() => AuthEnableResponse._();
  AuthEnableResponse createEmptyInstance() => create();
  static $pb.PbList<AuthEnableResponse> createRepeated() => $pb.PbList<AuthEnableResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthEnableResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthEnableResponse>(create);
  static AuthEnableResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class AuthDisableResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthDisableResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  AuthDisableResponse._() : super();
  factory AuthDisableResponse({
    ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory AuthDisableResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthDisableResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthDisableResponse clone() => AuthDisableResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthDisableResponse copyWith(void Function(AuthDisableResponse) updates) => super.copyWith((message) => updates(message as AuthDisableResponse)) as AuthDisableResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthDisableResponse create() => AuthDisableResponse._();
  AuthDisableResponse createEmptyInstance() => create();
  static $pb.PbList<AuthDisableResponse> createRepeated() => $pb.PbList<AuthDisableResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthDisableResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthDisableResponse>(create);
  static AuthDisableResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class AuthStatusResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthStatusResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enabled')
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authRevision', $pb.PbFieldType.OU6, protoName: 'authRevision', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  AuthStatusResponse._() : super();
  factory AuthStatusResponse({
    ResponseHeader? header,
    $core.bool? enabled,
    $fixnum.Int64? authRevision,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (enabled != null) {
      _result.enabled = enabled;
    }
    if (authRevision != null) {
      _result.authRevision = authRevision;
    }
    return _result;
  }
  factory AuthStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthStatusResponse clone() => AuthStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthStatusResponse copyWith(void Function(AuthStatusResponse) updates) => super.copyWith((message) => updates(message as AuthStatusResponse)) as AuthStatusResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthStatusResponse create() => AuthStatusResponse._();
  AuthStatusResponse createEmptyInstance() => create();
  static $pb.PbList<AuthStatusResponse> createRepeated() => $pb.PbList<AuthStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthStatusResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthStatusResponse>(create);
  static AuthStatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get enabled => $_getBF(1);
  @$pb.TagNumber(2)
  set enabled($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEnabled() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnabled() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get authRevision => $_getI64(2);
  @$pb.TagNumber(3)
  set authRevision($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuthRevision() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthRevision() => clearField(3);
}

class AuthenticateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthenticateResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..hasRequiredFields = false
  ;

  AuthenticateResponse._() : super();
  factory AuthenticateResponse({
    ResponseHeader? header,
    $core.String? token,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (token != null) {
      _result.token = token;
    }
    return _result;
  }
  factory AuthenticateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthenticateResponse clone() => AuthenticateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthenticateResponse copyWith(void Function(AuthenticateResponse) updates) => super.copyWith((message) => updates(message as AuthenticateResponse)) as AuthenticateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthenticateResponse create() => AuthenticateResponse._();
  AuthenticateResponse createEmptyInstance() => create();
  static $pb.PbList<AuthenticateResponse> createRepeated() => $pb.PbList<AuthenticateResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthenticateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthenticateResponse>(create);
  static AuthenticateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);
}

class AuthUserAddResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthUserAddResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  AuthUserAddResponse._() : super();
  factory AuthUserAddResponse({
    ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory AuthUserAddResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthUserAddResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthUserAddResponse clone() => AuthUserAddResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthUserAddResponse copyWith(void Function(AuthUserAddResponse) updates) => super.copyWith((message) => updates(message as AuthUserAddResponse)) as AuthUserAddResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthUserAddResponse create() => AuthUserAddResponse._();
  AuthUserAddResponse createEmptyInstance() => create();
  static $pb.PbList<AuthUserAddResponse> createRepeated() => $pb.PbList<AuthUserAddResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthUserAddResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthUserAddResponse>(create);
  static AuthUserAddResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class AuthUserGetResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthUserGetResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roles')
    ..hasRequiredFields = false
  ;

  AuthUserGetResponse._() : super();
  factory AuthUserGetResponse({
    ResponseHeader? header,
    $core.Iterable<$core.String>? roles,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (roles != null) {
      _result.roles.addAll(roles);
    }
    return _result;
  }
  factory AuthUserGetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthUserGetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthUserGetResponse clone() => AuthUserGetResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthUserGetResponse copyWith(void Function(AuthUserGetResponse) updates) => super.copyWith((message) => updates(message as AuthUserGetResponse)) as AuthUserGetResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthUserGetResponse create() => AuthUserGetResponse._();
  AuthUserGetResponse createEmptyInstance() => create();
  static $pb.PbList<AuthUserGetResponse> createRepeated() => $pb.PbList<AuthUserGetResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthUserGetResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthUserGetResponse>(create);
  static AuthUserGetResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get roles => $_getList(1);
}

class AuthUserDeleteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthUserDeleteResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  AuthUserDeleteResponse._() : super();
  factory AuthUserDeleteResponse({
    ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory AuthUserDeleteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthUserDeleteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthUserDeleteResponse clone() => AuthUserDeleteResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthUserDeleteResponse copyWith(void Function(AuthUserDeleteResponse) updates) => super.copyWith((message) => updates(message as AuthUserDeleteResponse)) as AuthUserDeleteResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthUserDeleteResponse create() => AuthUserDeleteResponse._();
  AuthUserDeleteResponse createEmptyInstance() => create();
  static $pb.PbList<AuthUserDeleteResponse> createRepeated() => $pb.PbList<AuthUserDeleteResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthUserDeleteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthUserDeleteResponse>(create);
  static AuthUserDeleteResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class AuthUserChangePasswordResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthUserChangePasswordResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  AuthUserChangePasswordResponse._() : super();
  factory AuthUserChangePasswordResponse({
    ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory AuthUserChangePasswordResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthUserChangePasswordResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthUserChangePasswordResponse clone() => AuthUserChangePasswordResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthUserChangePasswordResponse copyWith(void Function(AuthUserChangePasswordResponse) updates) => super.copyWith((message) => updates(message as AuthUserChangePasswordResponse)) as AuthUserChangePasswordResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthUserChangePasswordResponse create() => AuthUserChangePasswordResponse._();
  AuthUserChangePasswordResponse createEmptyInstance() => create();
  static $pb.PbList<AuthUserChangePasswordResponse> createRepeated() => $pb.PbList<AuthUserChangePasswordResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthUserChangePasswordResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthUserChangePasswordResponse>(create);
  static AuthUserChangePasswordResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class AuthUserGrantRoleResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthUserGrantRoleResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  AuthUserGrantRoleResponse._() : super();
  factory AuthUserGrantRoleResponse({
    ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory AuthUserGrantRoleResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthUserGrantRoleResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthUserGrantRoleResponse clone() => AuthUserGrantRoleResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthUserGrantRoleResponse copyWith(void Function(AuthUserGrantRoleResponse) updates) => super.copyWith((message) => updates(message as AuthUserGrantRoleResponse)) as AuthUserGrantRoleResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthUserGrantRoleResponse create() => AuthUserGrantRoleResponse._();
  AuthUserGrantRoleResponse createEmptyInstance() => create();
  static $pb.PbList<AuthUserGrantRoleResponse> createRepeated() => $pb.PbList<AuthUserGrantRoleResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthUserGrantRoleResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthUserGrantRoleResponse>(create);
  static AuthUserGrantRoleResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class AuthUserRevokeRoleResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthUserRevokeRoleResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  AuthUserRevokeRoleResponse._() : super();
  factory AuthUserRevokeRoleResponse({
    ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory AuthUserRevokeRoleResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthUserRevokeRoleResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthUserRevokeRoleResponse clone() => AuthUserRevokeRoleResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthUserRevokeRoleResponse copyWith(void Function(AuthUserRevokeRoleResponse) updates) => super.copyWith((message) => updates(message as AuthUserRevokeRoleResponse)) as AuthUserRevokeRoleResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthUserRevokeRoleResponse create() => AuthUserRevokeRoleResponse._();
  AuthUserRevokeRoleResponse createEmptyInstance() => create();
  static $pb.PbList<AuthUserRevokeRoleResponse> createRepeated() => $pb.PbList<AuthUserRevokeRoleResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthUserRevokeRoleResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthUserRevokeRoleResponse>(create);
  static AuthUserRevokeRoleResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class AuthRoleAddResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthRoleAddResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  AuthRoleAddResponse._() : super();
  factory AuthRoleAddResponse({
    ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory AuthRoleAddResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthRoleAddResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthRoleAddResponse clone() => AuthRoleAddResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthRoleAddResponse copyWith(void Function(AuthRoleAddResponse) updates) => super.copyWith((message) => updates(message as AuthRoleAddResponse)) as AuthRoleAddResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthRoleAddResponse create() => AuthRoleAddResponse._();
  AuthRoleAddResponse createEmptyInstance() => create();
  static $pb.PbList<AuthRoleAddResponse> createRepeated() => $pb.PbList<AuthRoleAddResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthRoleAddResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthRoleAddResponse>(create);
  static AuthRoleAddResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class AuthRoleGetResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthRoleGetResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..pc<$2.Permission>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'perm', $pb.PbFieldType.PM, subBuilder: $2.Permission.create)
    ..hasRequiredFields = false
  ;

  AuthRoleGetResponse._() : super();
  factory AuthRoleGetResponse({
    ResponseHeader? header,
    $core.Iterable<$2.Permission>? perm,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (perm != null) {
      _result.perm.addAll(perm);
    }
    return _result;
  }
  factory AuthRoleGetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthRoleGetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthRoleGetResponse clone() => AuthRoleGetResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthRoleGetResponse copyWith(void Function(AuthRoleGetResponse) updates) => super.copyWith((message) => updates(message as AuthRoleGetResponse)) as AuthRoleGetResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthRoleGetResponse create() => AuthRoleGetResponse._();
  AuthRoleGetResponse createEmptyInstance() => create();
  static $pb.PbList<AuthRoleGetResponse> createRepeated() => $pb.PbList<AuthRoleGetResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthRoleGetResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthRoleGetResponse>(create);
  static AuthRoleGetResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$2.Permission> get perm => $_getList(1);
}

class AuthRoleListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthRoleListResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roles')
    ..hasRequiredFields = false
  ;

  AuthRoleListResponse._() : super();
  factory AuthRoleListResponse({
    ResponseHeader? header,
    $core.Iterable<$core.String>? roles,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (roles != null) {
      _result.roles.addAll(roles);
    }
    return _result;
  }
  factory AuthRoleListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthRoleListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthRoleListResponse clone() => AuthRoleListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthRoleListResponse copyWith(void Function(AuthRoleListResponse) updates) => super.copyWith((message) => updates(message as AuthRoleListResponse)) as AuthRoleListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthRoleListResponse create() => AuthRoleListResponse._();
  AuthRoleListResponse createEmptyInstance() => create();
  static $pb.PbList<AuthRoleListResponse> createRepeated() => $pb.PbList<AuthRoleListResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthRoleListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthRoleListResponse>(create);
  static AuthRoleListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get roles => $_getList(1);
}

class AuthUserListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthUserListResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'users')
    ..hasRequiredFields = false
  ;

  AuthUserListResponse._() : super();
  factory AuthUserListResponse({
    ResponseHeader? header,
    $core.Iterable<$core.String>? users,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (users != null) {
      _result.users.addAll(users);
    }
    return _result;
  }
  factory AuthUserListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthUserListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthUserListResponse clone() => AuthUserListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthUserListResponse copyWith(void Function(AuthUserListResponse) updates) => super.copyWith((message) => updates(message as AuthUserListResponse)) as AuthUserListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthUserListResponse create() => AuthUserListResponse._();
  AuthUserListResponse createEmptyInstance() => create();
  static $pb.PbList<AuthUserListResponse> createRepeated() => $pb.PbList<AuthUserListResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthUserListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthUserListResponse>(create);
  static AuthUserListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get users => $_getList(1);
}

class AuthRoleDeleteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthRoleDeleteResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  AuthRoleDeleteResponse._() : super();
  factory AuthRoleDeleteResponse({
    ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory AuthRoleDeleteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthRoleDeleteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthRoleDeleteResponse clone() => AuthRoleDeleteResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthRoleDeleteResponse copyWith(void Function(AuthRoleDeleteResponse) updates) => super.copyWith((message) => updates(message as AuthRoleDeleteResponse)) as AuthRoleDeleteResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthRoleDeleteResponse create() => AuthRoleDeleteResponse._();
  AuthRoleDeleteResponse createEmptyInstance() => create();
  static $pb.PbList<AuthRoleDeleteResponse> createRepeated() => $pb.PbList<AuthRoleDeleteResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthRoleDeleteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthRoleDeleteResponse>(create);
  static AuthRoleDeleteResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class AuthRoleGrantPermissionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthRoleGrantPermissionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  AuthRoleGrantPermissionResponse._() : super();
  factory AuthRoleGrantPermissionResponse({
    ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory AuthRoleGrantPermissionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthRoleGrantPermissionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthRoleGrantPermissionResponse clone() => AuthRoleGrantPermissionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthRoleGrantPermissionResponse copyWith(void Function(AuthRoleGrantPermissionResponse) updates) => super.copyWith((message) => updates(message as AuthRoleGrantPermissionResponse)) as AuthRoleGrantPermissionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthRoleGrantPermissionResponse create() => AuthRoleGrantPermissionResponse._();
  AuthRoleGrantPermissionResponse createEmptyInstance() => create();
  static $pb.PbList<AuthRoleGrantPermissionResponse> createRepeated() => $pb.PbList<AuthRoleGrantPermissionResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthRoleGrantPermissionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthRoleGrantPermissionResponse>(create);
  static AuthRoleGrantPermissionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class AuthRoleRevokePermissionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthRoleRevokePermissionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'etcdserverpb'), createEmptyInstance: create)
    ..aOM<ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  AuthRoleRevokePermissionResponse._() : super();
  factory AuthRoleRevokePermissionResponse({
    ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory AuthRoleRevokePermissionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthRoleRevokePermissionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthRoleRevokePermissionResponse clone() => AuthRoleRevokePermissionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthRoleRevokePermissionResponse copyWith(void Function(AuthRoleRevokePermissionResponse) updates) => super.copyWith((message) => updates(message as AuthRoleRevokePermissionResponse)) as AuthRoleRevokePermissionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthRoleRevokePermissionResponse create() => AuthRoleRevokePermissionResponse._();
  AuthRoleRevokePermissionResponse createEmptyInstance() => create();
  static $pb.PbList<AuthRoleRevokePermissionResponse> createRepeated() => $pb.PbList<AuthRoleRevokePermissionResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthRoleRevokePermissionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthRoleRevokePermissionResponse>(create);
  static AuthRoleRevokePermissionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  ResponseHeader ensureHeader() => $_ensure(0);
}

class KVApi {
  $pb.RpcClient _client;
  KVApi(this._client);

  $async.Future<RangeResponse> range($pb.ClientContext? ctx, RangeRequest request) {
    var emptyResponse = RangeResponse();
    return _client.invoke<RangeResponse>(ctx, 'KV', 'Range', request, emptyResponse);
  }
  $async.Future<PutResponse> put($pb.ClientContext? ctx, PutRequest request) {
    var emptyResponse = PutResponse();
    return _client.invoke<PutResponse>(ctx, 'KV', 'Put', request, emptyResponse);
  }
  $async.Future<DeleteRangeResponse> deleteRange($pb.ClientContext? ctx, DeleteRangeRequest request) {
    var emptyResponse = DeleteRangeResponse();
    return _client.invoke<DeleteRangeResponse>(ctx, 'KV', 'DeleteRange', request, emptyResponse);
  }
  $async.Future<TxnResponse> txn($pb.ClientContext? ctx, TxnRequest request) {
    var emptyResponse = TxnResponse();
    return _client.invoke<TxnResponse>(ctx, 'KV', 'Txn', request, emptyResponse);
  }
  $async.Future<CompactionResponse> compact($pb.ClientContext? ctx, CompactionRequest request) {
    var emptyResponse = CompactionResponse();
    return _client.invoke<CompactionResponse>(ctx, 'KV', 'Compact', request, emptyResponse);
  }
}

class WatchApi {
  $pb.RpcClient _client;
  WatchApi(this._client);

  $async.Future<WatchResponse> watch($pb.ClientContext? ctx, WatchRequest request) {
    var emptyResponse = WatchResponse();
    return _client.invoke<WatchResponse>(ctx, 'Watch', 'Watch', request, emptyResponse);
  }
}

class LeaseApi {
  $pb.RpcClient _client;
  LeaseApi(this._client);

  $async.Future<LeaseGrantResponse> leaseGrant($pb.ClientContext? ctx, LeaseGrantRequest request) {
    var emptyResponse = LeaseGrantResponse();
    return _client.invoke<LeaseGrantResponse>(ctx, 'Lease', 'LeaseGrant', request, emptyResponse);
  }
  $async.Future<LeaseRevokeResponse> leaseRevoke($pb.ClientContext? ctx, LeaseRevokeRequest request) {
    var emptyResponse = LeaseRevokeResponse();
    return _client.invoke<LeaseRevokeResponse>(ctx, 'Lease', 'LeaseRevoke', request, emptyResponse);
  }
  $async.Future<LeaseKeepAliveResponse> leaseKeepAlive($pb.ClientContext? ctx, LeaseKeepAliveRequest request) {
    var emptyResponse = LeaseKeepAliveResponse();
    return _client.invoke<LeaseKeepAliveResponse>(ctx, 'Lease', 'LeaseKeepAlive', request, emptyResponse);
  }
  $async.Future<LeaseTimeToLiveResponse> leaseTimeToLive($pb.ClientContext? ctx, LeaseTimeToLiveRequest request) {
    var emptyResponse = LeaseTimeToLiveResponse();
    return _client.invoke<LeaseTimeToLiveResponse>(ctx, 'Lease', 'LeaseTimeToLive', request, emptyResponse);
  }
  $async.Future<LeaseLeasesResponse> leaseLeases($pb.ClientContext? ctx, LeaseLeasesRequest request) {
    var emptyResponse = LeaseLeasesResponse();
    return _client.invoke<LeaseLeasesResponse>(ctx, 'Lease', 'LeaseLeases', request, emptyResponse);
  }
}

class ClusterApi {
  $pb.RpcClient _client;
  ClusterApi(this._client);

  $async.Future<MemberAddResponse> memberAdd($pb.ClientContext? ctx, MemberAddRequest request) {
    var emptyResponse = MemberAddResponse();
    return _client.invoke<MemberAddResponse>(ctx, 'Cluster', 'MemberAdd', request, emptyResponse);
  }
  $async.Future<MemberRemoveResponse> memberRemove($pb.ClientContext? ctx, MemberRemoveRequest request) {
    var emptyResponse = MemberRemoveResponse();
    return _client.invoke<MemberRemoveResponse>(ctx, 'Cluster', 'MemberRemove', request, emptyResponse);
  }
  $async.Future<MemberUpdateResponse> memberUpdate($pb.ClientContext? ctx, MemberUpdateRequest request) {
    var emptyResponse = MemberUpdateResponse();
    return _client.invoke<MemberUpdateResponse>(ctx, 'Cluster', 'MemberUpdate', request, emptyResponse);
  }
  $async.Future<MemberListResponse> memberList($pb.ClientContext? ctx, MemberListRequest request) {
    var emptyResponse = MemberListResponse();
    return _client.invoke<MemberListResponse>(ctx, 'Cluster', 'MemberList', request, emptyResponse);
  }
  $async.Future<MemberPromoteResponse> memberPromote($pb.ClientContext? ctx, MemberPromoteRequest request) {
    var emptyResponse = MemberPromoteResponse();
    return _client.invoke<MemberPromoteResponse>(ctx, 'Cluster', 'MemberPromote', request, emptyResponse);
  }
}

class MaintenanceApi {
  $pb.RpcClient _client;
  MaintenanceApi(this._client);

  $async.Future<AlarmResponse> alarm($pb.ClientContext? ctx, AlarmRequest request) {
    var emptyResponse = AlarmResponse();
    return _client.invoke<AlarmResponse>(ctx, 'Maintenance', 'Alarm', request, emptyResponse);
  }
  $async.Future<StatusResponse> status($pb.ClientContext? ctx, StatusRequest request) {
    var emptyResponse = StatusResponse();
    return _client.invoke<StatusResponse>(ctx, 'Maintenance', 'Status', request, emptyResponse);
  }
  $async.Future<DefragmentResponse> defragment($pb.ClientContext? ctx, DefragmentRequest request) {
    var emptyResponse = DefragmentResponse();
    return _client.invoke<DefragmentResponse>(ctx, 'Maintenance', 'Defragment', request, emptyResponse);
  }
  $async.Future<HashResponse> hash($pb.ClientContext? ctx, HashRequest request) {
    var emptyResponse = HashResponse();
    return _client.invoke<HashResponse>(ctx, 'Maintenance', 'Hash', request, emptyResponse);
  }
  $async.Future<HashKVResponse> hashKV($pb.ClientContext? ctx, HashKVRequest request) {
    var emptyResponse = HashKVResponse();
    return _client.invoke<HashKVResponse>(ctx, 'Maintenance', 'HashKV', request, emptyResponse);
  }
  $async.Future<SnapshotResponse> snapshot($pb.ClientContext? ctx, SnapshotRequest request) {
    var emptyResponse = SnapshotResponse();
    return _client.invoke<SnapshotResponse>(ctx, 'Maintenance', 'Snapshot', request, emptyResponse);
  }
  $async.Future<MoveLeaderResponse> moveLeader($pb.ClientContext? ctx, MoveLeaderRequest request) {
    var emptyResponse = MoveLeaderResponse();
    return _client.invoke<MoveLeaderResponse>(ctx, 'Maintenance', 'MoveLeader', request, emptyResponse);
  }
  $async.Future<DowngradeResponse> downgrade($pb.ClientContext? ctx, DowngradeRequest request) {
    var emptyResponse = DowngradeResponse();
    return _client.invoke<DowngradeResponse>(ctx, 'Maintenance', 'Downgrade', request, emptyResponse);
  }
}

class AuthApi {
  $pb.RpcClient _client;
  AuthApi(this._client);

  $async.Future<AuthEnableResponse> authEnable($pb.ClientContext? ctx, AuthEnableRequest request) {
    var emptyResponse = AuthEnableResponse();
    return _client.invoke<AuthEnableResponse>(ctx, 'Auth', 'AuthEnable', request, emptyResponse);
  }
  $async.Future<AuthDisableResponse> authDisable($pb.ClientContext? ctx, AuthDisableRequest request) {
    var emptyResponse = AuthDisableResponse();
    return _client.invoke<AuthDisableResponse>(ctx, 'Auth', 'AuthDisable', request, emptyResponse);
  }
  $async.Future<AuthStatusResponse> authStatus($pb.ClientContext? ctx, AuthStatusRequest request) {
    var emptyResponse = AuthStatusResponse();
    return _client.invoke<AuthStatusResponse>(ctx, 'Auth', 'AuthStatus', request, emptyResponse);
  }
  $async.Future<AuthenticateResponse> authenticate($pb.ClientContext? ctx, AuthenticateRequest request) {
    var emptyResponse = AuthenticateResponse();
    return _client.invoke<AuthenticateResponse>(ctx, 'Auth', 'Authenticate', request, emptyResponse);
  }
  $async.Future<AuthUserAddResponse> userAdd($pb.ClientContext? ctx, AuthUserAddRequest request) {
    var emptyResponse = AuthUserAddResponse();
    return _client.invoke<AuthUserAddResponse>(ctx, 'Auth', 'UserAdd', request, emptyResponse);
  }
  $async.Future<AuthUserGetResponse> userGet($pb.ClientContext? ctx, AuthUserGetRequest request) {
    var emptyResponse = AuthUserGetResponse();
    return _client.invoke<AuthUserGetResponse>(ctx, 'Auth', 'UserGet', request, emptyResponse);
  }
  $async.Future<AuthUserListResponse> userList($pb.ClientContext? ctx, AuthUserListRequest request) {
    var emptyResponse = AuthUserListResponse();
    return _client.invoke<AuthUserListResponse>(ctx, 'Auth', 'UserList', request, emptyResponse);
  }
  $async.Future<AuthUserDeleteResponse> userDelete($pb.ClientContext? ctx, AuthUserDeleteRequest request) {
    var emptyResponse = AuthUserDeleteResponse();
    return _client.invoke<AuthUserDeleteResponse>(ctx, 'Auth', 'UserDelete', request, emptyResponse);
  }
  $async.Future<AuthUserChangePasswordResponse> userChangePassword($pb.ClientContext? ctx, AuthUserChangePasswordRequest request) {
    var emptyResponse = AuthUserChangePasswordResponse();
    return _client.invoke<AuthUserChangePasswordResponse>(ctx, 'Auth', 'UserChangePassword', request, emptyResponse);
  }
  $async.Future<AuthUserGrantRoleResponse> userGrantRole($pb.ClientContext? ctx, AuthUserGrantRoleRequest request) {
    var emptyResponse = AuthUserGrantRoleResponse();
    return _client.invoke<AuthUserGrantRoleResponse>(ctx, 'Auth', 'UserGrantRole', request, emptyResponse);
  }
  $async.Future<AuthUserRevokeRoleResponse> userRevokeRole($pb.ClientContext? ctx, AuthUserRevokeRoleRequest request) {
    var emptyResponse = AuthUserRevokeRoleResponse();
    return _client.invoke<AuthUserRevokeRoleResponse>(ctx, 'Auth', 'UserRevokeRole', request, emptyResponse);
  }
  $async.Future<AuthRoleAddResponse> roleAdd($pb.ClientContext? ctx, AuthRoleAddRequest request) {
    var emptyResponse = AuthRoleAddResponse();
    return _client.invoke<AuthRoleAddResponse>(ctx, 'Auth', 'RoleAdd', request, emptyResponse);
  }
  $async.Future<AuthRoleGetResponse> roleGet($pb.ClientContext? ctx, AuthRoleGetRequest request) {
    var emptyResponse = AuthRoleGetResponse();
    return _client.invoke<AuthRoleGetResponse>(ctx, 'Auth', 'RoleGet', request, emptyResponse);
  }
  $async.Future<AuthRoleListResponse> roleList($pb.ClientContext? ctx, AuthRoleListRequest request) {
    var emptyResponse = AuthRoleListResponse();
    return _client.invoke<AuthRoleListResponse>(ctx, 'Auth', 'RoleList', request, emptyResponse);
  }
  $async.Future<AuthRoleDeleteResponse> roleDelete($pb.ClientContext? ctx, AuthRoleDeleteRequest request) {
    var emptyResponse = AuthRoleDeleteResponse();
    return _client.invoke<AuthRoleDeleteResponse>(ctx, 'Auth', 'RoleDelete', request, emptyResponse);
  }
  $async.Future<AuthRoleGrantPermissionResponse> roleGrantPermission($pb.ClientContext? ctx, AuthRoleGrantPermissionRequest request) {
    var emptyResponse = AuthRoleGrantPermissionResponse();
    return _client.invoke<AuthRoleGrantPermissionResponse>(ctx, 'Auth', 'RoleGrantPermission', request, emptyResponse);
  }
  $async.Future<AuthRoleRevokePermissionResponse> roleRevokePermission($pb.ClientContext? ctx, AuthRoleRevokePermissionRequest request) {
    var emptyResponse = AuthRoleRevokePermissionResponse();
    return _client.invoke<AuthRoleRevokePermissionResponse>(ctx, 'Auth', 'RoleRevokePermission', request, emptyResponse);
  }
}

