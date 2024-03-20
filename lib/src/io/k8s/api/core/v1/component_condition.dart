// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// Information about the condition of a component.
class ComponentCondition {
  /// Default constructor.
  const ComponentCondition({
    this.error,
    this.message,
    required this.status,
    required this.type,
  });

  /// Creates a [ComponentCondition] from JSON data.
  factory ComponentCondition.fromJson(Map<String, dynamic> json) {
    final tempErrorJson = json['error'];
    final tempMessageJson = json['message'];
    final tempStatusJson = json['status'];
    final tempTypeJson = json['type'];

    final String? tempError = tempErrorJson;
    final String? tempMessage = tempMessageJson;
    final String tempStatus = tempStatusJson;
    final String tempType = tempTypeJson;

    return ComponentCondition(
      error: tempError,
      message: tempMessage,
      status: tempStatus,
      type: tempType,
    );
  }

  /// Condition error code for a component. For example, a health check error code.
  final String? error;

  /// Message about the condition for a component. For example, information about a health check.
  final String? message;

  /// Status of the condition for a component. Valid values for "Healthy": "True", "False", or "Unknown".
  final String status;

  /// Type of condition for a component. Valid value: "Healthy".
  final String type;

  /// Converts a [ComponentCondition] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempError = error;
    final tempMessage = message;
    final tempStatus = status;
    final tempType = type;

    if (tempError != null) {
      jsonData['error'] = tempError;
    }

    if (tempMessage != null) {
      jsonData['message'] = tempMessage;
    }

    jsonData['status'] = tempStatus;

    jsonData['type'] = tempType;

    return jsonData;
  }
}
