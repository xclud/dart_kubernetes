import 'package:kubernetes/src/generated/kubernetes/apiextensions-apiserver/pkg/apis/apiextensions/v1/custom_resource_column_definition.dart';
import 'package:kubernetes/src/generated/kubernetes/apiextensions-apiserver/pkg/apis/apiextensions/v1/custom_resource_validation.dart';
import 'package:kubernetes/src/generated/kubernetes/apiextensions-apiserver/pkg/apis/apiextensions/v1/custom_resource_subresources.dart';

/// CustomResourceDefinitionVersion describes a version for CRD.
class CustomResourceDefinitionVersion {
  /// The main constructor.
  const CustomResourceDefinitionVersion({
    this.additionalPrinterColumns,
    this.deprecated,
    this.deprecationWarning,
    required this.name,
    this.schema,
    required this.served,
    required this.storage,
    this.subresources,
  });

  /// Creates a CustomResourceDefinitionVersion from JSON data.
  CustomResourceDefinitionVersion.fromJson(Map<String, dynamic> json)
      : this(
          additionalPrinterColumns: json['additionalPrinterColumns'] != null
              ? CustomResourceColumnDefinition.listFromJson(
                  (json['additionalPrinterColumns'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
          deprecated: json['deprecated'],
          deprecationWarning: json['deprecationWarning'],
          name: json['name'],
          schema: json['schema'] != null
              ? CustomResourceValidation.fromJson(json['schema'])
              : null,
          served: json['served'],
          storage: json['storage'],
          subresources: json['subresources'] != null
              ? CustomResourceSubresources.fromJson(json['subresources'])
              : null,
        );

  /// Creates a list of CustomResourceDefinitionVersion from JSON data.
  static List<CustomResourceDefinitionVersion> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list
        .map((e) => CustomResourceDefinitionVersion.fromJson(e))
        .toList();
  }

  /// Converts a CustomResourceDefinitionVersion instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (additionalPrinterColumns != null) {
      jsonData['additionalPrinterColumns'] =
          additionalPrinterColumns!.map((item) => item.toJson()).toList();
    }
    if (deprecated != null) {
      jsonData['deprecated'] = deprecated!;
    }
    if (deprecationWarning != null) {
      jsonData['deprecationWarning'] = deprecationWarning!;
    }
    jsonData['name'] = name;
    if (schema != null) {
      jsonData['schema'] = schema!.toJson();
    }
    jsonData['served'] = served;
    jsonData['storage'] = storage;
    if (subresources != null) {
      jsonData['subresources'] = subresources!.toJson();
    }

    return jsonData;
  }

  /// AdditionalPrinterColumns specifies additional columns returned in Table output. See https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.
  final List<CustomResourceColumnDefinition>? additionalPrinterColumns;

  /// Deprecated indicates this version of the custom resource API is deprecated. When set to true, API requests to this version receive a warning header in the server response. Defaults to false.
  final bool? deprecated;

  /// DeprecationWarning overrides the default warning returned to API clients. May only be set when `deprecated` is true. The default warning indicates this version is deprecated and recommends use of the newest served version of equal or greater stability, if one exists.
  final String? deprecationWarning;

  /// Name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at `/apis/<group>/<version>/...` if `served` is true.
  final String name;

  /// Schema describes the schema used for validation, pruning, and defaulting of this version of the custom resource.
  final CustomResourceValidation? schema;

  /// Served is a flag enabling/disabling this version from being served via REST APIs.
  final bool served;

  /// Storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true.
  final bool storage;

  /// Subresources specify what subresources this version of the defined custom resource have.
  final CustomResourceSubresources? subresources;
}
