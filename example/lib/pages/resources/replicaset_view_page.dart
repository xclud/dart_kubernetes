import 'package:flutter/material.dart';
import 'package:kubernetes/apps_v1.dart';
import 'package:yakc/views/object_meta_widget.dart';

class ReplicaSetViewPage extends StatefulWidget {
  const ReplicaSetViewPage({
    required this.replicaset,
    Key? key,
  }) : super(key: key);

  final ReplicaSet replicaset;

  @override
  State<ReplicaSetViewPage> createState() => _ReplicaSetViewPageState();
}

class _ReplicaSetViewPageState extends State<ReplicaSetViewPage> {
  @override
  Widget build(BuildContext context) {
    final rs = widget.replicaset;

    return Scaffold(
      appBar: AppBar(
        title: const Text('ReplicaSet'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(4.0),
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              child: ObjectMetaWidget(metadata: widget.replicaset.metadata!),
            ),
          ),
          if (rs.spec?.template?.spec?.containers != null &&
              rs.spec!.template!.spec!.containers.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Column(
                  children: rs.spec!.template!.spec!.containers
                      .map(
                        (e) => ListTile(
                          title: Text(e.name),
                          subtitle: Text(e.image ?? ''),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          if (rs.spec?.template?.spec?.initContainers != null &&
              rs.spec!.template!.spec!.initContainers!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Column(
                  children: rs.spec!.template!.spec!.initContainers!
                      .map(
                        (e) => ListTile(
                          title: Text(e.name),
                          subtitle: Text(e.image ?? ''),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
