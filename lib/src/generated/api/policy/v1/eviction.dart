import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/delete_options.dart';
import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';

/// Eviction evicts a pod from its node subject to certain policies and safety constraints. This is a subresource of Pod.  A request to cause such an eviction is created by POSTing to .../pods/<pod name>/evictions.
class Eviction {
  /// The main constructor.
  const Eviction({
    this.apiVersion,
    this.deleteOptions,
    this.kind,
    this.metadata,
  });

  /// Creates a Eviction from JSON data.
  Eviction.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          deleteOptions: json['deleteOptions'] != null
              ? DeleteOptions.fromJson(json['deleteOptions'])
              : null,
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
        );

  /// Creates a list of Eviction from JSON data.
  static List<Eviction> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Eviction.fromJson(e)).toList();
  }

  /// Converts a Eviction instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (apiVersion != null) {
      jsonData['apiVersion'] = apiVersion!;
    }
    if (deleteOptions != null) {
      jsonData['deleteOptions'] = deleteOptions!.toJson();
    }
    if (kind != null) {
      jsonData['kind'] = kind!;
    }
    if (metadata != null) {
      jsonData['metadata'] = metadata!.toJson();
    }

    return jsonData;
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// DeleteOptions may be provided.
  final DeleteOptions? deleteOptions;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// ObjectMeta describes the pod that is being evicted.
  final ObjectMeta? metadata;
}
