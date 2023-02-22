
/// IngressTLS describes the transport layer security associated with an ingress.
class IngressTLS {
  /// The main constructor.
  const IngressTLS({
    this.hosts,
    this.secretName,
  });

  /// Creates a IngressTLS from JSON data.
  IngressTLS.fromJson(Map<String, dynamic> json)
      : this(
          hosts: json['hosts'] != null ? List<String>.from(json['hosts']) : null,
          secretName: json['secretName'],
        );

  /// Creates a list of IngressTLS from JSON data.
  static List<IngressTLS> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => IngressTLS.fromJson(e)).toList();
  }

  /// Converts a IngressTLS instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(hosts != null) { jsonData['hosts'] = hosts!; }
    if(secretName != null) { jsonData['secretName'] = secretName!; }
    

    return jsonData;
  }


  /// Hosts is a list of hosts included in the TLS certificate. The values in this list must match the name/s used in the tlsSecret. Defaults to the wildcard host setting for the loadbalancer controller fulfilling this Ingress, if left unspecified.
  final List<String>? hosts;

  /// SecretName is the name of the secret used to terminate TLS traffic on port 443. Field is left optional to allow TLS routing based on SNI hostname alone. If the SNI host in a listener conflicts with the "Host" header field used by an IngressRule, the SNI host is used for termination and value of the "Host" header is used for routing.
  final String? secretName;
}
