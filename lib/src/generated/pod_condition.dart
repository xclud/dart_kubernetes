class PodCondition {
  PodCondition({
    required this.status,
    required this.type,
    this.lastProbeTime,
    this.lastTransitionTime,
    this.message,
    this.reason,
  });

  final String status;
  final String type;
  final DateTime? lastProbeTime;
  final DateTime? lastTransitionTime;
  final String? message;
  final String? reason;
}
