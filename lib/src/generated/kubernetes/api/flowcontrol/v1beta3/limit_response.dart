import 'package:kubernetes/src/generated/kubernetes/api/flowcontrol/v1beta3/queuing_configuration.dart';

/// LimitResponse defines how to handle requests that can not be executed right now.
class LimitResponse {
  /// The main constructor.
  const LimitResponse({
    this.queuing,
    required this.type,
  });

  /// Creates a LimitResponse from JSON data.
  LimitResponse.fromJson(Map<String, dynamic> json)
      : this(
          queuing: json['queuing'] != null ? QueuingConfiguration.fromJson(json['queuing']): null,
          type: json['type'],
        );

  /// Creates a list of LimitResponse from JSON data.
  static List<LimitResponse> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => LimitResponse.fromJson(e)).toList();
  }

  /// Converts a LimitResponse instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(queuing != null) { jsonData['queuing'] = queuing!.toJson(); }
    jsonData['type'] = type;
    

    return jsonData;
  }


  /// `queuing` holds the configuration parameters for queuing. This field may be non-empty only if `type` is `"Queue"`.
  final QueuingConfiguration? queuing;

  /// `type` is "Queue" or "Reject". "Queue" means that requests that can not be executed upon arrival are held in a queue until they can be executed or a queuing limit is reached. "Reject" means that requests that can not be executed upon arrival are rejected. Required.
  final String type;
}
