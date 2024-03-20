// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// NodeSystemInfo is a set of ids/uuids to uniquely identify the node.
class NodeSystemInfo {
  /// Default constructor.
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

  /// Creates a [NodeSystemInfo] from JSON data.
  factory NodeSystemInfo.fromJson(Map<String, dynamic> json) {
    final tempArchitectureJson = json['architecture'];
    final tempBootIDJson = json['bootID'];
    final tempContainerRuntimeVersionJson = json['containerRuntimeVersion'];
    final tempKernelVersionJson = json['kernelVersion'];
    final tempKubeProxyVersionJson = json['kubeProxyVersion'];
    final tempKubeletVersionJson = json['kubeletVersion'];
    final tempMachineIDJson = json['machineID'];
    final tempOperatingSystemJson = json['operatingSystem'];
    final tempOsImageJson = json['osImage'];
    final tempSystemUUIDJson = json['systemUUID'];

    final String tempArchitecture = tempArchitectureJson;
    final String tempBootID = tempBootIDJson;
    final String tempContainerRuntimeVersion = tempContainerRuntimeVersionJson;
    final String tempKernelVersion = tempKernelVersionJson;
    final String tempKubeProxyVersion = tempKubeProxyVersionJson;
    final String tempKubeletVersion = tempKubeletVersionJson;
    final String tempMachineID = tempMachineIDJson;
    final String tempOperatingSystem = tempOperatingSystemJson;
    final String tempOsImage = tempOsImageJson;
    final String tempSystemUUID = tempSystemUUIDJson;

    return NodeSystemInfo(
      architecture: tempArchitecture,
      bootID: tempBootID,
      containerRuntimeVersion: tempContainerRuntimeVersion,
      kernelVersion: tempKernelVersion,
      kubeProxyVersion: tempKubeProxyVersion,
      kubeletVersion: tempKubeletVersion,
      machineID: tempMachineID,
      operatingSystem: tempOperatingSystem,
      osImage: tempOsImage,
      systemUUID: tempSystemUUID,
    );
  }

  /// The Architecture reported by the node.
  final String architecture;

  /// Boot ID reported by the node.
  final String bootID;

  /// ContainerRuntime Version reported by the node through runtime remote API (e.g. containerd://1.4.2).
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

  /// Converts a [NodeSystemInfo] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempArchitecture = architecture;
    final tempBootID = bootID;
    final tempContainerRuntimeVersion = containerRuntimeVersion;
    final tempKernelVersion = kernelVersion;
    final tempKubeProxyVersion = kubeProxyVersion;
    final tempKubeletVersion = kubeletVersion;
    final tempMachineID = machineID;
    final tempOperatingSystem = operatingSystem;
    final tempOsImage = osImage;
    final tempSystemUUID = systemUUID;

    jsonData['architecture'] = tempArchitecture;

    jsonData['bootID'] = tempBootID;

    jsonData['containerRuntimeVersion'] = tempContainerRuntimeVersion;

    jsonData['kernelVersion'] = tempKernelVersion;

    jsonData['kubeProxyVersion'] = tempKubeProxyVersion;

    jsonData['kubeletVersion'] = tempKubeletVersion;

    jsonData['machineID'] = tempMachineID;

    jsonData['operatingSystem'] = tempOperatingSystem;

    jsonData['osImage'] = tempOsImage;

    jsonData['systemUUID'] = tempSystemUUID;

    return jsonData;
  }
}
