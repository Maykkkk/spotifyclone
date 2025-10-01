import '/components/musiccomp_widget.dart';
import '/components/newscont_widget.dart';
import '/components/playlistcomp_widget.dart';
import '/components/search_widget.dart';
import '/components/tripledots_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for newscont component.
  late NewscontModel newscontModel1;
  // Model for newscont component.
  late NewscontModel newscontModel2;
  // Model for newscont component.
  late NewscontModel newscontModel3;
  // Model for newscont component.
  late NewscontModel newscontModel4;
  // Model for playlistcomp component.
  late PlaylistcompModel playlistcompModel1;
  // Model for playlistcomp component.
  late PlaylistcompModel playlistcompModel2;
  // Model for playlistcomp component.
  late PlaylistcompModel playlistcompModel3;
  // Model for playlistcomp component.
  late PlaylistcompModel playlistcompModel4;
  // Model for playlistcomp component.
  late PlaylistcompModel playlistcompModel5;

  @override
  void initState(BuildContext context) {
    newscontModel1 = createModel(context, () => NewscontModel());
    newscontModel2 = createModel(context, () => NewscontModel());
    newscontModel3 = createModel(context, () => NewscontModel());
    newscontModel4 = createModel(context, () => NewscontModel());
    playlistcompModel1 = createModel(context, () => PlaylistcompModel());
    playlistcompModel2 = createModel(context, () => PlaylistcompModel());
    playlistcompModel3 = createModel(context, () => PlaylistcompModel());
    playlistcompModel4 = createModel(context, () => PlaylistcompModel());
    playlistcompModel5 = createModel(context, () => PlaylistcompModel());
  }

  @override
  void dispose() {
    newscontModel1.dispose();
    newscontModel2.dispose();
    newscontModel3.dispose();
    newscontModel4.dispose();
    playlistcompModel1.dispose();
    playlistcompModel2.dispose();
    playlistcompModel3.dispose();
    playlistcompModel4.dispose();
    playlistcompModel5.dispose();
  }
}
