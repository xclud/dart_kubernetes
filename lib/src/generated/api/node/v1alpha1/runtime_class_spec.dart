import 'package:kubernetes/src/generated/api/node/v1alpha1/overhead.dart';
import 'package:kubernetes/src/generated/api/node/v1alpha1/scheduling.dart';

/// RuntimeClassSpec is a specification of a RuntimeClass. It contains parameters that are required to describe the RuntimeClass to the Container Runtime Interface (CRI) implementation, as well as any other components that need to understand how the pod will be run. The RuntimeClassSpec is immutable.
class RuntimeClassSpec {
  /// The main constructor.
  const RuntimeClassSpec({
    this.overhead,
    required this.runtimeHandler,
    this.scheduling,
  });

  /// Creates a RuntimeClassSpec from JSON data.
  RuntimeClassSpec.fromJson(Map<String, dynamic> json)
      : this(
          overhead: json['overhead'] != null
              ? Overhead.fromJson(json['overhead'])
              : null,
          runtimeHandler: json['runtimeHandler'],
          scheduling: json['scheduling'] != null
              ? Scheduling.fromJson(json['scheduling'])
              : null,
        );

  /// Creates a list of RuntimeClassSpec from JSON data.
  static List<RuntimeClassSpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => RuntimeClassSpec.fromJson(e)).toList();
  }

  /// Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. For more details, see https://git.k8s.io/enhancements/keps/sig-node/688-pod-overhead/README.md This field is beta-level as of Kubernetes v1.18, and is only honored by servers that enable the PodOverhead feature.
  final Overhead? overhead;

  /// RuntimeHandler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called "runc" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The RuntimeHandler must be lowercase, conform to the DNS Label (RFC 1123) requirements, and is immutable.
  final String runtimeHandler;

  /// Scheduling holds the scheduling constraints to ensure that pods running with this RuntimeClass are scheduled to nodes that support it. If scheduling is nil, this RuntimeClass is assumed to be supported by all nodes.
  final Scheduling? scheduling;
}
