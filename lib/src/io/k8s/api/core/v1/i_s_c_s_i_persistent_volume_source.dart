// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// ISCSIPersistentVolumeSource represents an ISCSI disk. ISCSI volumes can only be mounted as read/write once. ISCSI volumes support ownership management and SELinux relabeling.
class ISCSIPersistentVolumeSource {
  /// Default constructor.
  const ISCSIPersistentVolumeSource({
    this.chapAuthDiscovery,
    this.chapAuthSession,
    this.fsType,
    this.initiatorName,
    required this.iqn,
    this.iscsiInterface,
    required this.lun,
    this.portals,
    this.readOnly,
    this.secretRef,
    required this.targetPortal,
  });

  /// Creates a [ISCSIPersistentVolumeSource] from JSON data.
  factory ISCSIPersistentVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempChapAuthDiscoveryJson = json['chapAuthDiscovery'];
    final tempChapAuthSessionJson = json['chapAuthSession'];
    final tempFsTypeJson = json['fsType'];
    final tempInitiatorNameJson = json['initiatorName'];
    final tempIqnJson = json['iqn'];
    final tempIscsiInterfaceJson = json['iscsiInterface'];
    final tempLunJson = json['lun'];
    final tempPortalsJson = json['portals'];
    final tempReadOnlyJson = json['readOnly'];
    final tempSecretRefJson = json['secretRef'];
    final tempTargetPortalJson = json['targetPortal'];

    final bool? tempChapAuthDiscovery = tempChapAuthDiscoveryJson;
    final bool? tempChapAuthSession = tempChapAuthSessionJson;
    final String? tempFsType = tempFsTypeJson;
    final String? tempInitiatorName = tempInitiatorNameJson;
    final String tempIqn = tempIqnJson;
    final String? tempIscsiInterface = tempIscsiInterfaceJson;
    final int tempLun = tempLunJson;
    final List<String>? tempPortals = tempPortalsJson;
    final bool? tempReadOnly = tempReadOnlyJson;
    final SecretReference? tempSecretRef = tempSecretRefJson != null
        ? SecretReference.fromJson(tempSecretRefJson)
        : null;
    final String tempTargetPortal = tempTargetPortalJson;

    return ISCSIPersistentVolumeSource(
      chapAuthDiscovery: tempChapAuthDiscovery,
      chapAuthSession: tempChapAuthSession,
      fsType: tempFsType,
      initiatorName: tempInitiatorName,
      iqn: tempIqn,
      iscsiInterface: tempIscsiInterface,
      lun: tempLun,
      portals: tempPortals,
      readOnly: tempReadOnly,
      secretRef: tempSecretRef,
      targetPortal: tempTargetPortal,
    );
  }

  /// chapAuthDiscovery defines whether support iSCSI Discovery CHAP authentication.
  final bool? chapAuthDiscovery;

  /// chapAuthSession defines whether support iSCSI Session CHAP authentication.
  final bool? chapAuthSession;

  /// fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi.
  final String? fsType;

  /// initiatorName is the custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection.
  final String? initiatorName;

  /// iqn is Target iSCSI Qualified Name.
  final String iqn;

  /// iscsiInterface is the interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).
  final String? iscsiInterface;

  /// lun is iSCSI Target Lun number.
  final int lun;

  /// portals is the iSCSI Target Portal List. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
  final List<String>? portals;

  /// readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
  final bool? readOnly;

  /// secretRef is the CHAP Secret for iSCSI target and initiator authentication.
  final SecretReference? secretRef;

  /// targetPortal is iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
  final String targetPortal;

  /// Converts a [ISCSIPersistentVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempChapAuthDiscovery = chapAuthDiscovery;
    final tempChapAuthSession = chapAuthSession;
    final tempFsType = fsType;
    final tempInitiatorName = initiatorName;
    final tempIqn = iqn;
    final tempIscsiInterface = iscsiInterface;
    final tempLun = lun;
    final tempPortals = portals;
    final tempReadOnly = readOnly;
    final tempSecretRef = secretRef;
    final tempTargetPortal = targetPortal;

    if (tempChapAuthDiscovery != null) {
      jsonData['chapAuthDiscovery'] = tempChapAuthDiscovery;
    }

    if (tempChapAuthSession != null) {
      jsonData['chapAuthSession'] = tempChapAuthSession;
    }

    if (tempFsType != null) {
      jsonData['fsType'] = tempFsType;
    }

    if (tempInitiatorName != null) {
      jsonData['initiatorName'] = tempInitiatorName;
    }

    jsonData['iqn'] = tempIqn;

    if (tempIscsiInterface != null) {
      jsonData['iscsiInterface'] = tempIscsiInterface;
    }

    jsonData['lun'] = tempLun;

    if (tempPortals != null) {
      jsonData['portals'] = tempPortals;
    }

    if (tempReadOnly != null) {
      jsonData['readOnly'] = tempReadOnly;
    }

    if (tempSecretRef != null) {
      jsonData['secretRef'] = tempSecretRef.toJson();
    }

    jsonData['targetPortal'] = tempTargetPortal;

    return jsonData;
  }
}
