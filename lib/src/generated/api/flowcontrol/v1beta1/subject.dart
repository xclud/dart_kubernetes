import 'package:kubernetes/src/generated/api/flowcontrol/v1beta1/group_subject.dart';
import 'package:kubernetes/src/generated/api/flowcontrol/v1beta1/service_account_subject.dart';
import 'package:kubernetes/src/generated/api/flowcontrol/v1beta1/user_subject.dart';

/// Subject matches the originator of a request, as identified by the request authentication system. There are three ways of matching an originator; by user, group, or service account.
class Subject {
  /// The main constructor.
  const Subject({
    this.group,
    required this.kind,
    this.serviceAccount,
    this.user,
  });

  /// Creates a Subject from JSON data.
  Subject.fromJson(Map<String, dynamic> json)
      : this(
          group: json['group'] != null
              ? GroupSubject.fromJson(json['group'])
              : null,
          kind: json['kind'],
          serviceAccount: json['serviceAccount'] != null
              ? ServiceAccountSubject.fromJson(json['serviceAccount'])
              : null,
          user:
              json['user'] != null ? UserSubject.fromJson(json['user']) : null,
        );

  /// Creates a list of Subject from JSON data.
  static List<Subject> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Subject.fromJson(e)).toList();
  }

  /// Converts a Subject instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (group != null) {
      jsonData['group'] = group!.toJson();
    }
    jsonData['kind'] = kind;
    if (serviceAccount != null) {
      jsonData['serviceAccount'] = serviceAccount!.toJson();
    }
    if (user != null) {
      jsonData['user'] = user!.toJson();
    }

    return jsonData;
  }

  /// `group` matches based on user group name.
  final GroupSubject? group;

  /// `kind` indicates which one of the other fields is non-empty. Required.
  final String kind;

  /// `serviceAccount` matches ServiceAccounts.
  final ServiceAccountSubject? serviceAccount;

  /// `user` matches based on username.
  final UserSubject? user;
}
