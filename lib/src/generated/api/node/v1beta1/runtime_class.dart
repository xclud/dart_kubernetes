import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/api/node/v1beta1/overhead.dart';
import 'package:kubernetes/src/generated/api/node/v1beta1/scheduling.dart';

/// RuntimeClass defines a class of container runtime supported in the cluster. The RuntimeClass is used to determine which container runtime is used to run all containers in a pod. RuntimeClasses are (currently) manually defined by a user or cluster provisioner, and referenced in the PodSpec. The Kubelet is responsible for resolving the RuntimeClassName reference before running the pod.  For more details, see https://git.k8s.io/enhancements/keps/sig-node/585-runtime-class.
class RuntimeClass {
  /// The main constructor.
  const RuntimeClass({
    this.apiVersion,
    required this.handler,
    this.kind,
    this.metadata,
    this.overhead,
    this.scheduling,
  });

  /// Creates a RuntimeClass from JSON data.
  RuntimeClass.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          handler: json['handler'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          overhead: json['overhead'] != null
              ? Overhead.fromJson(json['overhead'])
              : null,
          scheduling: json['scheduling'] != null
              ? Scheduling.fromJson(json['scheduling'])
              : null,
        );

  /// Creates a list of RuntimeClass from JSON data.
  static List<RuntimeClass> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => RuntimeClass.fromJson(e)).toList();
  }

  /// Converts a RuntimeClass instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (apiVersion != null) {
      jsonData['apiVersion'] = apiVersion!;
    }
    jsonData['handler'] = handler;
    if (kind != null) {
      jsonData['kind'] = kind!;
    }
    if (metadata != null) {
      jsonData['metadata'] = metadata!.toJson();
    }
    if (overhead != null) {
      jsonData['overhead'] = overhead!.toJson();
    }
    if (scheduling != null) {
      jsonData['scheduling'] = scheduling!.toJson();
    }

    return jsonData;
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Handler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called "runc" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The Handler must be lowercase, conform to the DNS Label (RFC 1123) requirements, and is immutable.
  final String handler;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. For more details, see https://git.k8s.io/enhancements/keps/sig-node/688-pod-overhead/README.md This field is beta-level as of Kubernetes v1.18, and is only honored by servers that enable the PodOverhead feature.
  final Overhead? overhead;

  /// Scheduling holds the scheduling constraints to ensure that pods running with this RuntimeClass are scheduled to nodes that support it. If scheduling is nil, this RuntimeClass is assumed to be supported by all nodes.
  final Scheduling? scheduling;
}
