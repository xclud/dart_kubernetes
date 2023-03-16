// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// Represents a Rados Block Device mount that lasts the lifetime of a pod. RBD volumes support ownership management and SELinux relabeling.
class RBDVolumeSource {
  /// Default constructor.
  const RBDVolumeSource({
    this.fsType,
    required this.image,
    this.keyring,
    required this.monitors,
    this.pool,
    this.readOnly,
    this.secretRef,
    this.user,
  });

  /// Creates a [RBDVolumeSource] from JSON data.
  factory RBDVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempFsTypeJson = json['fsType'];
    final tempImageJson = json['image'];
    final tempKeyringJson = json['keyring'];
    final tempMonitorsJson = json['monitors'];
    final tempPoolJson = json['pool'];
    final tempReadOnlyJson = json['readOnly'];
    final tempSecretRefJson = json['secretRef'];
    final tempUserJson = json['user'];

    final String? tempFsType = tempFsTypeJson;
    final String tempImage = tempImageJson;
    final String? tempKeyring = tempKeyringJson;
    final List<String> tempMonitors = tempMonitorsJson;
    final String? tempPool = tempPoolJson;
    final bool? tempReadOnly = tempReadOnlyJson;
    final LocalObjectReference? tempSecretRef = tempSecretRefJson != null
        ? LocalObjectReference.fromJson(tempSecretRefJson)
        : null;
    final String? tempUser = tempUserJson;

    return RBDVolumeSource(
      fsType: tempFsType,
      image: tempImage,
      keyring: tempKeyring,
      monitors: tempMonitors,
      pool: tempPool,
      readOnly: tempReadOnly,
      secretRef: tempSecretRef,
      user: tempUser,
    );
  }

  /// fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#rbd.
  final String? fsType;

  /// image is the rados image name. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it.
  final String image;

  /// keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it.
  final String? keyring;

  /// monitors is a collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it.
  final List<String> monitors;

  /// pool is the rados pool name. Default is rbd. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it.
  final String? pool;

  /// readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it.
  final bool? readOnly;

  /// secretRef is name of the authentication secret for RBDUser. If provided overrides keyring. Default is nil. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it.
  final LocalObjectReference? secretRef;

  /// user is the rados user name. Default is admin. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it.
  final String? user;

  /// Converts a [RBDVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempFsType = fsType;
    final tempImage = image;
    final tempKeyring = keyring;
    final tempMonitors = monitors;
    final tempPool = pool;
    final tempReadOnly = readOnly;
    final tempSecretRef = secretRef;
    final tempUser = user;

    if (tempFsType != null) {
      jsonData['fsType'] = tempFsType;
    }

    jsonData['image'] = tempImage;

    if (tempKeyring != null) {
      jsonData['keyring'] = tempKeyring;
    }

    jsonData['monitors'] = tempMonitors;

    if (tempPool != null) {
      jsonData['pool'] = tempPool;
    }

    if (tempReadOnly != null) {
      jsonData['readOnly'] = tempReadOnly;
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
