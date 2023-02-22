import 'package:kubernetes/src/generated/kubernetes/api/core/v1/downward_api_volume_file.dart';

/// DownwardAPIVolumeSource represents a volume containing downward API info. Downward API volumes support ownership management and SELinux relabeling.
class DownwardAPIVolumeSource {
  /// The main constructor.
  const DownwardAPIVolumeSource({
    this.defaultMode,
    this.items,
  });

  /// Creates a DownwardAPIVolumeSource from JSON data.
  DownwardAPIVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          defaultMode: json['defaultMode'],
          items: json['items'] != null ? DownwardAPIVolumeFile.listFromJson((json['items'] as Iterable).cast<Map<String, dynamic>>()): null,
        );

  /// Creates a list of DownwardAPIVolumeSource from JSON data.
  static List<DownwardAPIVolumeSource> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => DownwardAPIVolumeSource.fromJson(e)).toList();
  }

  /// Converts a DownwardAPIVolumeSource instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(defaultMode != null) { jsonData['defaultMode'] = defaultMode!; }
    if(items != null) { jsonData['items'] = items!.map((item) => item.toJson()).toList(); }
    

    return jsonData;
  }


  /// Optional: mode bits to use on created files by default. Must be a Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  final int? defaultMode;

  /// Items is a list of downward API volume file.
  final List<DownwardAPIVolumeFile>? items;
}
