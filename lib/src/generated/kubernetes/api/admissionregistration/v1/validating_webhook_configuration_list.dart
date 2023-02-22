import 'package:kubernetes/src/generated/kubernetes/api/admissionregistration/v1/validating_webhook_configuration.dart';
import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/list_meta.dart';

/// ValidatingWebhookConfigurationList is a list of ValidatingWebhookConfiguration.
class ValidatingWebhookConfigurationList {
  /// The main constructor.
  const ValidatingWebhookConfigurationList({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  /// Creates a ValidatingWebhookConfigurationList from JSON data.
  ValidatingWebhookConfigurationList.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          items: json['items'] != null ? ValidatingWebhookConfiguration.listFromJson((json['items'] as Iterable).cast<Map<String, dynamic>>()): [],
          kind: json['kind'],
          metadata: json['metadata'] != null ? ListMeta.fromJson(json['metadata']): null,
        );

  /// Creates a list of ValidatingWebhookConfigurationList from JSON data.
  static List<ValidatingWebhookConfigurationList> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ValidatingWebhookConfigurationList.fromJson(e)).toList();
  }

  /// Converts a ValidatingWebhookConfigurationList instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(apiVersion != null) { jsonData['apiVersion'] = apiVersion!; }
    jsonData['items'] = items.map((item) => item.toJson()).toList();
    if(kind != null) { jsonData['kind'] = kind!; }
    if(metadata != null) { jsonData['metadata'] = metadata!.toJson(); }
    

    return jsonData;
  }


  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// List of ValidatingWebhookConfiguration.
  final List<ValidatingWebhookConfiguration> items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final ListMeta? metadata;
}
