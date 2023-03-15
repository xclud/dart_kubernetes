// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// IP address information for entries in the (plural) PodIPs field. Each entry includes:
///
/// 	IP: An IP address allocated to the pod. Routable at least within the cluster.
class PodIP {
  /// Default constructor.
  const PodIP({
    this.ip,
  });

  /// Creates a [PodIP] from JSON data.
  factory PodIP.fromJson(Map<String, dynamic> json) {
    final tempIpJson = json['ip'];

    final tempIp = tempIpJson;

    return PodIP(
      ip: tempIp,
    );
  }

  /// ip is an IP address (IPv4 or IPv6) assigned to the pod.
  final String? ip;

  /// Converts a [PodIP] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempIp = ip;

    if (tempIp != null) {
      jsonData['ip'] = tempIp;
    }

    return jsonData;
  }
}
