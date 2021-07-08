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
  final TlsProtocol? maxProtocolVersion;

  final TlsMode mode;

  /// REQUIRED if mode is `SIMPLE` or `MUTUAL`.
  final String? privateKey;

  /// REQUIRED if mode is `SIMPLE` or `MUTUAL`.
  final String? serverCertificate;

  final List<String>? subjectAltNames;

  final List<String>? verifyCertificateHash;

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
