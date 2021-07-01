import 'deployment.dart';
import 'list_meta.dart';

/// DeploymentList is a list of [Deployment]s.
class DeploymentList {
  const DeploymentList({
    required this.items,
    this.apiVersion,
    this.kind,
    this.metadata,
  });

  DeploymentList.fromJson(Map<String, dynamic> json)
      : this(
          items: json['items'] == null
              ? const []
              : Deployment.listFromJson(
                  (json['items'] as Iterable).cast<Map<String, dynamic>>()),
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ListMeta.fromJson(json['metadata'])
              : null,
        );

  final List<Deployment> items;
  final String? apiVersion;
  final String? kind;
  final ListMeta? metadata;
}
