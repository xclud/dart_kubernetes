import 'package:kubernetes/src/generated/kubernetes/api/core/v1/node_affinity.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/pod_affinity.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/pod_anti_affinity.dart';

/// Affinity is a group of affinity scheduling rules.
class Affinity {
  /// The main constructor.
  const Affinity({
    this.nodeAffinity,
    this.podAffinity,
    this.podAntiAffinity,
  });

  /// Creates a Affinity from JSON data.
  Affinity.fromJson(Map<String, dynamic> json)
      : this(
          nodeAffinity: json['nodeAffinity'] != null
              ? NodeAffinity.fromJson(json['nodeAffinity'])
              : null,
          podAffinity: json['podAffinity'] != null
              ? PodAffinity.fromJson(json['podAffinity'])
              : null,
          podAntiAffinity: json['podAntiAffinity'] != null
              ? PodAntiAffinity.fromJson(json['podAntiAffinity'])
              : null,
        );

  /// Creates a list of Affinity from JSON data.
  static List<Affinity> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Affinity.fromJson(e)).toList();
  }

  /// Converts a Affinity instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (nodeAffinity != null) {
      jsonData['nodeAffinity'] = nodeAffinity!.toJson();
    }
    if (podAffinity != null) {
      jsonData['podAffinity'] = podAffinity!.toJson();
    }
    if (podAntiAffinity != null) {
      jsonData['podAntiAffinity'] = podAntiAffinity!.toJson();
    }

    return jsonData;
  }

  /// Describes node affinity scheduling rules for the pod.
  final NodeAffinity? nodeAffinity;

  /// Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).
  final PodAffinity? podAffinity;

  /// Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).
  final PodAntiAffinity? podAntiAffinity;
}
