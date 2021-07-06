/// Configuration affecting edge load balancer. See more details at: https://istio.io/docs/reference/config/networking/gateway.html
class GatewaySpec {
  /// The main constructor.
  const GatewaySpec({this.selector, this.server});

  /// Creates a GatewaySpec from JSON data.
  GatewaySpec.fromJson(Map<String, dynamic> json) : this();

  final Map<String, String>? selector;

  /// A list of server specifications.
  final List<GatewayServerSpec>? server;
}

class GatewayServerSpec {
  const GatewayServerSpec({
    this.name,
    this.defaultEndpoint,
    this.bind,
    this.port,
    this.hosts,
    this.tls,
  });

  /// An optional name of the server, when set must be unique across all servers.
  final String? name;

  final String? defaultEndpoint;
  final String? bind;

  final Port? port;

  /// One or more hosts exposed by this gateway.
  final List<String>? hosts;
  final Tls? tls;
}

class Port {
  const Port({
    this.name,
    this.number,
    this.protocol,
    this.targetPort,
  });

  /// Label assigned to the port.
  final String? name;

  /// A valid non-negative integer port number.
  final int? number;

  /// The protocol exposed on the port.
  final String? protocol;

  /// Target port.
  final int? targetPort;
}

/// Set of TLS related options that govern the server's behavior.
class Tls {
  const Tls({
    this.caCertificates,
    this.cipherSuites,
    this.credentialName,
    this.httpsRedirect,
    this.maxProtocolVersion,
    required this.mode,
    this.privateKey,
    this.serverCertificate,
    this.subjectAltNames,
    this.verifyCertificateHash,
    this.verifyCertificateSpki,
  });

  /// REQUIRED if mode is `MUTUAL`.
  final String? caCertificates;

  /// Optional: If specified, only support the specified cipher list.
  final List<String>? cipherSuites;

  final String? credentialName;

  final bool? httpsRedirect;

  /// Optional: Maximum TLS protocol version.
  final TlsProtocolVersion? maxProtocolVersion;

  final TlsMode mode;

  /// REQUIRED if mode is `SIMPLE` or `MUTUAL`.
  final String? privateKey;

  /// REQUIRED if mode is `SIMPLE` or `MUTUAL`.
  final String? serverCertificate;

  final List<String>? subjectAltNames;

  final List<String>? verifyCertificateHash;

  final List<String>? verifyCertificateSpki;
}

enum TlsMode {
  passthrough, //PASSTHROUGH
  simple, //SIMPLE
  mutual, //MUTUAL
  autoPassthrough, //AUTO_PASSTHROUGH
  istioMutual, //ISTIO_MUTUAL
}

enum TlsProtocolVersion {
  auto, //TLS_AUTO
  v1_0, //TLSV1_0
  v1_1, //TLSV1_1
  v1_2, //TLSV1_2
  v1_3, //TLSV1_3
}
