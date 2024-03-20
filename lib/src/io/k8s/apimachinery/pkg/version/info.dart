// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../io_k8s_apimachinery_pkg_version.dart';

/// Info contains versioning information. how we'll want to distribute that information.
class Info {
  /// Default constructor.
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

  /// Creates a [Info] from JSON data.
  factory Info.fromJson(Map<String, dynamic> json) {
    final tempBuildDateJson = json['buildDate'];
    final tempCompilerJson = json['compiler'];
    final tempGitCommitJson = json['gitCommit'];
    final tempGitTreeStateJson = json['gitTreeState'];
    final tempGitVersionJson = json['gitVersion'];
    final tempGoVersionJson = json['goVersion'];
    final tempMajorJson = json['major'];
    final tempMinorJson = json['minor'];
    final tempPlatformJson = json['platform'];

    final String tempBuildDate = tempBuildDateJson;
    final String tempCompiler = tempCompilerJson;
    final String tempGitCommit = tempGitCommitJson;
    final String tempGitTreeState = tempGitTreeStateJson;
    final String tempGitVersion = tempGitVersionJson;
    final String tempGoVersion = tempGoVersionJson;
    final String tempMajor = tempMajorJson;
    final String tempMinor = tempMinorJson;
    final String tempPlatform = tempPlatformJson;

    return Info(
      buildDate: tempBuildDate,
      compiler: tempCompiler,
      gitCommit: tempGitCommit,
      gitTreeState: tempGitTreeState,
      gitVersion: tempGitVersion,
      goVersion: tempGoVersion,
      major: tempMajor,
      minor: tempMinor,
      platform: tempPlatform,
    );
  }

  /// Build Date.
  final String buildDate;

  /// Compiler.
  final String compiler;

  /// Git Commit.
  final String gitCommit;

  /// Git Tree State.
  final String gitTreeState;

  /// Git Version.
  final String gitVersion;

  /// Go Version.
  final String goVersion;

  /// Major.
  final String major;

  /// Minor.
  final String minor;

  /// Platform.
  final String platform;

  /// Converts a [Info] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempBuildDate = buildDate;
    final tempCompiler = compiler;
    final tempGitCommit = gitCommit;
    final tempGitTreeState = gitTreeState;
    final tempGitVersion = gitVersion;
    final tempGoVersion = goVersion;
    final tempMajor = major;
    final tempMinor = minor;
    final tempPlatform = platform;

    jsonData['buildDate'] = tempBuildDate;

    jsonData['compiler'] = tempCompiler;

    jsonData['gitCommit'] = tempGitCommit;

    jsonData['gitTreeState'] = tempGitTreeState;

    jsonData['gitVersion'] = tempGitVersion;

    jsonData['goVersion'] = tempGoVersion;

    jsonData['major'] = tempMajor;

    jsonData['minor'] = tempMinor;

    jsonData['platform'] = tempPlatform;

    return jsonData;
  }
}
