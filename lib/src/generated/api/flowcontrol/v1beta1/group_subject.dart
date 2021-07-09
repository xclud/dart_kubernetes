/// GroupSubject holds detailed information for group-kind subject.
class GroupSubject {
  /// The main constructor.
  const GroupSubject({
    required this.name,
  });

  /// Creates a GroupSubject from JSON data.
  GroupSubject.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
        );

  /// Creates a list of GroupSubject from JSON data.
  static List<GroupSubject> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => GroupSubject.fromJson(e)).toList();
  }

  /// Name is the user group that matches, or "*" to match all user groups. See https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.
  final String name;
}
