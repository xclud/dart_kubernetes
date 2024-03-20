// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../authentication_v1alpha1.dart';

/// SelfSubjectReviewStatus is filled by the kube-apiserver and sent back to a user.
class SelfSubjectReviewStatus {
  /// Default constructor.
  const SelfSubjectReviewStatus({
    this.userInfo,
  });

  /// Creates a [SelfSubjectReviewStatus] from JSON data.
  factory SelfSubjectReviewStatus.fromJson(Map<String, dynamic> json) {
    final tempUserInfoJson = json['userInfo'];

    final UserInfo? tempUserInfo =
        tempUserInfoJson != null ? UserInfo.fromJson(tempUserInfoJson) : null;

    return SelfSubjectReviewStatus(
      userInfo: tempUserInfo,
    );
  }

  /// User attributes of the user making this request.
  final UserInfo? userInfo;

  /// Converts a [SelfSubjectReviewStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempUserInfo = userInfo;

    if (tempUserInfo != null) {
      jsonData['userInfo'] = tempUserInfo.toJson();
    }

    return jsonData;
  }
}
