import '/components/follow_widget.dart';
import '/components/following_widget.dart';
import '/components/profilecomp_widget.dart';
import '/components/tripledots_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for profilecomp component.
  late ProfilecompModel profilecompModel1;
  // Model for profilecomp component.
  late ProfilecompModel profilecompModel2;
  // Model for profilecomp component.
  late ProfilecompModel profilecompModel3;
  // Model for profilecomp component.
  late ProfilecompModel profilecompModel4;

  @override
  void initState(BuildContext context) {
    profilecompModel1 = createModel(context, () => ProfilecompModel());
    profilecompModel2 = createModel(context, () => ProfilecompModel());
    profilecompModel3 = createModel(context, () => ProfilecompModel());
    profilecompModel4 = createModel(context, () => ProfilecompModel());
  }

  @override
  void dispose() {
    profilecompModel1.dispose();
    profilecompModel2.dispose();
    profilecompModel3.dispose();
    profilecompModel4.dispose();
  }
}
