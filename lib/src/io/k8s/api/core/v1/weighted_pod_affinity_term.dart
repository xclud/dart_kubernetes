// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s).
class WeightedPodAffinityTerm {
  /// Default constructor.
  const WeightedPodAffinityTerm({
    required this.podAffinityTerm,
    required this.weight,
  });

  /// Creates a [WeightedPodAffinityTerm] from JSON data.
  factory WeightedPodAffinityTerm.fromJson(Map<String, dynamic> json) {
    final tempPodAffinityTermJson = json['podAffinityTerm'];
    final tempWeightJson = json['weight'];

    final PodAffinityTerm tempPodAffinityTerm =
        PodAffinityTerm.fromJson(tempPodAffinityTermJson);
    final int tempWeight = tempWeightJson;

    return WeightedPodAffinityTerm(
      podAffinityTerm: tempPodAffinityTerm,
      weight: tempWeight,
    );
  }

  /// Required. A pod affinity term, associated with the corresponding weight.
  final PodAffinityTerm podAffinityTerm;

  /// weight associated with matching the corresponding podAffinityTerm, in the range 1-100.
  final int weight;

  /// Converts a [WeightedPodAffinityTerm] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempPodAffinityTerm = podAffinityTerm;
    final tempWeight = weight;

    jsonData['podAffinityTerm'] = tempPodAffinityTerm.toJson();

    jsonData['weight'] = tempWeight;

    return jsonData;
  }
}
