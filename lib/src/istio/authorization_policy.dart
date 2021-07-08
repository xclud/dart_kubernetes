import 'package:kubernetes/apimachinery_pkg_apis_meta_v1.dart';

import '_todo.dart';
import 'authorization_policy_spec.dart';

/// Istio Authorization Policy enables access control on workloads in the mesh.

/// Authorization policy supports CUSTOM, DENY and ALLOW actions for access control.
/// When CUSTOM, DENY and ALLOW actions are used for a workload at the same time,
/// the CUSTOM action is evaluated first, then the DENY action, and finally the ALLOW action.
/// The evaluation is determined by the following rules:
///
///  - If there are any CUSTOM policies that match the request, evaluate and deny the request if the evaluation result is deny.
///  - If there are any DENY policies that match the request, deny the request.
///  - If there are no ALLOW policies for the workload, allow the request.
///  - If any of the ALLOW policies match the request, allow the request.
///  - Deny the request.
///
/// Istio Authorization Policy also supports the AUDIT action to decide whether to log requests.
/// AUDIT policies do not affect whether requests are allowed or denied to the workload.
/// Requests will be allowed or denied based solely on CUSTOM, DENY and ALLOW actions.
///
/// A request will be internally marked that it should be audited if there is an AUDIT policy on
/// the workload that matches the request. A separate plugin must be configured and enabled to actually fulfill
/// the audit decision and complete the audit behavior. The request will not be audited if there are no such
/// supporting plugins enabled. Currently, the only supported plugin is the Stackdriver plugin.
///
/// Here is an example of Istio Authorization Policy:
///
/// It sets the action to “ALLOW” to create an allow policy. The default action is “ALLOW” but it is useful to be explicit in the policy.
///
/// It allows requests from:
///
///  - service account “cluster.local/ns/default/sa/sleep” or
///  - namespace “test”
///
/// to access the workload with:
///
///  - “GET” method at paths of prefix “/info” or,
///  - “POST” method at path “/data”.
///
/// when the request has a valid JWT token issued by “https://accounts.google.com”.
///
/// Any other requests will be denied.
class AuthorizationPolicy {
  /// The main constructor.
  const AuthorizationPolicy({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  /// Creates a AuthorizationPolicy from JSON data.
  AuthorizationPolicy.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: json['spec'] != null
              ? AuthorizationPolicySpec.fromJson(json['spec'])
              : null,
          status: json['status'] != null
              ? AuthorizationPolicyStatus.fromJson(json['status'])
              : null,
        );

  /// Creates a list of AuthorizationPolicy from JSON data.
  static List<AuthorizationPolicy> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => AuthorizationPolicy.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMeta? metadata;

  /// Spec defines the desired identities of object.
  final AuthorizationPolicySpec? spec;

  /// Status is the current status of this object.
  final AuthorizationPolicyStatus? status;
}
