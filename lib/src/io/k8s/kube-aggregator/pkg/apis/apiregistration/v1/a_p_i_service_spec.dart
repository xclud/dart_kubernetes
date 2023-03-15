// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.kube__aggregator.pkg.apis.apiregistration.v1;

/// APIServiceSpec contains information for locating and communicating with a server. Only https is supported, though you are able to disable certificate verification.
class APIServiceSpec {
  /// Default constructor.
  const APIServiceSpec({
    this.caBundle,
    this.group,
    required this.groupPriorityMinimum,
    this.insecureSkipTLSVerify,
    this.service,
    this.version,
    required this.versionPriority,
  });

  /// Creates a [APIServiceSpec] from JSON data.
  factory APIServiceSpec.fromJson(Map<String, dynamic> json) {
    final tempCaBundleJson = json['caBundle'];
    final tempGroupJson = json['group'];
    final tempGroupPriorityMinimumJson = json['groupPriorityMinimum'];
    final tempInsecureSkipTLSVerifyJson = json['insecureSkipTLSVerify'];
    final tempServiceJson = json['service'];
    final tempVersionJson = json['version'];
    final tempVersionPriorityJson = json['versionPriority'];

    final tempCaBundle = tempCaBundleJson;
    final tempGroup = tempGroupJson;
    final tempGroupPriorityMinimum = tempGroupPriorityMinimumJson;
    final tempInsecureSkipTLSVerify = tempInsecureSkipTLSVerifyJson;
    final tempService = tempServiceJson != null
        ? ServiceReference.fromJson(tempServiceJson)
        : null;
    final tempVersion = tempVersionJson;
    final tempVersionPriority = tempVersionPriorityJson;

    return APIServiceSpec(
      caBundle: tempCaBundle,
      group: tempGroup,
      groupPriorityMinimum: tempGroupPriorityMinimum,
      insecureSkipTLSVerify: tempInsecureSkipTLSVerify,
      service: tempService,
      version: tempVersion,
      versionPriority: tempVersionPriority,
    );
  }

  /// CABundle is a PEM encoded CA bundle which will be used to validate an API server's serving certificate. If unspecified, system trust roots on the apiserver are used.
  final String? caBundle;

  /// Group is the API group name this server hosts.
  final String? group;

  /// GroupPriorityMininum is the priority this group should have at least. Higher priority means that the group is preferred by clients over lower priority ones. Note that other versions of this group might specify even higher GroupPriorityMininum values such that the whole group gets a higher priority. The primary sort is based on GroupPriorityMinimum, ordered highest number to lowest (20 before 10). The secondary sort is based on the alphabetical comparison of the name of the object.  (v1.bar before v1.foo) We'd recommend something like: *.k8s.io (except extensions) at 18000 and PaaSes (OpenShift, Deis) are recommended to be in the 2000s.
  final int groupPriorityMinimum;

  /// InsecureSkipTLSVerify disables TLS certificate verification when communicating with this server. This is strongly discouraged.  You should use the CABundle instead.
  final bool? insecureSkipTLSVerify;

  /// Service is a reference to the service for this API server.  It must communicate on port 443. If the Service is nil, that means the handling for the API groupversion is handled locally on this server. The call will simply delegate to the normal handler chain to be fulfilled.
  final ServiceReference? service;

  /// Version is the API version this server hosts.  For example, "v1".
  final String? version;

  /// VersionPriority controls the ordering of this API version inside of its group.  Must be greater than zero. The primary sort is based on VersionPriority, ordered highest to lowest (20 before 10). Since it's inside of a group, the number can be small, probably in the 10s. In case of equal version priorities, the version string will be used to compute the order inside a group. If the version string is "kube-like", it will sort above non "kube-like" version strings, which are ordered lexicographically. "Kube-like" versions start with a "v", then are followed by a number (the major version), then optionally the string "alpha" or "beta" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
  final int versionPriority;

  /// Converts a [APIServiceSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempCaBundle = caBundle;
    final tempGroup = group;
    final tempGroupPriorityMinimum = groupPriorityMinimum;
    final tempInsecureSkipTLSVerify = insecureSkipTLSVerify;
    final tempService = service;
    final tempVersion = version;
    final tempVersionPriority = versionPriority;

    if (tempCaBundle != null) {
      jsonData['caBundle'] = tempCaBundle;
    }

    if (tempGroup != null) {
      jsonData['group'] = tempGroup;
    }

    jsonData['groupPriorityMinimum'] = tempGroupPriorityMinimum;

    if (tempInsecureSkipTLSVerify != null) {
      jsonData['insecureSkipTLSVerify'] = tempInsecureSkipTLSVerify;
    }

    if (tempService != null) {
      jsonData['service'] = tempService.toJson();
    }

    if (tempVersion != null) {
      jsonData['version'] = tempVersion;
    }

    jsonData['versionPriority'] = tempVersionPriority;

    return jsonData;
  }
}
