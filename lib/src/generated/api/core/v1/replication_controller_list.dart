import 'package:kubernetes/src/generated/api/core/v1/replication_controller.dart';
import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/list_meta.dart';

/// ReplicationControllerList is a collection of replication controllers.
class ReplicationControllerList {
  /// The main constructor.
  const ReplicationControllerList({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  /// Creates a ReplicationControllerList from JSON data.
  ReplicationControllerList.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          items: json['items'] != null
              ? ReplicationController.listFromJson(
                  (json['items'] as Iterable).cast<Map<String, dynamic>>())
              : [],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ListMeta.fromJson(json['metadata'])
              : null,
        );

  /// Creates a list of ReplicationControllerList from JSON data.
  static List<ReplicationControllerList> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ReplicationControllerList.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;

  /// List of replication controllers. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller
  final List<ReplicationController> items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;

  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final ListMeta? metadata;
}
