// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// Adds and removes POSIX capabilities from running containers.
class Capabilities {
  /// Default constructor.
  const Capabilities({
    this.add,
    this.drop,
  });

  /// Creates a [Capabilities] from JSON data.
  factory Capabilities.fromJson(Map<String, dynamic> json) {
    final tempAddJson = json['add'];
    final tempDropJson = json['drop'];

    final List<String>? tempAdd =
        tempAddJson != null ? List<String>.from(tempAddJson) : null;
    final List<String>? tempDrop =
        tempDropJson != null ? List<String>.from(tempDropJson) : null;

    return Capabilities(
      add: tempAdd,
      drop: tempDrop,
    );
  }

  /// Added capabilities.
  final List<String>? add;

  /// Removed capabilities.
  final List<String>? drop;

  /// Converts a [Capabilities] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAdd = add;
    final tempDrop = drop;

    if (tempAdd != null) {
      jsonData['add'] = tempAdd;
    }

    if (tempDrop != null) {
      jsonData['drop'] = tempDrop;
    }

    return jsonData;
  }
}
