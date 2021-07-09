import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/label_selector.dart';

/// PodDisruptionBudgetSpec is a description of a PodDisruptionBudget.
class PodDisruptionBudgetSpec {
  /// The main constructor.
  const PodDisruptionBudgetSpec({
    this.maxUnavailable,
    this.minAvailable,
    this.selector,
  });

  /// Creates a PodDisruptionBudgetSpec from JSON data.
  PodDisruptionBudgetSpec.fromJson(Map<String, dynamic> json)
      : this(
          maxUnavailable: json['maxUnavailable'],
          minAvailable: json['minAvailable'],
          selector: json['selector'] != null
              ? LabelSelector.fromJson(json['selector'])
              : null,
        );

  /// Creates a list of PodDisruptionBudgetSpec from JSON data.
  static List<PodDisruptionBudgetSpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodDisruptionBudgetSpec.fromJson(e)).toList();
  }

  /// Converts a PodDisruptionBudgetSpec instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (maxUnavailable != null) {
      jsonData['maxUnavailable'] = maxUnavailable!;
    }
    if (minAvailable != null) {
      jsonData['minAvailable'] = minAvailable!;
    }
    if (selector != null) {
      jsonData['selector'] = selector!.toJson();
    }

    return jsonData;
  }

  /// An eviction is allowed if at most "maxUnavailable" pods selected by "selector" are unavailable after the eviction, i.e. even in absence of the evicted pod. For example, one can prevent all voluntary evictions by specifying 0. This is a mutually exclusive setting with "minAvailable".
  final Object? maxUnavailable;

  /// An eviction is allowed if at least "minAvailable" pods selected by "selector" will still be available after the eviction, i.e. even in the absence of the evicted pod.  So for example you can prevent all voluntary evictions by specifying "100%".
  final Object? minAvailable;

  /// Label query over pods whose evictions are managed by the disruption budget. A null selector selects no pods. An empty selector ({}) also selects no pods, which differs from standard behavior of selecting all pods. In policy/v1, an empty selector will select all pods in the namespace.
  final LabelSelector? selector;
}
