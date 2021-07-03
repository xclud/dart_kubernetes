/// AllowedCSIDriver represents a single inline CSI Driver that is allowed to be used.
class AllowedCSIDriver {
  /// The main constructor.
  const AllowedCSIDriver({
    required this.name,
  });

  /// Creates a AllowedCSIDriver from JSON data.
  AllowedCSIDriver.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
        );

  /// Creates a list of AllowedCSIDriver from JSON data.
  static List<AllowedCSIDriver> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => AllowedCSIDriver.fromJson(e)).toList();
  }

  /// Name is the registered name of the CSI driver
  final String name;
}
