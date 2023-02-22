
/// EventSource contains information for an event.
class EventSource {
  /// The main constructor.
  const EventSource({
    this.component,
    this.host,
  });

  /// Creates a EventSource from JSON data.
  EventSource.fromJson(Map<String, dynamic> json)
      : this(
          component: json['component'],
          host: json['host'],
        );

  /// Creates a list of EventSource from JSON data.
  static List<EventSource> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => EventSource.fromJson(e)).toList();
  }

  /// Converts a EventSource instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(component != null) { jsonData['component'] = component!; }
    if(host != null) { jsonData['host'] = host!; }
    

    return jsonData;
  }


  /// Component from which the event is generated.
  final String? component;

  /// Node name on which the event is generated.
  final String? host;
}
