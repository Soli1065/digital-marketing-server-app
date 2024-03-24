//
//  Generated code. Do not modify.
//  source: course.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getCoursesRequestDescriptor instead')
const GetCoursesRequest$json = {
  '1': 'GetCoursesRequest',
};

/// Descriptor for `GetCoursesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCoursesRequestDescriptor = $convert.base64Decode(
    'ChFHZXRDb3Vyc2VzUmVxdWVzdA==');

@$core.Deprecated('Use getCoursesResponseDescriptor instead')
const GetCoursesResponse$json = {
  '1': 'GetCoursesResponse',
  '2': [
    {'1': 'courses', '3': 1, '4': 3, '5': 11, '6': '.Course', '10': 'courses'},
  ],
};

/// Descriptor for `GetCoursesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCoursesResponseDescriptor = $convert.base64Decode(
    'ChJHZXRDb3Vyc2VzUmVzcG9uc2USIQoHY291cnNlcxgBIAMoCzIHLkNvdXJzZVIHY291cnNlcw'
    '==');

@$core.Deprecated('Use courseDescriptor instead')
const Course$json = {
  '1': 'Course',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'subtitle', '3': 4, '4': 1, '5': 9, '10': 'subtitle'},
  ],
};

/// Descriptor for `Course`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List courseDescriptor = $convert.base64Decode(
    'CgZDb3Vyc2USDgoCaWQYASABKAVSAmlkEhQKBXRpdGxlGAIgASgJUgV0aXRsZRIgCgtkZXNjcm'
    'lwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24SGgoIc3VidGl0bGUYBCABKAlSCHN1YnRpdGxl');

