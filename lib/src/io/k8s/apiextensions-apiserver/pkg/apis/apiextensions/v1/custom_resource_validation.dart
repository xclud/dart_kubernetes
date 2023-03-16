// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.apiextensions__apiserver.pkg.apis.apiextensions.v1;

/// CustomResourceValidation is a list of validation methods for CustomResources.
class CustomResourceValidation {
  /// Default constructor.
  const CustomResourceValidation({
    this.openAPIV3Schema,
  });

  /// Creates a [CustomResourceValidation] from JSON data.
  factory CustomResourceValidation.fromJson(Map<String, dynamic> json) {
    final tempOpenAPIV3SchemaJson = json['openAPIV3Schema'];

    final Map<String, dynamic>? tempOpenAPIV3Schema = tempOpenAPIV3SchemaJson;

    return CustomResourceValidation(
      openAPIV3Schema: tempOpenAPIV3Schema,
    );
  }

  /// openAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning.
  final Map<String, dynamic>? openAPIV3Schema;

  /// Converts a [CustomResourceValidation] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempOpenAPIV3Schema = openAPIV3Schema;

    if (tempOpenAPIV3Schema != null) {
      jsonData['openAPIV3Schema'] = tempOpenAPIV3Schema;
    }

    return jsonData;
  }
}
