import 'package:flutter/material.dart';
import 'package:kubernetes/apimachinery_pkg_apis_meta_v1.dart';

class ObjectMetaWidget extends StatelessWidget {
  const ObjectMetaWidget({
    required this.metadata,
    Key? key,
  }) : super(key: key);

  final ObjectMeta metadata;

  @override
  Widget build(BuildContext context) {
    var annotations = metadata.annotations?.entries
        .map(
          (e) => Chip(
            label: Text('${e.key}:${e.value}'),
          ),
        )
        .toList();

    return Column(
      children: [
        ListTile(
          title: Text(metadata.name ?? ''),
          subtitle: const Text('Name'),
        ),
        ListTile(
          title: Text(metadata.namespace ?? ''),
          subtitle: const Text('Namespace'),
        ),
        ListTile(
          title: Text(metadata.uid ?? ''),
          subtitle: const Text('UID'),
        ),
        if (metadata.clusterName != null)
          ListTile(
            title: Text(metadata.clusterName!),
            subtitle: const Text('Cluster Name'),
          ),
        ListTile(
          title: Text(metadata.creationTimestamp?.toLocal().toString() ?? ''),
          subtitle: const Text('Creation Timestamp'),
        ),
        if (annotations != null)
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Wrap(children: annotations),
          ),
      ],
    );
  }
}
