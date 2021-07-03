import 'package:kubernetes/src/generated/api/core/v1/local_object_reference.dart';

/// Represents a source location of a volume to mount, managed by an external CSI driver
class CSIVolumeSource {
  /// The main constructor.
  const CSIVolumeSource({
    required this.driver,
    this.fsType,
    this.nodePublishSecretRef,
    this.readOnly,
    this.volumeAttributes,
  });

  /// Creates a CSIVolumeSource from JSON data.
  CSIVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          driver: json['driver'],
          fsType: json['fsType'],
          nodePublishSecretRef: json['nodePublishSecretRef'] != null
              ? LocalObjectReference.fromJson(json['nodePublishSecretRef'])
              : null,
          readOnly: json['readOnly'],
          volumeAttributes: json['volumeAttributes'],
        );

  /// Creates a list of CSIVolumeSource from JSON data.
  static List<CSIVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => CSIVolumeSource.fromJson(e)).toList();
  }

  /// Driver is the name of the CSI driver that handles this volume. Consult with your admin for the correct name as registered in the cluster.
  final String driver;

  /// Filesystem type to mount. Ex. "ext4", "xfs", "ntfs". If not provided, the empty value is passed to the associated CSI driver which will determine the default filesystem to apply.
  final String? fsType;

  /// NodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and  may be empty if no secret is required. If the secret object contains more than one secret, all secret references are passed.
  final LocalObjectReference? nodePublishSecretRef;

  /// Specifies a read-only configuration for the volume. Defaults to false (read/write).
  final bool? readOnly;

  /// VolumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver's documentation for supported values.
  final Object? volumeAttributes;
}
