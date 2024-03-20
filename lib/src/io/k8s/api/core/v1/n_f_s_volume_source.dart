// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// Represents an NFS mount that lasts the lifetime of a pod. NFS volumes do not support ownership management or SELinux relabeling.
class NFSVolumeSource {
  /// Default constructor.
  const NFSVolumeSource({
    required this.path,
    this.readOnly,
    required this.server,
  });

  /// Creates a [NFSVolumeSource] from JSON data.
  factory NFSVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempPathJson = json['path'];
    final tempReadOnlyJson = json['readOnly'];
    final tempServerJson = json['server'];

    final String tempPath = tempPathJson;
    final bool? tempReadOnly = tempReadOnlyJson;
    final String tempServer = tempServerJson;

    return NFSVolumeSource(
      path: tempPath,
      readOnly: tempReadOnly,
      server: tempServer,
    );
  }

  /// path that is exported by the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs.
  final String path;

  /// readOnly here will force the NFS export to be mounted with read-only permissions. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs.
  final bool? readOnly;

  /// server is the hostname or IP address of the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs.
  final String server;

  /// Converts a [NFSVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempPath = path;
    final tempReadOnly = readOnly;
    final tempServer = server;

    jsonData['path'] = tempPath;

    if (tempReadOnly != null) {
      jsonData['readOnly'] = tempReadOnly;
    }

    jsonData['server'] = tempServer;

    return jsonData;
  }
}
