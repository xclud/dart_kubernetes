class HTTPRedirect {
  const HTTPRedirect({
    this.uri,
    this.authority,
    this.redirectCode,
  });

  final String? uri;
  final String? authority;
  final int? redirectCode;
}
