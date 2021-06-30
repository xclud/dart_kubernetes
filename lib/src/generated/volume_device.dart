class VolumeDevice {
  const VolumeDevice({
    required this.devicePath,
    required this.name,
  });

  VolumeDevice.fromJson(Map<String, dynamic> json)
      : this(
          devicePath: json['devicePath'],
          name: json['name'],
        );

  static List<VolumeDevice> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => VolumeDevice.fromJson(e)).toList();
  }

  final String devicePath;
  final String name;
}
