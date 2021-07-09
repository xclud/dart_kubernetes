/// PersistentVolumeClaimCondition contails details about state of pvc.
class PersistentVolumeClaimCondition {
  /// The main constructor.
  const PersistentVolumeClaimCondition({
    this.lastProbeTime,
    this.lastTransitionTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  /// Creates a PersistentVolumeClaimCondition from JSON data.
  PersistentVolumeClaimCondition.fromJson(Map<String, dynamic> json)
      : this(
          lastProbeTime: json['lastProbeTime'] != null
              ? DateTime.tryParse(json['lastProbeTime'])
              : null,
          lastTransitionTime: json['lastTransitionTime'] != null
              ? DateTime.tryParse(json['lastTransitionTime'])
              : null,
          message: json['message'],
          reason: json['reason'],
          status: json['status'],
          type: json['type'],
        );

  /// Creates a list of PersistentVolumeClaimCondition from JSON data.
  static List<PersistentVolumeClaimCondition> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PersistentVolumeClaimCondition.fromJson(e)).toList();
  }

  /// Last time we probed the condition.
  final DateTime? lastProbeTime;

  /// Last time the condition transitioned from one status to another.
  final DateTime? lastTransitionTime;

  /// Human-readable message indicating details about last transition.
  final String? message;

  /// Unique, this should be a short, machine understandable string that gives the reason for condition's last transition. If it reports "ResizeStarted" that means the underlying persistent volume is being resized.
  final String? reason;

  ///
  final String status;

  ///
  final String type;
}
