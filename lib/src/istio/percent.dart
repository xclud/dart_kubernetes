/// Percent specifies a percentage in the range of [0.0, 100.0].
class Percent {
  /// The main constructor.
  Percent({this.value});

  /// Creates a Percent from JSON data.
  Percent.fromJson(Map<String, dynamic> json) : this(value: json['value']);

  /// Value.
  final double? value;
}
