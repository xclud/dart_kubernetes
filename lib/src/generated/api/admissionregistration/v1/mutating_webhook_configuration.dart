import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/api/admissionregistration/v1/mutating_webhook.dart';

/// MutatingWebhookConfiguration describes the configuration of and admission webhook that accept or reject and may change the object.
class MutatingWebhookConfiguration {
  /// The main constructor.
  const MutatingWebhookConfiguration({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.webhooks,
  });

  /// Creates a MutatingWebhookConfiguration from JSON data.
  MutatingWebhookConfiguration.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          webhooks: json['webhooks'] != null
              ? MutatingWebhook.listFromJson(
                  (json['webhooks'] as Iterable).cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of MutatingWebhookConfiguration from JSON data.
  static List<MutatingWebhookConfiguration> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => MutatingWebhookConfiguration.fromJson(e)).toList();
  }

  /// Converts a MutatingWebhookConfiguration instance to JSON data.
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
    if (webhooks != null) {
      jsonData['webhooks'] = webhooks!.map((item) => item.toJson()).toList();
    }

    return jsonData;
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Webhooks is a list of webhooks and the affected resources and operations.
  final List<MutatingWebhook>? webhooks;
}
