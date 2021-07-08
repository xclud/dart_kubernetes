class PortSelector {
  /// The main constructor.
  const PortSelector({
    this.number,
  });

  /// Creates a PortSelector from JSON data.
  PortSelector.fromJson(Map<String, dynamic> json)
      : this(number: json['number']);

  /// Port number.
  final int? number;
}
