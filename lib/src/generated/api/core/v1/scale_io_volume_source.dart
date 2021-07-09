import 'package:kubernetes/src/generated/api/core/v1/local_object_reference.dart';

/// ScaleIOVolumeSource represents a persistent ScaleIO volume.
class ScaleIOVolumeSource {
  /// The main constructor.
  const ScaleIOVolumeSource({
    this.fsType,
    required this.gateway,
    this.protectionDomain,
    this.readOnly,
    required this.secretRef,
    this.sslEnabled,
    this.storageMode,
    this.storagePool,
    required this.system,
    this.volumeName,
  });

  /// Creates a ScaleIOVolumeSource from JSON data.
  ScaleIOVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          fsType: json['fsType'],
          gateway: json['gateway'],
          protectionDomain: json['protectionDomain'],
          readOnly: json['readOnly'],
          secretRef: LocalObjectReference.fromJson(json['secretRef']),
          sslEnabled: json['sslEnabled'],
          storageMode: json['storageMode'],
          storagePool: json['storagePool'],
          system: json['system'],
          volumeName: json['volumeName'],
        );

  /// Creates a list of ScaleIOVolumeSource from JSON data.
  static List<ScaleIOVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ScaleIOVolumeSource.fromJson(e)).toList();
  }

  /// Converts a ScaleIOVolumeSource instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (fsType != null) {
      jsonData['fsType'] = fsType!;
    }
    jsonData['gateway'] = gateway;
    if (protectionDomain != null) {
      jsonData['protectionDomain'] = protectionDomain!;
    }
    if (readOnly != null) {
      jsonData['readOnly'] = readOnly!;
    }
    jsonData['secretRef'] = secretRef.toJson();
    if (sslEnabled != null) {
      jsonData['sslEnabled'] = sslEnabled!;
    }
    if (storageMode != null) {
      jsonData['storageMode'] = storageMode!;
    }
    if (storagePool != null) {
      jsonData['storagePool'] = storagePool!;
    }
    jsonData['system'] = system;
    if (volumeName != null) {
      jsonData['volumeName'] = volumeName!;
    }

    return jsonData;
  }

  /// Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Default is "xfs".
  final String? fsType;

  /// The host address of the ScaleIO API Gateway.
  final String gateway;

  /// The name of the ScaleIO Protection Domain for the configured storage.
  final String? protectionDomain;

  /// Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final bool? readOnly;

  /// SecretRef references to the secret for ScaleIO user and other sensitive information. If this is not provided, Login operation will fail.
  final LocalObjectReference secretRef;

  /// Flag to enable/disable SSL communication with Gateway, default false.
  final bool? sslEnabled;

  /// Indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned.
  final String? storageMode;

  /// The ScaleIO Storage Pool associated with the protection domain.
  final String? storagePool;

  /// The name of the storage system as configured in ScaleIO.
  final String system;

  /// The name of a volume already created in the ScaleIO system that is associated with this volume source.
  final String? volumeName;
}
