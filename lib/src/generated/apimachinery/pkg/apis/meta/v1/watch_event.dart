import 'package:kubernetes/src/generated/apimachinery/pkg/runtime/raw_extension.dart';

/// Event represents a single event to a watched resource.
class WatchEvent {
  /// The main constructor.
  const WatchEvent({
    required this.object,
    required this.type,
  });

  /// Creates a WatchEvent from JSON data.
  WatchEvent.fromJson(Map<String, dynamic> json)
      : this(
          object: RawExtension.fromJson(json['object']),
          type: json['type'],
        );

  /// Creates a list of WatchEvent from JSON data.
  static List<WatchEvent> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => WatchEvent.fromJson(e)).toList();
  }

  /// Converts a WatchEvent instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['object'] = object.toJson();
    jsonData['type'] = type;

    return jsonData;
  }

  /// Object is:
  ///  * If Type is Added or Modified: the new state of the object.
  ///  * If Type is Deleted: the state of the object immediately before deletion.
  ///  * If Type is Error: *Status is recommended; other types may make sense
  ///    depending on context.
  final RawExtension object;

  ///
  final String type;
}
