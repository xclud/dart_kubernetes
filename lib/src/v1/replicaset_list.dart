import 'replicaset.dart';
import 'list_meta.dart';

class ReplicaSetList {
  const ReplicaSetList({
    required this.items,
    this.apiVersion,
    this.kind,
    this.metadata,
  });

  ReplicaSetList.fromJson(Map<String, dynamic> json)
      : this(
          items: json['items'] == null
              ? []
              : ReplicaSet.listFromJson(
                  (json['items'] as Iterable).cast<Map<String, dynamic>>()),
          apiVersion: json['apiVersion'],
          kind: json['apiVersion'],
          metadata: json['metadata'] == null
              ? null
              : ListMeta.fromJson(json['metadata'] as Map<String, dynamic>),
        );

  final List<ReplicaSet> items;
  final String? apiVersion;
  final String? kind;
  final ListMeta? metadata;
}
