// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.storage.v1;

/// VolumeError captures an error encountered during a volume operation.
class VolumeError {
  /// Default constructor.
  const VolumeError({
    this.message,
    this.time,
  });

  /// Creates a [VolumeError] from JSON data.
  factory VolumeError.fromJson(Map<String, dynamic> json) {
    final tempMessageJson = json['message'];
    final tempTimeJson = json['time'];

    final tempMessage = tempMessageJson;
    final tempTime =
        tempTimeJson != null ? DateTime.tryParse(tempTimeJson) : null;

    return VolumeError(
      message: tempMessage,
      time: tempTime,
    );
  }

  /// message represents the error encountered during Attach or Detach operation. This string may be logged, so it should not contain sensitive information.
  final String? message;

  /// time represents the time the error was encountered.
  final DateTime? time;

  /// Converts a [VolumeError] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempMessage = message;
    final tempTime = time;

    if (tempMessage != null) {
      jsonData['message'] = tempMessage;
    }

    if (tempTime != null) {
      jsonData['time'] = tempTime;
    }

    return jsonData;
  }
}
