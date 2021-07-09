import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/micro_time.dart';

/// EventSeries contain information on series of events, i.e. thing that was/is happening continuously for some time.
class EventSeries {
  /// The main constructor.
  const EventSeries({
    required this.count,
    required this.lastObservedTime,
  });

  /// Creates a EventSeries from JSON data.
  EventSeries.fromJson(Map<String, dynamic> json)
      : this(
          count: json['count'],
          lastObservedTime: MicroTime.fromJson(json['lastObservedTime']),
        );

  /// Creates a list of EventSeries from JSON data.
  static List<EventSeries> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => EventSeries.fromJson(e)).toList();
  }

  /// Converts a EventSeries instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['count'] = count;
    jsonData['lastObservedTime'] = lastObservedTime.toJson();

    return jsonData;
  }

  /// Count is the number of occurrences in this series up to the last heartbeat time.
  final int count;

  /// LastObservedTime is the time when last Event from the series was seen before last heartbeat.
  final MicroTime lastObservedTime;
}
