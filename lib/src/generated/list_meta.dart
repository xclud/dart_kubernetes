class ListMeta {
  ListMeta({
    this.continueProperty,
    this.remainingItemCount,
    this.resourceVersion,
    this.selfLink,
  });

  ListMeta.fromJson(Map<String, dynamic> json)
      : this(
          continueProperty: json['continue'],
          remainingItemCount: json['remainingItemCount'],
          resourceVersion: json['resourceVersion'],
          selfLink: json['selfLink'],
        );

  final String? continueProperty;
  final int? remainingItemCount;
  final String? resourceVersion;
  final String? selfLink;
}
