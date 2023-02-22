import 'package:kubernetes/src/generated/kubernetes/api/core/v1/limit_range_item.dart';

/// LimitRangeSpec defines a min/max usage limit for resources that match on kind.
class LimitRangeSpec {
  /// The main constructor.
  const LimitRangeSpec({
    required this.limits,
  });

  /// Creates a LimitRangeSpec from JSON data.
  LimitRangeSpec.fromJson(Map<String, dynamic> json)
      : this(
          limits: json['limits'] != null ? LimitRangeItem.listFromJson((json['limits'] as Iterable).cast<Map<String, dynamic>>()): [],
        );

  /// Creates a list of LimitRangeSpec from JSON data.
  static List<LimitRangeSpec> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => LimitRangeSpec.fromJson(e)).toList();
  }

  /// Converts a LimitRangeSpec instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    jsonData['limits'] = limits.map((item) => item.toJson()).toList();
    

    return jsonData;
  }


  /// Limits is the list of LimitRangeItem objects that are enforced.
  final List<LimitRangeItem> limits;
}
