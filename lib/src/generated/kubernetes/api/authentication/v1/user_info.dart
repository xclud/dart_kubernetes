
/// UserInfo holds the information about the user needed to implement the user.Info interface.
class UserInfo {
  /// The main constructor.
  const UserInfo({
    this.extra,
    this.groups,
    this.uid,
    this.username,
  });

  /// Creates a UserInfo from JSON data.
  UserInfo.fromJson(Map<String, dynamic> json)
      : this(
          extra: json['extra'] != null ? Map<String, List<String>>.from(json['extra']) : null,
          groups: json['groups'] != null ? List<String>.from(json['groups']) : null,
          uid: json['uid'],
          username: json['username'],
        );

  /// Creates a list of UserInfo from JSON data.
  static List<UserInfo> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => UserInfo.fromJson(e)).toList();
  }

  /// Converts a UserInfo instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(extra != null) { jsonData['extra'] = extra!; }
    if(groups != null) { jsonData['groups'] = groups!; }
    if(uid != null) { jsonData['uid'] = uid!; }
    if(username != null) { jsonData['username'] = username!; }
    

    return jsonData;
  }


  /// Any additional information provided by the authenticator.
  final Map<String, List<String>>? extra;

  /// The names of groups this user is a part of.
  final List<String>? groups;

  /// A unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs.
  final String? uid;

  /// The name that uniquely identifies this user among all active users.
  final String? username;
}
