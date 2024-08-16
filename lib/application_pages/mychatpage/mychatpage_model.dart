import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mychatpage_widget.dart' show MychatpageWidget;
import 'package:flutter/material.dart';

class MychatpageModel extends FlutterFlowModel<MychatpageWidget> {
  ///  Local state fields for this page.

  List<ContentStruct> chatHistory = [];
  void addToChatHistory(ContentStruct item) => chatHistory.add(item);
  void removeFromChatHistory(ContentStruct item) => chatHistory.remove(item);
  void removeAtIndexFromChatHistory(int index) => chatHistory.removeAt(index);
  void insertAtIndexInChatHistory(int index, ContentStruct item) =>
      chatHistory.insert(index, item);
  void updateChatHistoryAtIndex(int index, Function(ContentStruct) updateFn) =>
      chatHistory[index] = updateFn(chatHistory[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for ScollingChatColumn widget.
  ScrollController? scollingChatColumn;
  // State field(s) for ChatListView widget.
  ScrollController? chatListView;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Query)] action in IconButton widget.
  ApiCallResponse? apiQueryResult;

  @override
  void initState(BuildContext context) {
    scollingChatColumn = ScrollController();
    chatListView = ScrollController();
  }

  @override
  void dispose() {
    scollingChatColumn?.dispose();
    chatListView?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
