/// PodFailurePolicyOnExitCodesRequirement describes the requirement for handling a failed pod based on its container exit codes. In particular, it lookups the .state.terminated.exitCode for each app container and init container status, represented by the .status.containerStatuses and .status.initContainerStatuses fields in the Pod status, respectively. Containers completed with success (exit code 0) are excluded from the requirement check.
class PodFailurePolicyOnExitCodesRequirement {
  /// The main constructor.
  const PodFailurePolicyOnExitCodesRequirement({
    this.containerName,
    required this.operator,
    required this.values,
  });

  /// Creates a PodFailurePolicyOnExitCodesRequirement from JSON data.
  PodFailurePolicyOnExitCodesRequirement.fromJson(Map<String, dynamic> json)
      : this(
          containerName: json['containerName'],
          operator: json['operator'],
          values: json['values'] != null ? List<int>.from(json['values']) : [],
        );

  /// Creates a list of PodFailurePolicyOnExitCodesRequirement from JSON data.
  static List<PodFailurePolicyOnExitCodesRequirement> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list
        .map((e) => PodFailurePolicyOnExitCodesRequirement.fromJson(e))
        .toList();
  }

  /// Converts a PodFailurePolicyOnExitCodesRequirement instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (containerName != null) {
      jsonData['containerName'] = containerName!;
    }
    jsonData['operator'] = operator;
    jsonData['values'] = values;

    return jsonData;
  }

  /// Restricts the check for exit codes to the container with the specified name. When null, the rule applies to all containers. When specified, it should match one the container or initContainer names in the pod template.
  final String? containerName;

  /// Represents the relationship between the container exit code(s) and the specified values. Containers completed with success (exit code 0) are excluded from the requirement check. Possible values are:
  ///
  /// - In: the requirement is satisfied if at least one container exit code
  ///   (might be multiple if there are multiple containers not restricted
  ///   by the 'containerName' field) is in the set of specified values.
  /// - NotIn: the requirement is satisfied if at least one container exit code
  ///   (might be multiple if there are multiple containers not restricted
  ///   by the 'containerName' field) is not in the set of specified values.
  /// Additional values are considered to be added in the future. Clients should react to an unknown operator by assuming the requirement is not satisfied.
  final String operator;

  /// Specifies the set of values. Each returned container exit code (might be multiple in case of multiple containers) is checked against this set of values with respect to the operator. The list of values must be ordered and must not contain duplicates. Value '0' cannot be used for the In operator. At least one element is required. At most 255 elements are allowed.
  final List<int> values;
}
