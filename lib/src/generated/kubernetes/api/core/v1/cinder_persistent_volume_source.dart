import 'package:kubernetes/src/generated/kubernetes/api/core/v1/secret_reference.dart';

/// Represents a cinder volume resource in Openstack. A Cinder volume must exist before mounting to a container. The volume must also be in the same region as the kubelet. Cinder volumes support ownership management and SELinux relabeling.
class CinderPersistentVolumeSource {
  /// The main constructor.
  const CinderPersistentVolumeSource({
    this.fsType,
    this.readOnly,
    this.secretRef,
    required this.volumeID,
  });

  /// Creates a CinderPersistentVolumeSource from JSON data.
  CinderPersistentVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          fsType: json['fsType'],
          readOnly: json['readOnly'],
          secretRef: json['secretRef'] != null ? SecretReference.fromJson(json['secretRef']): null,
          volumeID: json['volumeID'],
        );

  /// Creates a list of CinderPersistentVolumeSource from JSON data.
  static List<CinderPersistentVolumeSource> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => CinderPersistentVolumeSource.fromJson(e)).toList();
  }

  /// Converts a CinderPersistentVolumeSource instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(fsType != null) { jsonData['fsType'] = fsType!; }
    if(readOnly != null) { jsonData['readOnly'] = readOnly!; }
    if(secretRef != null) { jsonData['secretRef'] = secretRef!.toJson(); }
    jsonData['volumeID'] = volumeID;
    

    return jsonData;
  }


  /// FsType Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md.
  final String? fsType;

  /// ReadOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md.
  final bool? readOnly;

  /// SecretRef is Optional: points to a secret object containing parameters used to connect to OpenStack.
  final SecretReference? secretRef;

  /// VolumeID used to identify the volume in cinder. More info: https://examples.k8s.io/mysql-cinder-pd/README.md.
  final String volumeID;
}
