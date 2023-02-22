import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/kubernetes/kube-aggregator/pkg/apis/apiregistration/v1/api_service_spec.dart';
import 'package:kubernetes/src/generated/kubernetes/kube-aggregator/pkg/apis/apiregistration/v1/api_service_status.dart';

/// APIService represents a server for a particular GroupVersion. Name must be "version.group".
class APIService {
  /// The main constructor.
  const APIService({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  /// Creates a APIService from JSON data.
  APIService.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null ? ObjectMeta.fromJson(json['metadata']): null,
          spec: json['spec'] != null ? APIServiceSpec.fromJson(json['spec']): null,
          status: json['status'] != null ? APIServiceStatus.fromJson(json['status']): null,
        );

  /// Creates a list of APIService from JSON data.
  static List<APIService> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => APIService.fromJson(e)).toList();
  }

  /// Converts a APIService instance to JSON data.
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

  /// Spec contains information for locating and communicating with a server.
  final APIServiceSpec? spec;

  /// Status contains derived information about an API server.
  final APIServiceStatus? status;
}
