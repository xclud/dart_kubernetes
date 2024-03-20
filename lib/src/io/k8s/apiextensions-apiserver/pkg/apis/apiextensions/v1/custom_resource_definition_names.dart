// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../../../io_k8s_apiextensions__apiserver_pkg_apis_apiextensions_v1.dart';

/// CustomResourceDefinitionNames indicates the names to serve this CustomResourceDefinition.
class CustomResourceDefinitionNames {
  /// Default constructor.
  const CustomResourceDefinitionNames({
    this.categories,
    required this.kind,
    this.listKind,
    required this.plural,
    this.shortNames,
    this.singular,
  });

  /// Creates a [CustomResourceDefinitionNames] from JSON data.
  factory CustomResourceDefinitionNames.fromJson(Map<String, dynamic> json) {
    final tempCategoriesJson = json['categories'];
    final tempKindJson = json['kind'];
    final tempListKindJson = json['listKind'];
    final tempPluralJson = json['plural'];
    final tempShortNamesJson = json['shortNames'];
    final tempSingularJson = json['singular'];

    final List<String>? tempCategories = tempCategoriesJson != null
        ? List<String>.from(tempCategoriesJson)
        : null;
    final String tempKind = tempKindJson;
    final String? tempListKind = tempListKindJson;
    final String tempPlural = tempPluralJson;
    final List<String>? tempShortNames = tempShortNamesJson != null
        ? List<String>.from(tempShortNamesJson)
        : null;
    final String? tempSingular = tempSingularJson;

    return CustomResourceDefinitionNames(
      categories: tempCategories,
      kind: tempKind,
      listKind: tempListKind,
      plural: tempPlural,
      shortNames: tempShortNames,
      singular: tempSingular,
    );
  }

  /// categories is a list of grouped resources this custom resource belongs to (e.g. 'all'). This is published in API discovery documents, and used by clients to support invocations like `kubectl get all`.
  final List<String>? categories;

  /// kind is the serialized kind of the resource. It is normally CamelCase and singular. Custom resource instances will use this value as the `kind` attribute in API calls.
  final String kind;

  /// listKind is the serialized kind of the list for this resource. Defaults to "`kind`List".
  final String? listKind;

  /// plural is the plural name of the resource to serve. The custom resources are served under `/apis/<group>/<version>/.../<plural>`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`). Must be all lowercase.
  final String plural;

  /// shortNames are short names for the resource, exposed in API discovery documents, and used by clients to support invocations like `kubectl get <shortname>`. It must be all lowercase.
  final List<String>? shortNames;

  /// singular is the singular name of the resource. It must be all lowercase. Defaults to lowercased `kind`.
  final String? singular;

  /// Converts a [CustomResourceDefinitionNames] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempCategories = categories;
    final tempKind = kind;
    final tempListKind = listKind;
    final tempPlural = plural;
    final tempShortNames = shortNames;
    final tempSingular = singular;

    if (tempCategories != null) {
      jsonData['categories'] = tempCategories;
    }

    jsonData['kind'] = tempKind;

    if (tempListKind != null) {
      jsonData['listKind'] = tempListKind;
    }

    jsonData['plural'] = tempPlural;

    if (tempShortNames != null) {
      jsonData['shortNames'] = tempShortNames;
    }

    if (tempSingular != null) {
      jsonData['singular'] = tempSingular;
    }

    return jsonData;
  }
}
