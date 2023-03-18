// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// DownwardAPIVolumeSource represents a volume containing downward API info. Downward API volumes support ownership management and SELinux relabeling.
class DownwardAPIVolumeSource {
  /// Default constructor.
  const DownwardAPIVolumeSource({
    this.defaultMode,
    this.items,
  });

  /// Creates a [DownwardAPIVolumeSource] from JSON data.
  factory DownwardAPIVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempDefaultModeJson = json['defaultMode'];
    final tempItemsJson = json['items'];

    final int? tempDefaultMode = tempDefaultModeJson;

    final List<DownwardAPIVolumeFile>? tempItems = tempItemsJson != null
        ? List<dynamic>.from(tempItemsJson)
            .map(
              (e) => DownwardAPIVolumeFile.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    return DownwardAPIVolumeSource(
      defaultMode: tempDefaultMode,
      items: tempItems,
    );
  }

  /// Optional: mode bits to use on created files by default. Must be a Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  final int? defaultMode;

  /// Items is a list of downward API volume file.
  final List<DownwardAPIVolumeFile>? items;

  /// Converts a [DownwardAPIVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempDefaultMode = defaultMode;
    final tempItems = items;

    if (tempDefaultMode != null) {
      jsonData['defaultMode'] = tempDefaultMode;
    }

    if (tempItems != null) {
      jsonData['items'] = tempItems;
    }

    return jsonData;
  }
}
