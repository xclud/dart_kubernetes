/// Sysctl defines a kernel parameter to be set
class Sysctl {
  /// The main constructor.
  const Sysctl({
    required this.name,
    required this.value,
  });

  /// Creates a Sysctl from JSON data.
  Sysctl.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          value: json['value'],
        );

  /// Creates a list of Sysctl from JSON data.
  static List<Sysctl> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Sysctl.fromJson(e)).toList();
  }

  /// Name of a property to set
  final String name;

  /// Value of a property to set
  final String value;
}
