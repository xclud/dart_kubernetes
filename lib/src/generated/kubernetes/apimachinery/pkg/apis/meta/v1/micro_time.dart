/// MicroTime is version of Time with microsecond level precision.
class MicroTime {
  /// The main constructor.
  const MicroTime();

  /// Creates a MicroTime from JSON data.
  MicroTime.fromJson(Map<String, dynamic> json) : this();

  /// Creates a list of MicroTime from JSON data.
  static List<MicroTime> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => MicroTime.fromJson(e)).toList();
  }

  /// Converts a MicroTime instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    return jsonData;
  }
}
