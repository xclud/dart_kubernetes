import 'package:kubernetes/src/generated/api/core/v1/local_object_reference.dart';
import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/api/core/v1/object_reference.dart';

/// ServiceAccount binds together: * a name, understood by users, and perhaps by peripheral systems, for an identity * a principal that can be authenticated and authorized * a set of secrets.
class ServiceAccount {
  /// The main constructor.
  const ServiceAccount({
    this.apiVersion,
    this.automountServiceAccountToken,
    this.imagePullSecrets,
    this.kind,
    this.metadata,
    this.secrets,
  });

  /// Creates a ServiceAccount from JSON data.
  ServiceAccount.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          automountServiceAccountToken: json['automountServiceAccountToken'],
          imagePullSecrets: json['imagePullSecrets'] != null
              ? LocalObjectReference.listFromJson(
                  (json['imagePullSecrets'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          secrets: json['secrets'] != null
              ? ObjectReference.listFromJson(
                  (json['secrets'] as Iterable).cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of ServiceAccount from JSON data.
  static List<ServiceAccount> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ServiceAccount.fromJson(e)).toList();
  }

  /// Converts a ServiceAccount instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (apiVersion != null) {
      jsonData['apiVersion'] = apiVersion!;
    }
    if (automountServiceAccountToken != null) {
      jsonData['automountServiceAccountToken'] = automountServiceAccountToken!;
    }
    if (imagePullSecrets != null) {
      jsonData['imagePullSecrets'] =
          imagePullSecrets!.map((item) => item.toJson()).toList();
    }
    if (kind != null) {
      jsonData['kind'] = kind!;
    }
    if (metadata != null) {
      jsonData['metadata'] = metadata!.toJson();
    }
    if (secrets != null) {
      jsonData['secrets'] = secrets!.map((item) => item.toJson()).toList();
    }

    return jsonData;
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// AutomountServiceAccountToken indicates whether pods running as this service account should have an API token automatically mounted. Can be overridden at the pod level.
  final bool? automountServiceAccountToken;

  /// ImagePullSecrets is a list of references to secrets in the same namespace to use for pulling any images in pods that reference this ServiceAccount. ImagePullSecrets are distinct from Secrets because Secrets can be mounted in the pod, but ImagePullSecrets are only accessed by the kubelet. More info: https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod.
  final List<LocalObjectReference>? imagePullSecrets;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Secrets is the list of secrets allowed to be used by pods running using this ServiceAccount. More info: https://kubernetes.io/docs/concepts/configuration/secret.
  final List<ObjectReference>? secrets;
}
