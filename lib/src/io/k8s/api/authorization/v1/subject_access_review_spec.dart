// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../authorization_v1.dart';

/// SubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set.
class SubjectAccessReviewSpec {
  /// Default constructor.
  const SubjectAccessReviewSpec({
    this.extra,
    this.groups,
    this.nonResourceAttributes,
    this.resourceAttributes,
    this.uid,
    this.user,
  });

  /// Creates a [SubjectAccessReviewSpec] from JSON data.
  factory SubjectAccessReviewSpec.fromJson(Map<String, dynamic> json) {
    final tempExtraJson = json['extra'];
    final tempGroupsJson = json['groups'];
    final tempNonResourceAttributesJson = json['nonResourceAttributes'];
    final tempResourceAttributesJson = json['resourceAttributes'];
    final tempUidJson = json['uid'];
    final tempUserJson = json['user'];

    final Map<String, List<String>>? tempExtra = tempExtraJson != null
        ? Map<String, dynamic>.from(tempExtraJson)
            .map((key, value) => MapEntry(key, List<String>.from(value)))
        : null;

    final List<String>? tempGroups =
        tempGroupsJson != null ? List<String>.from(tempGroupsJson) : null;
    final NonResourceAttributes? tempNonResourceAttributes =
        tempNonResourceAttributesJson != null
            ? NonResourceAttributes.fromJson(tempNonResourceAttributesJson)
            : null;
    final ResourceAttributes? tempResourceAttributes =
        tempResourceAttributesJson != null
            ? ResourceAttributes.fromJson(tempResourceAttributesJson)
            : null;
    final String? tempUid = tempUidJson;
    final String? tempUser = tempUserJson;

    return SubjectAccessReviewSpec(
      extra: tempExtra,
      groups: tempGroups,
      nonResourceAttributes: tempNonResourceAttributes,
      resourceAttributes: tempResourceAttributes,
      uid: tempUid,
      user: tempUser,
    );
  }

  /// Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.
  final Map<String, List<String>>? extra;

  /// Groups is the groups you're testing for.
  final List<String>? groups;

  /// NonResourceAttributes describes information for a non-resource access request.
  final NonResourceAttributes? nonResourceAttributes;

  /// ResourceAuthorizationAttributes describes information for a resource access request.
  final ResourceAttributes? resourceAttributes;

  /// UID information about the requesting user.
  final String? uid;

  /// User is the user you're testing for. If you specify "User" but not "Groups", then is it interpreted as "What if User were not a member of any groups.
  final String? user;

  /// Converts a [SubjectAccessReviewSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempExtra = extra;
    final tempGroups = groups;
    final tempNonResourceAttributes = nonResourceAttributes;
    final tempResourceAttributes = resourceAttributes;
    final tempUid = uid;
    final tempUser = user;

    if (tempExtra != null) {
      jsonData['extra'] = tempExtra;
    }

    if (tempGroups != null) {
      jsonData['groups'] = tempGroups;
    }

    if (tempNonResourceAttributes != null) {
      jsonData['nonResourceAttributes'] = tempNonResourceAttributes.toJson();
    }

    if (tempResourceAttributes != null) {
      jsonData['resourceAttributes'] = tempResourceAttributes.toJson();
    }

    if (tempUid != null) {
      jsonData['uid'] = tempUid;
    }

    if (tempUser != null) {
      jsonData['user'] = tempUser;
    }

    return jsonData;
  }
}
