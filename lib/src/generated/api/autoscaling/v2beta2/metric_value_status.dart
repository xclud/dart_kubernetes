/// MetricValueStatus holds the current value for a metric
class MetricValueStatus {
  /// The main constructor.
  const MetricValueStatus({
    this.averageUtilization,
    this.averageValue,
    this.value,
  });

  /// Creates a MetricValueStatus from JSON data.
  MetricValueStatus.fromJson(Map<String, dynamic> json)
      : this(
          averageUtilization: json['averageUtilization'],
          averageValue: json['averageValue'],
          value: json['value'],
        );

  /// Creates a list of MetricValueStatus from JSON data.
  static List<MetricValueStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => MetricValueStatus.fromJson(e)).toList();
  }

  /// currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.
  final int? averageUtilization;

  /// averageValue is the current value of the average of the metric across all relevant pods (as a quantity)
  final String? averageValue;

  /// value is the current value of the metric (as a quantity).
  final String? value;
}
