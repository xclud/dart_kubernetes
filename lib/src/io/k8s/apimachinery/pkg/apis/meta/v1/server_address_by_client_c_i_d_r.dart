// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.apimachinery.pkg.apis.meta.v1;

/// ServerAddressByClientCIDR helps the client to determine the server address that they should use, depending on the clientCIDR that they match.
class ServerAddressByClientCIDR {
  /// Default constructor.
  const ServerAddressByClientCIDR({
    required this.clientCIDR,
    required this.serverAddress,
  });

  /// Creates a [ServerAddressByClientCIDR] from JSON data.
  factory ServerAddressByClientCIDR.fromJson(Map<String, dynamic> json) {
    final tempClientCIDRJson = json['clientCIDR'];
    final tempServerAddressJson = json['serverAddress'];

    final String tempClientCIDR = tempClientCIDRJson;
    final String tempServerAddress = tempServerAddressJson;

    return ServerAddressByClientCIDR(
      clientCIDR: tempClientCIDR,
      serverAddress: tempServerAddress,
    );
  }

  /// The CIDR with which clients can match their IP to figure out the server address that they should use.
  final String clientCIDR;

  /// Address of this server, suitable for a client that matches the above CIDR. This can be a hostname, hostname:port, IP or IP:port.
  final String serverAddress;

  /// Converts a [ServerAddressByClientCIDR] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempClientCIDR = clientCIDR;
    final tempServerAddress = serverAddress;

    jsonData['clientCIDR'] = tempClientCIDR;

    jsonData['serverAddress'] = tempServerAddress;

    return jsonData;
  }
}
