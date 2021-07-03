import 'package:kubernetes/src/generated/api/core/v1/local_object_reference.dart';

/// Represents an ISCSI disk. ISCSI volumes can only be mounted as read/write once. ISCSI volumes support ownership management and SELinux relabeling.
class ISCSIVolumeSource {
  /// The main constructor.
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

  /// Creates a ISCSIVolumeSource from JSON data.
  ISCSIVolumeSource.fromJson(Map<String, dynamic> json)
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
              ? LocalObjectReference.fromJson(json['secretRef'])
              : null,
          targetPortal: json['targetPortal'],
        );

  /// Creates a list of ISCSIVolumeSource from JSON data.
  static List<ISCSIVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ISCSIVolumeSource.fromJson(e)).toList();
  }

  /// whether support iSCSI Discovery CHAP authentication
  final bool? chapAuthDiscovery;

  /// whether support iSCSI Session CHAP authentication
  final bool? chapAuthSession;

  /// Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi
  final String? fsType;

  /// Custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection.
  final String? initiatorName;

  /// Target iSCSI Qualified Name.
  final String iqn;

  /// iSCSI Interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).
  final String? iscsiInterface;

  /// iSCSI Target Lun number.
  final int lun;

  /// iSCSI Target Portal List. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
  final List<String>? portals;

  /// ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
  final bool? readOnly;

  /// CHAP Secret for iSCSI target and initiator authentication
  final LocalObjectReference? secretRef;

  /// iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
  final String targetPortal;
}
