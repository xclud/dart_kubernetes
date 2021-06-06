import 'pod.dart';
import 'list_meta.dart';

class PodList {
  PodList({
    this.items,
    this.apiVersion,
    this.kind,
    this.metadata,
  });

  PodList.fromJson(Map<String, dynamic> json)
      : this(
          items: json['items'] == null
              ? null
              : Pod.listFromJson(
                  json['items'] as Iterable<Map<String, dynamic>>),
          apiVersion: json['apiVersion'],
          kind: json['apiVersion'],
          metadata: json['metadata'] == null
              ? null
              : ListMeta.fromJson(json['metadata'] as Map<String, dynamic>),
        );

  final List<Pod>? items;
  final String? apiVersion;
  final String? kind;
  final ListMeta? metadata;
}
