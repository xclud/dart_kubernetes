/// Describes how to match a given string in HTTP headers. Match is case-sensitive.
class StringMatch {
  const StringMatch({
    this.exact,
    this.prefix,
    this.regex,
  });

  /// exact string match.
  final String? exact;

  /// prefix-based match.
  final String? prefix;

  /// RE2 style regex-based match (https://github.com/google/re2/wiki/Syntax).
  final String? regex;
}
