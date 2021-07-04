import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/label_selector.dart';

/// PodsMetricStatus indicates the current value of a metric describing each pod in the current scale target (for example, transactions-processed-per-second).
class PodsMetricStatus {
  /// The main constructor.
  const PodsMetricStatus({
    required this.currentAverageValue,
    required this.metricName,
    this.selector,
  });

  /// Creates a PodsMetricStatus from JSON data.
  PodsMetricStatus.fromJson(Map<String, dynamic> json)
      : this(
          currentAverageValue: json['currentAverageValue'],
          metricName: json['metricName'],
          selector: json['selector'] != null
              ? LabelSelector.fromJson(json['selector'])
              : null,
        );

  /// Creates a list of PodsMetricStatus from JSON data.
  static List<PodsMetricStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodsMetricStatus.fromJson(e)).toList();
  }

  /// currentAverageValue is the current value of the average of the metric across all relevant pods (as a quantity)
  final String currentAverageValue;

  /// metricName is the name of the metric in question
  final String metricName;

  /// selector is the string-encoded form of a standard kubernetes label selector for the given metric When set in the PodsMetricSource, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
  final LabelSelector? selector;
}
