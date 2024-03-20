// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// ContainerStateWaiting is a waiting state of a container.
class ContainerStateWaiting {
  /// Default constructor.
  const ContainerStateWaiting({
    this.message,
    this.reason,
  });

  /// Creates a [ContainerStateWaiting] from JSON data.
  factory ContainerStateWaiting.fromJson(Map<String, dynamic> json) {
    final tempMessageJson = json['message'];
    final tempReasonJson = json['reason'];

    final String? tempMessage = tempMessageJson;
    final String? tempReason = tempReasonJson;

    return ContainerStateWaiting(
      message: tempMessage,
      reason: tempReason,
    );
  }

  /// Message regarding why the container is not yet running.
  final String? message;

  /// (brief) reason the container is not yet running.
  final String? reason;

  /// Converts a [ContainerStateWaiting] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempMessage = message;
    final tempReason = reason;

    if (tempMessage != null) {
      jsonData['message'] = tempMessage;
    }

    if (tempReason != null) {
      jsonData['reason'] = tempReason;
    }

    return jsonData;
  }
}
