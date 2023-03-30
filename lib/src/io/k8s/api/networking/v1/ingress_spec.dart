// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.networking.v1;

/// IngressSpec describes the Ingress the user wishes to exist.
class IngressSpec {
  /// Default constructor.
  const IngressSpec({
    this.defaultBackend,
    this.ingressClassName,
    this.rules,
    this.tls,
  });

  /// Creates a [IngressSpec] from JSON data.
  factory IngressSpec.fromJson(Map<String, dynamic> json) {
    final tempDefaultBackendJson = json['defaultBackend'];
    final tempIngressClassNameJson = json['ingressClassName'];
    final tempRulesJson = json['rules'];
    final tempTlsJson = json['tls'];

    final IngressBackend? tempDefaultBackend = tempDefaultBackendJson != null
        ? IngressBackend.fromJson(tempDefaultBackendJson)
        : null;
    final String? tempIngressClassName = tempIngressClassNameJson;

    final List<IngressRule>? tempRules = tempRulesJson != null
        ? List<dynamic>.from(tempRulesJson)
            .map(
              (e) => IngressRule.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final List<IngressTLS>? tempTls = tempTlsJson != null
        ? List<dynamic>.from(tempTlsJson)
            .map(
              (e) => IngressTLS.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    return IngressSpec(
      defaultBackend: tempDefaultBackend,
      ingressClassName: tempIngressClassName,
      rules: tempRules,
      tls: tempTls,
    );
  }

  /// defaultBackend is the backend that should handle requests that don't match any rule. If Rules are not specified, DefaultBackend must be specified. If DefaultBackend is not set, the handling of requests that do not match any of the rules will be up to the Ingress controller.
  final IngressBackend? defaultBackend;

  /// ingressClassName is the name of an IngressClass cluster resource. Ingress controller implementations use this field to know whether they should be serving this Ingress resource, by a transitive connection (controller -> IngressClass -> Ingress resource). Although the `kubernetes.io/ingress.class` annotation (simple constant name) was never formally defined, it was widely supported by Ingress controllers to create a direct binding between Ingress controller and Ingress resources. Newly created Ingress resources should prefer using the field. However, even though the annotation is officially deprecated, for backwards compatibility reasons, ingress controllers should still honor that annotation if present.
  final String? ingressClassName;

  /// rules is a list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.
  final List<IngressRule>? rules;

  /// tls represents the TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
  final List<IngressTLS>? tls;

  /// Converts a [IngressSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempDefaultBackend = defaultBackend;
    final tempIngressClassName = ingressClassName;
    final tempRules = rules;
    final tempTls = tls;

    if (tempDefaultBackend != null) {
      jsonData['defaultBackend'] = tempDefaultBackend.toJson();
    }

    if (tempIngressClassName != null) {
      jsonData['ingressClassName'] = tempIngressClassName;
    }

    if (tempRules != null) {
      jsonData['rules'] =
          tempRules.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempTls != null) {
      jsonData['tls'] = tempTls.map((e) => e.toJson()).toList(growable: false);
    }

    return jsonData;
  }
}
