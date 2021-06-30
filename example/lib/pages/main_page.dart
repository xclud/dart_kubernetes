import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kubernetes/kubernetes.dart';

class HomePage extends StatefulWidget {
  final String server;
  final String jwt;
  final KubernetesClient kubernetes;

  HomePage({
    required this.server,
    required this.jwt,
    Key? key,
  })  : kubernetes = KubernetesClient(server, jwt),
        super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _namespace = 'default';

  Future<PodList> _getPodsFuture() async {
    final pods =
        await widget.kubernetes.listNamespacedPodWithHttpMessages(_namespace);
    return pods;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kubernetes'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Form(
            child: DropdownButtonFormField<String>(
                value: _namespace,
                onChanged: (value) {
                  value ??= 'default';
                  _namespace = value;

                  setState(() {});
                },
                items: const [
                  DropdownMenuItem(
                    child: Text('default'),
                    value: 'default',
                  ),
                  DropdownMenuItem(
                    child: Text('all-namespaces'),
                    value: '_all',
                  ),
                ]),
          ),
          Expanded(
            child: FutureBuilder<PodList>(
              future: _getPodsFuture(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: Text('Loading...'));
                }

                var pods = snapshot.data!.items!;
                return ListView(
                  children: pods
                      .map((e) => ListTile(
                            title: Text(
                                '${e.metadata?.namespace}.${e.metadata?.name}'),
                            subtitle: Text(e.spec?.nodeName ?? ''),
                          ))
                      .toList(),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _getPodsFuture(),
        tooltip: 'Reload',
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
