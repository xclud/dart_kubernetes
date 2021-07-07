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

  final List<String> sniHosts;
  final List<String>? destinationSubnets;
  final int? port;
  final Map<String, String>? sourceLabels;
  final List<String>? gateways;
  final String? sourceNamespace;
}
