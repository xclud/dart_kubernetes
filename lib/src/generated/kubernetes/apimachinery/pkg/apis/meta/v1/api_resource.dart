
/// APIResource specifies the name of a resource and whether it is namespaced.
class APIResource {
  /// The main constructor.
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

  /// Creates a APIResource from JSON data.
  APIResource.fromJson(Map<String, dynamic> json)
      : this(
          categories: json['categories'] != null ? List<String>.from(json['categories']) : null,
          group: json['group'],
          kind: json['kind'],
          name: json['name'],
          namespaced: json['namespaced'],
          shortNames: json['shortNames'] != null ? List<String>.from(json['shortNames']) : null,
          singularName: json['singularName'],
          storageVersionHash: json['storageVersionHash'],
          verbs: json['verbs'] != null ? List<String>.from(json['verbs']) : [],
          version: json['version'],
        );

  /// Creates a list of APIResource from JSON data.
  static List<APIResource> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => APIResource.fromJson(e)).toList();
  }

  /// Converts a APIResource instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(categories != null) { jsonData['categories'] = categories!; }
    if(group != null) { jsonData['group'] = group!; }
    jsonData['kind'] = kind;
    jsonData['name'] = name;
    jsonData['namespaced'] = namespaced;
    if(shortNames != null) { jsonData['shortNames'] = shortNames!; }
    jsonData['singularName'] = singularName;
    if(storageVersionHash != null) { jsonData['storageVersionHash'] = storageVersionHash!; }
    jsonData['verbs'] = verbs;
    if(version != null) { jsonData['version'] = version!; }
    

    return jsonData;
  }


  /// Categories is a list of the grouped resources this resource belongs to (e.g. 'all').
  final List<String>? categories;

  /// Group is the preferred group of the resource.  Empty implies the group of the containing resource list. For subresources, this may have a different value, for example: Scale".
  final String? group;

  /// Kind is the kind for the resource (e.g. 'Foo' is the kind for a resource 'foo').
  final String kind;

  /// Name is the plural name of the resource.
  final String name;

  /// Namespaced indicates if a resource is namespaced or not.
  final bool namespaced;

  /// ShortNames is a list of suggested short names of the resource.
  final List<String>? shortNames;

  /// SingularName is the singular name of the resource.  This allows clients to handle plural and singular opaquely. The singularName is more correct for reporting status on a single item and both singular and plural are allowed from the kubectl CLI interface.
  final String singularName;

  /// The hash value of the storage version, the version this resource is converted to when written to the data store. Value must be treated as opaque by clients. Only equality comparison on the value is valid. This is an alpha feature and may change or be removed in the future. The field is populated by the apiserver only if the StorageVersionHash feature gate is enabled. This field will remain optional even if it graduates.
  final String? storageVersionHash;

  /// Verbs is a list of supported kube verbs (this includes get, list, watch, create, update, patch, delete, deletecollection, and proxy).
  final List<String> verbs;

  /// Version is the preferred version of the resource.  Empty implies the version of the containing resource list For subresources, this may have a different value, for example: v1 (while inside a v1beta1 version of the core resource's group)".
  final String? version;
}
