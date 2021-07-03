import 'package:kubernetes/src/generated/api/core/v1/local_object_reference.dart';

/// FlexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin.
class FlexVolumeSource {
  /// The main constructor.
  const FlexVolumeSource({
    required this.driver,
    this.fsType,
    this.options,
    this.readOnly,
    this.secretRef,
  });

  /// Creates a FlexVolumeSource from JSON data.
  FlexVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          driver: json['driver'],
          fsType: json['fsType'],
          options: json['options'],
          readOnly: json['readOnly'],
          secretRef: json['secretRef'] != null
              ? LocalObjectReference.fromJson(json['secretRef'])
              : null,
        );

  /// Creates a list of FlexVolumeSource from JSON data.
  static List<FlexVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => FlexVolumeSource.fromJson(e)).toList();
  }

  /// Driver is the name of the driver to use for this volume.
  final String driver;

  /// Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default filesystem depends on FlexVolume script.
  final String? fsType;

  /// Optional: Extra command options if any.
  final Object? options;

  /// Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final bool? readOnly;

  /// Optional: SecretRef is reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts.
  final LocalObjectReference? secretRef;
}
