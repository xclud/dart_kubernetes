import 'package:kubernetes/src/generated/kubernetes/api/core/v1/node_selector.dart';

/// AllocationResult contains attributed of an allocated resource.
class AllocationResult {
  /// The main constructor.
  const AllocationResult({
    this.availableOnNodes,
    this.resourceHandle,
    this.shareable,
  });

  /// Creates a AllocationResult from JSON data.
  AllocationResult.fromJson(Map<String, dynamic> json)
      : this(
          availableOnNodes: json['availableOnNodes'] != null
              ? NodeSelector.fromJson(json['availableOnNodes'])
              : null,
          resourceHandle: json['resourceHandle'],
          shareable: json['shareable'],
        );

  /// Creates a list of AllocationResult from JSON data.
  static List<AllocationResult> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => AllocationResult.fromJson(e)).toList();
  }

  /// Converts a AllocationResult instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (availableOnNodes != null) {
      jsonData['availableOnNodes'] = availableOnNodes!.toJson();
    }
    if (resourceHandle != null) {
      jsonData['resourceHandle'] = resourceHandle!;
    }
    if (shareable != null) {
      jsonData['shareable'] = shareable!;
    }

    return jsonData;
  }

  /// This field will get set by the resource driver after it has allocated the resource driver to inform the scheduler where it can schedule Pods using the ResourceClaim.
  ///
  /// Setting this field is optional. If null, the resource is available everywhere.
  final NodeSelector? availableOnNodes;

  /// ResourceHandle contains arbitrary data returned by the driver after a successful allocation. This is opaque for Kubernetes. Driver documentation may explain to users how to interpret this data if needed.
  ///
  /// The maximum size of this field is 16KiB. This may get increased in the future, but not reduced.
  final String? resourceHandle;

  /// Shareable determines whether the resource supports more than one consumer at a time.
  final bool? shareable;
}
