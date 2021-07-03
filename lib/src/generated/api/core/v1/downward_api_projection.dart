import 'package:kubernetes/src/generated/api/core/v1/downward_api_volume_file.dart';

/// Represents downward API info for projecting into a projected volume. Note that this is identical to a downwardAPI volume source without the default mode.
class DownwardAPIProjection {
  /// The main constructor.
  const DownwardAPIProjection({
    this.items,
  });

  /// Creates a DownwardAPIProjection from JSON data.
  DownwardAPIProjection.fromJson(Map<String, dynamic> json)
      : this(
          items: json['items'] != null
              ? DownwardAPIVolumeFile.listFromJson(
                  (json['items'] as Iterable).cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of DownwardAPIProjection from JSON data.
  static List<DownwardAPIProjection> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => DownwardAPIProjection.fromJson(e)).toList();
  }

  /// Items is a list of DownwardAPIVolume file
  final List<DownwardAPIVolumeFile>? items;
}
