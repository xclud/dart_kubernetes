// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// Affinity is a group of affinity scheduling rules.
class Affinity {
  /// Default constructor.
  const Affinity({
    this.nodeAffinity,
    this.podAffinity,
    this.podAntiAffinity,
  });

  /// Creates a [Affinity] from JSON data.
  factory Affinity.fromJson(Map<String, dynamic> json) {
    final tempNodeAffinityJson = json['nodeAffinity'];
    final tempPodAffinityJson = json['podAffinity'];
    final tempPodAntiAffinityJson = json['podAntiAffinity'];

    final NodeAffinity? tempNodeAffinity = tempNodeAffinityJson != null
        ? NodeAffinity.fromJson(tempNodeAffinityJson)
        : null;
    final PodAffinity? tempPodAffinity = tempPodAffinityJson != null
        ? PodAffinity.fromJson(tempPodAffinityJson)
        : null;
    final PodAntiAffinity? tempPodAntiAffinity = tempPodAntiAffinityJson != null
        ? PodAntiAffinity.fromJson(tempPodAntiAffinityJson)
        : null;

    return Affinity(
      nodeAffinity: tempNodeAffinity,
      podAffinity: tempPodAffinity,
      podAntiAffinity: tempPodAntiAffinity,
    );
  }

  /// Describes node affinity scheduling rules for the pod.
  final NodeAffinity? nodeAffinity;

  /// Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).
  final PodAffinity? podAffinity;

  /// Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).
  final PodAntiAffinity? podAntiAffinity;

  /// Converts a [Affinity] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempNodeAffinity = nodeAffinity;
    final tempPodAffinity = podAffinity;
    final tempPodAntiAffinity = podAntiAffinity;

    if (tempNodeAffinity != null) {
      jsonData['nodeAffinity'] = tempNodeAffinity.toJson();
    }

    if (tempPodAffinity != null) {
      jsonData['podAffinity'] = tempPodAffinity.toJson();
    }

    if (tempPodAntiAffinity != null) {
      jsonData['podAntiAffinity'] = tempPodAntiAffinity.toJson();
    }

    return jsonData;
  }
}
