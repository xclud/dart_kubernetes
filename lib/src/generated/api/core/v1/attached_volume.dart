/// AttachedVolume describes a volume attached to a node
class AttachedVolume {
  /// The main constructor.
  const AttachedVolume({
    required this.devicePath,
    required this.name,
  });

  /// Creates a AttachedVolume from JSON data.
  AttachedVolume.fromJson(Map<String, dynamic> json)
      : this(
          devicePath: json['devicePath'],
          name: json['name'],
        );

  /// Creates a list of AttachedVolume from JSON data.
  static List<AttachedVolume> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => AttachedVolume.fromJson(e)).toList();
  }

  /// DevicePath represents the device path where the volume should be available
  final String devicePath;

  /// Name of the attached volume
  final String name;
}
