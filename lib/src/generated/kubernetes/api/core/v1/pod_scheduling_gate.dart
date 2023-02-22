/// PodSchedulingGate is associated to a Pod to guard its scheduling.
class PodSchedulingGate {
  /// The main constructor.
  const PodSchedulingGate({
    required this.name,
  });

  /// Creates a PodSchedulingGate from JSON data.
  PodSchedulingGate.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
        );

  /// Creates a list of PodSchedulingGate from JSON data.
  static List<PodSchedulingGate> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodSchedulingGate.fromJson(e)).toList();
  }

  /// Converts a PodSchedulingGate instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['name'] = name;

    return jsonData;
  }

  /// Name of the scheduling gate. Each scheduling gate must have a unique name field.
  final String name;
}
