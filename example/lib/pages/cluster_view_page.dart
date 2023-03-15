import 'package:flutter/material.dart';
import 'package:kubernetes/apps_v1.dart';
import 'package:kubernetes/core_v1.dart';
import 'package:kubernetes/istio_v1beta1.dart';
import 'package:kubernetes/kubernetes.dart';
import 'package:yakc/models.dart' as models;
import 'package:yakc/pages/resources/configmap_view_page.dart';
import 'package:yakc/pages/resources/deployment_view_page.dart';
import 'package:yakc/pages/resources/gateway_view_page.dart';
import 'package:yakc/pages/resources/pod_view_page.dart';
import 'package:yakc/pages/resources/replicaset_view_page.dart';
import 'package:yakc/pages/resources/secret_view_page.dart';
import 'package:yakc/pages/resources/service_view_page.dart';
import 'package:yakc/pages/resources/statefulset_view_page.dart';
import 'package:yakc/pages/resources/virtual_service_view_page.dart';

class ClusterViewPage extends StatefulWidget {
  ClusterViewPage({
    required this.cluster,
    Key? key,
  })  : kubernetes = KubernetesClient(
          serverUrl: cluster.server,
          accessToken: cluster.jwt,
        ),
        super(key: key);

  final models.Cluster cluster;
  final KubernetesClient kubernetes;

  @override
  State<ClusterViewPage> createState() => _ClusterViewPageState();
}

class _ClusterViewPageState extends State<ClusterViewPage> {
  String _namespace = 'default';
  var _viewMode = ClusterViewMode.pods;

  Future<GatewayList> _getGateways() async {
    final result = await widget.kubernetes
        .listIstioV1beta1NamespacedGateway(namespace: _namespace);
    return result;
  }

  Future<VirtualServiceList> _getVirtualServices() async {
    final result = await widget.kubernetes
        .listIstioV1beta1NamespacedVirtualService(namespace: _namespace);
    return result;
  }

  Future<PodList> _getPods() async {
    final result =
        await widget.kubernetes.listCoreV1NamespacedPod(namespace: _namespace);
    return result;
  }

  Future<DeploymentList> _getDeployments() async {
    final result = await widget.kubernetes
        .listAppsV1NamespacedDeployment(namespace: _namespace);
    return result;
  }

  Future<ReplicaSetList> _getReplicaSets() async {
    final result = await widget.kubernetes
        .listAppsV1NamespacedReplicaSet(namespace: _namespace);
    return result;
  }

  Future<StatefulSetList> _getStatefulSets() async {
    final result = await widget.kubernetes
        .listAppsV1NamespacedStatefulSet(namespace: _namespace);
    return result;
  }

  Future<ServiceList> _getServices() async {
    final result = await widget.kubernetes
        .listCoreV1NamespacedService(namespace: _namespace);
    return result;
  }

  Future<ConfigMapList> _getConfigMaps() async {
    final result = await widget.kubernetes
        .listCoreV1NamespacedConfigMap(namespace: _namespace);
    return result;
  }

  Future<SecretList> _getSecrets() async {
    final result = await widget.kubernetes
        .listCoreV1NamespacedSecret(namespace: _namespace);
    return result;
  }

