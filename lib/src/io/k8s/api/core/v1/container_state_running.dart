// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// ContainerStateRunning is a running state of a container.
class ContainerStateRunning {
  /// Default constructor.
  const ContainerStateRunning({
    this.startedAt,
  });

  /// Creates a [ContainerStateRunning] from JSON data.
  factory ContainerStateRunning.fromJson(Map<String, dynamic> json) {
    final tempStartedAtJson = json['startedAt'];

    final DateTime? tempStartedAt =
        tempStartedAtJson != null ? DateTime.tryParse(tempStartedAtJson) : null;

    return ContainerStateRunning(
      startedAt: tempStartedAt,
    );
  }

  /// Time at which the container was last (re-)started.
  final DateTime? startedAt;

  /// Converts a [ContainerStateRunning] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempStartedAt = startedAt;

    if (tempStartedAt != null) {
      jsonData['startedAt'] = tempStartedAt;
    }

    return jsonData;
  }
}
