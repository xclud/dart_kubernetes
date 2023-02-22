import 'package:kubernetes/src/generated/kubernetes/api/networking/v1/ingress_backend.dart';
import 'package:kubernetes/src/generated/kubernetes/api/networking/v1/ingress_rule.dart';
import 'package:kubernetes/src/generated/kubernetes/api/networking/v1/ingress_tls.dart';

/// IngressSpec describes the Ingress the user wishes to exist.
class IngressSpec {
  /// The main constructor.
  const IngressSpec({
    this.defaultBackend,
    this.ingressClassName,
    this.rules,
    this.tls,
  });

  /// Creates a IngressSpec from JSON data.
  IngressSpec.fromJson(Map<String, dynamic> json)
      : this(
          defaultBackend: json['defaultBackend'] != null
              ? IngressBackend.fromJson(json['defaultBackend'])
              : null,
          ingressClassName: json['ingressClassName'],
          rules: json['rules'] != null
              ? IngressRule.listFromJson(
                  (json['rules'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          tls: json['tls'] != null
              ? IngressTLS.listFromJson(
                  (json['tls'] as Iterable).cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of IngressSpec from JSON data.
  static List<IngressSpec> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => IngressSpec.fromJson(e)).toList();
  }

  /// Converts a IngressSpec instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (defaultBackend != null) {
      jsonData['defaultBackend'] = defaultBackend!.toJson();
    }
    if (ingressClassName != null) {
      jsonData['ingressClassName'] = ingressClassName!;
    }
    if (rules != null) {
      jsonData['rules'] = rules!.map((item) => item.toJson()).toList();
    }
    if (tls != null) {
      jsonData['tls'] = tls!.map((item) => item.toJson()).toList();
    }

    return jsonData;
  }

  /// DefaultBackend is the backend that should handle requests that don't match any rule. If Rules are not specified, DefaultBackend must be specified. If DefaultBackend is not set, the handling of requests that do not match any of the rules will be up to the Ingress controller.
  final IngressBackend? defaultBackend;

  /// IngressClassName is the name of an IngressClass cluster resource. Ingress controller implementations use this field to know whether they should be serving this Ingress resource, by a transitive connection (controller -> IngressClass -> Ingress resource). Although the `kubernetes.io/ingress.class` annotation (simple constant name) was never formally defined, it was widely supported by Ingress controllers to create a direct binding between Ingress controller and Ingress resources. Newly created Ingress resources should prefer using the field. However, even though the annotation is officially deprecated, for backwards compatibility reasons, ingress controllers should still honor that annotation if present.
  final String? ingressClassName;

  /// Rules is a list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.
  final List<IngressRule>? rules;

  /// Tls represents the TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
  final List<IngressTLS>? tls;
}
