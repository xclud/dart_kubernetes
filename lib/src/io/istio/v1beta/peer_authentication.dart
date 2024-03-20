part of '../../../../istio_v1beta1.dart';

/// Peer authentication policies specify the mutual TLS mode Istio enforces on target workloads. The following modes are supported:
///
/// - PERMISSIVE: Workloads accept both mutual TLS and plain text traffic. This mode is most useful during migrations when workloads
/// without sidecar cannot use mutual TLS. Once workloads are migrated with sidecar injection, you should switch the mode to STRICT.
/// - STRICT: Workloads only accept mutual TLS traffic.
/// - DISABLE: Mutual TLS is disabled. From a security perspective, you shouldn’t use this mode unless you provide your own security solution.
///
/// When the mode is unset, the mode of the parent scope is inherited. Mesh-wide peer authentication policies with an unset mode
/// use the PERMISSIVE mode by default.
class PeerAuthentication {
  /// The main constructor.
  const PeerAuthentication({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  /// Creates a PeerAuthentication from JSON data.
  PeerAuthentication.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: json['spec'] != null
              ? PeerAuthenticationSpec.fromJson(json['spec'])
              : null,
          status: json['status'] != null
              ? PeerAuthenticationStatus.fromJson(json['status'])
              : null,
        );

  /// Creates a list of PeerAuthentication from JSON data.
  static List<PeerAuthentication> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PeerAuthentication.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMeta? metadata;

  /// Spec defines the desired identities of object.
  final PeerAuthenticationSpec? spec;

  /// Status is the current status of this object.
  final PeerAuthenticationStatus? status;
}
