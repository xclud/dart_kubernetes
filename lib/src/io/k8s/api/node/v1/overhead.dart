// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../node_v1.dart';

/// Overhead structure represents the resource overhead associated with running a pod.
class Overhead {
  /// Default constructor.
  const Overhead({
    this.podFixed,
  });

  /// Creates a [Overhead] from JSON data.
  factory Overhead.fromJson(Map<String, dynamic> json) {
    final tempPodFixedJson = json['podFixed'];

    final Map<String, String>? tempPodFixed = tempPodFixedJson != null
        ? Map<String, String>.from(tempPodFixedJson)
        : null;

    return Overhead(
      podFixed: tempPodFixed,
    );
  }

  /// podFixed represents the fixed resource overhead associated with running a pod.
  final Map<String, String>? podFixed;

  /// Converts a [Overhead] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempPodFixed = podFixed;

    if (tempPodFixed != null) {
      jsonData['podFixed'] = tempPodFixed;
    }

    return jsonData;
  }
}
