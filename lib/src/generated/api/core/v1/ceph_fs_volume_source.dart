import 'package:kubernetes/src/generated/api/core/v1/local_object_reference.dart';

/// Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not support ownership management or SELinux relabeling.
class CephFSVolumeSource {
  /// The main constructor.
  const CephFSVolumeSource({
    required this.monitors,
    this.path,
    this.readOnly,
    this.secretFile,
    this.secretRef,
    this.user,
  });

  /// Creates a CephFSVolumeSource from JSON data.
  CephFSVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          monitors: json['monitors'] != null
              ? List<String>.from(json['monitors'])
              : [],
          path: json['path'],
          readOnly: json['readOnly'],
          secretFile: json['secretFile'],
          secretRef: json['secretRef'] != null
              ? LocalObjectReference.fromJson(json['secretRef'])
              : null,
          user: json['user'],
        );

  /// Creates a list of CephFSVolumeSource from JSON data.
  static List<CephFSVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => CephFSVolumeSource.fromJson(e)).toList();
  }

  /// Converts a CephFSVolumeSource instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['monitors'] = monitors;
    if (path != null) {
      jsonData['path'] = path!;
    }
    if (readOnly != null) {
      jsonData['readOnly'] = readOnly!;
    }
    if (secretFile != null) {
      jsonData['secretFile'] = secretFile!;
    }
    if (secretRef != null) {
      jsonData['secretRef'] = secretRef!.toJson();
    }
    if (user != null) {
      jsonData['user'] = user!;
    }

    return jsonData;
  }

  /// Monitors is Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it.
  final List<String> monitors;

  /// Path is Optional: Used as the mounted root, rather than the full Ceph tree, default is /.
  final String? path;

  /// ReadOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it.
  final bool? readOnly;

  /// SecretFile is Optional: SecretFile is the path to key ring for User, default is /etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it.
  final String? secretFile;

  /// SecretRef is Optional: SecretRef is reference to the authentication secret for User, default is empty. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it.
  final LocalObjectReference? secretRef;

  /// User is optional: User is the rados user name, default is admin More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it.
  final String? user;
}
