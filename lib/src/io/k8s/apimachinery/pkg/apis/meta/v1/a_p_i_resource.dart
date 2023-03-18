// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.apimachinery.pkg.apis.meta.v1;

/// APIResource specifies the name of a resource and whether it is namespaced.
class APIResource {
  /// Default constructor.
  const APIResource({
    this.categories,
    this.group,
    required this.kind,
    required this.name,
    required this.namespaced,
    this.shortNames,
    required this.singularName,
    this.storageVersionHash,
    required this.verbs,
    this.version,
  });

  /// Creates a [APIResource] from JSON data.
  factory APIResource.fromJson(Map<String, dynamic> json) {
    final tempCategoriesJson = json['categories'];
    final tempGroupJson = json['group'];
    final tempKindJson = json['kind'];
    final tempNameJson = json['name'];
    final tempNamespacedJson = json['namespaced'];
    final tempShortNamesJson = json['shortNames'];
    final tempSingularNameJson = json['singularName'];
    final tempStorageVersionHashJson = json['storageVersionHash'];
    final tempVerbsJson = json['verbs'];
    final tempVersionJson = json['version'];

    final List<String>? tempCategories = tempCategoriesJson != null
        ? List<String>.from(tempCategoriesJson)
        : null;
    final String? tempGroup = tempGroupJson;
    final String tempKind = tempKindJson;
    final String tempName = tempNameJson;
    final bool tempNamespaced = tempNamespacedJson;
    final List<String>? tempShortNames = tempShortNamesJson != null
        ? List<String>.from(tempShortNamesJson)
        : null;
    final String tempSingularName = tempSingularNameJson;
    final String? tempStorageVersionHash = tempStorageVersionHashJson;
    final List<String> tempVerbs = List<String>.from(tempVerbsJson);
    final String? tempVersion = tempVersionJson;

    return APIResource(
      categories: tempCategories,
      group: tempGroup,
      kind: tempKind,
      name: tempName,
      namespaced: tempNamespaced,
      shortNames: tempShortNames,
      singularName: tempSingularName,
      storageVersionHash: tempStorageVersionHash,
      verbs: tempVerbs,
      version: tempVersion,
    );
  }

  /// categories is a list of the grouped resources this resource belongs to (e.g. 'all').
  final List<String>? categories;

  /// group is the preferred group of the resource.  Empty implies the group of the containing resource list. For subresources, this may have a different value, for example: Scale".
  final String? group;

  /// kind is the kind for the resource (e.g. 'Foo' is the kind for a resource 'foo').
  final String kind;

  /// name is the plural name of the resource.
  final String name;

  /// namespaced indicates if a resource is namespaced or not.
  final bool namespaced;

  /// shortNames is a list of suggested short names of the resource.
  final List<String>? shortNames;

  /// singularName is the singular name of the resource.  This allows clients to handle plural and singular opaquely. The singularName is more correct for reporting status on a single item and both singular and plural are allowed from the kubectl CLI interface.
  final String singularName;

  /// The hash value of the storage version, the version this resource is converted to when written to the data store. Value must be treated as opaque by clients. Only equality comparison on the value is valid. This is an alpha feature and may change or be removed in the future. The field is populated by the apiserver only if the StorageVersionHash feature gate is enabled. This field will remain optional even if it graduates.
  final String? storageVersionHash;

  /// verbs is a list of supported kube verbs (this includes get, list, watch, create, update, patch, delete, deletecollection, and proxy).
  final List<String> verbs;

  /// version is the preferred version of the resource.  Empty implies the version of the containing resource list For subresources, this may have a different value, for example: v1 (while inside a v1beta1 version of the core resource's group)".
  final String? version;

  /// Converts a [APIResource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempCategories = categories;
    final tempGroup = group;
    final tempKind = kind;
    final tempName = name;
    final tempNamespaced = namespaced;
    final tempShortNames = shortNames;
    final tempSingularName = singularName;
    final tempStorageVersionHash = storageVersionHash;
    final tempVerbs = verbs;
    final tempVersion = version;

    if (tempCategories != null) {
      jsonData['categories'] = tempCategories;
    }

    if (tempGroup != null) {
      jsonData['group'] = tempGroup;
    }

    jsonData['kind'] = tempKind;

    jsonData['name'] = tempName;

    jsonData['namespaced'] = tempNamespaced;

    if (tempShortNames != null) {
      jsonData['shortNames'] = tempShortNames;
    }

    jsonData['singularName'] = tempSingularName;

    if (tempStorageVersionHash != null) {
      jsonData['storageVersionHash'] = tempStorageVersionHash;
    }

    jsonData['verbs'] = tempVerbs;

    if (tempVersion != null) {
      jsonData['version'] = tempVersion;
    }

    return jsonData;
  }
}
