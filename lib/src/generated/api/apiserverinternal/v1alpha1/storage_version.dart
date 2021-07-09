import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/api/apiserverinternal/v1alpha1/storage_version_spec.dart';
import 'package:kubernetes/src/generated/api/apiserverinternal/v1alpha1/storage_version_status.dart';

/// ///  Storage version of a specific resource.
class StorageVersion {
  /// The main constructor.
  const StorageVersion({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
    required this.status,
  });

  /// Creates a StorageVersion from JSON data.
  StorageVersion.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: StorageVersionSpec.fromJson(json['spec']),
          status: StorageVersionStatus.fromJson(json['status']),
        );

  /// Creates a list of StorageVersion from JSON data.
  static List<StorageVersion> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => StorageVersion.fromJson(e)).toList();
  }

  /// Converts a StorageVersion instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (apiVersion != null) {
      jsonData['apiVersion'] = apiVersion!;
    }
    if (kind != null) {
      jsonData['kind'] = kind!;
    }
    if (metadata != null) {
      jsonData['metadata'] = metadata!.toJson();
    }
    jsonData['spec'] = spec.toJson();
    jsonData['status'] = status.toJson();

    return jsonData;
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// The name is <group>.<resource>.
  final ObjectMeta? metadata;

  /// Spec is an empty spec. It is here to comply with Kubernetes API style.
  final StorageVersionSpec spec;

  /// API server instances report the version they can decode and the version they encode objects to when persisting objects in the backend.
  final StorageVersionStatus status;
}
