class KeyToPath {
  const KeyToPath({
    required this.key,
    required this.path,
    this.mode,
  });

  KeyToPath.fromJson(Map<String, dynamic> json)
      : this(
          key: json['key'],
          path: json['path'],
          mode: json['mode'],
        );

  static List<KeyToPath> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => KeyToPath.fromJson(e)).toList();
  }

  final String key;
  final String path;
  final int? mode;
}
