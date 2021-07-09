import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/status_cause.dart';

/// StatusDetails is a set of additional properties that MAY be set by the server to provide additional information about a response. The Reason field of a Status object defines what attributes will be set. Clients must ignore fields that do not match the defined type of each attribute, and should assume that any attribute may be empty, invalid, or under defined.
class StatusDetails {
  /// The main constructor.
  const StatusDetails({
    this.causes,
    this.group,
    this.kind,
    this.name,
    this.retryAfterSeconds,
    this.uid,
  });

  /// Creates a StatusDetails from JSON data.
  StatusDetails.fromJson(Map<String, dynamic> json)
      : this(
          causes: json['causes'] != null
              ? StatusCause.listFromJson(
                  (json['causes'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          group: json['group'],
          kind: json['kind'],
          name: json['name'],
          retryAfterSeconds: json['retryAfterSeconds'],
          uid: json['uid'],
        );

  /// Creates a list of StatusDetails from JSON data.
  static List<StatusDetails> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => StatusDetails.fromJson(e)).toList();
  }

  /// Converts a StatusDetails instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (causes != null) {
      jsonData['causes'] = causes!.map((item) => item.toJson()).toList();
    }
    if (group != null) {
      jsonData['group'] = group!;
    }
    if (kind != null) {
      jsonData['kind'] = kind!;
    }
    if (name != null) {
      jsonData['name'] = name!;
    }
    if (retryAfterSeconds != null) {
      jsonData['retryAfterSeconds'] = retryAfterSeconds!;
    }
    if (uid != null) {
      jsonData['uid'] = uid!;
    }

    return jsonData;
  }

  /// The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
  final List<StatusCause>? causes;

  /// The group attribute of the resource associated with the status StatusReason.
  final String? group;

  /// The kind attribute of the resource associated with the status StatusReason. On some operations may differ from the requested resource Kind. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described).
  final String? name;

  /// If specified, the time in seconds before the operation should be retried. Some errors may indicate the client must take an alternate action - for those errors this field may indicate how long to wait before taking the alternate action.
  final int? retryAfterSeconds;

  /// UID of the resource. (when there is a single resource which can be described). More info: http://kubernetes.io/docs/user-guide/identifiers#uids.
  final String? uid;
}
