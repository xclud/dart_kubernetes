// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../../../io_k8s_apimachinery_pkg_apis_meta_v1.dart';

/// Event represents a single event to a watched resource.
class WatchEvent {
  /// Default constructor.
  const WatchEvent({
    required this.object,
    required this.type,
  });

  /// Creates a [WatchEvent] from JSON data.
  factory WatchEvent.fromJson(Map<String, dynamic> json) {
    final tempObjectJson = json['object'];
    final tempTypeJson = json['type'];

    final RawExtension tempObject = RawExtension.fromJson(tempObjectJson);
    final String tempType = tempTypeJson;

    return WatchEvent(
      object: tempObject,
      type: tempType,
    );
  }

  /// Object is:
  ///  * If Type is Added or Modified: the new state of the object.
  ///  * If Type is Deleted: the state of the object immediately before deletion.
  ///  * If Type is Error: *Status is recommended; other types may make sense
  ///    depending on context.
  final RawExtension object;

  /// Type.
  final String type;

  /// Converts a [WatchEvent] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempObject = object;
    final tempType = type;

    jsonData['object'] = tempObject.toJson();

    jsonData['type'] = tempType;

    return jsonData;
  }
}
