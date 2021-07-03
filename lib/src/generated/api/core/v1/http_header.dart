/// HTTPHeader describes a custom header to be used in HTTP probes
class HTTPHeader {
  /// The main constructor.
  const HTTPHeader({
    required this.name,
    required this.value,
  });

  /// Creates a HTTPHeader from JSON data.
  HTTPHeader.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          value: json['value'],
        );

  /// Creates a list of HTTPHeader from JSON data.
  static List<HTTPHeader> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => HTTPHeader.fromJson(e)).toList();
  }

  /// The header field name
  final String name;

  /// The header field value
  final String value;
}
