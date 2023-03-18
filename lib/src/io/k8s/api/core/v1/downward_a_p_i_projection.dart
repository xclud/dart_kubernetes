// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// Represents downward API info for projecting into a projected volume. Note that this is identical to a downwardAPI volume source without the default mode.
class DownwardAPIProjection {
  /// Default constructor.
  const DownwardAPIProjection({
    this.items,
  });

  /// Creates a [DownwardAPIProjection] from JSON data.
  factory DownwardAPIProjection.fromJson(Map<String, dynamic> json) {
    final tempItemsJson = json['items'];

    final List<DownwardAPIVolumeFile>? tempItems = tempItemsJson != null
        ? List<dynamic>.from(tempItemsJson)
            .map(
              (e) => DownwardAPIVolumeFile.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    return DownwardAPIProjection(
      items: tempItems,
    );
  }

  /// Items is a list of DownwardAPIVolume file.
  final List<DownwardAPIVolumeFile>? items;

  /// Converts a [DownwardAPIProjection] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempItems = items;

    if (tempItems != null) {
      jsonData['items'] = tempItems;
    }

    return jsonData;
  }
}
