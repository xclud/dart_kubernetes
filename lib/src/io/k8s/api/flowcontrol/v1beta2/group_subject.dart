// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../flowcontrol_v1beta2.dart';

/// GroupSubject holds detailed information for group-kind subject.
class GroupSubject {
  /// Default constructor.
  const GroupSubject({
    required this.name,
  });

  /// Creates a [GroupSubject] from JSON data.
  factory GroupSubject.fromJson(Map<String, dynamic> json) {
    final tempNameJson = json['name'];

    final String tempName = tempNameJson;

    return GroupSubject(
      name: tempName,
    );
  }

  /// name is the user group that matches, or "*" to match all user groups. See https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.
  final String name;

  /// Converts a [GroupSubject] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempName = name;

    jsonData['name'] = tempName;

    return jsonData;
  }
}
