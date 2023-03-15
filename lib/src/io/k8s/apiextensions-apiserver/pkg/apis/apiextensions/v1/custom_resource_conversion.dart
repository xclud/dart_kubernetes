// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.apiextensions__apiserver.pkg.apis.apiextensions.v1;

/// CustomResourceConversion describes how to convert different versions of a CR.
class CustomResourceConversion {
  /// Default constructor.
  const CustomResourceConversion({
    required this.strategy,
    this.webhook,
  });

  /// Creates a [CustomResourceConversion] from JSON data.
  factory CustomResourceConversion.fromJson(Map<String, dynamic> json) {
    final tempStrategyJson = json['strategy'];
    final tempWebhookJson = json['webhook'];

    final tempStrategy = tempStrategyJson;
    final tempWebhook = tempWebhookJson != null
        ? WebhookConversion.fromJson(tempWebhookJson)
        : null;

    return CustomResourceConversion(
      strategy: tempStrategy,
      webhook: tempWebhook,
    );
  }

  /// strategy specifies how custom resources are converted between versions. Allowed values are: - `"None"`: The converter only change the apiVersion and would not touch any other field in the custom resource. - `"Webhook"`: API Server will call to an external webhook to do the conversion. Additional information
  ///   is needed for this option. This requires spec.preserveUnknownFields to be false, and spec.conversion.webhook to be set.
  final String strategy;

  /// webhook describes how to call the conversion webhook. Required when `strategy` is set to `"Webhook"`.
  final WebhookConversion? webhook;

  /// Converts a [CustomResourceConversion] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempStrategy = strategy;
    final tempWebhook = webhook;

    jsonData['strategy'] = tempStrategy;

    if (tempWebhook != null) {
      jsonData['webhook'] = tempWebhook.toJson();
    }

    return jsonData;
  }
}
