import 'package:kubernetes/src/generated/kubernetes/api/core/v1/node_selector.dart';

/// ClusterCIDRSpec defines the desired state of ClusterCIDR.
class ClusterCIDRSpec {
  /// The main constructor.
  const ClusterCIDRSpec({
    this.ipv4,
    this.ipv6,
    this.nodeSelector,
    required this.perNodeHostBits,
  });

  /// Creates a ClusterCIDRSpec from JSON data.
  ClusterCIDRSpec.fromJson(Map<String, dynamic> json)
      : this(
          ipv4: json['ipv4'],
          ipv6: json['ipv6'],
          nodeSelector: json['nodeSelector'] != null ? NodeSelector.fromJson(json['nodeSelector']): null,
          perNodeHostBits: json['perNodeHostBits'],
        );

  /// Creates a list of ClusterCIDRSpec from JSON data.
  static List<ClusterCIDRSpec> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ClusterCIDRSpec.fromJson(e)).toList();
  }

  /// Converts a ClusterCIDRSpec instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(ipv4 != null) { jsonData['ipv4'] = ipv4!; }
    if(ipv6 != null) { jsonData['ipv6'] = ipv6!; }
    if(nodeSelector != null) { jsonData['nodeSelector'] = nodeSelector!.toJson(); }
    jsonData['perNodeHostBits'] = perNodeHostBits;
    

    return jsonData;
  }


  /// Ipv4 defines an IPv4 IP block in CIDR notation(e.g. "10.0.0.0/8"). At least one of ipv4 and ipv6 must be specified. This field is immutable.
  final String? ipv4;

  /// Ipv6 defines an IPv6 IP block in CIDR notation(e.g. "2001:db8::/64"). At least one of ipv4 and ipv6 must be specified. This field is immutable.
  final String? ipv6;

  /// NodeSelector defines which nodes the config is applicable to. An empty or nil nodeSelector selects all nodes. This field is immutable.
  final NodeSelector? nodeSelector;

  /// PerNodeHostBits defines the number of host bits to be configured per node. A subnet mask determines how much of the address is used for network bits and host bits. For example an IPv4 address of 192.168.0.0/24, splits the address into 24 bits for the network portion and 8 bits for the host portion. To allocate 256 IPs, set this field to 8 (a /24 mask for IPv4 or a /120 for IPv6). Minimum value is 4 (16 IPs). This field is immutable.
  final int perNodeHostBits;
}
