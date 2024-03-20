// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// SeccompProfile defines a pod/container's seccomp profile settings. Only one profile source may be set.
class SeccompProfile {
  /// Default constructor.
  const SeccompProfile({
    this.localhostProfile,
    required this.type,
  });

  /// Creates a [SeccompProfile] from JSON data.
  factory SeccompProfile.fromJson(Map<String, dynamic> json) {
    final tempLocalhostProfileJson = json['localhostProfile'];
    final tempTypeJson = json['type'];

    final String? tempLocalhostProfile = tempLocalhostProfileJson;
    final String tempType = tempTypeJson;

    return SeccompProfile(
      localhostProfile: tempLocalhostProfile,
      type: tempType,
    );
  }

  /// localhostProfile indicates a profile defined in a file on the node should be used. The profile must be preconfigured on the node to work. Must be a descending path, relative to the kubelet's configured seccomp profile location. Must only be set if type is "Localhost".
  final String? localhostProfile;

  /// type indicates which kind of seccomp profile will be applied. Valid options are:
  ///
  /// Localhost - a profile defined in a file on the node should be used. RuntimeDefault - the container runtime default profile should be used. Unconfined - no profile should be applied.
  final String type;

  /// Converts a [SeccompProfile] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempLocalhostProfile = localhostProfile;
    final tempType = type;

    if (tempLocalhostProfile != null) {
      jsonData['localhostProfile'] = tempLocalhostProfile;
    }

    jsonData['type'] = tempType;

    return jsonData;
  }
}
