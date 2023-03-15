// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// ServiceAccount binds together: * a name, understood by users, and perhaps by peripheral systems, for an identity * a principal that can be authenticated and authorized * a set of secrets.
class ServiceAccount {
  /// Default constructor.
  const ServiceAccount({
    this.apiVersion,
    this.automountServiceAccountToken,
    this.imagePullSecrets,
    this.kind,
    this.metadata,
    this.secrets,
  });

  /// Creates a [ServiceAccount] from JSON data.
  factory ServiceAccount.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempAutomountServiceAccountTokenJson =
        json['automountServiceAccountToken'];
    final tempImagePullSecretsJson = json['imagePullSecrets'];
    final tempKindJson = json['kind'];
    final tempMetadataJson = json['metadata'];
    final tempSecretsJson = json['secrets'];

    final tempApiVersion = tempApiVersionJson;
    final tempAutomountServiceAccountToken =
        tempAutomountServiceAccountTokenJson;
    final tempImagePullSecrets = tempImagePullSecretsJson;
    final tempKind = tempKindJson;
    final tempMetadata =
        tempMetadataJson != null ? ObjectMeta.fromJson(tempMetadataJson) : null;
    final tempSecrets = tempSecretsJson;

    return ServiceAccount(
      apiVersion: tempApiVersion,
      automountServiceAccountToken: tempAutomountServiceAccountToken,
      imagePullSecrets: tempImagePullSecrets,
      kind: tempKind,
      metadata: tempMetadata,
      secrets: tempSecrets,
    );
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

  /// Secrets is a list of the secrets in the same namespace that pods running using this ServiceAccount are allowed to use. Pods are only limited to this list if this service account has a "kubernetes.io/enforce-mountable-secrets" annotation set to "true". This field should not be used to find auto-generated service account token secrets for use outside of pods. Instead, tokens can be requested directly using the TokenRequest API, or service account token secrets can be manually created. More info: https://kubernetes.io/docs/concepts/configuration/secret.
  final List<ObjectReference>? secrets;

  /// Converts a [ServiceAccount] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempAutomountServiceAccountToken = automountServiceAccountToken;
    final tempImagePullSecrets = imagePullSecrets;
    final tempKind = kind;
    final tempMetadata = metadata;
    final tempSecrets = secrets;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    if (tempAutomountServiceAccountToken != null) {
      jsonData['automountServiceAccountToken'] =
          tempAutomountServiceAccountToken;
    }

    if (tempImagePullSecrets != null) {
      jsonData['imagePullSecrets'] = tempImagePullSecrets;
    }

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempMetadata != null) {
      jsonData['metadata'] = tempMetadata.toJson();
    }

    if (tempSecrets != null) {
      jsonData['secrets'] = tempSecrets;
    }

    return jsonData;
  }
}
