class PodCondition {
  const PodCondition({
    required this.status,
    required this.type,
    this.lastProbeTime,
    this.lastTransitionTime,
    this.message,
    this.reason,
  });

  PodCondition.fromJson(Map<String, dynamic> json)
      : this(
          status: json['status'],
          type: json['type'],
          lastProbeTime: json['lastProbeTime'] != null
              ? DateTime.tryParse(json['lastProbeTime'])
              : null,
          lastTransitionTime: json['lastTransitionTime'] != null
              ? DateTime.tryParse(json['lastTransitionTime'])
              : null,
          message: json['message'],
          reason: json['reason'],
        );

  static List<PodCondition> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodCondition.fromJson(e)).toList();
  }

  final String status;
  final String type;
  final DateTime? lastProbeTime;
  final DateTime? lastTransitionTime;
  final String? message;
  final String? reason;
}
