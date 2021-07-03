/// AllowedFlexVolume represents a single Flexvolume that is allowed to be used.
class AllowedFlexVolume {
  /// The main constructor.
  const AllowedFlexVolume({
    required this.driver,
  });

  /// Creates a AllowedFlexVolume from JSON data.
  AllowedFlexVolume.fromJson(Map<String, dynamic> json)
      : this(
          driver: json['driver'],
        );

  /// Creates a list of AllowedFlexVolume from JSON data.
  static List<AllowedFlexVolume> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => AllowedFlexVolume.fromJson(e)).toList();
  }

  /// driver is the name of the Flexvolume driver.
  final String driver;
}
