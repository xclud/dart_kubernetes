import 'namespace_spec.dart';
import 'namespace_status.dart';
import 'object_meta.dart';

class Namespace {
  const Namespace({
    this.apiVersion,
    this.kind,
    required this.metadata,
    this.spec,
    this.status,
  });

  Namespace.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: ObjectMeta.fromJson(json['metadata']),
          spec: json['spec'] != null
              ? NamespaceSpec.fromJson(json['spec'])
              : null,
          status: json['status'] != null
              ? NamespaceStatus.fromJson(json['status'])
              : null,
        );

  static List<Namespace> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Namespace.fromJson(e)).toList();
  }

  final String? apiVersion;
  final String? kind;
  final ObjectMeta metadata;
  final NamespaceSpec? spec;
  final NamespaceStatus? status;
}
