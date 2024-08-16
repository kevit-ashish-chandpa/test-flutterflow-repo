import '/application_pages/components/blank_list_component/blank_list_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sample_page_formarkdown_widget.dart' show SamplePageFormarkdownWidget;
import 'package:flutter/material.dart';

class SamplePageFormarkdownModel
    extends FlutterFlowModel<SamplePageFormarkdownWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BlankListComponent component.
  late BlankListComponentModel blankListComponentModel;

  @override
  void initState(BuildContext context) {
    blankListComponentModel =
        createModel(context, () => BlankListComponentModel());
  }

  @override
  void dispose() {
    blankListComponentModel.dispose();
  }
}
