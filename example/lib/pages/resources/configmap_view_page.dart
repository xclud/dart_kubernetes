import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:kubernetes/kubernetes.dart';
import 'package:yakc/dialogs/json_editor_dialog.dart';
import 'package:yakc/views/object_meta_widget.dart';

class ConfigMapViewPage extends StatefulWidget {
  const ConfigMapViewPage({
    required this.configmap,
    Key? key,
  }) : super(key: key);

  final ConfigMap configmap;

  @override
  State<ConfigMapViewPage> createState() => _ConfigMapViewPageState();
}

class _ConfigMapViewPageState extends State<ConfigMapViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ConfigMap'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            tooltip: 'Edit',
            onPressed: () {
              const encoder = JsonEncoder.withIndent('  ');
              String prettyprint = encoder.convert(widget.configmap.toJson());
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
              child: ObjectMetaWidget(metadata: widget.configmap.metadata!),
            ),
          ),
          if (widget.configmap.data != null)
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Column(
                  children: widget.configmap.data!.entries
                      .map(
                        (e) => ListTile(
                          title: Text(e.key),
                          subtitle: Text(e.value),
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
