/// HTTPRewrite can be used to rewrite specific parts of a HTTP request before forwarding the
/// request to the destination. Rewrite primitive can be used only with [HTTPRouteDestination].
class HTTPRewrite {
  const HTTPRewrite({
    this.uri,
    this.authority,
  });

  HTTPRewrite.fromJson(Map<String, dynamic> json)
      : this(
          uri: json['uri'],
          authority: json['authority'],
        );

  /// Rewrite the path (or the prefix) portion of the URI with this value.
  /// If the original URI was matched based on prefix, the value provided
  /// in this field will replace the corresponding matched prefix.
  final String? uri;

  /// Rewrite the Authority/Host header with this value.
  final String? authority;
}
