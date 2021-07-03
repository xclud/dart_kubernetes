import 'package:kubernetes/src/generated/api/core/v1/secret_reference.dart';

/// Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not support ownership management or SELinux relabeling.
class CephFSPersistentVolumeSource {
  /// The main constructor.
  const CephFSPersistentVolumeSource({
    required this.monitors,
    this.path,
    this.readOnly,
    this.secretFile,
    this.secretRef,
    this.user,
  });

  /// Creates a CephFSPersistentVolumeSource from JSON data.
  CephFSPersistentVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          monitors: json['monitors'] != null
              ? List<String>.from(json['monitors'])
              : [],
          path: json['path'],
          readOnly: json['readOnly'],
          secretFile: json['secretFile'],
          secretRef: json['secretRef'] != null
              ? SecretReference.fromJson(json['secretRef'])
              : null,
          user: json['user'],
        );

  /// Creates a list of CephFSPersistentVolumeSource from JSON data.
  static List<CephFSPersistentVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => CephFSPersistentVolumeSource.fromJson(e)).toList();
  }

  /// Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  final List<String> monitors;

  /// Optional: Used as the mounted root, rather than the full Ceph tree, default is /
  final String? path;

  /// Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  final bool? readOnly;

  /// Optional: SecretFile is the path to key ring for User, default is /etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  final String? secretFile;

  /// Optional: SecretRef is reference to the authentication secret for User, default is empty. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  final SecretReference? secretRef;

  /// Optional: User is the rados user name, default is admin More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
  final String? user;
}
