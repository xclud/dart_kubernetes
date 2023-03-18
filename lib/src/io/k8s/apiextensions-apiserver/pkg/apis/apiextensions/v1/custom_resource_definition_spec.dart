// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.apiextensions__apiserver.pkg.apis.apiextensions.v1;

/// CustomResourceDefinitionSpec describes how a user wants their resource to appear.
class CustomResourceDefinitionSpec {
  /// Default constructor.
  const CustomResourceDefinitionSpec({
    this.conversion,
    required this.group,
    required this.names,
    this.preserveUnknownFields,
    required this.scope,
    required this.versions,
  });

  /// Creates a [CustomResourceDefinitionSpec] from JSON data.
  factory CustomResourceDefinitionSpec.fromJson(Map<String, dynamic> json) {
    final tempConversionJson = json['conversion'];
    final tempGroupJson = json['group'];
    final tempNamesJson = json['names'];
    final tempPreserveUnknownFieldsJson = json['preserveUnknownFields'];
    final tempScopeJson = json['scope'];
    final tempVersionsJson = json['versions'];

    final CustomResourceConversion? tempConversion = tempConversionJson != null
        ? CustomResourceConversion.fromJson(tempConversionJson)
        : null;
    final String tempGroup = tempGroupJson;
    final CustomResourceDefinitionNames tempNames =
        CustomResourceDefinitionNames.fromJson(tempNamesJson);
    final bool? tempPreserveUnknownFields = tempPreserveUnknownFieldsJson;
    final String tempScope = tempScopeJson;

    final List<CustomResourceDefinitionVersion> tempVersions =
        List<dynamic>.from(tempVersionsJson)
            .map((e) => CustomResourceDefinitionVersion.fromJson(
                Map<String, dynamic>.from(e)))
            .toList();

    return CustomResourceDefinitionSpec(
      conversion: tempConversion,
      group: tempGroup,
      names: tempNames,
      preserveUnknownFields: tempPreserveUnknownFields,
      scope: tempScope,
      versions: tempVersions,
    );
  }

  /// conversion defines conversion settings for the CRD.
  final CustomResourceConversion? conversion;

  /// group is the API group of the defined custom resource. The custom resources are served under `/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).
  final String group;

  /// names specify the resource and kind names for the custom resource.
  final CustomResourceDefinitionNames names;

  /// preserveUnknownFields indicates that object fields which are not specified in the OpenAPI schema should be preserved when persisting to storage. apiVersion, kind, metadata and known fields inside metadata are always preserved. This field is deprecated in favor of setting `x-preserve-unknown-fields` to true in `spec.versions[*].schema.openAPIV3Schema`. See https://kubernetes.io/docs/tasks/extend-kubernetes/custom-resources/custom-resource-definitions/#field-pruning for details.
  final bool? preserveUnknownFields;

  /// scope indicates whether the defined custom resource is cluster- or namespace-scoped. Allowed values are `Cluster` and `Namespaced`.
  final String scope;

  /// versions is the list of all API versions of the defined custom resource. Version names are used to compute the order in which served versions are listed in API discovery. If the version string is "kube-like", it will sort above non "kube-like" version strings, which are ordered lexicographically. "Kube-like" versions start with a "v", then are followed by a number (the major version), then optionally the string "alpha" or "beta" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
  final List<CustomResourceDefinitionVersion> versions;

  /// Converts a [CustomResourceDefinitionSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempConversion = conversion;
    final tempGroup = group;
    final tempNames = names;
    final tempPreserveUnknownFields = preserveUnknownFields;
    final tempScope = scope;
    final tempVersions = versions;

    if (tempConversion != null) {
      jsonData['conversion'] = tempConversion.toJson();
    }

    jsonData['group'] = tempGroup;

    jsonData['names'] = tempNames.toJson();

    if (tempPreserveUnknownFields != null) {
      jsonData['preserveUnknownFields'] = tempPreserveUnknownFields;
    }

    jsonData['scope'] = tempScope;

    jsonData['versions'] = tempVersions;

    return jsonData;
  }
}
