// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.apps.v1;

/// DaemonSetUpdateStrategy is a struct used to control the update strategy for a DaemonSet.
class DaemonSetUpdateStrategy {
  /// Default constructor.
  const DaemonSetUpdateStrategy({
    this.rollingUpdate,
    this.type,
  });

  /// Creates a [DaemonSetUpdateStrategy] from JSON data.
  factory DaemonSetUpdateStrategy.fromJson(Map<String, dynamic> json) {
    final tempRollingUpdateJson = json['rollingUpdate'];
    final tempTypeJson = json['type'];

    final tempRollingUpdate = tempRollingUpdateJson != null
        ? RollingUpdateDaemonSet.fromJson(tempRollingUpdateJson)
        : null;
    final tempType = tempTypeJson;

    return DaemonSetUpdateStrategy(
      rollingUpdate: tempRollingUpdate,
      type: tempType,
    );
  }

  /// Rolling update config params. Present only if type = "RollingUpdate".
  final RollingUpdateDaemonSet? rollingUpdate;

  /// Type of daemon set update. Can be "RollingUpdate" or "OnDelete". Default is RollingUpdate.
  final String? type;

  /// Converts a [DaemonSetUpdateStrategy] instance to JSON data.
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
