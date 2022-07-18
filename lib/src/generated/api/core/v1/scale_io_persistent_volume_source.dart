import 'package:kubernetes/src/generated/api/core/v1/secret_reference.dart';

/// ScaleIOPersistentVolumeSource represents a persistent ScaleIO volume.
class ScaleIOPersistentVolumeSource {
  /// The main constructor.
  const ScaleIOPersistentVolumeSource({
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

  /// Creates a ScaleIOPersistentVolumeSource from JSON data.
  ScaleIOPersistentVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          fsType: json['fsType'],
          gateway: json['gateway'],
          protectionDomain: json['protectionDomain'],
          readOnly: json['readOnly'],
          secretRef: SecretReference.fromJson(json['secretRef']),
          sslEnabled: json['sslEnabled'],
          storageMode: json['storageMode'],
          storagePool: json['storagePool'],
          system: json['system'],
          volumeName: json['volumeName'],
        );

  /// Creates a list of ScaleIOPersistentVolumeSource from JSON data.
  static List<ScaleIOPersistentVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ScaleIOPersistentVolumeSource.fromJson(e)).toList();
  }

  /// Converts a ScaleIOPersistentVolumeSource instance to JSON data.
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

  /// FsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Default is "xfs".
  final String? fsType;

  /// Gateway is the host address of the ScaleIO API Gateway.
  final String gateway;

  /// ProtectionDomain is the name of the ScaleIO Protection Domain for the configured storage.
  final String? protectionDomain;

  /// ReadOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final bool? readOnly;

  /// SecretRef references to the secret for ScaleIO user and other sensitive information. If this is not provided, Login operation will fail.
  final SecretReference secretRef;

  /// SslEnabled is the flag to enable/disable SSL communication with Gateway, default false.
  final bool? sslEnabled;

  /// StorageMode indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned.
  final String? storageMode;

  /// StoragePool is the ScaleIO Storage Pool associated with the protection domain.
  final String? storagePool;

  /// System is the name of the storage system as configured in ScaleIO.
  final String system;

  /// VolumeName is the name of a volume already created in the ScaleIO system that is associated with this volume source.
  final String? volumeName;
}
