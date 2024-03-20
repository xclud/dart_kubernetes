// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// ServiceSpec describes the attributes that a user creates on a service.
class ServiceSpec {
  /// Default constructor.
  const ServiceSpec({
    this.allocateLoadBalancerNodePorts,
    this.clusterIP,
    this.clusterIPs,
    this.externalIPs,
    this.externalName,
    this.externalTrafficPolicy,
    this.healthCheckNodePort,
    this.internalTrafficPolicy,
    this.ipFamilies,
    this.ipFamilyPolicy,
    this.loadBalancerClass,
    this.loadBalancerIP,
    this.loadBalancerSourceRanges,
    this.ports,
    this.publishNotReadyAddresses,
    this.selector,
    this.sessionAffinity,
    this.sessionAffinityConfig,
    this.type,
  });

  /// Creates a [ServiceSpec] from JSON data.
  factory ServiceSpec.fromJson(Map<String, dynamic> json) {
    final tempAllocateLoadBalancerNodePortsJson =
        json['allocateLoadBalancerNodePorts'];
    final tempClusterIPJson = json['clusterIP'];
    final tempClusterIPsJson = json['clusterIPs'];
    final tempExternalIPsJson = json['externalIPs'];
    final tempExternalNameJson = json['externalName'];
    final tempExternalTrafficPolicyJson = json['externalTrafficPolicy'];
    final tempHealthCheckNodePortJson = json['healthCheckNodePort'];
    final tempInternalTrafficPolicyJson = json['internalTrafficPolicy'];
    final tempIpFamiliesJson = json['ipFamilies'];
    final tempIpFamilyPolicyJson = json['ipFamilyPolicy'];
    final tempLoadBalancerClassJson = json['loadBalancerClass'];
    final tempLoadBalancerIPJson = json['loadBalancerIP'];
    final tempLoadBalancerSourceRangesJson = json['loadBalancerSourceRanges'];
    final tempPortsJson = json['ports'];
    final tempPublishNotReadyAddressesJson = json['publishNotReadyAddresses'];
    final tempSelectorJson = json['selector'];
    final tempSessionAffinityJson = json['sessionAffinity'];
    final tempSessionAffinityConfigJson = json['sessionAffinityConfig'];
    final tempTypeJson = json['type'];

    final bool? tempAllocateLoadBalancerNodePorts =
        tempAllocateLoadBalancerNodePortsJson;
    final String? tempClusterIP = tempClusterIPJson;
    final List<String>? tempClusterIPs = tempClusterIPsJson != null
        ? List<String>.from(tempClusterIPsJson)
        : null;
    final List<String>? tempExternalIPs = tempExternalIPsJson != null
        ? List<String>.from(tempExternalIPsJson)
        : null;
    final String? tempExternalName = tempExternalNameJson;
    final String? tempExternalTrafficPolicy = tempExternalTrafficPolicyJson;
    final int? tempHealthCheckNodePort = tempHealthCheckNodePortJson;
    final String? tempInternalTrafficPolicy = tempInternalTrafficPolicyJson;
    final List<String>? tempIpFamilies = tempIpFamiliesJson != null
        ? List<String>.from(tempIpFamiliesJson)
        : null;
    final String? tempIpFamilyPolicy = tempIpFamilyPolicyJson;
    final String? tempLoadBalancerClass = tempLoadBalancerClassJson;
    final String? tempLoadBalancerIP = tempLoadBalancerIPJson;
    final List<String>? tempLoadBalancerSourceRanges =
        tempLoadBalancerSourceRangesJson != null
            ? List<String>.from(tempLoadBalancerSourceRangesJson)
            : null;

    final List<ServicePort>? tempPorts = tempPortsJson != null
        ? List<dynamic>.from(tempPortsJson)
            .map(
              (e) => ServicePort.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final bool? tempPublishNotReadyAddresses = tempPublishNotReadyAddressesJson;

    final Map<String, String>? tempSelector = tempSelectorJson != null
        ? Map<String, String>.from(tempSelectorJson)
        : null;

    final String? tempSessionAffinity = tempSessionAffinityJson;
    final SessionAffinityConfig? tempSessionAffinityConfig =
        tempSessionAffinityConfigJson != null
            ? SessionAffinityConfig.fromJson(tempSessionAffinityConfigJson)
            : null;
    final String? tempType = tempTypeJson;

    return ServiceSpec(
      allocateLoadBalancerNodePorts: tempAllocateLoadBalancerNodePorts,
      clusterIP: tempClusterIP,
      clusterIPs: tempClusterIPs,
      externalIPs: tempExternalIPs,
      externalName: tempExternalName,
      externalTrafficPolicy: tempExternalTrafficPolicy,
      healthCheckNodePort: tempHealthCheckNodePort,
      internalTrafficPolicy: tempInternalTrafficPolicy,
      ipFamilies: tempIpFamilies,
      ipFamilyPolicy: tempIpFamilyPolicy,
      loadBalancerClass: tempLoadBalancerClass,
      loadBalancerIP: tempLoadBalancerIP,
      loadBalancerSourceRanges: tempLoadBalancerSourceRanges,
      ports: tempPorts,
      publishNotReadyAddresses: tempPublishNotReadyAddresses,
      selector: tempSelector,
      sessionAffinity: tempSessionAffinity,
      sessionAffinityConfig: tempSessionAffinityConfig,
      type: tempType,
    );
  }

  /// allocateLoadBalancerNodePorts defines if NodePorts will be automatically allocated for services with type LoadBalancer.  Default is "true". It may be set to "false" if the cluster load-balancer does not rely on NodePorts.  If the caller requests specific NodePorts (by specifying a value), those requests will be respected, regardless of this field. This field may only be set for services with type LoadBalancer and will be cleared if the type is changed to any other type.
  final bool? allocateLoadBalancerNodePorts;

  /// clusterIP is the IP address of the service and is usually assigned randomly. If an address is specified manually, is in-range (as per system configuration), and is not in use, it will be allocated to the service; otherwise creation of the service will fail. This field may not be changed through updates unless the type field is also being changed to ExternalName (which requires this field to be blank) or the type field is being changed from ExternalName (in which case this field may optionally be specified, as describe above).  Valid values are "None", empty string (""), or a valid IP address. Setting this to "None" makes a "headless service" (no virtual IP), which is useful when direct endpoint connections are preferred and proxying is not required.  Only applies to types ClusterIP, NodePort, and LoadBalancer. If this field is specified when creating a Service of type ExternalName, creation will fail. This field will be wiped when updating a Service to type ExternalName. More info: https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies.
  final String? clusterIP;

  /// ClusterIPs is a list of IP addresses assigned to this service, and are usually assigned randomly.  If an address is specified manually, is in-range (as per system configuration), and is not in use, it will be allocated to the service; otherwise creation of the service will fail. This field may not be changed through updates unless the type field is also being changed to ExternalName (which requires this field to be empty) or the type field is being changed from ExternalName (in which case this field may optionally be specified, as describe above).  Valid values are "None", empty string (""), or a valid IP address.  Setting this to "None" makes a "headless service" (no virtual IP), which is useful when direct endpoint connections are preferred and proxying is not required.  Only applies to types ClusterIP, NodePort, and LoadBalancer. If this field is specified when creating a Service of type ExternalName, creation will fail. This field will be wiped when updating a Service to type ExternalName.  If this field is not specified, it will be initialized from the clusterIP field.  If this field is specified, clients must ensure that clusterIPs\[0\] and clusterIP have the same value.
  ///
  /// This field may hold a maximum of two entries (dual-stack IPs, in either order). These IPs must correspond to the values of the ipFamilies field. Both clusterIPs and ipFamilies are governed by the ipFamilyPolicy field. More info: https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies.
  final List<String>? clusterIPs;

  /// externalIPs is a list of IP addresses for which nodes in the cluster will also accept traffic for this service.  These IPs are not managed by Kubernetes.  The user is responsible for ensuring that traffic arrives at a node with this IP.  A common example is external load-balancers that are not part of the Kubernetes system.
  final List<String>? externalIPs;

  /// externalName is the external reference that discovery mechanisms will return as an alias for this service (e.g. a DNS CNAME record). No proxying will be involved.  Must be a lowercase RFC-1123 hostname (https://tools.ietf.org/html/rfc1123) and requires `type` to be "ExternalName".
  final String? externalName;

  /// externalTrafficPolicy describes how nodes distribute service traffic they receive on one of the Service's "externally-facing" addresses (NodePorts, ExternalIPs, and LoadBalancer IPs). If set to "Local", the proxy will configure the service in a way that assumes that external load balancers will take care of balancing the service traffic between nodes, and so each node will deliver traffic only to the node-local endpoints of the service, without masquerading the client source IP. (Traffic mistakenly sent to a node with no endpoints will be dropped.) The default value, "Cluster", uses the standard behavior of routing to all endpoints evenly (possibly modified by topology and other features). Note that traffic sent to an External IP or LoadBalancer IP from within the cluster will always get "Cluster" semantics, but clients sending to a NodePort from within the cluster may need to take traffic policy into account when picking a node.
  final String? externalTrafficPolicy;

  /// healthCheckNodePort specifies the healthcheck nodePort for the service. This only applies when type is set to LoadBalancer and externalTrafficPolicy is set to Local. If a value is specified, is in-range, and is not in use, it will be used.  If not specified, a value will be automatically allocated.  External systems (e.g. load-balancers) can use this port to determine if a given node holds endpoints for this service or not.  If this field is specified when creating a Service which does not need it, creation will fail. This field will be wiped when updating a Service to no longer need it (e.g. changing type). This field cannot be updated once set.
  final int? healthCheckNodePort;

  /// InternalTrafficPolicy describes how nodes distribute service traffic they receive on the ClusterIP. If set to "Local", the proxy will assume that pods only want to talk to endpoints of the service on the same node as the pod, dropping the traffic if there are no local endpoints. The default value, "Cluster", uses the standard behavior of routing to all endpoints evenly (possibly modified by topology and other features).
  final String? internalTrafficPolicy;

  /// IPFamilies is a list of IP families (e.g. IPv4, IPv6) assigned to this service. This field is usually assigned automatically based on cluster configuration and the ipFamilyPolicy field. If this field is specified manually, the requested family is available in the cluster, and ipFamilyPolicy allows it, it will be used; otherwise creation of the service will fail. This field is conditionally mutable: it allows for adding or removing a secondary IP family, but it does not allow changing the primary IP family of the Service. Valid values are "IPv4" and "IPv6".  This field only applies to Services of types ClusterIP, NodePort, and LoadBalancer, and does apply to "headless" services. This field will be wiped when updating a Service to type ExternalName.
  ///
  /// This field may hold a maximum of two entries (dual-stack families, in either order).  These families must correspond to the values of the clusterIPs field, if specified. Both clusterIPs and ipFamilies are governed by the ipFamilyPolicy field.
  final List<String>? ipFamilies;

  /// IPFamilyPolicy represents the dual-stack-ness requested or required by this Service. If there is no value provided, then this field will be set to SingleStack. Services can be "SingleStack" (a single IP family), "PreferDualStack" (two IP families on dual-stack configured clusters or a single IP family on single-stack clusters), or "RequireDualStack" (two IP families on dual-stack configured clusters, otherwise fail). The ipFamilies and clusterIPs fields depend on the value of this field. This field will be wiped when updating a service to type ExternalName.
  final String? ipFamilyPolicy;

  /// loadBalancerClass is the class of the load balancer implementation this Service belongs to. If specified, the value of this field must be a label-style identifier, with an optional prefix, e.g. "internal-vip" or "example.com/internal-vip". Unprefixed names are reserved for end-users. This field can only be set when the Service type is 'LoadBalancer'. If not set, the default load balancer implementation is used, today this is typically done through the cloud provider integration, but should apply for any default implementation. If set, it is assumed that a load balancer implementation is watching for Services with a matching class. Any default load balancer implementation (e.g. cloud providers) should ignore Services that set this field. This field can only be set when creating or updating a Service to type 'LoadBalancer'. Once set, it can not be changed. This field will be wiped when a service is updated to a non 'LoadBalancer' type.
  final String? loadBalancerClass;

  /// Only applies to Service Type: LoadBalancer. This feature depends on whether the underlying cloud-provider supports specifying the loadBalancerIP when a load balancer is created. This field will be ignored if the cloud-provider does not support the feature. Deprecated: This field was under-specified and its meaning varies across implementations, and it cannot support dual-stack. As of Kubernetes v1.24, users are encouraged to use implementation-specific annotations when available. This field may be removed in a future API version.
  final String? loadBalancerIP;

  /// If specified and supported by the platform, this will restrict traffic through the cloud-provider load-balancer will be restricted to the specified client IPs. This field will be ignored if the cloud-provider does not support the feature." More info: https://kubernetes.io/docs/tasks/access-application-cluster/create-external-load-balancer/.
  final List<String>? loadBalancerSourceRanges;

  /// The list of ports that are exposed by this service. More info: https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies.
  final List<ServicePort>? ports;

  /// publishNotReadyAddresses indicates that any agent which deals with endpoints for this Service should disregard any indications of ready/not-ready. The primary use case for setting this field is for a StatefulSet's Headless Service to propagate SRV DNS records for its Pods for the purpose of peer discovery. The Kubernetes controllers that generate Endpoints and EndpointSlice resources for Services interpret this to mean that all endpoints are considered "ready" even if the Pods themselves are not. Agents which consume only Kubernetes generated endpoints through the Endpoints or EndpointSlice resources can safely assume this behavior.
  final bool? publishNotReadyAddresses;

  /// Route service traffic to pods with label keys and values matching this selector. If empty or not present, the service is assumed to have an external process managing its endpoints, which Kubernetes will not modify. Only applies to types ClusterIP, NodePort, and LoadBalancer. Ignored if type is ExternalName. More info: https://kubernetes.io/docs/concepts/services-networking/service/.
  final Map<String, String>? selector;

  /// Supports "ClientIP" and "None". Used to maintain session affinity. Enable client IP based session affinity. Must be ClientIP or None. Defaults to None. More info: https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies.
  final String? sessionAffinity;

  /// sessionAffinityConfig contains the configurations of session affinity.
  final SessionAffinityConfig? sessionAffinityConfig;

  /// type determines how the Service is exposed. Defaults to ClusterIP. Valid options are ExternalName, ClusterIP, NodePort, and LoadBalancer. "ClusterIP" allocates a cluster-internal IP address for load-balancing to endpoints. Endpoints are determined by the selector or if that is not specified, by manual construction of an Endpoints object or EndpointSlice objects. If clusterIP is "None", no virtual IP is allocated and the endpoints are published as a set of endpoints rather than a virtual IP. "NodePort" builds on ClusterIP and allocates a port on every node which routes to the same endpoints as the clusterIP. "LoadBalancer" builds on NodePort and creates an external load-balancer (if supported in the current cloud) which routes to the same endpoints as the clusterIP. "ExternalName" aliases this service to the specified externalName. Several other fields do not apply to ExternalName services. More info: https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types.
  final String? type;

  /// Converts a [ServiceSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAllocateLoadBalancerNodePorts = allocateLoadBalancerNodePorts;
    final tempClusterIP = clusterIP;
    final tempClusterIPs = clusterIPs;
    final tempExternalIPs = externalIPs;
    final tempExternalName = externalName;
    final tempExternalTrafficPolicy = externalTrafficPolicy;
    final tempHealthCheckNodePort = healthCheckNodePort;
    final tempInternalTrafficPolicy = internalTrafficPolicy;
    final tempIpFamilies = ipFamilies;
    final tempIpFamilyPolicy = ipFamilyPolicy;
    final tempLoadBalancerClass = loadBalancerClass;
    final tempLoadBalancerIP = loadBalancerIP;
    final tempLoadBalancerSourceRanges = loadBalancerSourceRanges;
    final tempPorts = ports;
    final tempPublishNotReadyAddresses = publishNotReadyAddresses;
    final tempSelector = selector;
    final tempSessionAffinity = sessionAffinity;
    final tempSessionAffinityConfig = sessionAffinityConfig;
    final tempType = type;

    if (tempAllocateLoadBalancerNodePorts != null) {
      jsonData['allocateLoadBalancerNodePorts'] =
          tempAllocateLoadBalancerNodePorts;
    }

    if (tempClusterIP != null) {
      jsonData['clusterIP'] = tempClusterIP;
    }

    if (tempClusterIPs != null) {
      jsonData['clusterIPs'] = tempClusterIPs;
    }

    if (tempExternalIPs != null) {
      jsonData['externalIPs'] = tempExternalIPs;
    }

    if (tempExternalName != null) {
      jsonData['externalName'] = tempExternalName;
    }

    if (tempExternalTrafficPolicy != null) {
      jsonData['externalTrafficPolicy'] = tempExternalTrafficPolicy;
    }

    if (tempHealthCheckNodePort != null) {
      jsonData['healthCheckNodePort'] = tempHealthCheckNodePort;
    }

    if (tempInternalTrafficPolicy != null) {
      jsonData['internalTrafficPolicy'] = tempInternalTrafficPolicy;
    }

    if (tempIpFamilies != null) {
      jsonData['ipFamilies'] = tempIpFamilies;
    }

    if (tempIpFamilyPolicy != null) {
      jsonData['ipFamilyPolicy'] = tempIpFamilyPolicy;
    }

    if (tempLoadBalancerClass != null) {
      jsonData['loadBalancerClass'] = tempLoadBalancerClass;
    }

    if (tempLoadBalancerIP != null) {
      jsonData['loadBalancerIP'] = tempLoadBalancerIP;
    }

    if (tempLoadBalancerSourceRanges != null) {
      jsonData['loadBalancerSourceRanges'] = tempLoadBalancerSourceRanges;
    }

    if (tempPorts != null) {
      jsonData['ports'] =
          tempPorts.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempPublishNotReadyAddresses != null) {
      jsonData['publishNotReadyAddresses'] = tempPublishNotReadyAddresses;
    }

    if (tempSelector != null) {
      jsonData['selector'] = tempSelector;
    }

    if (tempSessionAffinity != null) {
      jsonData['sessionAffinity'] = tempSessionAffinity;
    }

    if (tempSessionAffinityConfig != null) {
      jsonData['sessionAffinityConfig'] = tempSessionAffinityConfig.toJson();
    }

    if (tempType != null) {
      jsonData['type'] = tempType;
    }

    return jsonData;
  }
}
