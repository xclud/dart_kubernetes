/// CustomResourceDefinitionNames indicates the names to serve this CustomResourceDefinition
class CustomResourceDefinitionNames {
  /// The main constructor.
  const CustomResourceDefinitionNames({
    this.categories,
    required this.kind,
    this.listKind,
    required this.plural,
    this.shortNames,
    this.singular,
  });

  /// Creates a CustomResourceDefinitionNames from JSON data.
  CustomResourceDefinitionNames.fromJson(Map<String, dynamic> json)
      : this(
          categories: json['categories'] != null
              ? List<String>.from(json['categories'])
              : null,
          kind: json['kind'],
          listKind: json['listKind'],
          plural: json['plural'],
          shortNames: json['shortNames'] != null
              ? List<String>.from(json['shortNames'])
              : null,
          singular: json['singular'],
        );

  /// Creates a list of CustomResourceDefinitionNames from JSON data.
  static List<CustomResourceDefinitionNames> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => CustomResourceDefinitionNames.fromJson(e)).toList();
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
}