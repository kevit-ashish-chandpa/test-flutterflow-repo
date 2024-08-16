import '/application_pages/components/sidebar/sidebar_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'smaple_widget.dart' show SmapleWidget;
import 'package:flutter/material.dart';

class SmapleModel extends FlutterFlowModel<SmapleWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];

  // Stores action output result for [Backend Call - API (Upload Files)] action in Button widget.
  ApiCallResponse? apiResultsde;
  // State field(s) for ListView widget.
  ScrollController? listViewController;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    listViewController?.dispose();
  }
}
