import 'package:kubernetes/src/generated/api/core/v1/node_config_source.dart';
import 'package:kubernetes/src/generated/api/core/v1/taint.dart';

/// NodeSpec describes the attributes that a node is created with.
class NodeSpec {
  /// The main constructor.
  const NodeSpec({
    this.configSource,
    this.externalID,
    this.podCIDR,
    this.podCIDRs,
    this.providerID,
    this.taints,
    this.unschedulable,
  });

  /// Creates a NodeSpec from JSON data.
  NodeSpec.fromJson(Map<String, dynamic> json)
      : this(
          configSource: json['configSource'] != null
              ? NodeConfigSource.fromJson(json['configSource'])
              : null,
          externalID: json['externalID'],
          podCIDR: json['podCIDR'],
          podCIDRs: json['podCIDRs'] != null
              ? List<String>.from(json['podCIDRs'])
              : null,
          providerID: json['providerID'],
          taints: json['taints'] != null
              ? Taint.listFromJson(
                  (json['taints'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          unschedulable: json['unschedulable'],
        );

  /// Creates a list of NodeSpec from JSON data.
  static List<NodeSpec> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NodeSpec.fromJson(e)).toList();
  }

  /// If specified, the source to get node configuration from The DynamicKubeletConfig feature gate must be enabled for the Kubelet to use this field
  final NodeConfigSource? configSource;

  /// Deprecated. Not all kubelets will set this field. Remove field after 1.13. see: https://issues.k8s.io/61966
  final String? externalID;

  /// PodCIDR represents the pod IP range assigned to the node.
  final String? podCIDR;

  /// podCIDRs represents the IP ranges assigned to the node for usage by Pods on that node. If this field is specified, the 0th entry must match the podCIDR field. It may contain at most 1 value for each of IPv4 and IPv6.
  final List<String>? podCIDRs;

  /// ID of the node assigned by the cloud provider in the format: <ProviderName>://<ProviderSpecificNodeID>
  final String? providerID;

  /// If specified, the node's taints.
  final List<Taint>? taints;

  /// Unschedulable controls node schedulability of new pods. By default, node is schedulable. More info: https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration
  final bool? unschedulable;
}
