// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../apps_v1.dart';

/// StatefulSetUpdateStrategy indicates the strategy that the StatefulSet controller will use to perform updates. It includes any additional parameters necessary to perform the update for the indicated strategy.
class StatefulSetUpdateStrategy {
  /// Default constructor.
  const StatefulSetUpdateStrategy({
    this.rollingUpdate,
    this.type,
  });

  /// Creates a [StatefulSetUpdateStrategy] from JSON data.
  factory StatefulSetUpdateStrategy.fromJson(Map<String, dynamic> json) {
    final tempRollingUpdateJson = json['rollingUpdate'];
    final tempTypeJson = json['type'];

    final RollingUpdateStatefulSetStrategy? tempRollingUpdate =
        tempRollingUpdateJson != null
            ? RollingUpdateStatefulSetStrategy.fromJson(tempRollingUpdateJson)
            : null;
    final String? tempType = tempTypeJson;

    return StatefulSetUpdateStrategy(
      rollingUpdate: tempRollingUpdate,
      type: tempType,
    );
  }

  /// RollingUpdate is used to communicate parameters when Type is RollingUpdateStatefulSetStrategyType.
  final RollingUpdateStatefulSetStrategy? rollingUpdate;

  /// Type indicates the type of the StatefulSetUpdateStrategy. Default is RollingUpdate.
  final String? type;

  /// Converts a [StatefulSetUpdateStrategy] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempRollingUpdate = rollingUpdate;
    final tempType = type;

    if (tempRollingUpdate != null) {
      jsonData['rollingUpdate'] = tempRollingUpdate.toJson();
    }

    if (tempType != null) {
      jsonData['type'] = tempType;
    }

    return jsonData;
  }
}
