// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.networking.v1;

/// IngressTLS describes the transport layer security associated with an ingress.
class IngressTLS {
  /// Default constructor.
  const IngressTLS({
    this.hosts,
    this.secretName,
  });

  /// Creates a [IngressTLS] from JSON data.
  factory IngressTLS.fromJson(Map<String, dynamic> json) {
    final tempHostsJson = json['hosts'];
    final tempSecretNameJson = json['secretName'];

    final tempHosts = tempHostsJson;
    final tempSecretName = tempSecretNameJson;

    return IngressTLS(
      hosts: tempHosts,
      secretName: tempSecretName,
    );
  }

  /// hosts is a list of hosts included in the TLS certificate. The values in this list must match the name/s used in the tlsSecret. Defaults to the wildcard host setting for the loadbalancer controller fulfilling this Ingress, if left unspecified.
  final List<String>? hosts;

  /// secretName is the name of the secret used to terminate TLS traffic on port 443. Field is left optional to allow TLS routing based on SNI hostname alone. If the SNI host in a listener conflicts with the "Host" header field used by an IngressRule, the SNI host is used for termination and value of the "Host" header is used for routing.
  final String? secretName;

  /// Converts a [IngressTLS] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempHosts = hosts;
    final tempSecretName = secretName;

    if (tempHosts != null) {
      jsonData['hosts'] = tempHosts;
    }

    if (tempSecretName != null) {
      jsonData['secretName'] = tempSecretName;
    }

    return jsonData;
  }
}
