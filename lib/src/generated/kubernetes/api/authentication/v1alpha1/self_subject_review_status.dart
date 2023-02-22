import 'package:kubernetes/src/generated/kubernetes/api/authentication/v1/user_info.dart';

/// SelfSubjectReviewStatus is filled by the kube-apiserver and sent back to a user.
class SelfSubjectReviewStatus {
  /// The main constructor.
  const SelfSubjectReviewStatus({
    this.userInfo,
  });

  /// Creates a SelfSubjectReviewStatus from JSON data.
  SelfSubjectReviewStatus.fromJson(Map<String, dynamic> json)
      : this(
          userInfo: json['userInfo'] != null
              ? UserInfo.fromJson(json['userInfo'])
              : null,
        );

  /// Creates a list of SelfSubjectReviewStatus from JSON data.
  static List<SelfSubjectReviewStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => SelfSubjectReviewStatus.fromJson(e)).toList();
  }

  /// Converts a SelfSubjectReviewStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (userInfo != null) {
      jsonData['userInfo'] = userInfo!.toJson();
    }

    return jsonData;
  }

  /// User attributes of the user making this request.
  final UserInfo? userInfo;
}
