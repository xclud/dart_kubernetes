// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// EventSource contains information for an event.
class EventSource {
  /// Default constructor.
  const EventSource({
    this.component,
    this.host,
  });

  /// Creates a [EventSource] from JSON data.
  factory EventSource.fromJson(Map<String, dynamic> json) {
    final tempComponentJson = json['component'];
    final tempHostJson = json['host'];

    final String? tempComponent = tempComponentJson;
    final String? tempHost = tempHostJson;

    return EventSource(
      component: tempComponent,
      host: tempHost,
    );
  }

  /// Component from which the event is generated.
  final String? component;

  /// Node name on which the event is generated.
  final String? host;

  /// Converts a [EventSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempComponent = component;
    final tempHost = host;

    if (tempComponent != null) {
      jsonData['component'] = tempComponent;
    }

    if (tempHost != null) {
      jsonData['host'] = tempHost;
    }

    return jsonData;
  }
}
