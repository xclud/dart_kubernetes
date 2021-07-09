import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/label_selector.dart';

/// PodsMetricSource indicates how to scale on a metric describing each pod in the current scale target (for example, transactions-processed-per-second). The values will be averaged together before being compared to the target value.
class PodsMetricSource {
  /// The main constructor.
  const PodsMetricSource({
    required this.metricName,
    this.selector,
    required this.targetAverageValue,
  });

  /// Creates a PodsMetricSource from JSON data.
  PodsMetricSource.fromJson(Map<String, dynamic> json)
      : this(
          metricName: json['metricName'],
          selector: json['selector'] != null
              ? LabelSelector.fromJson(json['selector'])
              : null,
          targetAverageValue: json['targetAverageValue'],
        );

  /// Creates a list of PodsMetricSource from JSON data.
  static List<PodsMetricSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodsMetricSource.fromJson(e)).toList();
  }

  /// Converts a PodsMetricSource instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['metricName'] = metricName;
    if (selector != null) {
      jsonData['selector'] = selector!.toJson();
    }
    jsonData['targetAverageValue'] = targetAverageValue;

    return jsonData;
  }

  /// MetricName is the name of the metric in question.
  final String metricName;

  /// Selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping When unset, just the metricName will be used to gather metrics.
  final LabelSelector? selector;

  /// TargetAverageValue is the target value of the average of the metric across all relevant pods (as a quantity).
  final String targetAverageValue;
}
