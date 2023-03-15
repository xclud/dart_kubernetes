// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.networking.v1;

/// IPBlock describes a particular CIDR (Ex. "192.168.1.0/24","2001:db8::/64") that is allowed to the pods matched by a NetworkPolicySpec's podSelector. The except entry describes CIDRs that should not be included within this rule.
class IPBlock {
  /// Default constructor.
  const IPBlock({
    required this.cidr,
    this.except,
  });

  /// Creates a [IPBlock] from JSON data.
  factory IPBlock.fromJson(Map<String, dynamic> json) {
    final tempCidrJson = json['cidr'];
    final tempExceptJson = json['except'];

    final tempCidr = tempCidrJson;
    final tempExcept = tempExceptJson;

    return IPBlock(
      cidr: tempCidr,
      except: tempExcept,
    );
  }

  /// cidr is a string representing the IPBlock Valid examples are "192.168.1.0/24" or "2001:db8::/64".
  final String cidr;

  /// except is a slice of CIDRs that should not be included within an IPBlock Valid examples are "192.168.1.0/24" or "2001:db8::/64" Except values will be rejected if they are outside the cidr range.
  final List<String>? except;

  /// Converts a [IPBlock] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempCidr = cidr;
    final tempExcept = except;

    jsonData['cidr'] = tempCidr;

    if (tempExcept != null) {
      jsonData['except'] = tempExcept;
    }

    return jsonData;
  }
}
