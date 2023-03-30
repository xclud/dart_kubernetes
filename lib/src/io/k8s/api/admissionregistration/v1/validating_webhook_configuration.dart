// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.admissionregistration.v1;

/// ValidatingWebhookConfiguration describes the configuration of and admission webhook that accept or reject and object without changing it.
class ValidatingWebhookConfiguration {
  /// Default constructor.
  const ValidatingWebhookConfiguration({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.webhooks,
  });

  /// Creates a [ValidatingWebhookConfiguration] from JSON data.
  factory ValidatingWebhookConfiguration.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempKindJson = json['kind'];
    final tempMetadataJson = json['metadata'];
    final tempWebhooksJson = json['webhooks'];

    final String? tempApiVersion = tempApiVersionJson;
    final String? tempKind = tempKindJson;
    final ObjectMeta? tempMetadata =
        tempMetadataJson != null ? ObjectMeta.fromJson(tempMetadataJson) : null;

    final List<ValidatingWebhook>? tempWebhooks = tempWebhooksJson != null
        ? List<dynamic>.from(tempWebhooksJson)
            .map(
              (e) => ValidatingWebhook.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    return ValidatingWebhookConfiguration(
      apiVersion: tempApiVersion,
      kind: tempKind,
      metadata: tempMetadata,
      webhooks: tempWebhooks,
    );
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Webhooks is a list of webhooks and the affected resources and operations.
  final List<ValidatingWebhook>? webhooks;

  /// Converts a [ValidatingWebhookConfiguration] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempKind = kind;
    final tempMetadata = metadata;
    final tempWebhooks = webhooks;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempMetadata != null) {
      jsonData['metadata'] = tempMetadata.toJson();
    }

    if (tempWebhooks != null) {
      jsonData['webhooks'] =
          tempWebhooks.map((e) => e.toJson()).toList(growable: false);
    }

    return jsonData;
  }
}
