/// CrossVersionObjectReference contains enough information to let you identify the referred resource.
class CrossVersionObjectReference {
  /// The main constructor.
  const CrossVersionObjectReference({
    this.apiVersion,
    required this.kind,
    required this.name,
  });

  /// Creates a CrossVersionObjectReference from JSON data.
  CrossVersionObjectReference.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          name: json['name'],
        );

  /// Creates a list of CrossVersionObjectReference from JSON data.
  static List<CrossVersionObjectReference> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => CrossVersionObjectReference.fromJson(e)).toList();
  }

  /// API version of the referent.
  final String? apiVersion;

  /// Kind of the referent; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds".
  final String kind;

  /// Name of the referent; More info: http://kubernetes.io/docs/user-guide/identifiers#names.
  final String name;
}
