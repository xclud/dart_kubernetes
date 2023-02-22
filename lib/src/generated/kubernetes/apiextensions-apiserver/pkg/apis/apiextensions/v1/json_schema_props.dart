import 'package:kubernetes/src/generated/kubernetes/apiextensions-apiserver/pkg/apis/apiextensions/v1/json_schema_props_or_bool.dart';
import 'package:kubernetes/src/generated/kubernetes/apiextensions-apiserver/pkg/apis/apiextensions/v1/json.dart';
import 'package:kubernetes/src/generated/kubernetes/apiextensions-apiserver/pkg/apis/apiextensions/v1/json_schema_props_or_string_array.dart';
import 'package:kubernetes/src/generated/kubernetes/apiextensions-apiserver/pkg/apis/apiextensions/v1/external_documentation.dart';
import 'package:kubernetes/src/generated/kubernetes/apiextensions-apiserver/pkg/apis/apiextensions/v1/json_schema_props_or_array.dart';
import 'package:kubernetes/src/generated/kubernetes/apiextensions-apiserver/pkg/apis/apiextensions/v1/validation_rule.dart';

/// JSONSchemaProps is a JSON-Schema following Specification Draft 4 (http://json-schema.org/).
class JSONSchemaProps {
  /// The main constructor.
  const JSONSchemaProps({
    this.$ref,
    this.$schema,
    this.additionalItems,
    this.additionalProperties,
    this.allOf,
    this.anyOf,
    this.$default,
    this.definitions,
    this.dependencies,
    this.description,
    this.$enum,
    this.example,
    this.exclusiveMaximum,
    this.exclusiveMinimum,
    this.externalDocs,
    this.format,
    this.id,
    this.items,
    this.maxItems,
    this.maxLength,
    this.maxProperties,
    this.maximum,
    this.minItems,
    this.minLength,
    this.minProperties,
    this.minimum,
    this.multipleOf,
    this.not,
    this.nullable,
    this.oneOf,
    this.pattern,
    this.patternProperties,
    this.properties,
    this.$required,
    this.title,
    this.type,
    this.uniqueItems,
    this.xKubernetesEmbeddedResource,
    this.xKubernetesIntOrString,
    this.xKubernetesListMapKeys,
    this.xKubernetesListType,
    this.xKubernetesMapType,
    this.xKubernetesPreserveUnknownFields,
    this.xKubernetesValidations,
  });

