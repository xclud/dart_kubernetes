// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// EventSeries contain information on series of events, i.e. thing that was/is happening continuously for some time.
class EventSeries {
  /// Default constructor.
  const EventSeries({
    this.count,
    this.lastObservedTime,
  });

  /// Creates a [EventSeries] from JSON data.
  factory EventSeries.fromJson(Map<String, dynamic> json) {
    final tempCountJson = json['count'];
    final tempLastObservedTimeJson = json['lastObservedTime'];

    final tempCount = tempCountJson;
    final tempLastObservedTime = tempLastObservedTimeJson;

    return EventSeries(
      count: tempCount,
      lastObservedTime: tempLastObservedTime,
    );
  }

  /// Number of occurrences in this series up to the last heartbeat time.
  final int? count;

  /// Time of the last occurrence observed.
  final String? lastObservedTime;

  /// Converts a [EventSeries] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempCount = count;
    final tempLastObservedTime = lastObservedTime;

    if (tempCount != null) {
      jsonData['count'] = tempCount;
    }

    if (tempLastObservedTime != null) {
      jsonData['lastObservedTime'] = tempLastObservedTime;
    }

    return jsonData;
  }
}
