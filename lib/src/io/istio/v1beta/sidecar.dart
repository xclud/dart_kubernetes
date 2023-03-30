part of io.istio.v1beta1;

/// Sidecar describes the configuration of the sidecar proxy that mediates inbound and outbound communication to the
/// workload instance it is attached to. By default, Istio will program all sidecar proxies in the mesh with the necessary
/// configuration required to reach every workload instance in the mesh, as well as accept traffic on all the ports associated
/// with the workload. The Sidecar configuration provides a way to fine tune the set of ports, protocols that the proxy will accept
/// when forwarding traffic to and from the workload. In addition, it is possible to restrict the set of services that the proxy can
/// reach when forwarding outbound traffic from workload instances.
///
/// Services and configuration in a mesh are organized into one or more namespaces (e.g., a Kubernetes namespace or a CF org/space).
/// A Sidecar configuration in a namespace will apply to one or more workload instances in the same namespace, selected using the
/// workloadSelector field. In the absence of a workloadSelector, it will apply to all workload instances in the same namespace.
/// When determining the Sidecar configuration to be applied to a workload instance, preference will be given to the resource with
/// a workloadSelector that selects this workload instance, over a Sidecar configuration without any workloadSelector.
///
/// NOTE 1: Each namespace can have only one Sidecar configuration without any workloadSelector that specifies the default for all pods in that namespace.
/// It is recommended to use the name default for the namespace-wide sidecar.
/// The behavior of the system is undefined if more than one selector-less Sidecar configurations exist in a given namespace.
/// The behavior of the system is undefined if two or more Sidecar configurations with a workloadSelector select the same workload instance.
///
/// NOTE 2: A Sidecar configuration in the MeshConfig root namespace will be applied by default to all namespaces without a Sidecar configuration.
/// This global default Sidecar configuration should not have any workloadSelector.
class Sidecar {
  /// The main constructor.
  const Sidecar({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  /// Creates a Sidecar from JSON data.
  Sidecar.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec:
              json['spec'] != null ? SidecarSpec.fromJson(json['spec']) : null,
          status: json['status'] != null
              ? SidecarStatus.fromJson(json['status'])
              : null,
        );

  /// Creates a list of Sidecar from JSON data.
  static List<Sidecar> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Sidecar.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMeta? metadata;

  /// Spec defines the desired identities of object.
  final SidecarSpec? spec;

  /// Status is the current status of this object.
  final SidecarStatus? status;
}
