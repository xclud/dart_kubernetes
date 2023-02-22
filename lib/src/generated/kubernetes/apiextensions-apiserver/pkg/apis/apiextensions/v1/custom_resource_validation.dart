import 'package:kubernetes/src/generated/kubernetes/apiextensions-apiserver/pkg/apis/apiextensions/v1/json_schema_props.dart';

/// CustomResourceValidation is a list of validation methods for CustomResources.
class CustomResourceValidation {
  /// The main constructor.
  const CustomResourceValidation({
    this.openAPIV3Schema,
  });

  /// Creates a CustomResourceValidation from JSON data.
  CustomResourceValidation.fromJson(Map<String, dynamic> json)
      : this(
          openAPIV3Schema: json['openAPIV3Schema'] != null
              ? JSONSchemaProps.fromJson(json['openAPIV3Schema'])
              : null,
        );

  /// Creates a list of CustomResourceValidation from JSON data.
  static List<CustomResourceValidation> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => CustomResourceValidation.fromJson(e)).toList();
  }

  /// Converts a CustomResourceValidation instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (openAPIV3Schema != null) {
      jsonData['openAPIV3Schema'] = openAPIV3Schema!.toJson();
    }

    return jsonData;
  }

  /// OpenAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning.
  final JSONSchemaProps? openAPIV3Schema;
}
