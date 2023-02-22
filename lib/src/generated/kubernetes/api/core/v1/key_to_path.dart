
/// Maps a string key to a path within a volume.
class KeyToPath {
  /// The main constructor.
  const KeyToPath({
    required this.key,
    this.mode,
    required this.path,
  });

  /// Creates a KeyToPath from JSON data.
  KeyToPath.fromJson(Map<String, dynamic> json)
      : this(
          key: json['key'],
          mode: json['mode'],
          path: json['path'],
        );

  /// Creates a list of KeyToPath from JSON data.
  static List<KeyToPath> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => KeyToPath.fromJson(e)).toList();
  }

  /// Converts a KeyToPath instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    jsonData['key'] = key;
    if(mode != null) { jsonData['mode'] = mode!; }
    jsonData['path'] = path;
    

    return jsonData;
  }


  /// Key is the key to project.
  final String key;

  /// Mode is Optional: mode bits used to set permissions on this file. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  final int? mode;

  /// Path is the relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'.
  final String path;
}
