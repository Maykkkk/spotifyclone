import '/components/favcomp_widget.dart';
import '/components/tripledots_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'favpage_widget.dart' show FavpageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FavpageModel extends FlutterFlowModel<FavpageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for favcomp component.
  late FavcompModel favcompModel1;
  // Model for favcomp component.
  late FavcompModel favcompModel2;
  // Model for favcomp component.
  late FavcompModel favcompModel3;
  // Model for favcomp component.
  late FavcompModel favcompModel4;
  // Model for favcomp component.
  late FavcompModel favcompModel5;

  @override
  void initState(BuildContext context) {
    favcompModel1 = createModel(context, () => FavcompModel());
    favcompModel2 = createModel(context, () => FavcompModel());
    favcompModel3 = createModel(context, () => FavcompModel());
    favcompModel4 = createModel(context, () => FavcompModel());
    favcompModel5 = createModel(context, () => FavcompModel());
  }

  @override
  void dispose() {
    favcompModel1.dispose();
    favcompModel2.dispose();
    favcompModel3.dispose();
    favcompModel4.dispose();
    favcompModel5.dispose();
  }
}
