import 'object_meta.dart';
import 'pod_spec.dart';
import 'pod_status.dart';

class Pod {
  Pod({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  Pod.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
        );

  static List<Pod> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Pod.fromJson(e)).toList();
  }

  final String? apiVersion;
  final String? kind;
  final ObjectMeta? metadata;
  final PodSpec? spec;
  final PodStatus? status;
}
