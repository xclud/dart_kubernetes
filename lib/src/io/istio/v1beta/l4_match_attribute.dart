part of io.istio.v1beta1;

/// L4 connection match attributes. Note that L4 connection matching support is incomplete.
class L4MatchAttributes {
  /// The main constructor.
  const L4MatchAttributes({
    this.destinationSubnets,
    this.port,
    this.sourceLabels,
    this.gateways,
    this.sourceNamespace,
  });

  /// Creates a L4MatchAttributes from JSON data.
  L4MatchAttributes.fromJson(Map<String, dynamic> json)
      : this(
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

  /// IPv4 or IPv6 ip addresses of destination with optional subnet. E.g., a.b.c.d/xx form or just a.b.c.d.
  final List<String>? destinationSubnets;

  /// Specifies the port on the host that is being addressed.
  /// Many services only expose a single port or label ports with the protocols they support,
  /// in these cases it is not required to explicitly select the port.
  final int? port;

  /// One or more labels that constrain the applicability of a rule to workloads with the given labels.
  /// If the VirtualService has a list of gateways specified in the top-level gateways field,
  /// it should include the reserved gateway mesh in order for this field to be applicable.
  final Map<String, String>? sourceLabels;

  /// Names of gateways where the rule should be applied.
  /// Gateway names in the top-level gateways field of the VirtualService (if any) are overridden.
  /// The gateway match is independent of sourceLabels.
  final List<String>? gateways;

  /// Source namespace constraining the applicability of a rule to workloads in that namespace.
  /// If the VirtualService has a list of gateways specified in the top-level gateways field,
  /// it must include the reserved gateway mesh for this field to be applicable.
  final String? sourceNamespace;
}
