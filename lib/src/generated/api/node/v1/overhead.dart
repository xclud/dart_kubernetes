/// Overhead structure represents the resource overhead associated with running a pod.
class Overhead {
  /// The main constructor.
  const Overhead({
    this.podFixed,
  });

  /// Creates a Overhead from JSON data.
  Overhead.fromJson(Map<String, dynamic> json)
      : this(
          podFixed: json['podFixed'] != null
              ? Map<String, String>.from(json['podFixed'])
              : null,
        );

  /// Creates a list of Overhead from JSON data.
  static List<Overhead> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Overhead.fromJson(e)).toList();
  }

  /// PodFixed represents the fixed resource overhead associated with running a pod.
  final Map<String, String>? podFixed;
}
