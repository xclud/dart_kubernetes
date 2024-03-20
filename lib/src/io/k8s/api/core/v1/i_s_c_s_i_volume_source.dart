// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// Represents an ISCSI disk. ISCSI volumes can only be mounted as read/write once. ISCSI volumes support ownership management and SELinux relabeling.
class ISCSIVolumeSource {
  /// Default constructor.
  const ISCSIVolumeSource({
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

  /// Creates a [ISCSIVolumeSource] from JSON data.
  factory ISCSIVolumeSource.fromJson(Map<String, dynamic> json) {
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
    final List<String>? tempPortals =
        tempPortalsJson != null ? List<String>.from(tempPortalsJson) : null;
    final bool? tempReadOnly = tempReadOnlyJson;
    final LocalObjectReference? tempSecretRef = tempSecretRefJson != null
        ? LocalObjectReference.fromJson(tempSecretRefJson)
        : null;
    final String tempTargetPortal = tempTargetPortalJson;

    return ISCSIVolumeSource(
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

  /// iqn is the target iSCSI Qualified Name.
  final String iqn;

  /// iscsiInterface is the interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).
  final String? iscsiInterface;

  /// lun represents iSCSI Target Lun number.
  final int lun;

  /// portals is the iSCSI Target Portal List. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
  final List<String>? portals;

  /// readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
  final bool? readOnly;

  /// secretRef is the CHAP Secret for iSCSI target and initiator authentication.
  final LocalObjectReference? secretRef;

  /// targetPortal is iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
  final String targetPortal;

  /// Converts a [ISCSIVolumeSource] instance to JSON data.
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
