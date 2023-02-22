import 'package:kubernetes/src/generated/kubernetes/api/core/v1/claim_source.dart';

/// PodResourceClaim references exactly one ResourceClaim through a ClaimSource. It adds a name to it that uniquely identifies the ResourceClaim inside the Pod. Containers that need access to the ResourceClaim reference it with this name.
class PodResourceClaim {
  /// The main constructor.
  const PodResourceClaim({
    required this.name,
    this.source,
  });

  /// Creates a PodResourceClaim from JSON data.
  PodResourceClaim.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          source: json['source'] != null
              ? ClaimSource.fromJson(json['source'])
              : null,
        );

  /// Creates a list of PodResourceClaim from JSON data.
  static List<PodResourceClaim> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodResourceClaim.fromJson(e)).toList();
  }

  /// Converts a PodResourceClaim instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['name'] = name;
    if (source != null) {
      jsonData['source'] = source!.toJson();
    }

    return jsonData;
  }

  /// Name uniquely identifies this resource claim inside the pod. This must be a DNS_LABEL.
  final String name;

  /// Source describes where to find the ResourceClaim.
  final ClaimSource? source;
}
