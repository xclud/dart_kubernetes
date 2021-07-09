/// Preconditions must be fulfilled before an operation (update, delete, etc.) is carried out.
class Preconditions {
  /// The main constructor.
  const Preconditions({
    this.resourceVersion,
    this.uid,
  });

  /// Creates a Preconditions from JSON data.
  Preconditions.fromJson(Map<String, dynamic> json)
      : this(
          resourceVersion: json['resourceVersion'],
          uid: json['uid'],
        );

  /// Creates a list of Preconditions from JSON data.
  static List<Preconditions> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Preconditions.fromJson(e)).toList();
  }

  /// Converts a Preconditions instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (resourceVersion != null) {
      jsonData['resourceVersion'] = resourceVersion!;
    }
    if (uid != null) {
      jsonData['uid'] = uid!;
    }

    return jsonData;
  }

  /// Specifies the target ResourceVersion.
  final String? resourceVersion;

  /// Specifies the target UID.
  final String? uid;
}
