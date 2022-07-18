import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:kubernetes/istio_v1beta1.dart';
import 'package:yakc/dialogs/json_editor_dialog.dart';
import 'package:yakc/views/object_meta_widget.dart';

class VirtualServiceViewPage extends StatefulWidget {
  const VirtualServiceViewPage({
    required this.virtualservice,
    Key? key,
  }) : super(key: key);

  final VirtualService virtualservice;

  @override
  State<VirtualServiceViewPage> createState() => _VirtualServiceViewPageState();
}

class _VirtualServiceViewPageState extends State<VirtualServiceViewPage> {
  @override
  Widget build(BuildContext context) {
    final vs = widget.virtualservice;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Virtual Service'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            tooltip: 'Edit',
            onPressed: () {
              const encoder = JsonEncoder.withIndent('  ');
              String prettyprint = encoder.convert('{}');
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
              child:
                  ObjectMetaWidget(metadata: widget.virtualservice.metadata!),
            ),
          ),
          if (vs.spec?.http != null && vs.spec!.http!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Column(
                  children: vs.spec!.http!
                      .map(
                        (e) => ListTile(
                          title: Text('Name: ${e.name}'),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          if (vs.spec?.gateways != null && vs.spec!.gateways!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Column(
                  children: vs.spec!.gateways!
                      .map(
                        (e) => ListTile(
                          title: Text('Name: $e'),
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
