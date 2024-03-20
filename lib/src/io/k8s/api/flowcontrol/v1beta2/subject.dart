// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../flowcontrol_v1beta2.dart';

/// Subject matches the originator of a request, as identified by the request authentication system. There are three ways of matching an originator; by user, group, or service account.
class Subject {
  /// Default constructor.
  const Subject({
    this.group,
    required this.kind,
    this.serviceAccount,
    this.user,
  });

  /// Creates a [Subject] from JSON data.
  factory Subject.fromJson(Map<String, dynamic> json) {
    final tempGroupJson = json['group'];
    final tempKindJson = json['kind'];
    final tempServiceAccountJson = json['serviceAccount'];
    final tempUserJson = json['user'];

    final GroupSubject? tempGroup =
        tempGroupJson != null ? GroupSubject.fromJson(tempGroupJson) : null;
    final String tempKind = tempKindJson;
    final ServiceAccountSubject? tempServiceAccount =
        tempServiceAccountJson != null
            ? ServiceAccountSubject.fromJson(tempServiceAccountJson)
            : null;
    final UserSubject? tempUser =
        tempUserJson != null ? UserSubject.fromJson(tempUserJson) : null;

    return Subject(
      group: tempGroup,
      kind: tempKind,
      serviceAccount: tempServiceAccount,
      user: tempUser,
    );
  }

  /// `group` matches based on user group name.
  final GroupSubject? group;

  /// `kind` indicates which one of the other fields is non-empty. Required.
  final String kind;

  /// `serviceAccount` matches ServiceAccounts.
  final ServiceAccountSubject? serviceAccount;

  /// `user` matches based on username.
  final UserSubject? user;

  /// Converts a [Subject] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempGroup = group;
    final tempKind = kind;
    final tempServiceAccount = serviceAccount;
    final tempUser = user;

    if (tempGroup != null) {
      jsonData['group'] = tempGroup.toJson();
    }

    jsonData['kind'] = tempKind;

    if (tempServiceAccount != null) {
      jsonData['serviceAccount'] = tempServiceAccount.toJson();
    }

    if (tempUser != null) {
      jsonData['user'] = tempUser.toJson();
    }

    return jsonData;
  }
}
