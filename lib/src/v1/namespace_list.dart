import 'list_meta.dart';
import 'namespace.dart';

class NamespaceList {
  const NamespaceList({
    required this.items,
    this.apiVersion,
    this.kind,
    this.metadata,
  });

  NamespaceList.fromJson(Map<String, dynamic> json)
      : this(
          items: json['items'] == null
              ? const []
              : Namespace.listFromJson(
                  (json['items'] as Iterable).cast<Map<String, dynamic>>()),
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ListMeta.fromJson(json['metadata'])
              : null,
        );

  final List<Namespace> items;
  final String? apiVersion;
  final String? kind;
  final ListMeta? metadata;
}
