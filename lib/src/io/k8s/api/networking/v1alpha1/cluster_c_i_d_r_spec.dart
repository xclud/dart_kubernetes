// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../networking_v1alpha1.dart';

/// ClusterCIDRSpec defines the desired state of ClusterCIDR.
class ClusterCIDRSpec {
  /// Default constructor.
  const ClusterCIDRSpec({
    this.ipv4,
    this.ipv6,
    this.nodeSelector,
    required this.perNodeHostBits,
  });

  /// Creates a [ClusterCIDRSpec] from JSON data.
  factory ClusterCIDRSpec.fromJson(Map<String, dynamic> json) {
    final tempIpv4Json = json['ipv4'];
    final tempIpv6Json = json['ipv6'];
    final tempNodeSelectorJson = json['nodeSelector'];
    final tempPerNodeHostBitsJson = json['perNodeHostBits'];

    final String? tempIpv4 = tempIpv4Json;
    final String? tempIpv6 = tempIpv6Json;
    final NodeSelector? tempNodeSelector = tempNodeSelectorJson != null
        ? NodeSelector.fromJson(tempNodeSelectorJson)
        : null;
    final int tempPerNodeHostBits = tempPerNodeHostBitsJson;

    return ClusterCIDRSpec(
      ipv4: tempIpv4,
      ipv6: tempIpv6,
      nodeSelector: tempNodeSelector,
      perNodeHostBits: tempPerNodeHostBits,
    );
  }

  /// ipv4 defines an IPv4 IP block in CIDR notation(e.g. "10.0.0.0/8"). At least one of ipv4 and ipv6 must be specified. This field is immutable.
  final String? ipv4;

  /// ipv6 defines an IPv6 IP block in CIDR notation(e.g. "2001:db8::/64"). At least one of ipv4 and ipv6 must be specified. This field is immutable.
  final String? ipv6;

  /// nodeSelector defines which nodes the config is applicable to. An empty or nil nodeSelector selects all nodes. This field is immutable.
  final NodeSelector? nodeSelector;

  /// perNodeHostBits defines the number of host bits to be configured per node. A subnet mask determines how much of the address is used for network bits and host bits. For example an IPv4 address of 192.168.0.0/24, splits the address into 24 bits for the network portion and 8 bits for the host portion. To allocate 256 IPs, set this field to 8 (a /24 mask for IPv4 or a /120 for IPv6). Minimum value is 4 (16 IPs). This field is immutable.
  final int perNodeHostBits;

  /// Converts a [ClusterCIDRSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempIpv4 = ipv4;
    final tempIpv6 = ipv6;
    final tempNodeSelector = nodeSelector;
    final tempPerNodeHostBits = perNodeHostBits;

    if (tempIpv4 != null) {
      jsonData['ipv4'] = tempIpv4;
    }

    if (tempIpv6 != null) {
      jsonData['ipv6'] = tempIpv6;
    }

    if (tempNodeSelector != null) {
      jsonData['nodeSelector'] = tempNodeSelector.toJson();
    }

    jsonData['perNodeHostBits'] = tempPerNodeHostBits;

    return jsonData;
  }
}
