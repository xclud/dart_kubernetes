/// volumeDevice describes a mapping of a raw block device within a container.
class VolumeDevice {
  /// The main constructor.
  const VolumeDevice({
    required this.devicePath,
    required this.name,
  });

  /// Creates a VolumeDevice from JSON data.
  VolumeDevice.fromJson(Map<String, dynamic> json)
      : this(
          devicePath: json['devicePath'],
          name: json['name'],
        );

  /// Creates a list of VolumeDevice from JSON data.
  static List<VolumeDevice> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => VolumeDevice.fromJson(e)).toList();
  }

  /// devicePath is the path inside of the container that the device will be mapped to.
  final String devicePath;

  /// name must match the name of a persistentVolumeClaim in the pod
  final String name;
}
