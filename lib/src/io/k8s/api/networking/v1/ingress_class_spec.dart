// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../networking_v1.dart';

/// IngressClassSpec provides information about the class of an Ingress.
class IngressClassSpec {
  /// Default constructor.
  const IngressClassSpec({
    this.controller,
    this.parameters,
  });

  /// Creates a [IngressClassSpec] from JSON data.
  factory IngressClassSpec.fromJson(Map<String, dynamic> json) {
    final tempControllerJson = json['controller'];
    final tempParametersJson = json['parameters'];

    final String? tempController = tempControllerJson;
    final IngressClassParametersReference? tempParameters =
        tempParametersJson != null
            ? IngressClassParametersReference.fromJson(tempParametersJson)
            : null;

    return IngressClassSpec(
      controller: tempController,
      parameters: tempParameters,
    );
  }

  /// controller refers to the name of the controller that should handle this class. This allows for different "flavors" that are controlled by the same controller. For example, you may have different parameters for the same implementing controller. This should be specified as a domain-prefixed path no more than 250 characters in length, e.g. "acme.io/ingress-controller". This field is immutable.
  final String? controller;

  /// parameters is a link to a custom resource containing additional configuration for the controller. This is optional if the controller does not require extra parameters.
  final IngressClassParametersReference? parameters;

  /// Converts a [IngressClassSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempController = controller;
    final tempParameters = parameters;

    if (tempController != null) {
      jsonData['controller'] = tempController;
    }

    if (tempParameters != null) {
      jsonData['parameters'] = tempParameters.toJson();
    }

    return jsonData;
  }
}
