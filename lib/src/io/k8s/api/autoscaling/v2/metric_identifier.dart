// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../autoscaling_v2.dart';

/// MetricIdentifier defines the name and optionally selector for a metric.
class MetricIdentifier {
  /// Default constructor.
  const MetricIdentifier({
    required this.name,
    this.selector,
  });

  /// Creates a [MetricIdentifier] from JSON data.
  factory MetricIdentifier.fromJson(Map<String, dynamic> json) {
    final tempNameJson = json['name'];
    final tempSelectorJson = json['selector'];

    final String tempName = tempNameJson;
    final LabelSelector? tempSelector = tempSelectorJson != null
        ? LabelSelector.fromJson(tempSelectorJson)
        : null;

    return MetricIdentifier(
      name: tempName,
      selector: tempSelector,
    );
  }

  /// name is the name of the given metric.
  final String name;

  /// selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
  final LabelSelector? selector;

  /// Converts a [MetricIdentifier] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempName = name;
    final tempSelector = selector;

    jsonData['name'] = tempName;

    if (tempSelector != null) {
      jsonData['selector'] = tempSelector.toJson();
    }

    return jsonData;
  }
}