  /// Creates a JSONSchemaProps from JSON data.
  JSONSchemaProps.fromJson(Map<String, dynamic> json)
      : this(
          $ref: json['\$ref'],
          $schema: json['\$schema'],
          additionalItems: json['additionalItems'] != null
              ? JSONSchemaPropsOrBool.fromJson(json['additionalItems'])
              : null,
          additionalProperties: json['additionalProperties'] != null
              ? JSONSchemaPropsOrBool.fromJson(json['additionalProperties'])
              : null,
          allOf: json['allOf'] != null
              ? JSONSchemaProps.listFromJson(
                  (json['allOf'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          anyOf: json['anyOf'] != null
              ? JSONSchemaProps.listFromJson(
                  (json['anyOf'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          $default:
              json['default'] != null ? JSON.fromJson(json['default']) : null,
          definitions: json['definitions'] != null
              ? Map<String, JSONSchemaProps>.from(
                  (json['definitions']).map(
                    (key, value) => MapEntry(
                      key,
                      JSONSchemaProps.fromJson(value),
                    ),
                  ),
                )
              : null,
          dependencies: json['dependencies'] != null
              ? Map<String, JSONSchemaPropsOrStringArray>.from(
                  (json['dependencies']).map(
                    (key, value) => MapEntry(
                      key,
                      JSONSchemaPropsOrStringArray.fromJson(value),
                    ),
                  ),
                )
              : null,
          description: json['description'],
          $enum: json['enum'] != null
              ? JSON.listFromJson(
                  (json['enum'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          example:
              json['example'] != null ? JSON.fromJson(json['example']) : null,
          exclusiveMaximum: json['exclusiveMaximum'],
          exclusiveMinimum: json['exclusiveMinimum'],
          externalDocs: json['externalDocs'] != null
              ? ExternalDocumentation.fromJson(json['externalDocs'])
              : null,
          format: json['format'],
          id: json['id'],
          items: json['items'] != null
              ? JSONSchemaPropsOrArray.fromJson(json['items'])
              : null,
          maxItems: json['maxItems'],
          maxLength: json['maxLength'],
          maxProperties: json['maxProperties'],
          maximum: json['maximum'],
          minItems: json['minItems'],
          minLength: json['minLength'],
          minProperties: json['minProperties'],
          minimum: json['minimum'],
          multipleOf: json['multipleOf'],
          not: json['not'] != null
              ? JSONSchemaProps.fromJson(json['not'])
              : null,
          nullable: json['nullable'],
          oneOf: json['oneOf'] != null
              ? JSONSchemaProps.listFromJson(
                  (json['oneOf'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          pattern: json['pattern'],
          patternProperties: json['patternProperties'] != null
              ? Map<String, JSONSchemaProps>.from(
                  (json['patternProperties']).map(
                    (key, value) => MapEntry(
                      key,
                      JSONSchemaProps.fromJson(value),
                    ),
                  ),
                )
              : null,
          properties: json['properties'] != null
              ? Map<String, JSONSchemaProps>.from(
                  (json['properties']).map(
                    (key, value) => MapEntry(
                      key,
                      JSONSchemaProps.fromJson(value),
                    ),
                  ),
                )
              : null,
          $required: json['required'] != null
              ? List<String>.from(json['required'])
              : null,
          title: json['title'],
          type: json['type'],
          uniqueItems: json['uniqueItems'],
          xKubernetesEmbeddedResource: json['x-kubernetes-embedded-resource'],
          xKubernetesIntOrString: json['x-kubernetes-int-or-string'],
          xKubernetesListMapKeys: json['x-kubernetes-list-map-keys'] != null
              ? List<String>.from(json['x-kubernetes-list-map-keys'])
              : null,
          xKubernetesListType: json['x-kubernetes-list-type'],
          xKubernetesMapType: json['x-kubernetes-map-type'],
          xKubernetesPreserveUnknownFields:
              json['x-kubernetes-preserve-unknown-fields'],
          xKubernetesValidations: json['x-kubernetes-validations'] != null
              ? ValidationRule.listFromJson(
                  (json['x-kubernetes-validations'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of JSONSchemaProps from JSON data.
  static List<JSONSchemaProps> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => JSONSchemaProps.fromJson(e)).toList();
  }

  /// Converts a JSONSchemaProps instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if ($ref != null) {
      jsonData['\$ref'] = $ref!;
    }
    if ($schema != null) {
      jsonData['\$schema'] = $schema!;
    }
    if (additionalItems != null) {
      jsonData['additionalItems'] = additionalItems!.toJson();
    }
    if (additionalProperties != null) {
      jsonData['additionalProperties'] = additionalProperties!.toJson();
    }
    if (allOf != null) {
      jsonData['allOf'] = allOf!.map((item) => item.toJson()).toList();
    }
    if (anyOf != null) {
      jsonData['anyOf'] = anyOf!.map((item) => item.toJson()).toList();
    }
    if ($default != null) {
      jsonData['default'] = $default!.toJson();
    }
    if (definitions != null) {
      jsonData['definitions'] =
          definitions!.map((key, value) => MapEntry(key, value.toJson()));
    }
    if (dependencies != null) {
      jsonData['dependencies'] =
          dependencies!.map((key, value) => MapEntry(key, value.toJson()));
    }
    if (description != null) {
      jsonData['description'] = description!;
    }
    if ($enum != null) {
      jsonData['enum'] = $enum!.map((item) => item.toJson()).toList();
    }
    if (example != null) {
      jsonData['example'] = example!.toJson();
    }
    if (exclusiveMaximum != null) {
      jsonData['exclusiveMaximum'] = exclusiveMaximum!;
    }
    if (exclusiveMinimum != null) {
      jsonData['exclusiveMinimum'] = exclusiveMinimum!;
    }
    if (externalDocs != null) {
      jsonData['externalDocs'] = externalDocs!.toJson();
    }
    if (format != null) {
      jsonData['format'] = format!;
    }
    if (id != null) {
      jsonData['id'] = id!;
    }
    if (items != null) {
      jsonData['items'] = items!.toJson();
    }
    if (maxItems != null) {
      jsonData['maxItems'] = maxItems!;
    }
    if (maxLength != null) {
      jsonData['maxLength'] = maxLength!;
    }
    if (maxProperties != null) {
      jsonData['maxProperties'] = maxProperties!;
    }
    if (maximum != null) {
      jsonData['maximum'] = maximum!;
    }
    if (minItems != null) {
      jsonData['minItems'] = minItems!;
    }
    if (minLength != null) {
      jsonData['minLength'] = minLength!;
    }
    if (minProperties != null) {
      jsonData['minProperties'] = minProperties!;
    }
    if (minimum != null) {
      jsonData['minimum'] = minimum!;
    }
    if (multipleOf != null) {
      jsonData['multipleOf'] = multipleOf!;
    }
    if (not != null) {
      jsonData['not'] = not!.toJson();
    }
    if (nullable != null) {
      jsonData['nullable'] = nullable!;
    }
    if (oneOf != null) {
      jsonData['oneOf'] = oneOf!.map((item) => item.toJson()).toList();
    }
    if (pattern != null) {
      jsonData['pattern'] = pattern!;
    }
    if (patternProperties != null) {
      jsonData['patternProperties'] =
          patternProperties!.map((key, value) => MapEntry(key, value.toJson()));
    }
    if (properties != null) {
      jsonData['properties'] =
          properties!.map((key, value) => MapEntry(key, value.toJson()));
    }
    if ($required != null) {
      jsonData['required'] = $required!;
    }
    if (title != null) {
      jsonData['title'] = title!;
    }
    if (type != null) {
      jsonData['type'] = type!;
    }
    if (uniqueItems != null) {
      jsonData['uniqueItems'] = uniqueItems!;
    }
    if (xKubernetesEmbeddedResource != null) {
      jsonData['x-kubernetes-embedded-resource'] = xKubernetesEmbeddedResource!;
    }
    if (xKubernetesIntOrString != null) {
      jsonData['x-kubernetes-int-or-string'] = xKubernetesIntOrString!;
    }
    if (xKubernetesListMapKeys != null) {
      jsonData['x-kubernetes-list-map-keys'] = xKubernetesListMapKeys!;
    }
    if (xKubernetesListType != null) {
      jsonData['x-kubernetes-list-type'] = xKubernetesListType!;
    }
    if (xKubernetesMapType != null) {
      jsonData['x-kubernetes-map-type'] = xKubernetesMapType!;
    }
    if (xKubernetesPreserveUnknownFields != null) {
      jsonData['x-kubernetes-preserve-unknown-fields'] =
          xKubernetesPreserveUnknownFields!;
    }
    if (xKubernetesValidations != null) {
      jsonData['x-kubernetes-validations'] =
          xKubernetesValidations!.map((item) => item.toJson()).toList();
    }

    return jsonData;
  }

  ///
  final String? $ref;

  ///
  final String? $schema;

  ///
  final JSONSchemaPropsOrBool? additionalItems;

  ///
  final JSONSchemaPropsOrBool? additionalProperties;

  ///
  final List<JSONSchemaProps>? allOf;

  ///
  final List<JSONSchemaProps>? anyOf;

  /// Default is a default value for undefined object fields. Defaulting is a beta feature under the CustomResourceDefaulting feature gate. Defaulting requires spec.preserveUnknownFields to be false.
  final JSON? $default;

  ///
  final Map<String, JSONSchemaProps>? definitions;

  ///
  final Map<String, JSONSchemaPropsOrStringArray>? dependencies;

  ///
  final String? description;

  ///
  final List<JSON>? $enum;

  ///
  final JSON? example;

  ///
  final bool? exclusiveMaximum;

  ///
  final bool? exclusiveMinimum;

  ///
  final ExternalDocumentation? externalDocs;

  /// Format is an OpenAPI v3 format string. Unknown formats are ignored. The following formats are validated:
  ///
  /// - bsonobjectid: a bson object ID, i.e. a 24 characters hex string - uri: an URI as parsed by Golang net/url.ParseRequestURI - email: an email address as parsed by Golang net/mail.ParseAddress - hostname: a valid representation for an Internet host name, as defined by RFC 1034, section 3.1 [RFC1034]. - ipv4: an IPv4 IP as parsed by Golang net.ParseIP - ipv6: an IPv6 IP as parsed by Golang net.ParseIP - cidr: a CIDR as parsed by Golang net.ParseCIDR - mac: a MAC address as parsed by Golang net.ParseMAC - uuid: an UUID that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?[0-9a-f]{4}-?[0-9a-f]{4}-?[0-9a-f]{12}$ - uuid3: an UUID3 that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?3[0-9a-f]{3}-?[0-9a-f]{4}-?[0-9a-f]{12}$ - uuid4: an UUID4 that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?4[0-9a-f]{3}-?[89ab][0-9a-f]{3}-?[0-9a-f]{12}$ - uuid5: an UUID5 that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?5[0-9a-f]{3}-?[89ab][0-9a-f]{3}-?[0-9a-f]{12}$ - isbn: an ISBN10 or ISBN13 number string like "0321751043" or "978-0321751041" - isbn10: an ISBN10 number string like "0321751043" - isbn13: an ISBN13 number string like "978-0321751041" - creditcard: a credit card number defined by the regex ^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\d{3})\d{11})$ with any non digit characters mixed in - ssn: a U.S. social security number following the regex ^\d{3}[- ]?\d{2}[- ]?\d{4}$ - hexcolor: an hexadecimal color code like "#FFFFFF: following the regex ^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$ - rgbcolor: an RGB color code like rgb like "rgb(255,255,2559" - byte: base64 encoded binary data - password: any kind of string - date: a date string like "2006-01-02" as defined by full-date in RFC3339 - duration: a duration string like "22 ns" as parsed by Golang time.ParseDuration or compatible with Scala duration format - datetime: a date time string like "2014-12-15T19:30:20.000Z" as defined by date-time in RFC3339.
  final String? format;

  ///
  final String? id;

  ///
  final JSONSchemaPropsOrArray? items;

  ///
  final int? maxItems;

  ///
  final int? maxLength;

  ///
  final int? maxProperties;

  ///
  final num? maximum;

  ///
  final int? minItems;

  ///
  final int? minLength;

  ///
  final int? minProperties;

  ///
  final num? minimum;

  ///
  final num? multipleOf;

  ///
  final JSONSchemaProps? not;

  ///
  final bool? nullable;

  ///
  final List<JSONSchemaProps>? oneOf;

  ///
  final String? pattern;

  ///
  final Map<String, JSONSchemaProps>? patternProperties;

  ///
  final Map<String, JSONSchemaProps>? properties;

  ///
  final List<String>? $required;

  ///
  final String? title;

  ///
  final String? type;

  ///
  final bool? uniqueItems;

  /// X-kubernetes-embedded-resource defines that the value is an embedded Kubernetes runtime.Object, with TypeMeta and ObjectMeta. The type must be object. It is allowed to further restrict the embedded object. kind, apiVersion and metadata are validated automatically. x-kubernetes-preserve-unknown-fields is allowed to be true, but does not have to be if the object is fully specified (up to kind, apiVersion, metadata).
  final bool? xKubernetesEmbeddedResource;

  /// X-kubernetes-int-or-string specifies that this value is either an integer or a string. If this is true, an empty type is allowed and type as child of anyOf is permitted if following one of the following patterns:
  ///
  /// 1) anyOf:
  ///    - type: integer
  ///    - type: string
  /// 2) allOf:
  ///    - anyOf:
  ///      - type: integer
  ///      - type: string
  ///    - ... zero or more.
  final bool? xKubernetesIntOrString;

  /// X-kubernetes-list-map-keys annotates an array with the x-kubernetes-list-type `map` by specifying the keys used as the index of the map.
  ///
  /// This tag MUST only be used on lists that have the "x-kubernetes-list-type" extension set to "map". Also, the values specified for this attribute must be a scalar typed field of the child structure (no nesting is supported).
  ///
  /// The properties specified must either be required or have a default value, to ensure those properties are present for all list items.
  final List<String>? xKubernetesListMapKeys;

  /// X-kubernetes-list-type annotates an array to further describe its topology. This extension must only be used on lists and may have 3 possible values:
  ///
  /// 1) `atomic`: the list is treated as a single entity, like a scalar.
  ///      Atomic lists will be entirely replaced when updated. This extension
  ///      may be used on any type of list (struct, scalar, ...).
  /// 2) `set`:
  ///      Sets are lists that must not have multiple items with the same value. Each
  ///      value must be a scalar, an object with x-kubernetes-map-type `atomic` or an
  ///      array with x-kubernetes-list-type `atomic`.
  /// 3) `map`:
  ///      These lists are like maps in that their elements have a non-index key
  ///      used to identify them. Order is preserved upon merge. The map tag
  ///      must only be used on a list with elements of type object.
  /// Defaults to atomic for arrays.
  final String? xKubernetesListType;

  /// X-kubernetes-map-type annotates an object to further describe its topology. This extension must only be used when type is object and may have 2 possible values:
  ///
  /// 1) `granular`:
  ///      These maps are actual maps (key-value pairs) and each fields are independent
  ///      from each other (they can each be manipulated by separate actors). This is
  ///      the default behaviour for all maps.
  /// 2) `atomic`: the list is treated as a single entity, like a scalar.
  ///      Atomic maps will be entirely replaced when updated.
  final String? xKubernetesMapType;

  /// X-kubernetes-preserve-unknown-fields stops the API server decoding step from pruning fields which are not specified in the validation schema. This affects fields recursively, but switches back to normal pruning behaviour if nested properties or additionalProperties are specified in the schema. This can either be true or undefined. False is forbidden.
  final bool? xKubernetesPreserveUnknownFields;

  /// X-kubernetes-validations describes a list of validation rules written in the CEL expression language. This field is an alpha-level. Using this field requires the feature gate `CustomResourceValidationExpressions` to be enabled.
  final List<ValidationRule>? xKubernetesValidations;
}
