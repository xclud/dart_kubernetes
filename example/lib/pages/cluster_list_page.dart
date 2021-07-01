import 'package:yakc/helpers/cluster_store.dart';
import 'package:yakc/models.dart';
import 'package:yakc/pages/cluster_add_page.dart';
import 'package:yakc/pages/cluster_view_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClusterListPage extends StatefulWidget {
  const ClusterListPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ClusterListPage> createState() => _ClusterListPageState();
}

class _ClusterListPageState extends State<ClusterListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Clusters'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            tooltip: 'Add Cluster',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ClusterAddPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: FutureBuilder<List<Cluster>>(
        future: getClusters(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return const Center(child: Text('Loading...'));
          }

          return ListView(
            children: snapshot.data!
                .map(
                  (e) => ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ClusterViewPage(cluster: e),
                        ),
                      );
                    },
                    title: Text(e.name),
                    subtitle: Text(e.server),
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }
}
