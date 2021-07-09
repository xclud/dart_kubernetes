/// TCPSocketAction describes an action based on opening a socket.
class TCPSocketAction {
  /// The main constructor.
  const TCPSocketAction({
    this.host,
    required this.port,
  });

  /// Creates a TCPSocketAction from JSON data.
  TCPSocketAction.fromJson(Map<String, dynamic> json)
      : this(
          host: json['host'],
          port: json['port'],
        );

  /// Creates a list of TCPSocketAction from JSON data.
  static List<TCPSocketAction> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => TCPSocketAction.fromJson(e)).toList();
  }

  /// Optional: Host name to connect to, defaults to the pod IP.
  final String? host;

  /// Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
  final Object port;
}
