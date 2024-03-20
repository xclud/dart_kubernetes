// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).
class PreferredSchedulingTerm {
  /// Default constructor.
  const PreferredSchedulingTerm({
    required this.preference,
    required this.weight,
  });

  /// Creates a [PreferredSchedulingTerm] from JSON data.
  factory PreferredSchedulingTerm.fromJson(Map<String, dynamic> json) {
    final tempPreferenceJson = json['preference'];
    final tempWeightJson = json['weight'];

    final NodeSelectorTerm tempPreference =
        NodeSelectorTerm.fromJson(tempPreferenceJson);
    final int tempWeight = tempWeightJson;

    return PreferredSchedulingTerm(
      preference: tempPreference,
      weight: tempWeight,
    );
  }

  /// A node selector term, associated with the corresponding weight.
  final NodeSelectorTerm preference;

  /// Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.
  final int weight;

  /// Converts a [PreferredSchedulingTerm] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempPreference = preference;
    final tempWeight = weight;

    jsonData['preference'] = tempPreference.toJson();

    jsonData['weight'] = tempWeight;

    return jsonData;
  }
}
