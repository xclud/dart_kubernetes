import 'package:kubernetes/src/generated/apiextensions-apiserver/pkg/apis/apiextensions/v1/webhook_client_config.dart';

/// WebhookConversion describes how to call a conversion webhook.
class WebhookConversion {
  /// The main constructor.
  const WebhookConversion({
    this.clientConfig,
    required this.conversionReviewVersions,
  });

  /// Creates a WebhookConversion from JSON data.
  WebhookConversion.fromJson(Map<String, dynamic> json)
      : this(
          clientConfig: json['clientConfig'] != null
              ? WebhookClientConfig.fromJson(json['clientConfig'])
              : null,
          conversionReviewVersions: json['conversionReviewVersions'] != null
              ? List<String>.from(json['conversionReviewVersions'])
              : [],
        );

  /// Creates a list of WebhookConversion from JSON data.
  static List<WebhookConversion> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => WebhookConversion.fromJson(e)).toList();
  }

  /// ClientConfig is the instructions for how to call the webhook if strategy is `Webhook`.
  final WebhookClientConfig? clientConfig;

  /// ConversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. The API server will use the first version in the list which it supports. If none of the versions specified in this list are supported by API server, conversion will fail for the custom resource. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail.
  final List<String> conversionReviewVersions;
}
