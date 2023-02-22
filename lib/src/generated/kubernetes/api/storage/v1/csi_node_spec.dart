import 'package:kubernetes/src/generated/kubernetes/api/storage/v1/csi_node_driver.dart';

/// CSINodeSpec holds information about the specification of all CSI drivers installed on a node.
class CSINodeSpec {
  /// The main constructor.
  const CSINodeSpec({
    required this.drivers,
  });

  /// Creates a CSINodeSpec from JSON data.
  CSINodeSpec.fromJson(Map<String, dynamic> json)
      : this(
          drivers: json['drivers'] != null
              ? CSINodeDriver.listFromJson(
                  (json['drivers'] as Iterable).cast<Map<String, dynamic>>())
              : [],
        );

  /// Creates a list of CSINodeSpec from JSON data.
  static List<CSINodeSpec> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => CSINodeSpec.fromJson(e)).toList();
  }

  /// Converts a CSINodeSpec instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['drivers'] = drivers.map((item) => item.toJson()).toList();

    return jsonData;
  }

  /// Drivers is a list of information of all CSI Drivers existing on a node. If all drivers in the list are uninstalled, this can become empty.
  final List<CSINodeDriver> drivers;
}
