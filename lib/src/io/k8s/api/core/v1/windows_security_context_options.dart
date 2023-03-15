// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// WindowsSecurityContextOptions contain Windows-specific options and credentials.
class WindowsSecurityContextOptions {
  /// Default constructor.
  const WindowsSecurityContextOptions({
    this.gmsaCredentialSpec,
    this.gmsaCredentialSpecName,
    this.hostProcess,
    this.runAsUserName,
  });

  /// Creates a [WindowsSecurityContextOptions] from JSON data.
  factory WindowsSecurityContextOptions.fromJson(Map<String, dynamic> json) {
    final tempGmsaCredentialSpecJson = json['gmsaCredentialSpec'];
    final tempGmsaCredentialSpecNameJson = json['gmsaCredentialSpecName'];
    final tempHostProcessJson = json['hostProcess'];
    final tempRunAsUserNameJson = json['runAsUserName'];

    final tempGmsaCredentialSpec = tempGmsaCredentialSpecJson;
    final tempGmsaCredentialSpecName = tempGmsaCredentialSpecNameJson;
    final tempHostProcess = tempHostProcessJson;
    final tempRunAsUserName = tempRunAsUserNameJson;

    return WindowsSecurityContextOptions(
      gmsaCredentialSpec: tempGmsaCredentialSpec,
      gmsaCredentialSpecName: tempGmsaCredentialSpecName,
      hostProcess: tempHostProcess,
      runAsUserName: tempRunAsUserName,
    );
  }

  /// GMSACredentialSpec is where the GMSA admission webhook (https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.
  final String? gmsaCredentialSpec;

  /// GMSACredentialSpecName is the name of the GMSA credential spec to use.
  final String? gmsaCredentialSpecName;

  /// HostProcess determines if a container should be run as a 'Host Process' container. This field is alpha-level and will only be honored by components that enable the WindowsHostProcessContainers feature flag. Setting this field without the feature flag will result in errors when validating the Pod. All of a Pod's containers must have the same effective HostProcess value (it is not allowed to have a mix of HostProcess containers and non-HostProcess containers).  In addition, if HostProcess is true then HostNetwork must also be set to true.
  final bool? hostProcess;

  /// The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
  final String? runAsUserName;

  /// Converts a [WindowsSecurityContextOptions] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempGmsaCredentialSpec = gmsaCredentialSpec;
    final tempGmsaCredentialSpecName = gmsaCredentialSpecName;
    final tempHostProcess = hostProcess;
    final tempRunAsUserName = runAsUserName;

    if (tempGmsaCredentialSpec != null) {
      jsonData['gmsaCredentialSpec'] = tempGmsaCredentialSpec;
    }

    if (tempGmsaCredentialSpecName != null) {
      jsonData['gmsaCredentialSpecName'] = tempGmsaCredentialSpecName;
    }

    if (tempHostProcess != null) {
      jsonData['hostProcess'] = tempHostProcess;
    }

    if (tempRunAsUserName != null) {
      jsonData['runAsUserName'] = tempRunAsUserName;
    }

    return jsonData;
  }
}
