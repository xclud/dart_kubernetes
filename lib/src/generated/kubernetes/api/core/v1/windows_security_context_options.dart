
/// WindowsSecurityContextOptions contain Windows-specific options and credentials.
class WindowsSecurityContextOptions {
  /// The main constructor.
  const WindowsSecurityContextOptions({
    this.gmsaCredentialSpec,
    this.gmsaCredentialSpecName,
    this.hostProcess,
    this.runAsUserName,
  });

  /// Creates a WindowsSecurityContextOptions from JSON data.
  WindowsSecurityContextOptions.fromJson(Map<String, dynamic> json)
      : this(
          gmsaCredentialSpec: json['gmsaCredentialSpec'],
          gmsaCredentialSpecName: json['gmsaCredentialSpecName'],
          hostProcess: json['hostProcess'],
          runAsUserName: json['runAsUserName'],
        );

  /// Creates a list of WindowsSecurityContextOptions from JSON data.
  static List<WindowsSecurityContextOptions> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => WindowsSecurityContextOptions.fromJson(e)).toList();
  }

  /// Converts a WindowsSecurityContextOptions instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(gmsaCredentialSpec != null) { jsonData['gmsaCredentialSpec'] = gmsaCredentialSpec!; }
    if(gmsaCredentialSpecName != null) { jsonData['gmsaCredentialSpecName'] = gmsaCredentialSpecName!; }
    if(hostProcess != null) { jsonData['hostProcess'] = hostProcess!; }
    if(runAsUserName != null) { jsonData['runAsUserName'] = runAsUserName!; }
    

    return jsonData;
  }


  /// GMSACredentialSpec is where the GMSA admission webhook (https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.
  final String? gmsaCredentialSpec;

  /// GMSACredentialSpecName is the name of the GMSA credential spec to use.
  final String? gmsaCredentialSpecName;

  /// HostProcess determines if a container should be run as a 'Host Process' container. This field is alpha-level and will only be honored by components that enable the WindowsHostProcessContainers feature flag. Setting this field without the feature flag will result in errors when validating the Pod. All of a Pod's containers must have the same effective HostProcess value (it is not allowed to have a mix of HostProcess containers and non-HostProcess containers).  In addition, if HostProcess is true then HostNetwork must also be set to true.
  final bool? hostProcess;

  /// The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
  final String? runAsUserName;
}
