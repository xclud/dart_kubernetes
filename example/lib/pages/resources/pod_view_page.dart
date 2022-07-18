import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:kubernetes/kubernetes.dart';
import 'package:yakc/dialogs/json_editor_dialog.dart';
import 'package:yakc/views/object_meta_widget.dart';

class PodViewPage extends StatefulWidget {
  const PodViewPage({
    required this.pod,
    Key? key,
  }) : super(key: key);

  final Pod pod;

  @override
  State<PodViewPage> createState() => _PodViewPageState();
}

class _PodViewPageState extends State<PodViewPage> {
  @override
  Widget build(BuildContext context) {
    final pod = widget.pod;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pod'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            tooltip: 'Edit',
            onPressed: () {
              const encoder = JsonEncoder.withIndent('  ');
              String prettyprint = encoder.convert(widget.pod.toJson());
              showDialog(
                context: context,
                builder: (context) => JsonEditorDialog(json: prettyprint),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            tooltip: 'Delete',
            onPressed: () {
              //
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(4.0),
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              child: ObjectMetaWidget(metadata: widget.pod.metadata!),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              child: Column(
                children: widget.pod.spec!.containers
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
          if (pod.spec?.initContainers != null &&
              pod.spec!.initContainers!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Column(
                  children: pod.spec!.initContainers!
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
