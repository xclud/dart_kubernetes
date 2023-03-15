// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.batch.v1;

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

    final tempFailed = tempFailedJson;
    final tempSucceeded = tempSucceededJson;

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
