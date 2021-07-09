import 'package:kubernetes/src/generated/api/core/v1/secret_reference.dart';

/// FlexPersistentVolumeSource represents a generic persistent volume resource that is provisioned/attached using an exec based plugin.
class FlexPersistentVolumeSource {
  /// The main constructor.
  const FlexPersistentVolumeSource({
    required this.driver,
    this.fsType,
    this.options,
    this.readOnly,
    this.secretRef,
  });

  /// Creates a FlexPersistentVolumeSource from JSON data.
  FlexPersistentVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          driver: json['driver'],
          fsType: json['fsType'],
          options: json['options'] != null
              ? Map<String, String>.from(json['options'])
              : null,
          readOnly: json['readOnly'],
          secretRef: json['secretRef'] != null
              ? SecretReference.fromJson(json['secretRef'])
              : null,
        );

  /// Creates a list of FlexPersistentVolumeSource from JSON data.
  static List<FlexPersistentVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => FlexPersistentVolumeSource.fromJson(e)).toList();
  }

  /// Driver is the name of the driver to use for this volume.
  final String driver;

  /// Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default filesystem depends on FlexVolume script.
  final String? fsType;

  /// Optional: Extra command options if any.
  final Map<String, String>? options;

  /// Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final bool? readOnly;

  /// Optional: SecretRef is reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts.
  final SecretReference? secretRef;
}
