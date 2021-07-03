/// NamespaceSpec describes the attributes on a Namespace.
class NamespaceSpec {
  /// The main constructor.
  const NamespaceSpec({
    this.finalizers,
  });

  /// Creates a NamespaceSpec from JSON data.
  NamespaceSpec.fromJson(Map<String, dynamic> json)
      : this(
          finalizers: json['finalizers'] != null
              ? List<String>.from(json['finalizers'])
              : null,
        );

  /// Creates a list of NamespaceSpec from JSON data.
  static List<NamespaceSpec> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NamespaceSpec.fromJson(e)).toList();
  }

  /// Finalizers is an opaque list of values that must be empty to permanently remove object from storage. More info: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/
  final List<String>? finalizers;
}
