class PortSelector {
  /// The main constructor.
  const PortSelector({
    this.number,
  });

  PortSelector.fromJson(Map<String, dynamic> json)
      : this(number: json['number']);

  final int? number;
}
