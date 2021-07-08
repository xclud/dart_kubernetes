class TLSMatchAttributes {
  /// The main constructor.
  const TLSMatchAttributes({
    required this.sniHosts,
    this.destinationSubnets,
    this.port,
    this.sourceLabels,
    this.gateways,
    this.sourceNamespace,
  });

  /// Creates a TLSMatchAttributes from JSON data.
  TLSMatchAttributes.fromJson(Map<String, dynamic> json)
      : this(
          sniHosts: json['sniHosts'] != null
              ? List<String>.from(json['sniHosts'])
              : [],
          destinationSubnets: json['destinationSubnets'] != null
              ? List<String>.from(json['destinationSubnets'])
              : null,
          port: json['port'],
          sourceLabels: json['sourceLabels'] != null
              ? Map<String, String>.from(json['sourceLabels'])
              : null,
          gateways: json['gateways'] != null
              ? List<String>.from(json['gateways'])
              : null,
          sourceNamespace: json['sourceNamespace'],
        );

  final List<String> sniHosts;
  final List<String>? destinationSubnets;
  final int? port;
  final Map<String, String>? sourceLabels;
  final List<String>? gateways;
  final String? sourceNamespace;
}
