import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'blank_list_component_model.dart';
export 'blank_list_component_model.dart';

class BlankListComponentWidget extends StatefulWidget {
  const BlankListComponentWidget({super.key});

  @override
  State<BlankListComponentWidget> createState() =>
      _BlankListComponentWidgetState();
}

class _BlankListComponentWidgetState extends State<BlankListComponentWidget> {
  late BlankListComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlankListComponentModel());

    _model.textController ??= TextEditingController();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                child: Autocomplete<String>(
                  initialValue: const TextEditingValue(),
                  optionsBuilder: (textEditingValue) {
                    if (textEditingValue.text == '') {
                      return const Iterable<String>.empty();
                    }
                    return ['Option 1'].where((option) {
                      final lowercaseOption = option.toLowerCase();
                      return lowercaseOption
                          .contains(textEditingValue.text.toLowerCase());
                    });
                  },
                  optionsViewBuilder: (context, onSelected, options) {
                    return AutocompleteOptionsList(
                      textFieldKey: _model.textFieldKey,
                      textController: _model.textController!,
                      options: options.toList(),
                      onSelected: onSelected,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      textHighlightStyle: const TextStyle(),
                      elevation: 4.0,
                      optionBackgroundColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                      optionHighlightColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      maxHeight: 200.0,
                    );
                  },
                  onSelected: (String selection) {
                    setState(() => _model.textFieldSelectedOption = selection);
                    FocusScope.of(context).unfocus();
                  },
                  fieldViewBuilder: (
                    context,
                    textEditingController,
                    focusNode,
                    onEditingComplete,
                  ) {
                    _model.textFieldFocusNode = focusNode;

                    _model.textController = textEditingController;
                    return TextFormField(
                      key: _model.textFieldKey,
                      controller: textEditingController,
                      focusNode: focusNode,
                      onEditingComplete: onEditingComplete,
                      autofocus: true,
                      autofillHints: const [AutofillHints.email],
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Question Here...!!',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                      validator:
                          _model.textControllerValidator.asValidator(context),
                    );
                  },
                ),
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                _model.apiResult881 = await SampleCall.call(
                  query: 'Give me steps for what is NLP and how it is useful??',
                );

                if ((_model.apiResult881?.succeeded ?? true)) {
                  setState(() {
                    _model.textController?.clear();
                  });
                  FFAppState().Response = '\$.data.response';
                  setState(() {});
                }

                setState(() {});
              },
              text: 'Button',
              options: FFButtonOptions(
                height: 40.0,
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      letterSpacing: 0.0,
                    ),
                elevation: 3.0,
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ],
        ),
        Expanded(
          child: FlutterFlowWebView(
            content:
                '<p>&quot;Sure, Ashish! Let&#39;s delve into AI.\\n\\n### What is AI?\\n\\nArtificial Intelligence (AI) is a branch of computer science that aims to create systems capable of performing tasks that would normally require human intelligence. These tasks include but are not limited to:\\n\\n- Decision-making\\n- Speech recognition\\n- Natural language understanding\\n- Visual perception\\n- Translating between languages\\n\\n### Methods of AI\\n\\nAI encompasses a variety of methods and techniques to achieve intelligent behavior. Here are some of the primary methods:\\n\\n1. <strong>Machine Learning (ML)</strong>\\n   - <strong>Supervised Learning:</strong> Models are trained on labeled data. Examples include classification and regression.\\n   - <strong>Unsupervised Learning:</strong> Models are trained on unlabeled data. Examples include clustering and dimensionality reduction.\\n   - <strong>Semi-supervised Learning:</strong> Combines both labeled and unlabeled data for training.\\n   - <strong>Reinforcement Learning:</strong> Models learn by interacting with an environment and receiving feedback in terms of rewards or penalties.\\n\\n2. <strong>Natural Language Processing (NLP)</strong>\\n   - <strong>Text Classification:</strong> Categorizing text into predefined groups.\\n   - <strong>Sentiment Analysis:</strong> Determining the emotional tone behind a body of text.\\n   - <strong>Machine Translation:</strong> Translating text from one language to another.\\n   - <strong>Named Entity Recognition (NER):</strong> Identifying entities like names, dates, and organizations in text.\\n\\n3. <strong>Computer Vision</strong>\\n   - <strong>Image Classification:</strong> Assigning a label to an image from a predefined set of categories.\\n   - <strong>Object Detection:</strong> Identifying and locating objects within an image.\\n   - <strong>Image Segmentation:</strong> Dividing an image into meaningful segments for easier analysis.\\n\\n4. <strong>Expert Systems</strong>\\n   - <strong>Rule-based Systems:</strong> Using a set of if-then rules to derive conclusions or perform actions.\\n   - <strong>Fuzzy Logic Systems:</strong> Handling reasoning that is approximate rather than precise.\\n\\n5. <strong>Robotics</strong>\\n   - <strong>Perception:</strong> Collecting and interpreting sensory data.\\n   - <strong>Motion Planning:</strong> Determining the actions required to move from one state to another.\\n   - <strong>Actuation:</strong> Executing motions or actions through robotic hardware.\\n\\n6. <strong>Neural Networks and Deep Learning</strong>\\n   - <strong>Artificial Neural Networks (ANN):</strong> Simulating the human brain&#39;s interconnected neurons.\\n   - <strong>Convolutional Neural Networks (CNN):</strong> Specialized for grid-like data, such as images.\\n   - <strong>Recurrent Neural Networks (RNN):</strong> Specialized for sequential data, like time series or text.\\n\\n7. <strong>Genetic Algorithms</strong>\\n   - Mimicking the process of natural selection to find optimal solutions for complex problems.\\n\\n8. <strong>Bayesian Networks</strong>\\n   - Graphical models that represent the probabilistic relationships among a set of variables.\\n\\nWould you like more detailed information on any of these methods, Ashish?&quot;</p>',
            height: MediaQuery.sizeOf(context).height * 0.5,
            verticalScroll: false,
            horizontalScroll: false,
            html: true,
          ),
        ),
        Expanded(
          child: MarkdownBody(
            data:
                '''\"Sure, Ashish! Let\'s delve into AI.\\n\\n### What is AI?\\n\\nArtificial Intelligence (AI) is a branch of computer science that aims to create systems capable of performing tasks that would normally require human intelligence. These tasks include but are not limited to:\\n\\n- Decision-making\\n- Speech recognition\\n- Natural language understanding\\n- Visual perception\\n- Translating between languages\\n\\n### Methods of AI\\n\\nAI encompasses a variety of methods and techniques to achieve intelligent behavior. Here are some of the primary methods:\\n\\n1. **Machine Learning (ML)**\\n   - **Supervised Learning:** Models are trained on labeled data. Examples include classification and regression.\\n   - **Unsupervised Learning:** Models are trained on unlabeled data. Examples include clustering and dimensionality reduction.\\n   - **Semi-supervised Learning:** Combines both labeled and unlabeled data for training.\\n   - **Reinforcement Learning:** Models learn by interacting with an environment and receiving feedback in terms of rewards or penalties.\\n\\n2. **Natural Language Processing (NLP)**\\n   - **Text Classification:** Categorizing text into predefined groups.\\n   - **Sentiment Analysis:** Determining the emotional tone behind a body of text.\\n   - **Machine Translation:** Translating text from one language to another.\\n   - **Named Entity Recognition (NER):** Identifying entities like names, dates, and organizations in text.\\n\\n3. **Computer Vision**\\n   - **Image Classification:** Assigning a label to an image from a predefined set of categories.\\n   - **Object Detection:** Identifying and locating objects within an image.\\n   - **Image Segmentation:** Dividing an image into meaningful segments for easier analysis.\\n\\n4. **Expert Systems**\\n   - **Rule-based Systems:** Using a set of if-then rules to derive conclusions or perform actions.\\n   - **Fuzzy Logic Systems:** Handling reasoning that is approximate rather than precise.\\n\\n5. **Robotics**\\n   - **Perception:** Collecting and interpreting sensory data.\\n   - **Motion Planning:** Determining the actions required to move from one state to another.\\n   - **Actuation:** Executing motions or actions through robotic hardware.\\n\\n6. **Neural Networks and Deep Learning**\\n   - **Artificial Neural Networks (ANN):** Simulating the human brain\'s interconnected neurons.\\n   - **Convolutional Neural Networks (CNN):** Specialized for grid-like data, such as images.\\n   - **Recurrent Neural Networks (RNN):** Specialized for sequential data, like time series or text.\\n\\n7. **Genetic Algorithms**\\n   - Mimicking the process of natural selection to find optimal solutions for complex problems.\\n\\n8. **Bayesian Networks**\\n   - Graphical models that represent the probabilistic relationships among a set of variables.\\n\\nWould you like more detailed information on any of these methods, Ashish?\"''',
            selectable: true,
            onTapLink: (_, url, __) => launchURL(url!),
          ),
        ),
      ],
    );
  }
}
