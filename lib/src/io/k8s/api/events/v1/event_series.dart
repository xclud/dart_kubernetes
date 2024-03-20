// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../events_v1.dart';

/// EventSeries contain information on series of events, i.e. thing that was/is happening continuously for some time. How often to update the EventSeries is up to the event reporters. The default event reporter in "k8s.io/client-go/tools/events/event_broadcaster.go" shows how this struct is updated on heartbeats and can guide customized reporter implementations.
class EventSeries {
  /// Default constructor.
  const EventSeries({
    required this.count,
    required this.lastObservedTime,
  });

  /// Creates a [EventSeries] from JSON data.
  factory EventSeries.fromJson(Map<String, dynamic> json) {
    final tempCountJson = json['count'];
    final tempLastObservedTimeJson = json['lastObservedTime'];

    final int tempCount = tempCountJson;
    final String tempLastObservedTime = tempLastObservedTimeJson;

    return EventSeries(
      count: tempCount,
      lastObservedTime: tempLastObservedTime,
    );
  }

  /// count is the number of occurrences in this series up to the last heartbeat time.
  final int count;

  /// lastObservedTime is the time when last Event from the series was seen before last heartbeat.
  final String lastObservedTime;

  /// Converts a [EventSeries] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempCount = count;
    final tempLastObservedTime = lastObservedTime;

    jsonData['count'] = tempCount;

    jsonData['lastObservedTime'] = tempLastObservedTime;

    return jsonData;
  }
}
