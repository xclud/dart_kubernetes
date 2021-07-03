/// NodeAddress contains information for the node's address.
class NodeAddress {
  /// The main constructor.
  const NodeAddress({
    required this.address,
    required this.type,
  });

  /// Creates a NodeAddress from JSON data.
  NodeAddress.fromJson(Map<String, dynamic> json)
      : this(
          address: json['address'],
          type: json['type'],
        );

  /// Creates a list of NodeAddress from JSON data.
  static List<NodeAddress> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NodeAddress.fromJson(e)).toList();
  }

  /// The node address.
  final String address;

  /// Node address type, one of Hostname, ExternalIP or InternalIP.
  final String type;
}
