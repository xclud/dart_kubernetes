// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// NodeAddress contains information for the node's address.
class NodeAddress {
  /// Default constructor.
  const NodeAddress({
    required this.address,
    required this.type,
  });

  /// Creates a [NodeAddress] from JSON data.
  factory NodeAddress.fromJson(Map<String, dynamic> json) {
    final tempAddressJson = json['address'];
    final tempTypeJson = json['type'];

    final String tempAddress = tempAddressJson;
    final String tempType = tempTypeJson;

    return NodeAddress(
      address: tempAddress,
      type: tempType,
    );
  }

  /// The node address.
  final String address;

  /// Node address type, one of Hostname, ExternalIP or InternalIP.
  final String type;

  /// Converts a [NodeAddress] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAddress = address;
    final tempType = type;

    jsonData['address'] = tempAddress;

    jsonData['type'] = tempType;

    return jsonData;
  }
}
