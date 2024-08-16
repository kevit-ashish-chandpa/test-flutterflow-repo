import '/application_pages/components/blank_list_component/blank_list_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'sample_page_formarkdown_model.dart';
export 'sample_page_formarkdown_model.dart';

class SamplePageFormarkdownWidget extends StatefulWidget {
  const SamplePageFormarkdownWidget({super.key});

  @override
  State<SamplePageFormarkdownWidget> createState() =>
      _SamplePageFormarkdownWidgetState();
}

class _SamplePageFormarkdownWidgetState
    extends State<SamplePageFormarkdownWidget> {
  late SamplePageFormarkdownModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SamplePageFormarkdownModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Readex Pro',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: wrapWithModel(
                  model: _model.blankListComponentModel,
                  updateCallback: () => setState(() {}),
                  child: const BlankListComponentWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
