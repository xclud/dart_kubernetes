// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.apps.v1;

/// StatefulSetOrdinals describes the policy used for replica ordinal assignment in this StatefulSet.
class StatefulSetOrdinals {
  /// Default constructor.
  const StatefulSetOrdinals({
    this.start,
  });

  /// Creates a [StatefulSetOrdinals] from JSON data.
  factory StatefulSetOrdinals.fromJson(Map<String, dynamic> json) {
    final tempStartJson = json['start'];

    final int? tempStart = tempStartJson;

    return StatefulSetOrdinals(
      start: tempStart,
    );
  }

  /// start is the number representing the first replica's index. It may be used to number replicas from an alternate index (eg: 1-indexed) over the default 0-indexed names, or to orchestrate progressive movement of replicas from one StatefulSet to another. If set, replica indices will be in the range:
  ///   [.spec.ordinals.start, .spec.ordinals.start + .spec.replicas).
  /// If unset, defaults to 0. Replica indices will be in the range:
  ///   [0, .spec.replicas).
  final int? start;

  /// Converts a [StatefulSetOrdinals] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempStart = start;

    if (tempStart != null) {
      jsonData['start'] = tempStart;
    }

    return jsonData;
  }
}
