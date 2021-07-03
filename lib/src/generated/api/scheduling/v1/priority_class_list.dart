import 'package:kubernetes/src/generated/api/scheduling/v1/priority_class.dart';
import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/list_meta.dart';

/// PriorityClassList is a collection of priority classes.
class PriorityClassList {
  /// The main constructor.
  const PriorityClassList({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  /// Creates a PriorityClassList from JSON data.
  PriorityClassList.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          items: json['items'] != null
              ? PriorityClass.listFromJson(
                  (json['items'] as Iterable).cast<Map<String, dynamic>>())
              : [],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ListMeta.fromJson(json['metadata'])
              : null,
        );

  /// Creates a list of PriorityClassList from JSON data.
  static List<PriorityClassList> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PriorityClassList.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;

  /// items is the list of PriorityClasses
  final List<PriorityClass> items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;

  /// Standard list metadata More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ListMeta? metadata;
}
