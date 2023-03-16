// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.node.v1;

/// RuntimeClass defines a class of container runtime supported in the cluster. The RuntimeClass is used to determine which container runtime is used to run all containers in a pod. RuntimeClasses are manually defined by a user or cluster provisioner, and referenced in the PodSpec. The Kubelet is responsible for resolving the RuntimeClassName reference before running the pod.  For more details, see https://kubernetes.io/docs/concepts/containers/runtime-class/.
class RuntimeClass {
  /// Default constructor.
  const RuntimeClass({
    this.apiVersion,
    required this.handler,
    this.kind,
    this.metadata,
    this.overhead,
    this.scheduling,
  });

  /// Creates a [RuntimeClass] from JSON data.
  factory RuntimeClass.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempHandlerJson = json['handler'];
    final tempKindJson = json['kind'];
    final tempMetadataJson = json['metadata'];
    final tempOverheadJson = json['overhead'];
    final tempSchedulingJson = json['scheduling'];

    final String? tempApiVersion = tempApiVersionJson;
    final String tempHandler = tempHandlerJson;
    final String? tempKind = tempKindJson;
    final ObjectMeta? tempMetadata =
        tempMetadataJson != null ? ObjectMeta.fromJson(tempMetadataJson) : null;
    final Overhead? tempOverhead =
        tempOverheadJson != null ? Overhead.fromJson(tempOverheadJson) : null;
    final Scheduling? tempScheduling = tempSchedulingJson != null
        ? Scheduling.fromJson(tempSchedulingJson)
        : null;

    return RuntimeClass(
      apiVersion: tempApiVersion,
      handler: tempHandler,
      kind: tempKind,
      metadata: tempMetadata,
      overhead: tempOverhead,
      scheduling: tempScheduling,
    );
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// handler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called "runc" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The Handler must be lowercase, conform to the DNS Label (RFC 1123) requirements, and is immutable.
  final String handler;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// overhead represents the resource overhead associated with running a pod for a given RuntimeClass. For more details, see
  ///  https://kubernetes.io/docs/concepts/scheduling-eviction/pod-overhead/.
  final Overhead? overhead;

  /// scheduling holds the scheduling constraints to ensure that pods running with this RuntimeClass are scheduled to nodes that support it. If scheduling is nil, this RuntimeClass is assumed to be supported by all nodes.
  final Scheduling? scheduling;

  /// Converts a [RuntimeClass] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempHandler = handler;
    final tempKind = kind;
    final tempMetadata = metadata;
    final tempOverhead = overhead;
    final tempScheduling = scheduling;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    jsonData['handler'] = tempHandler;

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempMetadata != null) {
      jsonData['metadata'] = tempMetadata.toJson();
    }

    if (tempOverhead != null) {
      jsonData['overhead'] = tempOverhead.toJson();
    }

    if (tempScheduling != null) {
      jsonData['scheduling'] = tempScheduling.toJson();
    }

    return jsonData;
  }
}
