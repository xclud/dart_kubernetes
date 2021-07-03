import 'package:kubernetes/src/generated/api/core/v1/limit_range_item.dart';

/// LimitRangeSpec defines a min/max usage limit for resources that match on kind.
class LimitRangeSpec {
  /// The main constructor.
  const LimitRangeSpec({
    required this.limits,
  });

  /// Creates a LimitRangeSpec from JSON data.
  LimitRangeSpec.fromJson(Map<String, dynamic> json)
      : this(
          limits: json['limits'] != null
              ? LimitRangeItem.listFromJson(
                  (json['limits'] as Iterable).cast<Map<String, dynamic>>())
              : [],
        );

  /// Creates a list of LimitRangeSpec from JSON data.
  static List<LimitRangeSpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => LimitRangeSpec.fromJson(e)).toList();
  }

  /// Limits is the list of LimitRangeItem objects that are enforced.
  final List<LimitRangeItem> limits;
}