  Future<NamespaceList> _getNamespaces() async {
    final result = await widget.kubernetes.listCoreV1Namespace();
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.cluster.name),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(widget.cluster.name),
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: const Text('Deployments'),
              selected: _viewMode == ClusterViewMode.deployments,
              onTap: () {
                setState(() {
                  _viewMode = ClusterViewMode.deployments;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Pods'),
              selected: _viewMode == ClusterViewMode.pods,
              onTap: () {
                setState(() {
                  _viewMode = ClusterViewMode.pods;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Services'),
              selected: _viewMode == ClusterViewMode.services,
              onTap: () {
                setState(() {
                  _viewMode = ClusterViewMode.services;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('ReplicaSets'),
              selected: _viewMode == ClusterViewMode.replicasets,
              onTap: () {
                setState(() {
                  _viewMode = ClusterViewMode.replicasets;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('StatefulSets'),
              selected: _viewMode == ClusterViewMode.statefulsets,
              onTap: () {
                setState(() {
                  _viewMode = ClusterViewMode.statefulsets;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('ConfigMaps'),
              selected: _viewMode == ClusterViewMode.configmaps,
              onTap: () {
                setState(() {
                  _viewMode = ClusterViewMode.configmaps;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Secrets'),
              selected: _viewMode == ClusterViewMode.secrets,
              onTap: () {
                setState(() {
                  _viewMode = ClusterViewMode.secrets;
                });
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Gateways'),
              selected: _viewMode == ClusterViewMode.gateways,
              onTap: () {
                setState(() {
                  _viewMode = ClusterViewMode.gateways;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Virtual Services'),
              selected: _viewMode == ClusterViewMode.virtualservice,
              onTap: () {
                setState(() {
                  _viewMode = ClusterViewMode.virtualservice;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Form(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FutureBuilder<NamespaceList>(
                future: _getNamespaces(),
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    return const Center(
                      child: Text('Loading...'),
                    );
                  }

                  final namespaces = snapshot.data!.items
                      .map(
                        (e) => DropdownMenuItem(
                          child: Text(e.metadata?.name ?? ''),
                          value: e.metadata?.name,
                        ),
                      )
                      .toList();

                  return DropdownButtonFormField<String>(
                    decoration: const InputDecoration(labelText: 'Namespaces'),
                    value: _namespace,
                    onChanged: (value) {
                      value ??= 'default';
                      _namespace = value;

                      setState(() {});
                    },
                    items: [
                      const DropdownMenuItem(
                        child: Text('all-namespaces'),
                        value: '_all',
                        enabled: false,
                      ),
                      ...namespaces,
                    ],
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: _buildChild(),
          ),
        ],
      ),
    );
  }

  Widget _buildChild() {
    if (_viewMode == ClusterViewMode.pods) {
      return _buildPodList();
    } else if (_viewMode == ClusterViewMode.deployments) {
      return _buildDeploymentList();
    } else if (_viewMode == ClusterViewMode.replicasets) {
      return _buildReplicaSetList();
    } else if (_viewMode == ClusterViewMode.statefulsets) {
      return _buildStatefulSetList();
    } else if (_viewMode == ClusterViewMode.services) {
      return _buildServiceList();
    } else if (_viewMode == ClusterViewMode.configmaps) {
      return _buildConfigMapList();
    } else if (_viewMode == ClusterViewMode.secrets) {
      return _buildSecretList();
    } else if (_viewMode == ClusterViewMode.gateways) {
      return _buildGatewayList();
    } else if (_viewMode == ClusterViewMode.virtualservice) {
      return _buildVirtualServiceList();
    }

    //
    return const Center(
      child: Text('Select a resource type from drawer.'),
    );
  }

  FutureBuilder<PodList> _buildPodList() {
    return FutureBuilder<PodList>(
      future: _getPods(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: Text('Loading...'),
          );
        }

        var items = snapshot.data!.items;
        return ListView(
          children: items
              .map(
                (e) => ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PodViewPage(pod: e),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                  title: Text(e.metadata?.name ?? ''),
                  subtitle: Text(e.spec?.nodeName ?? ''),
                ),
              )
              .toList(),
        );
      },
    );
  }

  FutureBuilder<DeploymentList> _buildDeploymentList() {
    return FutureBuilder<DeploymentList>(
      future: _getDeployments(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: Text('Loading...'),
          );
        }

        var items = snapshot.data!.items;
        return ListView(
          children: items
              .map(
                (e) => ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DeploymentViewPage(
                          client: widget.kubernetes,
                          deployment: e,
                        ),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                  title: Text(e.metadata?.name ?? ''),
                ),
              )
              .toList(),
        );
      },
    );
  }

  FutureBuilder<ReplicaSetList> _buildReplicaSetList() {
    return FutureBuilder<ReplicaSetList>(
      future: _getReplicaSets(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: Text('Loading...'),
          );
        }

        var items = snapshot.data!.items;
        return ListView(
          children: items
              .map(
                (e) => ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ReplicaSetViewPage(replicaset: e),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                  title: Text(e.metadata?.name ?? ''),
                ),
              )
              .toList(),
        );
      },
    );
  }

  FutureBuilder<StatefulSetList> _buildStatefulSetList() {
    return FutureBuilder<StatefulSetList>(
      future: _getStatefulSets(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: Text('Loading...'),
          );
        }

        var items = snapshot.data!.items;
        return ListView(
          children: items
              .map(
                (e) => ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            StatefulSetViewPage(statefulset: e),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                  title: Text(e.metadata?.name ?? ''),
                ),
              )
              .toList(),
        );
      },
    );
  }

  FutureBuilder<ConfigMapList> _buildConfigMapList() {
    return FutureBuilder<ConfigMapList>(
      future: _getConfigMaps(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: Text('Loading...'),
          );
        }

        var items = snapshot.data!.items;
        return ListView(
          children: items
              .map(
                (e) => ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ConfigMapViewPage(configmap: e),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                  title: Text(e.metadata?.name ?? ''),
                ),
              )
              .toList(),
        );
      },
    );
  }

  FutureBuilder<ServiceList> _buildServiceList() {
    return FutureBuilder<ServiceList>(
      future: _getServices(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: Text('Loading...'),
          );
        }

        var items = snapshot.data!.items;
        return ListView(
          children: items
              .map(
                (e) => ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ServiceViewPage(service: e),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                  title: Text(e.metadata?.name ?? ''),
                ),
              )
              .toList(),
        );
      },
    );
  }

  FutureBuilder<SecretList> _buildSecretList() {
    return FutureBuilder<SecretList>(
      future: _getSecrets(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: Text('Loading...'),
          );
        }

        var items = snapshot.data!.items;
        return ListView(
          children: items
              .map(
                (e) => ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SecretViewPage(secret: e),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                  title: Text(e.metadata?.name ?? ''),
                ),
              )
              .toList(),
        );
      },
    );
  }

  FutureBuilder<GatewayList> _buildGatewayList() {
    return FutureBuilder<GatewayList>(
      future: _getGateways(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: Text('Loading...'),
          );
        }

        var items = snapshot.data!.items;
        return ListView(
          children: items
              .map(
                (e) => ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => GatewayViewPage(gateway: e),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                  title: Text(e.metadata?.name ?? ''),
                ),
              )
              .toList(),
        );
      },
    );
  }

  FutureBuilder<VirtualServiceList> _buildVirtualServiceList() {
    return FutureBuilder<VirtualServiceList>(
      future: _getVirtualServices(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: Text('Loading...'),
          );
        }

        var items = snapshot.data!.items;
        return ListView(
          children: items
              .map(
                (e) => ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            VirtualServiceViewPage(virtualservice: e),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                  title: Text(e.metadata?.name ?? ''),
                ),
              )
              .toList(),
        );
      },
    );
  }
}

enum ClusterViewMode {
  configmaps,
  daemonsets,
  deployments,
  pods,
  replicasets,
  secrets,
  services,
  statefulsets,

  gateways,
  virtualservice,
}
