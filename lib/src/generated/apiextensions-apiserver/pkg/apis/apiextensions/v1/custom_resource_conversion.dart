import 'package:kubernetes/src/generated/apiextensions-apiserver/pkg/apis/apiextensions/v1/webhook_conversion.dart';

/// CustomResourceConversion describes how to convert different versions of a CR.
class CustomResourceConversion {
  /// The main constructor.
  const CustomResourceConversion({
    required this.strategy,
    this.webhook,
  });

  /// Creates a CustomResourceConversion from JSON data.
  CustomResourceConversion.fromJson(Map<String, dynamic> json)
      : this(
          strategy: json['strategy'],
          webhook: json['webhook'] != null
              ? WebhookConversion.fromJson(json['webhook'])
              : null,
        );

  /// Creates a list of CustomResourceConversion from JSON data.
  static List<CustomResourceConversion> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => CustomResourceConversion.fromJson(e)).toList();
  }

  /// strategy specifies how custom resources are converted between versions. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the custom resource. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information
  ///   is needed for this option. This requires spec.preserveUnknownFields to be false, and spec.conversion.webhook to be set.
  final String strategy;

  /// webhook describes how to call the conversion webhook. Required when `strategy` is set to `Webhook`.
  final WebhookConversion? webhook;
}
