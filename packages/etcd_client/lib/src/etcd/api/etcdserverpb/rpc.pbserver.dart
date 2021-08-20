///
//  Generated code. Do not modify.
//  source: etcd/api/etcdserverpb/rpc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'rpc.pb.dart' as $3;
import 'rpc.pbjson.dart';

export 'rpc.pb.dart';

abstract class KVServiceBase extends $pb.GeneratedService {
  $async.Future<$3.RangeResponse> range($pb.ServerContext ctx, $3.RangeRequest request);
  $async.Future<$3.PutResponse> put($pb.ServerContext ctx, $3.PutRequest request);
  $async.Future<$3.DeleteRangeResponse> deleteRange($pb.ServerContext ctx, $3.DeleteRangeRequest request);
  $async.Future<$3.TxnResponse> txn($pb.ServerContext ctx, $3.TxnRequest request);
  $async.Future<$3.CompactionResponse> compact($pb.ServerContext ctx, $3.CompactionRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'Range': return $3.RangeRequest();
      case 'Put': return $3.PutRequest();
      case 'DeleteRange': return $3.DeleteRangeRequest();
      case 'Txn': return $3.TxnRequest();
      case 'Compact': return $3.CompactionRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'Range': return this.range(ctx, request as $3.RangeRequest);
      case 'Put': return this.put(ctx, request as $3.PutRequest);
      case 'DeleteRange': return this.deleteRange(ctx, request as $3.DeleteRangeRequest);
      case 'Txn': return this.txn(ctx, request as $3.TxnRequest);
      case 'Compact': return this.compact(ctx, request as $3.CompactionRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => KVServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => KVServiceBase$messageJson;
}

abstract class WatchServiceBase extends $pb.GeneratedService {
  $async.Future<$3.WatchResponse> watch($pb.ServerContext ctx, $3.WatchRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'Watch': return $3.WatchRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'Watch': return this.watch(ctx, request as $3.WatchRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => WatchServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => WatchServiceBase$messageJson;
}

abstract class LeaseServiceBase extends $pb.GeneratedService {
  $async.Future<$3.LeaseGrantResponse> leaseGrant($pb.ServerContext ctx, $3.LeaseGrantRequest request);
  $async.Future<$3.LeaseRevokeResponse> leaseRevoke($pb.ServerContext ctx, $3.LeaseRevokeRequest request);
  $async.Future<$3.LeaseKeepAliveResponse> leaseKeepAlive($pb.ServerContext ctx, $3.LeaseKeepAliveRequest request);
  $async.Future<$3.LeaseTimeToLiveResponse> leaseTimeToLive($pb.ServerContext ctx, $3.LeaseTimeToLiveRequest request);
  $async.Future<$3.LeaseLeasesResponse> leaseLeases($pb.ServerContext ctx, $3.LeaseLeasesRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'LeaseGrant': return $3.LeaseGrantRequest();
      case 'LeaseRevoke': return $3.LeaseRevokeRequest();
      case 'LeaseKeepAlive': return $3.LeaseKeepAliveRequest();
      case 'LeaseTimeToLive': return $3.LeaseTimeToLiveRequest();
      case 'LeaseLeases': return $3.LeaseLeasesRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'LeaseGrant': return this.leaseGrant(ctx, request as $3.LeaseGrantRequest);
      case 'LeaseRevoke': return this.leaseRevoke(ctx, request as $3.LeaseRevokeRequest);
      case 'LeaseKeepAlive': return this.leaseKeepAlive(ctx, request as $3.LeaseKeepAliveRequest);
      case 'LeaseTimeToLive': return this.leaseTimeToLive(ctx, request as $3.LeaseTimeToLiveRequest);
      case 'LeaseLeases': return this.leaseLeases(ctx, request as $3.LeaseLeasesRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => LeaseServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => LeaseServiceBase$messageJson;
}

abstract class ClusterServiceBase extends $pb.GeneratedService {
  $async.Future<$3.MemberAddResponse> memberAdd($pb.ServerContext ctx, $3.MemberAddRequest request);
  $async.Future<$3.MemberRemoveResponse> memberRemove($pb.ServerContext ctx, $3.MemberRemoveRequest request);
  $async.Future<$3.MemberUpdateResponse> memberUpdate($pb.ServerContext ctx, $3.MemberUpdateRequest request);
  $async.Future<$3.MemberListResponse> memberList($pb.ServerContext ctx, $3.MemberListRequest request);
  $async.Future<$3.MemberPromoteResponse> memberPromote($pb.ServerContext ctx, $3.MemberPromoteRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'MemberAdd': return $3.MemberAddRequest();
      case 'MemberRemove': return $3.MemberRemoveRequest();
      case 'MemberUpdate': return $3.MemberUpdateRequest();
      case 'MemberList': return $3.MemberListRequest();
      case 'MemberPromote': return $3.MemberPromoteRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'MemberAdd': return this.memberAdd(ctx, request as $3.MemberAddRequest);
      case 'MemberRemove': return this.memberRemove(ctx, request as $3.MemberRemoveRequest);
      case 'MemberUpdate': return this.memberUpdate(ctx, request as $3.MemberUpdateRequest);
      case 'MemberList': return this.memberList(ctx, request as $3.MemberListRequest);
      case 'MemberPromote': return this.memberPromote(ctx, request as $3.MemberPromoteRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => ClusterServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => ClusterServiceBase$messageJson;
}

abstract class MaintenanceServiceBase extends $pb.GeneratedService {
  $async.Future<$3.AlarmResponse> alarm($pb.ServerContext ctx, $3.AlarmRequest request);
  $async.Future<$3.StatusResponse> status($pb.ServerContext ctx, $3.StatusRequest request);
  $async.Future<$3.DefragmentResponse> defragment($pb.ServerContext ctx, $3.DefragmentRequest request);
  $async.Future<$3.HashResponse> hash($pb.ServerContext ctx, $3.HashRequest request);
  $async.Future<$3.HashKVResponse> hashKV($pb.ServerContext ctx, $3.HashKVRequest request);
  $async.Future<$3.SnapshotResponse> snapshot($pb.ServerContext ctx, $3.SnapshotRequest request);
  $async.Future<$3.MoveLeaderResponse> moveLeader($pb.ServerContext ctx, $3.MoveLeaderRequest request);
  $async.Future<$3.DowngradeResponse> downgrade($pb.ServerContext ctx, $3.DowngradeRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'Alarm': return $3.AlarmRequest();
      case 'Status': return $3.StatusRequest();
      case 'Defragment': return $3.DefragmentRequest();
      case 'Hash': return $3.HashRequest();
      case 'HashKV': return $3.HashKVRequest();
      case 'Snapshot': return $3.SnapshotRequest();
      case 'MoveLeader': return $3.MoveLeaderRequest();
      case 'Downgrade': return $3.DowngradeRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'Alarm': return this.alarm(ctx, request as $3.AlarmRequest);
      case 'Status': return this.status(ctx, request as $3.StatusRequest);
      case 'Defragment': return this.defragment(ctx, request as $3.DefragmentRequest);
      case 'Hash': return this.hash(ctx, request as $3.HashRequest);
      case 'HashKV': return this.hashKV(ctx, request as $3.HashKVRequest);
      case 'Snapshot': return this.snapshot(ctx, request as $3.SnapshotRequest);
      case 'MoveLeader': return this.moveLeader(ctx, request as $3.MoveLeaderRequest);
      case 'Downgrade': return this.downgrade(ctx, request as $3.DowngradeRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => MaintenanceServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => MaintenanceServiceBase$messageJson;
}

abstract class AuthServiceBase extends $pb.GeneratedService {
  $async.Future<$3.AuthEnableResponse> authEnable($pb.ServerContext ctx, $3.AuthEnableRequest request);
  $async.Future<$3.AuthDisableResponse> authDisable($pb.ServerContext ctx, $3.AuthDisableRequest request);
  $async.Future<$3.AuthStatusResponse> authStatus($pb.ServerContext ctx, $3.AuthStatusRequest request);
  $async.Future<$3.AuthenticateResponse> authenticate($pb.ServerContext ctx, $3.AuthenticateRequest request);
  $async.Future<$3.AuthUserAddResponse> userAdd($pb.ServerContext ctx, $3.AuthUserAddRequest request);
  $async.Future<$3.AuthUserGetResponse> userGet($pb.ServerContext ctx, $3.AuthUserGetRequest request);
  $async.Future<$3.AuthUserListResponse> userList($pb.ServerContext ctx, $3.AuthUserListRequest request);
  $async.Future<$3.AuthUserDeleteResponse> userDelete($pb.ServerContext ctx, $3.AuthUserDeleteRequest request);
  $async.Future<$3.AuthUserChangePasswordResponse> userChangePassword($pb.ServerContext ctx, $3.AuthUserChangePasswordRequest request);
  $async.Future<$3.AuthUserGrantRoleResponse> userGrantRole($pb.ServerContext ctx, $3.AuthUserGrantRoleRequest request);
  $async.Future<$3.AuthUserRevokeRoleResponse> userRevokeRole($pb.ServerContext ctx, $3.AuthUserRevokeRoleRequest request);
  $async.Future<$3.AuthRoleAddResponse> roleAdd($pb.ServerContext ctx, $3.AuthRoleAddRequest request);
  $async.Future<$3.AuthRoleGetResponse> roleGet($pb.ServerContext ctx, $3.AuthRoleGetRequest request);
  $async.Future<$3.AuthRoleListResponse> roleList($pb.ServerContext ctx, $3.AuthRoleListRequest request);
  $async.Future<$3.AuthRoleDeleteResponse> roleDelete($pb.ServerContext ctx, $3.AuthRoleDeleteRequest request);
  $async.Future<$3.AuthRoleGrantPermissionResponse> roleGrantPermission($pb.ServerContext ctx, $3.AuthRoleGrantPermissionRequest request);
  $async.Future<$3.AuthRoleRevokePermissionResponse> roleRevokePermission($pb.ServerContext ctx, $3.AuthRoleRevokePermissionRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'AuthEnable': return $3.AuthEnableRequest();
      case 'AuthDisable': return $3.AuthDisableRequest();
      case 'AuthStatus': return $3.AuthStatusRequest();
      case 'Authenticate': return $3.AuthenticateRequest();
      case 'UserAdd': return $3.AuthUserAddRequest();
      case 'UserGet': return $3.AuthUserGetRequest();
      case 'UserList': return $3.AuthUserListRequest();
      case 'UserDelete': return $3.AuthUserDeleteRequest();
      case 'UserChangePassword': return $3.AuthUserChangePasswordRequest();
      case 'UserGrantRole': return $3.AuthUserGrantRoleRequest();
      case 'UserRevokeRole': return $3.AuthUserRevokeRoleRequest();
      case 'RoleAdd': return $3.AuthRoleAddRequest();
      case 'RoleGet': return $3.AuthRoleGetRequest();
      case 'RoleList': return $3.AuthRoleListRequest();
      case 'RoleDelete': return $3.AuthRoleDeleteRequest();
      case 'RoleGrantPermission': return $3.AuthRoleGrantPermissionRequest();
      case 'RoleRevokePermission': return $3.AuthRoleRevokePermissionRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'AuthEnable': return this.authEnable(ctx, request as $3.AuthEnableRequest);
      case 'AuthDisable': return this.authDisable(ctx, request as $3.AuthDisableRequest);
      case 'AuthStatus': return this.authStatus(ctx, request as $3.AuthStatusRequest);
      case 'Authenticate': return this.authenticate(ctx, request as $3.AuthenticateRequest);
      case 'UserAdd': return this.userAdd(ctx, request as $3.AuthUserAddRequest);
      case 'UserGet': return this.userGet(ctx, request as $3.AuthUserGetRequest);
      case 'UserList': return this.userList(ctx, request as $3.AuthUserListRequest);
      case 'UserDelete': return this.userDelete(ctx, request as $3.AuthUserDeleteRequest);
      case 'UserChangePassword': return this.userChangePassword(ctx, request as $3.AuthUserChangePasswordRequest);
      case 'UserGrantRole': return this.userGrantRole(ctx, request as $3.AuthUserGrantRoleRequest);
      case 'UserRevokeRole': return this.userRevokeRole(ctx, request as $3.AuthUserRevokeRoleRequest);
      case 'RoleAdd': return this.roleAdd(ctx, request as $3.AuthRoleAddRequest);
      case 'RoleGet': return this.roleGet(ctx, request as $3.AuthRoleGetRequest);
      case 'RoleList': return this.roleList(ctx, request as $3.AuthRoleListRequest);
      case 'RoleDelete': return this.roleDelete(ctx, request as $3.AuthRoleDeleteRequest);
      case 'RoleGrantPermission': return this.roleGrantPermission(ctx, request as $3.AuthRoleGrantPermissionRequest);
      case 'RoleRevokePermission': return this.roleRevokePermission(ctx, request as $3.AuthRoleRevokePermissionRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => AuthServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => AuthServiceBase$messageJson;
}

