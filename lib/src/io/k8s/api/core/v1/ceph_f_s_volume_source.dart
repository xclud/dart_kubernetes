// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not support ownership management or SELinux relabeling.
class CephFSVolumeSource {
  /// Default constructor.
  const CephFSVolumeSource({
    required this.monitors,
    this.path,
    this.readOnly,
    this.secretFile,
    this.secretRef,
    this.user,
  });

  /// Creates a [CephFSVolumeSource] from JSON data.
  factory CephFSVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempMonitorsJson = json['monitors'];
    final tempPathJson = json['path'];
    final tempReadOnlyJson = json['readOnly'];
    final tempSecretFileJson = json['secretFile'];
    final tempSecretRefJson = json['secretRef'];
    final tempUserJson = json['user'];

    final List<String> tempMonitors = List<String>.from(tempMonitorsJson);
    final String? tempPath = tempPathJson;
    final bool? tempReadOnly = tempReadOnlyJson;
    final String? tempSecretFile = tempSecretFileJson;
    final LocalObjectReference? tempSecretRef = tempSecretRefJson != null
        ? LocalObjectReference.fromJson(tempSecretRefJson)
        : null;
    final String? tempUser = tempUserJson;

    return CephFSVolumeSource(
      monitors: tempMonitors,
      path: tempPath,
      readOnly: tempReadOnly,
      secretFile: tempSecretFile,
      secretRef: tempSecretRef,
      user: tempUser,
    );
  }

  /// monitors is Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it.
  final List<String> monitors;

  /// path is Optional: Used as the mounted root, rather than the full Ceph tree, default is /.
  final String? path;

  /// readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it.
  final bool? readOnly;

  /// secretFile is Optional: SecretFile is the path to key ring for User, default is /etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it.
  final String? secretFile;

  /// secretRef is Optional: SecretRef is reference to the authentication secret for User, default is empty. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it.
  final LocalObjectReference? secretRef;

  /// user is optional: User is the rados user name, default is admin More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it.
  final String? user;

  /// Converts a [CephFSVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempMonitors = monitors;
    final tempPath = path;
    final tempReadOnly = readOnly;
    final tempSecretFile = secretFile;
    final tempSecretRef = secretRef;
    final tempUser = user;

    jsonData['monitors'] = tempMonitors;

    if (tempPath != null) {
      jsonData['path'] = tempPath;
    }

    if (tempReadOnly != null) {
      jsonData['readOnly'] = tempReadOnly;
    }

    if (tempSecretFile != null) {
      jsonData['secretFile'] = tempSecretFile;
    }

    if (tempSecretRef != null) {
      jsonData['secretRef'] = tempSecretRef.toJson();
    }

    if (tempUser != null) {
      jsonData['user'] = tempUser;
    }

    return jsonData;
  }
}
