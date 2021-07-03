/// BoundObjectReference is a reference to an object that a token is bound to.
class BoundObjectReference {
  /// The main constructor.
  const BoundObjectReference({
    this.apiVersion,
    this.kind,
    this.name,
    this.uid,
  });

  /// Creates a BoundObjectReference from JSON data.
  BoundObjectReference.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          name: json['name'],
          uid: json['uid'],
        );

  /// Creates a list of BoundObjectReference from JSON data.
  static List<BoundObjectReference> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => BoundObjectReference.fromJson(e)).toList();
  }

  /// API version of the referent.
  final String? apiVersion;

  /// Kind of the referent. Valid kinds are 'Pod' and 'Secret'.
  final String? kind;

  /// Name of the referent.
  final String? name;

  /// UID of the referent.
  final String? uid;
}
