// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../authentication_v1.dart';

/// UserInfo holds the information about the user needed to implement the user.Info interface.
class UserInfo {
  /// Default constructor.
  const UserInfo({
    this.extra,
    this.groups,
    this.uid,
    this.username,
  });

  /// Creates a [UserInfo] from JSON data.
  factory UserInfo.fromJson(Map<String, dynamic> json) {
    final tempExtraJson = json['extra'];
    final tempGroupsJson = json['groups'];
    final tempUidJson = json['uid'];
    final tempUsernameJson = json['username'];

    final Map<String, List<String>>? tempExtra = tempExtraJson != null
        ? Map<String, dynamic>.from(tempExtraJson)
            .map((key, value) => MapEntry(key, List<String>.from(value)))
        : null;

    final List<String>? tempGroups =
        tempGroupsJson != null ? List<String>.from(tempGroupsJson) : null;
    final String? tempUid = tempUidJson;
    final String? tempUsername = tempUsernameJson;

    return UserInfo(
      extra: tempExtra,
      groups: tempGroups,
      uid: tempUid,
      username: tempUsername,
    );
  }

  /// Any additional information provided by the authenticator.
  final Map<String, List<String>>? extra;

  /// The names of groups this user is a part of.
  final List<String>? groups;

  /// A unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs.
  final String? uid;

  /// The name that uniquely identifies this user among all active users.
  final String? username;

  /// Converts a [UserInfo] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempExtra = extra;
    final tempGroups = groups;
    final tempUid = uid;
    final tempUsername = username;

    if (tempExtra != null) {
      jsonData['extra'] = tempExtra;
    }

    if (tempGroups != null) {
      jsonData['groups'] = tempGroups;
    }

    if (tempUid != null) {
      jsonData['uid'] = tempUid;
    }

    if (tempUsername != null) {
      jsonData['username'] = tempUsername;
    }

    return jsonData;
  }
}
