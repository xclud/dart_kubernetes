// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.node.v1;

/// Overhead structure represents the resource overhead associated with running a pod.
class Overhead {
  /// Default constructor.
  const Overhead({
    this.podFixed = const {},
  });

  /// Creates a [Overhead] from JSON data.
  factory Overhead.fromJson(Map<String, dynamic> json) {
    final tempPodFixedJson = json['podFixed'];

    final Map<String, Object> tempPodFixed = tempPodFixedJson;

    return Overhead(
      podFixed: tempPodFixed,
    );
  }

  /// podFixed represents the fixed resource overhead associated with running a pod.
  final Map<String, Object> podFixed;

  /// Converts a [Overhead] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempPodFixed = podFixed;

    jsonData['podFixed'] = tempPodFixed;

    return jsonData;
  }
}
