// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../batch_v1.dart';

/// UncountedTerminatedPods holds UIDs of Pods that have terminated but haven't been accounted in Job status counters.
class UncountedTerminatedPods {
  /// Default constructor.
  const UncountedTerminatedPods({
    this.failed,
    this.succeeded,
  });

  /// Creates a [UncountedTerminatedPods] from JSON data.
  factory UncountedTerminatedPods.fromJson(Map<String, dynamic> json) {
    final tempFailedJson = json['failed'];
    final tempSucceededJson = json['succeeded'];

    final List<String>? tempFailed =
        tempFailedJson != null ? List<String>.from(tempFailedJson) : null;
    final List<String>? tempSucceeded =
        tempSucceededJson != null ? List<String>.from(tempSucceededJson) : null;

    return UncountedTerminatedPods(
      failed: tempFailed,
      succeeded: tempSucceeded,
    );
  }

  /// failed holds UIDs of failed Pods.
  final List<String>? failed;

  /// succeeded holds UIDs of succeeded Pods.
  final List<String>? succeeded;

  /// Converts a [UncountedTerminatedPods] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempFailed = failed;
    final tempSucceeded = succeeded;

    if (tempFailed != null) {
      jsonData['failed'] = tempFailed;
    }

    if (tempSucceeded != null) {
      jsonData['succeeded'] = tempSucceeded;
    }

    return jsonData;
  }
}
