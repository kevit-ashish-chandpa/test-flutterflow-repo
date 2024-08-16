import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start RouterEngine Group Code

class RouterEngineGroup {
  static String getBaseUrl({
    String? xApiKey = 'da82-150-129-104-158',
  }) =>
      'https://router-engine-development-2sxmnppdca-ew.a.run.app';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'x-api-key': '[x-api-key]',
  };
  static QueryCall queryCall = QueryCall();
  static ListDocumentsCall listDocumentsCall = ListDocumentsCall();
  static UploadFilesCall uploadFilesCall = UploadFilesCall();
}

class QueryCall {
  Future<ApiCallResponse> call({
    String? query = 'what is the CCEP?',
    String? xApiKey = 'da82-150-129-104-158',
  }) async {
    final baseUrl = RouterEngineGroup.getBaseUrl(
      xApiKey: xApiKey,
    );

    final ffApiRequestBody = '''
{
  "question": "$query",
  "response_mode": "refine",
  "include_sources": true,
  "firmId": "654b2d48db26ba1211b02983",
  "key": "81c93cde-5ee7-4408-9d6c-8b069001b131",
  "language": "english",
  "fallbackMessage": "Hey I don't know the answer of this question"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Query',
      apiUrl: '$baseUrl/query',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'x-api-key': '$xApiKey',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic responseDocument(dynamic response) => getJsonField(
        response,
        r'''$.documents''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  dynamic responsePage(dynamic response) => getJsonField(
        response,
        r'''$.page_label''',
      );
  dynamic responseSimilarity(dynamic response) => getJsonField(
        response,
        r'''$.similarity_score''',
      );
}

class ListDocumentsCall {
  Future<ApiCallResponse> call({
    String? xApiKey = 'da82-150-129-104-158',
  }) async {
    final baseUrl = RouterEngineGroup.getBaseUrl(
      xApiKey: xApiKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'List Documents',
      apiUrl: '$baseUrl/getDocuments',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'x-api-key': '$xApiKey',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? summary(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].summary''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? docId(dynamic response) => getJsonField(
        response,
        r'''$.data[:].document_id''',
        true,
      ) as List?;
  List<String>? originalName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].original_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? documents(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class UploadFilesCall {
  Future<ApiCallResponse> call({
    List<FFUploadedFile>? filesList,
    String? xApiKey = 'da82-150-129-104-158',
  }) async {
    final baseUrl = RouterEngineGroup.getBaseUrl(
      xApiKey: xApiKey,
    );
    final files = filesList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'Upload Files',
      apiUrl: '$baseUrl/uploadFile',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'x-api-key': '$xApiKey',
      },
      params: {
        'Files': files,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End RouterEngine Group Code

/// Start OpenAI ChatGPTsss Group Code

class OpenAIChatGPTsssGroup {
  static String getBaseUrl() => 'https://api.openai.com/v1';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static SendFullPromptCall sendFullPromptCall = SendFullPromptCall();
}

class SendFullPromptCall {
  Future<ApiCallResponse> call({
    String? apiKey = '',
    dynamic promptJson,
  }) async {
    final baseUrl = OpenAIChatGPTsssGroup.getBaseUrl();

    final prompt = _serializeJson(promptJson);
    final ffApiRequestBody = '''
{
  "model": "gpt-4",
  "messages": "$prompt"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send Full Prompt',
      apiUrl: '$baseUrl/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? createdTimestamp(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created''',
      ));
  String? role(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.role''',
      ));
  String? content(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

/// End OpenAI ChatGPTsss Group Code

class SampleCall {
  static Future<ApiCallResponse> call({
    String? query = 'Hey provide me steps for the agent creation.',
  }) async {
    final ffApiRequestBody = '''
{
  "query": "$query",
  "user_id": "m12cLacOSQQziRtZKwT0oOs3XNC2",
  "agent_id": "NFaBBoxoxPxIu4IrSMTc",
  "include_sources": false,
  "chat_id": "9b58b03d-9354-4b2e-af0b-a6a48ebb5e4d"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Sample',
      apiUrl: 'https://bv996j2d-8081.inc1.devtunnels.ms/chat/document-agent',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zTfQd9e2IlO33OLIfnu67iPAgu3YhMaWir81WdynFRLmxZZkDj',
        'x-header-value': 'PWgHyXkTZm8M99PYrzVIGpAffgcp8mG9VV92A5XjwqXJZa1SuH',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
