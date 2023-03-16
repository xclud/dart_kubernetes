// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// Represents a Quobyte mount that lasts the lifetime of a pod. Quobyte volumes do not support ownership management or SELinux relabeling.
class QuobyteVolumeSource {
  /// Default constructor.
  const QuobyteVolumeSource({
    this.group,
    this.readOnly,
    required this.registry,
    this.tenant,
    this.user,
    required this.volume,
  });

  /// Creates a [QuobyteVolumeSource] from JSON data.
  factory QuobyteVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempGroupJson = json['group'];
    final tempReadOnlyJson = json['readOnly'];
    final tempRegistryJson = json['registry'];
    final tempTenantJson = json['tenant'];
    final tempUserJson = json['user'];
    final tempVolumeJson = json['volume'];

    final String? tempGroup = tempGroupJson;
    final bool? tempReadOnly = tempReadOnlyJson;
    final String tempRegistry = tempRegistryJson;
    final String? tempTenant = tempTenantJson;
    final String? tempUser = tempUserJson;
    final String tempVolume = tempVolumeJson;

    return QuobyteVolumeSource(
      group: tempGroup,
      readOnly: tempReadOnly,
      registry: tempRegistry,
      tenant: tempTenant,
      user: tempUser,
      volume: tempVolume,
    );
  }

  /// group to map volume access to Default is no group.
  final String? group;

  /// readOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false.
  final bool? readOnly;

  /// registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes.
  final String registry;

  /// tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned Quobyte volumes, value is set by the plugin.
  final String? tenant;

  /// user to map volume access to Defaults to serivceaccount user.
  final String? user;

  /// volume is a string that references an already created Quobyte volume by name.
  final String volume;

  /// Converts a [QuobyteVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempGroup = group;
    final tempReadOnly = readOnly;
    final tempRegistry = registry;
    final tempTenant = tenant;
    final tempUser = user;
    final tempVolume = volume;

    if (tempGroup != null) {
      jsonData['group'] = tempGroup;
    }

    if (tempReadOnly != null) {
      jsonData['readOnly'] = tempReadOnly;
    }

    jsonData['registry'] = tempRegistry;

    if (tempTenant != null) {
      jsonData['tenant'] = tempTenant;
    }

    if (tempUser != null) {
      jsonData['user'] = tempUser;
    }

    jsonData['volume'] = tempVolume;

    return jsonData;
  }
}
