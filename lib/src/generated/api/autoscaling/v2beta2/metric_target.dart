/// MetricTarget defines the target value, average value, or average utilization of a specific metric
class MetricTarget {
  /// The main constructor.
  const MetricTarget({
    this.averageUtilization,
    this.averageValue,
    required this.type,
    this.value,
  });

  /// Creates a MetricTarget from JSON data.
  MetricTarget.fromJson(Map<String, dynamic> json)
      : this(
          averageUtilization: json['averageUtilization'],
          averageValue: json['averageValue'],
          type: json['type'],
          value: json['value'],
        );

  /// Creates a list of MetricTarget from JSON data.
  static List<MetricTarget> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => MetricTarget.fromJson(e)).toList();
  }

  /// averageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. Currently only valid for Resource metric source type
  final int? averageUtilization;

  /// averageValue is the target value of the average of the metric across all relevant pods (as a quantity)
  final String? averageValue;

  /// type represents whether the metric type is Utilization, Value, or AverageValue
  final String type;

  /// value is the target value of the metric (as a quantity).
  final String? value;
}
