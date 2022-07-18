import 'package:kubernetes/src/generated/api/core/v1/secret_reference.dart';

/// ISCSIPersistentVolumeSource represents an ISCSI disk. ISCSI volumes can only be mounted as read/write once. ISCSI volumes support ownership management and SELinux relabeling.
class ISCSIPersistentVolumeSource {
  /// The main constructor.
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

  /// Creates a ISCSIPersistentVolumeSource from JSON data.
  ISCSIPersistentVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          chapAuthDiscovery: json['chapAuthDiscovery'],
          chapAuthSession: json['chapAuthSession'],
          fsType: json['fsType'],
          initiatorName: json['initiatorName'],
          iqn: json['iqn'],
          iscsiInterface: json['iscsiInterface'],
          lun: json['lun'],
          portals: json['portals'] != null
              ? List<String>.from(json['portals'])
              : null,
          readOnly: json['readOnly'],
          secretRef: json['secretRef'] != null
              ? SecretReference.fromJson(json['secretRef'])
              : null,
          targetPortal: json['targetPortal'],
        );

  /// Creates a list of ISCSIPersistentVolumeSource from JSON data.
  static List<ISCSIPersistentVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ISCSIPersistentVolumeSource.fromJson(e)).toList();
  }

  /// Converts a ISCSIPersistentVolumeSource instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (chapAuthDiscovery != null) {
      jsonData['chapAuthDiscovery'] = chapAuthDiscovery!;
    }
    if (chapAuthSession != null) {
      jsonData['chapAuthSession'] = chapAuthSession!;
    }
    if (fsType != null) {
      jsonData['fsType'] = fsType!;
    }
    if (initiatorName != null) {
      jsonData['initiatorName'] = initiatorName!;
    }
    jsonData['iqn'] = iqn;
    if (iscsiInterface != null) {
      jsonData['iscsiInterface'] = iscsiInterface!;
    }
    jsonData['lun'] = lun;
    if (portals != null) {
      jsonData['portals'] = portals!;
    }
    if (readOnly != null) {
      jsonData['readOnly'] = readOnly!;
    }
    if (secretRef != null) {
      jsonData['secretRef'] = secretRef!.toJson();
    }
    jsonData['targetPortal'] = targetPortal;

    return jsonData;
  }

  /// ChapAuthDiscovery defines whether support iSCSI Discovery CHAP authentication.
  final bool? chapAuthDiscovery;

  /// ChapAuthSession defines whether support iSCSI Session CHAP authentication.
  final bool? chapAuthSession;

  /// FsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi.
  final String? fsType;

  /// InitiatorName is the custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection.
  final String? initiatorName;

  /// Iqn is Target iSCSI Qualified Name.
  final String iqn;

  /// IscsiInterface is the interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).
  final String? iscsiInterface;

  /// Lun is iSCSI Target Lun number.
  final int lun;

  /// Portals is the iSCSI Target Portal List. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
  final List<String>? portals;

  /// ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
  final bool? readOnly;

  /// SecretRef is the CHAP Secret for iSCSI target and initiator authentication.
  final SecretReference? secretRef;

  /// TargetPortal is iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
  final String targetPortal;
}
