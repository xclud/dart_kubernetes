// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.apiextensions__apiserver.pkg.apis.apiextensions.v1;

/// CustomResourceDefinitionVersion describes a version for CRD.
class CustomResourceDefinitionVersion {
  /// Default constructor.
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

  /// Creates a [CustomResourceDefinitionVersion] from JSON data.
  factory CustomResourceDefinitionVersion.fromJson(Map<String, dynamic> json) {
    final tempAdditionalPrinterColumnsJson = json['additionalPrinterColumns'];
    final tempDeprecatedJson = json['deprecated'];
    final tempDeprecationWarningJson = json['deprecationWarning'];
    final tempNameJson = json['name'];
    final tempSchemaJson = json['schema'];
    final tempServedJson = json['served'];
    final tempStorageJson = json['storage'];
    final tempSubresourcesJson = json['subresources'];

    final List<CustomResourceColumnDefinition>? tempAdditionalPrinterColumns =
        tempAdditionalPrinterColumnsJson != null
            ? List<dynamic>.from(tempAdditionalPrinterColumnsJson)
                .map(
                  (e) => CustomResourceColumnDefinition.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final bool? tempDeprecated = tempDeprecatedJson;
    final String? tempDeprecationWarning = tempDeprecationWarningJson;
    final String tempName = tempNameJson;
    final CustomResourceValidation? tempSchema = tempSchemaJson != null
        ? CustomResourceValidation.fromJson(tempSchemaJson)
        : null;
    final bool tempServed = tempServedJson;
    final bool tempStorage = tempStorageJson;
    final CustomResourceSubresources? tempSubresources =
        tempSubresourcesJson != null
            ? CustomResourceSubresources.fromJson(tempSubresourcesJson)
            : null;

    return CustomResourceDefinitionVersion(
      additionalPrinterColumns: tempAdditionalPrinterColumns,
      deprecated: tempDeprecated,
      deprecationWarning: tempDeprecationWarning,
      name: tempName,
      schema: tempSchema,
      served: tempServed,
      storage: tempStorage,
      subresources: tempSubresources,
    );
  }

  /// additionalPrinterColumns specifies additional columns returned in Table output. See https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.
  final List<CustomResourceColumnDefinition>? additionalPrinterColumns;

  /// deprecated indicates this version of the custom resource API is deprecated. When set to true, API requests to this version receive a warning header in the server response. Defaults to false.
  final bool? deprecated;

  /// deprecationWarning overrides the default warning returned to API clients. May only be set when `deprecated` is true. The default warning indicates this version is deprecated and recommends use of the newest served version of equal or greater stability, if one exists.
  final String? deprecationWarning;

  /// name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at `/apis/<group>/<version>/...` if `served` is true.
  final String name;

  /// schema describes the schema used for validation, pruning, and defaulting of this version of the custom resource.
  final CustomResourceValidation? schema;

  /// served is a flag enabling/disabling this version from being served via REST APIs.
  final bool served;

  /// storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true.
  final bool storage;

  /// subresources specify what subresources this version of the defined custom resource have.
  final CustomResourceSubresources? subresources;

  /// Converts a [CustomResourceDefinitionVersion] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAdditionalPrinterColumns = additionalPrinterColumns;
    final tempDeprecated = deprecated;
    final tempDeprecationWarning = deprecationWarning;
    final tempName = name;
    final tempSchema = schema;
    final tempServed = served;
    final tempStorage = storage;
    final tempSubresources = subresources;

    if (tempAdditionalPrinterColumns != null) {
      jsonData['additionalPrinterColumns'] = tempAdditionalPrinterColumns;
    }

    if (tempDeprecated != null) {
      jsonData['deprecated'] = tempDeprecated;
    }

    if (tempDeprecationWarning != null) {
      jsonData['deprecationWarning'] = tempDeprecationWarning;
    }

    jsonData['name'] = tempName;

    if (tempSchema != null) {
      jsonData['schema'] = tempSchema.toJson();
    }

    jsonData['served'] = tempServed;

    jsonData['storage'] = tempStorage;

    if (tempSubresources != null) {
      jsonData['subresources'] = tempSubresources.toJson();
    }

    return jsonData;
  }
}
