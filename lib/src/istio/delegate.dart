/// Describes the delegate [VirtualService].
class Delegate {
  /// The main constructor.
  const Delegate({
    this.name,
    this.namespace,
  });

  /// Creates a Delegate from JSON data.
  Delegate.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          namespace: json['namespace'],
        );

  /// Name specifies the name of the delegate [VirtualService].
  final String? name;

  /// Namespace specifies the namespace where the delegate VirtualService resides.
  /// By default, it is same to the root’s.
  final String? namespace;
}
