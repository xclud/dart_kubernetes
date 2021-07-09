import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/micro_time.dart';

/// EventSeries contain information on series of events, i.e. thing that was/is happening continuously for some time.
class EventSeries {
  /// The main constructor.
  const EventSeries({
    this.count,
    this.lastObservedTime,
  });

  /// Creates a EventSeries from JSON data.
  EventSeries.fromJson(Map<String, dynamic> json)
      : this(
          count: json['count'],
          lastObservedTime: json['lastObservedTime'] != null
              ? MicroTime.fromJson(json['lastObservedTime'])
              : null,
        );

  /// Creates a list of EventSeries from JSON data.
  static List<EventSeries> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => EventSeries.fromJson(e)).toList();
  }

  /// Number of occurrences in this series up to the last heartbeat time.
  final int? count;

  /// Time of the last occurrence observed.
  final MicroTime? lastObservedTime;
}
