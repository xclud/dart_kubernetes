/// NodeSystemInfo is a set of ids/uuids to uniquely identify the node.
class NodeSystemInfo {
  /// The main constructor.
  const NodeSystemInfo({
    required this.architecture,
    required this.bootID,
    required this.containerRuntimeVersion,
    required this.kernelVersion,
    required this.kubeProxyVersion,
    required this.kubeletVersion,
    required this.machineID,
    required this.operatingSystem,
    required this.osImage,
    required this.systemUUID,
  });

  /// Creates a NodeSystemInfo from JSON data.
  NodeSystemInfo.fromJson(Map<String, dynamic> json)
      : this(
          architecture: json['architecture'],
          bootID: json['bootID'],
          containerRuntimeVersion: json['containerRuntimeVersion'],
          kernelVersion: json['kernelVersion'],
          kubeProxyVersion: json['kubeProxyVersion'],
          kubeletVersion: json['kubeletVersion'],
          machineID: json['machineID'],
          operatingSystem: json['operatingSystem'],
          osImage: json['osImage'],
          systemUUID: json['systemUUID'],
        );

  /// Creates a list of NodeSystemInfo from JSON data.
  static List<NodeSystemInfo> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NodeSystemInfo.fromJson(e)).toList();
  }

  /// The Architecture reported by the node.
  final String architecture;

  /// Boot ID reported by the node.
  final String bootID;

  /// ContainerRuntime Version reported by the node through runtime remote API (e.g. docker://1.5.0).
  final String containerRuntimeVersion;

  /// Kernel Version reported by the node from 'uname -r' (e.g. 3.16.0-0.bpo.4-amd64).
  final String kernelVersion;

  /// KubeProxy Version reported by the node.
  final String kubeProxyVersion;

  /// Kubelet Version reported by the node.
  final String kubeletVersion;

  /// MachineID reported by the node. For unique machine identification in the cluster this field is preferred. Learn more from man(5) machine-id: http://man7.org/linux/man-pages/man5/machine-id.5.html.
  final String machineID;

  /// The Operating System reported by the node.
  final String operatingSystem;

  /// OS Image reported by the node from /etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).
  final String osImage;

  /// SystemUUID reported by the node. For unique machine identification MachineID is preferred. This field is specific to Red Hat hosts https://access.redhat.com/documentation/en-us/red_hat_subscription_management/1/html/rhsm/uuid.
  final String systemUUID;
}
