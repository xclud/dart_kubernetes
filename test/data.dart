import 'dart:convert';

final podList = Map<String, dynamic>.from(jsonDecode('''{
 "apiVersion": "v1",
 "kind": "PodList",
 "items": [
  {
    "apiVersion": "v1",
    "kind": "Pod"
  }
 ]
 
}'''));
