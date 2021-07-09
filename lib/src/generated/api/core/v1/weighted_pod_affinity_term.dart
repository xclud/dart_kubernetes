import 'package:kubernetes/src/generated/api/core/v1/pod_affinity_term.dart';

/// The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s).
class WeightedPodAffinityTerm {
  /// The main constructor.
  const WeightedPodAffinityTerm({
    required this.podAffinityTerm,
    required this.weight,
  });

  /// Creates a WeightedPodAffinityTerm from JSON data.
  WeightedPodAffinityTerm.fromJson(Map<String, dynamic> json)
      : this(
          podAffinityTerm: PodAffinityTerm.fromJson(json['podAffinityTerm']),
          weight: json['weight'],
        );

  /// Creates a list of WeightedPodAffinityTerm from JSON data.
  static List<WeightedPodAffinityTerm> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => WeightedPodAffinityTerm.fromJson(e)).toList();
  }

  /// Converts a WeightedPodAffinityTerm instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['podAffinityTerm'] = podAffinityTerm.toJson();
    jsonData['weight'] = weight;

    return jsonData;
  }

  /// Required. A pod affinity term, associated with the corresponding weight.
  final PodAffinityTerm podAffinityTerm;

  /// Weight associated with matching the corresponding podAffinityTerm, in the range 1-100.
  final int weight;
}
