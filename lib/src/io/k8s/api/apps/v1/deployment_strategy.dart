// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.apps.v1;

/// DeploymentStrategy describes how to replace existing pods with new ones.
class DeploymentStrategy {
  /// Default constructor.
  const DeploymentStrategy({
    this.rollingUpdate,
    this.type,
  });

  /// Creates a [DeploymentStrategy] from JSON data.
  factory DeploymentStrategy.fromJson(Map<String, dynamic> json) {
    final tempRollingUpdateJson = json['rollingUpdate'];
    final tempTypeJson = json['type'];

    final RollingUpdateDeployment? tempRollingUpdate =
        tempRollingUpdateJson != null
            ? RollingUpdateDeployment.fromJson(tempRollingUpdateJson)
            : null;
    final String? tempType = tempTypeJson;

    return DeploymentStrategy(
      rollingUpdate: tempRollingUpdate,
      type: tempType,
    );
  }

  /// Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate.
  final RollingUpdateDeployment? rollingUpdate;

  /// Type of deployment. Can be "Recreate" or "RollingUpdate". Default is RollingUpdate.
  final String? type;

  /// Converts a [DeploymentStrategy] instance to JSON data.
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
