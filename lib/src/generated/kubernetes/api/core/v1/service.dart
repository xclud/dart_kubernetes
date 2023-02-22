import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/service_spec.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/service_status.dart';

/// Service is a named abstraction of software service (for example, mysql) consisting of local port (for example 3306) that the proxy listens on, and the selector that determines which pods will answer requests sent through the proxy.
class Service {
  /// The main constructor.
  const Service({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  /// Creates a Service from JSON data.
  Service.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null ? ObjectMeta.fromJson(json['metadata']): null,
          spec: json['spec'] != null ? ServiceSpec.fromJson(json['spec']): null,
          status: json['status'] != null ? ServiceStatus.fromJson(json['status']): null,
        );

  /// Creates a list of Service from JSON data.
  static List<Service> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Service.fromJson(e)).toList();
  }

  /// Converts a Service instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(apiVersion != null) { jsonData['apiVersion'] = apiVersion!; }
    if(kind != null) { jsonData['kind'] = kind!; }
    if(metadata != null) { jsonData['metadata'] = metadata!.toJson(); }
    if(spec != null) { jsonData['spec'] = spec!.toJson(); }
    if(status != null) { jsonData['status'] = status!.toJson(); }
    

    return jsonData;
  }


  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Spec defines the behavior of a service. https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  final ServiceSpec? spec;

  /// Most recently observed status of the service. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  final ServiceStatus? status;
}
