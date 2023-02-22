import 'package:kubernetes/src/generated/kubernetes/api/networking/v1/ingress_class_parameters_reference.dart';

/// IngressClassSpec provides information about the class of an Ingress.
class IngressClassSpec {
  /// The main constructor.
  const IngressClassSpec({
    this.controller,
    this.parameters,
  });

  /// Creates a IngressClassSpec from JSON data.
  IngressClassSpec.fromJson(Map<String, dynamic> json)
      : this(
          controller: json['controller'],
          parameters: json['parameters'] != null ? IngressClassParametersReference.fromJson(json['parameters']): null,
        );

  /// Creates a list of IngressClassSpec from JSON data.
  static List<IngressClassSpec> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => IngressClassSpec.fromJson(e)).toList();
  }

  /// Converts a IngressClassSpec instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(controller != null) { jsonData['controller'] = controller!; }
    if(parameters != null) { jsonData['parameters'] = parameters!.toJson(); }
    

    return jsonData;
  }


  /// Controller refers to the name of the controller that should handle this class. This allows for different "flavors" that are controlled by the same controller. For example, you may have different parameters for the same implementing controller. This should be specified as a domain-prefixed path no more than 250 characters in length, e.g. "acme.io/ingress-controller". This field is immutable.
  final String? controller;

  /// Parameters is a link to a custom resource containing additional configuration for the controller. This is optional if the controller does not require extra parameters.
  final IngressClassParametersReference? parameters;
}
