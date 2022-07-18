import 'package:kubernetes/src/generated/api/core/v1/node_address.dart';
import 'package:kubernetes/src/generated/api/core/v1/node_condition.dart';
import 'package:kubernetes/src/generated/api/core/v1/node_config_status.dart';
import 'package:kubernetes/src/generated/api/core/v1/node_daemon_endpoints.dart';
import 'package:kubernetes/src/generated/api/core/v1/container_image.dart';
import 'package:kubernetes/src/generated/api/core/v1/node_system_info.dart';
import 'package:kubernetes/src/generated/api/core/v1/attached_volume.dart';

/// NodeStatus is information about the current status of a node.
class NodeStatus {
  /// The main constructor.
  const NodeStatus({
    this.addresses,
    this.allocatable,
    this.capacity,
    this.conditions,
    this.config,
    this.daemonEndpoints,
    this.images,
    this.nodeInfo,
    this.phase,
    this.volumesAttached,
    this.volumesInUse,
  });

  /// Creates a NodeStatus from JSON data.
  NodeStatus.fromJson(Map<String, dynamic> json)
      : this(
          addresses: json['addresses'] != null
              ? NodeAddress.listFromJson(
                  (json['addresses'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          allocatable: json['allocatable'] != null
              ? Map<String, String>.from(json['allocatable'])
              : null,
          capacity: json['capacity'] != null
              ? Map<String, String>.from(json['capacity'])
              : null,
          conditions: json['conditions'] != null
              ? NodeCondition.listFromJson(
                  (json['conditions'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          config: json['config'] != null
              ? NodeConfigStatus.fromJson(json['config'])
              : null,
          daemonEndpoints: json['daemonEndpoints'] != null
              ? NodeDaemonEndpoints.fromJson(json['daemonEndpoints'])
              : null,
          images: json['images'] != null
              ? ContainerImage.listFromJson(
                  (json['images'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          nodeInfo: json['nodeInfo'] != null
              ? NodeSystemInfo.fromJson(json['nodeInfo'])
              : null,
          phase: json['phase'],
          volumesAttached: json['volumesAttached'] != null
              ? AttachedVolume.listFromJson(
                  (json['volumesAttached'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
          volumesInUse: json['volumesInUse'] != null
              ? List<String>.from(json['volumesInUse'])
              : null,
        );

  /// Creates a list of NodeStatus from JSON data.
  static List<NodeStatus> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NodeStatus.fromJson(e)).toList();
  }

  /// Converts a NodeStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (addresses != null) {
      jsonData['addresses'] = addresses!.map((item) => item.toJson()).toList();
    }
    if (allocatable != null) {
      jsonData['allocatable'] = allocatable!;
    }
    if (capacity != null) {
      jsonData['capacity'] = capacity!;
    }
    if (conditions != null) {
      jsonData['conditions'] =
          conditions!.map((item) => item.toJson()).toList();
    }
    if (config != null) {
      jsonData['config'] = config!.toJson();
    }
    if (daemonEndpoints != null) {
      jsonData['daemonEndpoints'] = daemonEndpoints!.toJson();
    }
    if (images != null) {
      jsonData['images'] = images!.map((item) => item.toJson()).toList();
    }
    if (nodeInfo != null) {
      jsonData['nodeInfo'] = nodeInfo!.toJson();
    }
    if (phase != null) {
      jsonData['phase'] = phase!;
    }
    if (volumesAttached != null) {
      jsonData['volumesAttached'] =
          volumesAttached!.map((item) => item.toJson()).toList();
    }
    if (volumesInUse != null) {
      jsonData['volumesInUse'] = volumesInUse!;
    }

    return jsonData;
  }

  /// List of addresses reachable to the node. Queried from cloud provider, if available. More info: https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See http://pr.k8s.io/79391 for an example.
  final List<NodeAddress>? addresses;

  /// Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity.
  final Map<String, String>? allocatable;

  /// Capacity represents the total resources of a node. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity.
  final Map<String, String>? capacity;

  /// Conditions is an array of current observed node conditions. More info: https://kubernetes.io/docs/concepts/nodes/node/#condition.
  final List<NodeCondition>? conditions;

  /// Status of the config assigned to the node via the dynamic Kubelet config feature.
  final NodeConfigStatus? config;

  /// Endpoints of daemons running on the Node.
  final NodeDaemonEndpoints? daemonEndpoints;

  /// List of container images on this node.
  final List<ContainerImage>? images;

  /// Set of ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info.
  final NodeSystemInfo? nodeInfo;

  /// NodePhase is the recently observed lifecycle phase of the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.
  ///
  ///.
  final String? phase;

  /// List of volumes that are attached to the node.
  final List<AttachedVolume>? volumesAttached;

  /// List of attachable volumes in use (mounted) by the node.
  final List<String>? volumesInUse;
}
