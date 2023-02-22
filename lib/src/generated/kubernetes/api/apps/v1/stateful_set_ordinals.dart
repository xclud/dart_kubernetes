
/// StatefulSetOrdinals describes the policy used for replica ordinal assignment in this StatefulSet.
class StatefulSetOrdinals {
  /// The main constructor.
  const StatefulSetOrdinals({
    this.start,
  });

  /// Creates a StatefulSetOrdinals from JSON data.
  StatefulSetOrdinals.fromJson(Map<String, dynamic> json)
      : this(
          start: json['start'],
        );

  /// Creates a list of StatefulSetOrdinals from JSON data.
  static List<StatefulSetOrdinals> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => StatefulSetOrdinals.fromJson(e)).toList();
  }

  /// Converts a StatefulSetOrdinals instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(start != null) { jsonData['start'] = start!; }
    

    return jsonData;
  }


  /// Start is the number representing the first replica's index. It may be used to number replicas from an alternate index (eg: 1-indexed) over the default 0-indexed names, or to orchestrate progressive movement of replicas from one StatefulSet to another. If set, replica indices will be in the range:
///   [.spec.ordinals.start, .spec.ordinals.start + .spec.replicas).
/// If unset, defaults to 0. Replica indices will be in the range:
///   [0, .spec.replicas).
  final int? start;
}
