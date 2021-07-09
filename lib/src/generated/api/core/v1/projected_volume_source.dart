import 'package:kubernetes/src/generated/api/core/v1/volume_projection.dart';

/// Represents a projected volume source.
class ProjectedVolumeSource {
  /// The main constructor.
  const ProjectedVolumeSource({
    this.defaultMode,
    this.sources,
  });

  /// Creates a ProjectedVolumeSource from JSON data.
  ProjectedVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          defaultMode: json['defaultMode'],
          sources: json['sources'] != null
              ? VolumeProjection.listFromJson(
                  (json['sources'] as Iterable).cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of ProjectedVolumeSource from JSON data.
  static List<ProjectedVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ProjectedVolumeSource.fromJson(e)).toList();
  }

  /// Converts a ProjectedVolumeSource instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (defaultMode != null) {
      jsonData['defaultMode'] = defaultMode!;
    }
    if (sources != null) {
      jsonData['sources'] = sources!.map((item) => item.toJson()).toList();
    }

    return jsonData;
  }

  /// Mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  final int? defaultMode;

  /// List of volume projections.
  final List<VolumeProjection>? sources;
}
