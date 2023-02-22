import 'package:kubernetes/src/generated/kubernetes/api/resource/v1alpha1/resource_claim_scheduling_status.dart';

/// PodSchedulingStatus describes where resources for the Pod can be allocated.
class PodSchedulingStatus {
  /// The main constructor.
  const PodSchedulingStatus({
    this.resourceClaims,
  });

  /// Creates a PodSchedulingStatus from JSON data.
  PodSchedulingStatus.fromJson(Map<String, dynamic> json)
      : this(
          resourceClaims: json['resourceClaims'] != null
              ? ResourceClaimSchedulingStatus.listFromJson(
                  (json['resourceClaims'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of PodSchedulingStatus from JSON data.
  static List<PodSchedulingStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodSchedulingStatus.fromJson(e)).toList();
  }

  /// Converts a PodSchedulingStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (resourceClaims != null) {
      jsonData['resourceClaims'] =
          resourceClaims!.map((item) => item.toJson()).toList();
    }

    return jsonData;
  }

  /// ResourceClaims describes resource availability for each pod.spec.resourceClaim entry where the corresponding ResourceClaim uses "WaitForFirstConsumer" allocation mode.
  final List<ResourceClaimSchedulingStatus>? resourceClaims;
}
