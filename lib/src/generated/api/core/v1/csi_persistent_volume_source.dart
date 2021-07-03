import 'package:kubernetes/src/generated/api/core/v1/secret_reference.dart';

/// Represents storage that is managed by an external CSI volume driver (Beta feature)
class CSIPersistentVolumeSource {
  /// The main constructor.
  const CSIPersistentVolumeSource({
    this.controllerExpandSecretRef,
    this.controllerPublishSecretRef,
    required this.driver,
    this.fsType,
    this.nodePublishSecretRef,
    this.nodeStageSecretRef,
    this.readOnly,
    this.volumeAttributes,
    required this.volumeHandle,
  });

  /// Creates a CSIPersistentVolumeSource from JSON data.
  CSIPersistentVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          controllerExpandSecretRef: json['controllerExpandSecretRef'] != null
              ? SecretReference.fromJson(json['controllerExpandSecretRef'])
              : null,
          controllerPublishSecretRef: json['controllerPublishSecretRef'] != null
              ? SecretReference.fromJson(json['controllerPublishSecretRef'])
              : null,
          driver: json['driver'],
          fsType: json['fsType'],
          nodePublishSecretRef: json['nodePublishSecretRef'] != null
              ? SecretReference.fromJson(json['nodePublishSecretRef'])
              : null,
          nodeStageSecretRef: json['nodeStageSecretRef'] != null
              ? SecretReference.fromJson(json['nodeStageSecretRef'])
              : null,
          readOnly: json['readOnly'],
          volumeAttributes: json['volumeAttributes'],
          volumeHandle: json['volumeHandle'],
        );

  /// Creates a list of CSIPersistentVolumeSource from JSON data.
  static List<CSIPersistentVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => CSIPersistentVolumeSource.fromJson(e)).toList();
  }

  /// ControllerExpandSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerExpandVolume call. This is an alpha field and requires enabling ExpandCSIVolumes feature gate. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  final SecretReference? controllerExpandSecretRef;

  /// ControllerPublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerPublishVolume and ControllerUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  final SecretReference? controllerPublishSecretRef;

  /// Driver is the name of the driver to use for this volume. Required.
  final String driver;

  /// Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs".
  final String? fsType;

  /// NodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  final SecretReference? nodePublishSecretRef;

  /// NodeStageSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodeStageVolume and NodeStageVolume and NodeUnstageVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  final SecretReference? nodeStageSecretRef;

  /// Optional: The value to pass to ControllerPublishVolumeRequest. Defaults to false (read/write).
  final bool? readOnly;

  /// Attributes of the volume to publish.
  final Object? volumeAttributes;

  /// VolumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required.
  final String volumeHandle;
}
