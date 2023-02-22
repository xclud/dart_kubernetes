import 'package:kubernetes/src/generated/kubernetes/api/core/v1/node_selector_term.dart';

/// An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).
class PreferredSchedulingTerm {
  /// The main constructor.
  const PreferredSchedulingTerm({
    required this.preference,
    required this.weight,
  });

  /// Creates a PreferredSchedulingTerm from JSON data.
  PreferredSchedulingTerm.fromJson(Map<String, dynamic> json)
      : this(
          preference: NodeSelectorTerm.fromJson(json['preference']),
          weight: json['weight'],
        );

  /// Creates a list of PreferredSchedulingTerm from JSON data.
  static List<PreferredSchedulingTerm> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PreferredSchedulingTerm.fromJson(e)).toList();
  }

  /// Converts a PreferredSchedulingTerm instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['preference'] = preference.toJson();
    jsonData['weight'] = weight;

    return jsonData;
  }

  /// A node selector term, associated with the corresponding weight.
  final NodeSelectorTerm preference;

  /// Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.
  final int weight;
}
