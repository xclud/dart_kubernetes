/// Configuration affecting edge load balancer. See more details at: https://istio.io/docs/reference/config/networking/gateway.html
class GatewaySpec {
  /// The main constructor.
  const GatewaySpec({this.selector, this.servers});

  /// Creates a GatewaySpec from JSON data.
  GatewaySpec.fromJson(Map<String, dynamic> json)
      : this(
          servers: json['servers'] != null
              ? GatewayServerSpec.listFromJson((json['servers'] as Iterable)
                  .cast<Map<String, dynamic>>()
                  .toList())
              : null,
          selector: json['selector'] != null
              ? Map<String, String>.from(json['selector'])
              : null,
        );

  final Map<String, String>? selector;

  /// A list of server specifications.
  final List<GatewayServerSpec>? servers;
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

  /// Creates a GatewayServerSpec from JSON data.
  GatewayServerSpec.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          defaultEndpoint: json['defaultEndpoint'],
          bind: json['bind'],
          port: json['port'] != null ? Port.fromJson(json['port']) : null,
          hosts:
              json['hosts'] != null ? List<String>.from(json['hosts']) : null,
          tls: json['tls'] != null ? Tls.fromJson(json['tls']) : null,
        );

  /// Creates a list of GatewayServerSpec from JSON data.
  static List<GatewayServerSpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => GatewayServerSpec.fromJson(e)).toList();
  }

  /// An optional name of the server, when set must be unique across all servers.
  final String? name;

  /// Default endpoint.
  final String? defaultEndpoint;

  /// Bind.
  final String? bind;

  /// Port.
  final Port? port;

  /// One or more hosts exposed by this gateway.
  final List<String>? hosts;
  final Tls? tls;
}

class Port {
  const Port({
    this.name,
    required this.number,
    this.protocol,
    this.targetPort,
  });

  /// Creates a Port from JSON data.
  Port.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          number: json['number'],
          protocol: json['protocol'],
          targetPort: json['targetPort'],
        );

  /// Label assigned to the port.
  final String? name;

  /// A valid non-negative integer port number.
  final int number;

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

  /// Creates a Tls from JSON data.
  Tls.fromJson(Map<String, dynamic> json)
      : this(
          caCertificates: json['caCertificates'],
          cipherSuites: json['cipherSuites'],
          credentialName: json['credentialName'],
          httpsRedirect: json['httpsRedirect'],
          maxProtocolVersion:
              _getTlsProtocolVersion(json['maxProtocolVersion']),
          mode: _getTlsMode(json['mode']),
          privateKey: json['privateKey'],
          serverCertificate: json['serverCertificate'],
          subjectAltNames: json['subjectAltNames'],
          verifyCertificateHash: json['verifyCertificateHash'],
          verifyCertificateSpki: json['verifyCertificateSpki'],
        );

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

TlsMode _getTlsMode(String value) {
  if (value == 'PASSTHROUGH') {
    return TlsMode.passthrough;
  }
  if (value == 'SIMPLE') {
    return TlsMode.simple;
  }
  if (value == 'MUTUAL') {
    return TlsMode.mutual;
  }
  if (value == 'AUTO_PASSTHROUGH') {
    return TlsMode.autoPassthrough;
  }
  if (value == 'ISTIO_MUTUAL') {
    return TlsMode.istioMutual;
  }

  throw 'Shouldn\'t reach here.';
}

TlsProtocolVersion? _getTlsProtocolVersion(String? value) {
  if (value == null || value.isEmpty) {
    return null;
  }

  if (value == 'TLS_AUTO') {
    return TlsProtocolVersion.auto;
  }
  if (value == 'TLSV1_0') {
    return TlsProtocolVersion.v1_0;
  }
  if (value == 'TLSV1_1') {
    return TlsProtocolVersion.v1_1;
  }
  if (value == 'TLSV1_2') {
    return TlsProtocolVersion.v1_2;
  }
  if (value == 'TLSV1_3') {
    return TlsProtocolVersion.v1_3;
  }

  throw 'Shouldn\'t reach here.';
}
