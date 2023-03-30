part of io.istio.v1beta1;

/// Configuration affecting traffic routing.
class VirtualServiceSpec {
  /// The main constructor.
  const VirtualServiceSpec({
    this.hosts,
    this.gateways,
    this.http,
    this.tls,
    this.tcp,
    this.exportTo,
  });

  /// Creates a VirtualServiceSpec from JSON data.
  VirtualServiceSpec.fromJson(Map<String, dynamic> json)
      : this(
          hosts:
              json['hosts'] != null ? List<String>.from(json['hosts']) : null,
          gateways: json['gateways'] != null
              ? List<String>.from(json['gateways'])
              : null,
          http: json['http'] != null
              ? (json['http'] as Iterable)
                  .cast<Map<String, dynamic>>()
                  .map((e) => HTTPRoute.fromJson(e))
                  .toList()
              : null,
          tls: json['tls'] != null
              ? (json['tls'] as Iterable)
                  .cast<Map<String, dynamic>>()
                  .map((e) => TLSRoute.fromJson(e))
                  .toList()
              : null,
          tcp: json['tcp'] != null
              ? (json['tcp'] as Iterable)
                  .cast<Map<String, dynamic>>()
                  .map((e) => TCPRoute.fromJson(e))
                  .toList()
              : null,
          exportTo: json['exportTo'] != null
              ? List<String>.from(json['exportTo'])
              : null,
        );

  /// The destination hosts to which traffic is being sent.
  /// Could be a DNS name with wildcard prefix or an IP address.
  /// Depending on the platform, short-names can also be used instead of a FQDN (i.e. has no dots in the name).
  /// In such a scenario, the FQDN of the host would be derived based on the underlying platform.
  ///
  /// A single VirtualService can be used to describe all the traffic properties of the corresponding hosts,
  /// including those for multiple HTTP and TCP ports. Alternatively, the traffic properties of a host can be
  /// defined using more than one VirtualService, with certain caveats. Refer to the Operations Guide for
  /// details.
  ///
  /// Note for Kubernetes users: When short names are used
  /// (e.g. “reviews” instead of “reviews.default.svc.cluster.local”),
  /// Istio will interpret the short name based on the namespace of the rule,
  /// not the service. A rule in the “default” namespace containing a host “reviews” will be
  /// interpreted as “reviews.default.svc.cluster.local”, irrespective of the actual namespace
  /// associated with the reviews service. To avoid potential misconfigurations, it is recommended to
  /// always use fully qualified domain names over short names.
  ///
  /// The hosts field applies to both HTTP and TCP services.
  /// Service inside the mesh, i.e., those found in the service registry, must always be referred to
  /// using their alphanumeric names. IP addresses are allowed only for services defined via the Gateway.
  ///
  /// Note: It must be empty for a delegate VirtualService.
  final List<String>? hosts;

  /// The names of gateways and sidecars that should apply these routes.
  /// Gateways in other namespaces may be referred to by <gateway namespace>/<gateway name>;
  /// specifying a gateway with no namespace qualifier is the same as specifying the VirtualService’s
  /// namespace. A single VirtualService is used for sidecars inside the mesh as well as for one or
  /// more gateways. The selection condition imposed by this field can be overridden using the source
  /// field in the match conditions of protocol-specific routes. The reserved word mesh is used to imply
  /// all the sidecars in the mesh. When this field is omitted, the default gateway (mesh) will be used,
  /// which would apply the rule to all sidecars in the mesh. If a list of gateway names is provided,
  /// the rules will apply only to the gateways. To apply the rules to both gateways and sidecars,
  /// specify mesh as one of the gateway names.
  final List<String>? gateways;

  /// An ordered list of route rules for HTTP traffic.
  /// HTTP routes will be applied to platform service ports named ‘http-’/‘http2-’/‘grpc-*’,
  /// gateway ports with protocol HTTP/HTTP2/GRPC/ TLS-terminated-HTTPS and service entry ports
  /// using HTTP/HTTP2/GRPC protocols. The first rule matching an incoming request is used.
  final List<HTTPRoute>? http;

  /// An ordered list of route rule for non-terminated TLS & HTTPS traffic.
  /// Routing is typically performed using the SNI value presented by the ClientHello message.
  /// TLS routes will be applied to platform service ports named ‘https-’, ‘tls-’,
  /// unterminated gateway ports using HTTPS/TLS protocols (i.e. with “passthrough” TLS mode)
  /// and service entry ports using HTTPS/TLS protocols. The first rule matching an incoming
  /// request is used. NOTE: Traffic ‘https-’ or ‘tls-’ ports without associated virtual service
  /// will be treated as opaque TCP traffic.
  final List<TLSRoute>? tls;

  /// An ordered list of route rules for opaque TCP traffic.
  /// TCP routes will be applied to any port that is not a HTTP or TLS port.
  /// The first rule matching an incoming request is used.
  final List<TCPRoute>? tcp;

  /// A list of namespaces to which this virtual service is exported.
  /// Exporting a virtual service allows it to be used by sidecars and gateways defined in other namespaces.
  /// This feature provides a mechanism for service owners and mesh administrators to control the visibility
  /// of virtual services across namespace boundaries.
  ///
  /// If no namespaces are specified then the virtual service is exported to all namespaces by default.
  ///
  /// The value “.” is reserved and defines an export to the same namespace that the virtual service is
  /// declared in. Similarly the value “*” is reserved and defines an export to all namespaces.
  ///
  /// NOTE: in the current release, the exportTo value is restricted to “.” or “*”
  /// (i.e., the current namespace or all namespaces).
  final List<String>? exportTo;
}
