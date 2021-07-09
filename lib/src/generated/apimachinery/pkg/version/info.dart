/// Info contains versioning information. how we'll want to distribute that information.
class Info {
  /// The main constructor.
  const Info({
    required this.buildDate,
    required this.compiler,
    required this.gitCommit,
    required this.gitTreeState,
    required this.gitVersion,
    required this.goVersion,
    required this.major,
    required this.minor,
    required this.platform,
  });

  /// Creates a Info from JSON data.
  Info.fromJson(Map<String, dynamic> json)
      : this(
          buildDate: json['buildDate'],
          compiler: json['compiler'],
          gitCommit: json['gitCommit'],
          gitTreeState: json['gitTreeState'],
          gitVersion: json['gitVersion'],
          goVersion: json['goVersion'],
          major: json['major'],
          minor: json['minor'],
          platform: json['platform'],
        );

  /// Creates a list of Info from JSON data.
  static List<Info> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Info.fromJson(e)).toList();
  }

  /// Converts a Info instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['buildDate'] = buildDate;
    jsonData['compiler'] = compiler;
    jsonData['gitCommit'] = gitCommit;
    jsonData['gitTreeState'] = gitTreeState;
    jsonData['gitVersion'] = gitVersion;
    jsonData['goVersion'] = goVersion;
    jsonData['major'] = major;
    jsonData['minor'] = minor;
    jsonData['platform'] = platform;

    return jsonData;
  }

  ///
  final String buildDate;

  ///
  final String compiler;

  ///
  final String gitCommit;

  ///
  final String gitTreeState;

  ///
  final String gitVersion;

  ///
  final String goVersion;

  ///
  final String major;

  ///
  final String minor;

  ///
  final String platform;
}
