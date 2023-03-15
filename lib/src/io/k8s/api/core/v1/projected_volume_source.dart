// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// Represents a projected volume source.
class ProjectedVolumeSource {
  /// Default constructor.
  const ProjectedVolumeSource({
    this.defaultMode,
    this.sources,
  });

  /// Creates a [ProjectedVolumeSource] from JSON data.
  factory ProjectedVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempDefaultModeJson = json['defaultMode'];
    final tempSourcesJson = json['sources'];

    final tempDefaultMode = tempDefaultModeJson;
    final tempSources = tempSourcesJson;

    return ProjectedVolumeSource(
      defaultMode: tempDefaultMode,
      sources: tempSources,
    );
  }

  /// defaultMode are the mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  final int? defaultMode;

  /// sources is the list of volume projections.
  final List<VolumeProjection>? sources;

  /// Converts a [ProjectedVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempDefaultMode = defaultMode;
    final tempSources = sources;

    if (tempDefaultMode != null) {
      jsonData['defaultMode'] = tempDefaultMode;
    }

    if (tempSources != null) {
      jsonData['sources'] = tempSources;
    }

    return jsonData;
  }
}
