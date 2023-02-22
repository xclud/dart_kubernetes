import 'package:kubernetes/src/generated/kubernetes/api/authorization/v1/non_resource_attributes.dart';
import 'package:kubernetes/src/generated/kubernetes/api/authorization/v1/resource_attributes.dart';

/// SubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set.
class SubjectAccessReviewSpec {
  /// The main constructor.
  const SubjectAccessReviewSpec({
    this.extra,
    this.groups,
    this.nonResourceAttributes,
    this.resourceAttributes,
    this.uid,
    this.user,
  });

  /// Creates a SubjectAccessReviewSpec from JSON data.
  SubjectAccessReviewSpec.fromJson(Map<String, dynamic> json)
      : this(
          extra: json['extra'] != null
              ? Map<String, List<String>>.from(json['extra'])
              : null,
          groups:
              json['groups'] != null ? List<String>.from(json['groups']) : null,
          nonResourceAttributes: json['nonResourceAttributes'] != null
              ? NonResourceAttributes.fromJson(json['nonResourceAttributes'])
              : null,
          resourceAttributes: json['resourceAttributes'] != null
              ? ResourceAttributes.fromJson(json['resourceAttributes'])
              : null,
          uid: json['uid'],
          user: json['user'],
        );

  /// Creates a list of SubjectAccessReviewSpec from JSON data.
  static List<SubjectAccessReviewSpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => SubjectAccessReviewSpec.fromJson(e)).toList();
  }

  /// Converts a SubjectAccessReviewSpec instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (extra != null) {
      jsonData['extra'] = extra!;
    }
    if (groups != null) {
      jsonData['groups'] = groups!;
    }
    if (nonResourceAttributes != null) {
      jsonData['nonResourceAttributes'] = nonResourceAttributes!.toJson();
    }
    if (resourceAttributes != null) {
      jsonData['resourceAttributes'] = resourceAttributes!.toJson();
    }
    if (uid != null) {
      jsonData['uid'] = uid!;
    }
    if (user != null) {
      jsonData['user'] = user!;
    }

    return jsonData;
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
}
