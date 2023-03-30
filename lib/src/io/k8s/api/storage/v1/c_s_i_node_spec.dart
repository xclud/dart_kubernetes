// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.storage.v1;

/// CSINodeSpec holds information about the specification of all CSI drivers installed on a node.
class CSINodeSpec {
  /// Default constructor.
  const CSINodeSpec({
    required this.drivers,
  });

  /// Creates a [CSINodeSpec] from JSON data.
  factory CSINodeSpec.fromJson(Map<String, dynamic> json) {
    final tempDriversJson = json['drivers'];

    final List<CSINodeDriver> tempDrivers = List<dynamic>.from(tempDriversJson)
        .map(
          (e) => CSINodeDriver.fromJson(
            Map<String, dynamic>.from(e),
          ),
        )
        .toList();

    return CSINodeSpec(
      drivers: tempDrivers,
    );
  }

  /// drivers is a list of information of all CSI Drivers existing on a node. If all drivers in the list are uninstalled, this can become empty.
  final List<CSINodeDriver> drivers;

  /// Converts a [CSINodeSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempDrivers = drivers;

    jsonData['drivers'] =
        tempDrivers.map((e) => e.toJson()).toList(growable: false);

    return jsonData;
  }
}
