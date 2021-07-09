import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kubernetes/istio_v1beta1.dart';
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
        title: Text('VirtualService ${widget.virtualservice.metadata?.name}'),
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
        ],
      ),
    );
  }
}
