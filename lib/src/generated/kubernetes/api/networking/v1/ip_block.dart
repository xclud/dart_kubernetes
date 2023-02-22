
/// IPBlock describes a particular CIDR (Ex. "192.168.1.0/24","2001:db8::/64") that is allowed to the pods matched by a NetworkPolicySpec's podSelector. The except entry describes CIDRs that should not be included within this rule.
class IPBlock {
  /// The main constructor.
  const IPBlock({
    required this.cidr,
    this.except,
  });

  /// Creates a IPBlock from JSON data.
  IPBlock.fromJson(Map<String, dynamic> json)
      : this(
          cidr: json['cidr'],
          except: json['except'] != null ? List<String>.from(json['except']) : null,
        );

  /// Creates a list of IPBlock from JSON data.
  static List<IPBlock> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => IPBlock.fromJson(e)).toList();
  }

  /// Converts a IPBlock instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    jsonData['cidr'] = cidr;
    if(except != null) { jsonData['except'] = except!; }
    

    return jsonData;
  }


  /// Cidr is a string representing the IPBlock Valid examples are "192.168.1.0/24" or "2001:db8::/64".
  final String cidr;

  /// Except is a slice of CIDRs that should not be included within an IPBlock Valid examples are "192.168.1.0/24" or "2001:db8::/64" Except values will be rejected if they are outside the cidr range.
  final List<String>? except;
}
