/// ServerAddressByClientCIDR helps the client to determine the server address that they should use, depending on the clientCIDR that they match.
class ServerAddressByClientCIDR {
  /// The main constructor.
  const ServerAddressByClientCIDR({
    required this.clientCIDR,
    required this.serverAddress,
  });

  /// Creates a ServerAddressByClientCIDR from JSON data.
  ServerAddressByClientCIDR.fromJson(Map<String, dynamic> json)
      : this(
          clientCIDR: json['clientCIDR'],
          serverAddress: json['serverAddress'],
        );

  /// Creates a list of ServerAddressByClientCIDR from JSON data.
  static List<ServerAddressByClientCIDR> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ServerAddressByClientCIDR.fromJson(e)).toList();
  }

  /// The CIDR with which clients can match their IP to figure out the server address that they should use.
  final String clientCIDR;

  /// Address of this server, suitable for a client that matches the above CIDR. This can be a hostname, hostname:port, IP or IP:port.
  final String serverAddress;
}
