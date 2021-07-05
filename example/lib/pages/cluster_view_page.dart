import 'package:yakc/pages/pod_properties_page.dart';
import 'package:flutter/material.dart';
import 'package:kubernetes/kubernetes.dart';
import 'package:yakc/models.dart' as models;

class ClusterViewPage extends StatefulWidget {
  ClusterViewPage({
    required this.cluster,
    Key? key,
  })  : kubernetes = KubernetesClient(
          serverUrl: cluster.server,
          authorizationToken: cluster.jwt,
        ),
        super(key: key);

  final models.Cluster cluster;
  final KubernetesClient kubernetes;

  @override
  State<ClusterViewPage> createState() => _ClusterViewPageState();
}

class _ClusterViewPageState extends State<ClusterViewPage> {
  String _namespace = 'default';

  Future<PodList> _getPods() async {
    final pods =
        await widget.kubernetes.listCoreV1NamespacedPod(namespace: _namespace);
    return pods;
  }

  // Future<DeploymentList> _getDeployments() async {
  //   final result = await widget.kubernetes
  //       .listAppsV1NamespacedDeployment(namespace: _namespace);
  //   return result;
  // }

  Future<NamespaceList> _getNamespaces() async {
    final namespaces = await widget.kubernetes.listCoreV1Namespace();
    return namespaces;
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
              onTap: () {
                //
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Pods'),
              onTap: () {
                //
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('ReplicaSets'),
              onTap: () {
                //
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('StatefulSets'),
              onTap: () {
//
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
            child: FutureBuilder<PodList>(
              future: _getPods(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: Text('Loading...'),
                  );
                }

                var pods = snapshot.data!.items;
                return ListView(
                  children: pods
                      .map(
                        (e) => ListTile(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => PodPropertiesPage(pod: e),
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
            ),
          ),
        ],
      ),
    );
  }
}

enum ClusterViewMode {
  deployments,
  pods,
  replicasets,
  statefulsets,
  daemonsets,
}
