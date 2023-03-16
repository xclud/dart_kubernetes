// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// SELinuxOptions are the labels to be applied to the container.
class SELinuxOptions {
  /// Default constructor.
  const SELinuxOptions({
    this.level,
    this.role,
    this.type,
    this.user,
  });

  /// Creates a [SELinuxOptions] from JSON data.
  factory SELinuxOptions.fromJson(Map<String, dynamic> json) {
    final tempLevelJson = json['level'];
    final tempRoleJson = json['role'];
    final tempTypeJson = json['type'];
    final tempUserJson = json['user'];

    final String? tempLevel = tempLevelJson;
    final String? tempRole = tempRoleJson;
    final String? tempType = tempTypeJson;
    final String? tempUser = tempUserJson;

    return SELinuxOptions(
      level: tempLevel,
      role: tempRole,
      type: tempType,
      user: tempUser,
    );
  }

  /// Level is SELinux level label that applies to the container.
  final String? level;

  /// Role is a SELinux role label that applies to the container.
  final String? role;

  /// Type is a SELinux type label that applies to the container.
  final String? type;

  /// User is a SELinux user label that applies to the container.
  final String? user;

  /// Converts a [SELinuxOptions] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempLevel = level;
    final tempRole = role;
    final tempType = type;
    final tempUser = user;

    if (tempLevel != null) {
      jsonData['level'] = tempLevel;
    }

    if (tempRole != null) {
      jsonData['role'] = tempRole;
    }

    if (tempType != null) {
      jsonData['type'] = tempType;
    }

    if (tempUser != null) {
      jsonData['user'] = tempUser;
    }

    return jsonData;
  }
}
