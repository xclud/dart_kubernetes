import 'tls_mode.dart';
import 'tls_protocol.dart';

/// Set of TLS related options that govern the server's behavior.
class ServerTLSSettings {
  /// The main constructor.
  const ServerTLSSettings({
    this.caCertificates,
    this.cipherSuites,
    this.credentialName,
    this.httpsRedirect,
    this.minProtocolVersion,
    this.maxProtocolVersion,
    required this.mode,
    this.privateKey,
    this.serverCertificate,
    this.subjectAltNames,
    this.verifyCertificateHash,
    this.verifyCertificateSpki,
  });

  /// Creates a ServerTLSSettings from JSON data.
  ServerTLSSettings.fromJson(Map<String, dynamic> json)
      : this(
          caCertificates: json['caCertificates'],
          cipherSuites: json['cipherSuites'],
          credentialName: json['credentialName'],
          httpsRedirect: json['httpsRedirect'],
          minProtocolVersion:
              _getTlsProtocolVersion(json['minProtocolVersion']),
          maxProtocolVersion:
              _getTlsProtocolVersion(json['maxProtocolVersion']),
          mode: _getTlsMode(json['mode']),
          privateKey: json['privateKey'],
          serverCertificate: json['serverCertificate'],
          subjectAltNames: json['subjectAltNames'],
          verifyCertificateHash: json['verifyCertificateHash'],
          verifyCertificateSpki: json['verifyCertificateSpki'],
        );

  /// REQUIRED if mode is [TlsMode.mutual].
  final String? caCertificates;

  /// Optional: If specified, only support the specified cipher list.
  final List<String>? cipherSuites;

  /// For gateways running on Kubernetes, the name of the secret that holds the TLS certs including the CA certificates.
  ///
  /// Applicable only on Kubernetes.
  /// The secret (of type generic) should contain the following keys and values: key: <privateKey> and cert: <serverCert>.
  /// For mutual TLS, cacert: <CACertificate> can be provided in the same secret or a separate secret named <secret>-cacert.
  /// Secret of type tls for server certificates along with ca.crt key for CA certificates is also supported.
  /// Only one of server certificates and CA certificate or credentialName can be specified.
  final String? credentialName;

  /// If set to true, the load balancer will send a 301 redirect for all http connections, asking the clients to use HTTPS.
  final bool? httpsRedirect;

  /// Optional: Maximum TLS protocol version.
  final TlsProtocol? minProtocolVersion;

  /// Optional: Maximum TLS protocol version.
  final TlsProtocol? maxProtocolVersion;

  /// Optional: Indicates whether connections to this port should be secured using TLS. The value of this field determines how TLS is enforced.
  final TlsMode mode;

  /// REQUIRED if mode is [TlsMode.simple] or [TlsMode.mutual].
  final String? privateKey;

  /// REQUIRED if [mode] is [TlsMode.simple] or [TlsMode.mutual]. The path to the file holding the server-side TLS certificate to use.
  final String? serverCertificate;

  /// A list of alternate names to verify the subject identity in the certificate presented by the client.
  final List<String>? subjectAltNames;

  /// An optional list of hex-encoded SHA-256 hashes of the authorized client certificates. Both simple and colon separated formats are acceptable.
  ///
  /// Note: When both verifycertificatehash and verifycertificatespki are specified,
  /// a hash matching either value will result in the certificate being accepted.
  final List<String>? verifyCertificateHash;

  /// An optional list of base64-encoded SHA-256 hashes of the SKPIs of authorized client certificates.
  ///
  /// Note: When both verifycertificatehash and verifycertificatespki are specified,
  /// a hash matching either value will result in the certificate being accepted.
  final List<String>? verifyCertificateSpki;
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

TlsProtocol? _getTlsProtocolVersion(String? value) {
  if (value == null || value.isEmpty) {
    return null;
  }

  if (value == 'TLS_AUTO') {
    return TlsProtocol.auto;
  }
  if (value == 'TLSV1_0') {
    return TlsProtocol.v1_0;
  }
  if (value == 'TLSV1_1') {
    return TlsProtocol.v1_1;
  }
  if (value == 'TLSV1_2') {
    return TlsProtocol.v1_2;
  }
  if (value == 'TLSV1_3') {
    return TlsProtocol.v1_3;
  }

  throw 'Shouldn\'t reach here.';
}
