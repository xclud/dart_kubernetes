// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../flowcontrol_v1beta3.dart';

/// UserSubject holds detailed information for user-kind subject.
class UserSubject {
  /// Default constructor.
  const UserSubject({
    required this.name,
  });

  /// Creates a [UserSubject] from JSON data.
  factory UserSubject.fromJson(Map<String, dynamic> json) {
    final tempNameJson = json['name'];

    final String tempName = tempNameJson;

    return UserSubject(
      name: tempName,
    );
  }

  /// `name` is the username that matches, or "*" to match all usernames. Required.
  final String name;

  /// Converts a [UserSubject] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempName = name;

    jsonData['name'] = tempName;

    return jsonData;
  }
}
