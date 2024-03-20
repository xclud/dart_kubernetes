// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// NamespaceStatus is information about the current status of a Namespace.
class NamespaceStatus {
  /// Default constructor.
  const NamespaceStatus({
    this.conditions,
    this.phase,
  });

  /// Creates a [NamespaceStatus] from JSON data.
  factory NamespaceStatus.fromJson(Map<String, dynamic> json) {
    final tempConditionsJson = json['conditions'];
    final tempPhaseJson = json['phase'];

    final List<NamespaceCondition>? tempConditions = tempConditionsJson != null
        ? List<dynamic>.from(tempConditionsJson)
            .map(
              (e) => NamespaceCondition.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final String? tempPhase = tempPhaseJson;

    return NamespaceStatus(
      conditions: tempConditions,
      phase: tempPhase,
    );
  }

  /// Represents the latest available observations of a namespace's current state.
  final List<NamespaceCondition>? conditions;

  /// Phase is the current lifecycle phase of the namespace. More info: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/.
  final String? phase;

  /// Converts a [NamespaceStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempConditions = conditions;
    final tempPhase = phase;

    if (tempConditions != null) {
      jsonData['conditions'] =
          tempConditions.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempPhase != null) {
      jsonData['phase'] = tempPhase;
    }

    return jsonData;
  }
}
