/// PortSelector specifies the number of a port to be used for matching or selection for final routing.
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
