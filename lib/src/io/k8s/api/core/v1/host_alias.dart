// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// HostAlias holds the mapping between IP and hostnames that will be injected as an entry in the pod's hosts file.
class HostAlias {
  /// Default constructor.
  const HostAlias({
    this.hostnames,
    this.ip,
  });

  /// Creates a [HostAlias] from JSON data.
  factory HostAlias.fromJson(Map<String, dynamic> json) {
    final tempHostnamesJson = json['hostnames'];
    final tempIpJson = json['ip'];

    final List<String>? tempHostnames =
        tempHostnamesJson != null ? List<String>.from(tempHostnamesJson) : null;
    final String? tempIp = tempIpJson;

    return HostAlias(
      hostnames: tempHostnames,
      ip: tempIp,
    );
  }

  /// Hostnames for the above IP address.
  final List<String>? hostnames;

  /// IP address of the host file entry.
  final String? ip;

  /// Converts a [HostAlias] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempHostnames = hostnames;
    final tempIp = ip;

    if (tempHostnames != null) {
      jsonData['hostnames'] = tempHostnames;
    }

    if (tempIp != null) {
      jsonData['ip'] = tempIp;
    }

    return jsonData;
  }
}
