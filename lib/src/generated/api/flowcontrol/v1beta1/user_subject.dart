/// UserSubject holds detailed information for user-kind subject.
class UserSubject {
  /// The main constructor.
  const UserSubject({
    required this.name,
  });

  /// Creates a UserSubject from JSON data.
  UserSubject.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
        );

  /// Creates a list of UserSubject from JSON data.
  static List<UserSubject> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => UserSubject.fromJson(e)).toList();
  }

  /// `name` is the username that matches, or "*" to match all usernames. Required.
  final String name;
}
