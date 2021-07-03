import 'package:kubernetes/src/generated/api/apps/v1/stateful_set.dart';
import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/list_meta.dart';

/// StatefulSetList is a collection of StatefulSets.
class StatefulSetList {
  /// The main constructor.
  const StatefulSetList({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  /// Creates a StatefulSetList from JSON data.
  StatefulSetList.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          items: json['items'] != null
              ? StatefulSet.listFromJson(
                  (json['items'] as Iterable).cast<Map<String, dynamic>>())
              : [],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ListMeta.fromJson(json['metadata'])
              : null,
        );

  /// Creates a list of StatefulSetList from JSON data.
  static List<StatefulSetList> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => StatefulSetList.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;

  /// Items is the list of stateful sets.
  final List<StatefulSet> items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;

  /// Standard list's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ListMeta? metadata;
}
