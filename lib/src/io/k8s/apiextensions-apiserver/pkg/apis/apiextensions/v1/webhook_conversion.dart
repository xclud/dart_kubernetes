// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.apiextensions__apiserver.pkg.apis.apiextensions.v1;

/// WebhookConversion describes how to call a conversion webhook.
class WebhookConversion {
  /// Default constructor.
  const WebhookConversion({
    this.clientConfig,
    required this.conversionReviewVersions,
  });

  /// Creates a [WebhookConversion] from JSON data.
  factory WebhookConversion.fromJson(Map<String, dynamic> json) {
    final tempClientConfigJson = json['clientConfig'];
    final tempConversionReviewVersionsJson = json['conversionReviewVersions'];

    final WebhookClientConfig? tempClientConfig = tempClientConfigJson != null
        ? WebhookClientConfig.fromJson(tempClientConfigJson)
        : null;
    final List<String> tempConversionReviewVersions =
        tempConversionReviewVersionsJson;

    return WebhookConversion(
      clientConfig: tempClientConfig,
      conversionReviewVersions: tempConversionReviewVersions,
    );
  }

  /// clientConfig is the instructions for how to call the webhook if strategy is `Webhook`.
  final WebhookClientConfig? clientConfig;

  /// conversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. The API server will use the first version in the list which it supports. If none of the versions specified in this list are supported by API server, conversion will fail for the custom resource. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail.
  final List<String> conversionReviewVersions;

  /// Converts a [WebhookConversion] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempClientConfig = clientConfig;
    final tempConversionReviewVersions = conversionReviewVersions;

    if (tempClientConfig != null) {
      jsonData['clientConfig'] = tempClientConfig.toJson();
    }

    jsonData['conversionReviewVersions'] = tempConversionReviewVersions;

    return jsonData;
  }
}
