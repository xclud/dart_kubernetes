import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/label_selector.dart';

/// MetricIdentifier defines the name and optionally selector for a metric.
class MetricIdentifier {
  /// The main constructor.
  const MetricIdentifier({
    required this.name,
    this.selector,
  });

  /// Creates a MetricIdentifier from JSON data.
  MetricIdentifier.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          selector: json['selector'] != null
              ? LabelSelector.fromJson(json['selector'])
              : null,
        );

  /// Creates a list of MetricIdentifier from JSON data.
  static List<MetricIdentifier> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => MetricIdentifier.fromJson(e)).toList();
  }

  /// Converts a MetricIdentifier instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['name'] = name;
    if (selector != null) {
      jsonData['selector'] = selector!.toJson();
    }

    return jsonData;
  }

  /// Name is the name of the given metric.
  final String name;

  /// Selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
  final LabelSelector? selector;
}
