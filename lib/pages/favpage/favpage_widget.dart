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
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'favpage_model.dart';
export 'favpage_model.dart';

class FavpageWidget extends StatefulWidget {
  const FavpageWidget({super.key});

  static String routeName = 'favpage';
  static String routePath = '/favpage';

  @override
  State<FavpageWidget> createState() => _FavpageWidgetState();
}

class _FavpageWidgetState extends State<FavpageWidget>
    with TickerProviderStateMixin {
  late FavpageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavpageModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 800.0.ms,
            duration: 1200.0.ms,
            begin: Offset(0.0, -30.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'imageOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.elasticOut,
            delay: 400.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 800.0.ms,
            duration: 1200.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 1100.0.ms,
            begin: Offset(-1.0, -1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 800.0.ms,
            duration: 1200.0.ms,
            begin: Offset(0.0, -30.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'imageOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1400.0.ms,
            begin: 0.65,
            end: 1.0,
          ),
        ],
      ),
      'imageOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1400.0.ms,
            begin: 0.65,
            end: 1.0,
          ),
        ],
      ),
      'imageOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1400.0.ms,
            begin: 0.65,
            end: 1.0,
          ),
        ],
      ),
      'imageOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1400.0.ms,
            begin: 0.65,
            end: 1.0,
          ),
        ],
      ),
      'favcompOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 800.0.ms,
            duration: 1200.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'favcompOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 800.0.ms,
            duration: 1200.0.ms,
            begin: Offset(75.0, 0.0),
            end: Offset(-4.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'favcompOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 800.0.ms,
            duration: 1200.0.ms,
            begin: Offset(80.0, 0.0),
            end: Offset(1.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'favcompOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 800.0.ms,
            duration: 1200.0.ms,
            begin: Offset(60.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'favcompOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 800.0.ms,
            duration: 1200.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(-4.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(),
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlutterFlowIconButton(
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 22.0,
                          ),
                          onPressed: () async {
                            context.pushNamed(
                              HomePageWidget.routeName,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 250),
                                ),
                              },
                            );
                          },
                        ),
                        Builder(
                          builder: (context) => FlutterFlowIconButton(
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.more_vert,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              await showDialog(
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: AlignmentDirectional(1.0, -1.0)
                                        .resolve(Directionality.of(context)),
                                    child: GestureDetector(
                                      onTap: () {
                                        FocusScope.of(dialogContext).unfocus();
                                        FocusManager.instance.primaryFocus
                                            ?.unfocus();
                                      },
                                      child: Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                1.0,
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.7,
                                        child: TripledotsWidget(),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ).animateOnPageLoad(
                        animationsMap['rowOnPageLoadAnimation']!),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 200.0,
                          height: 200.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1618176581124-72177645bd15?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxhbGFuJTIwd2Fsa2VyfGVufDB8fHx8MTc1NzQwOTgzMnww&ixlib=rb-4.1.0&q=80&w=1080',
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ).animateOnPageLoad(
                              animationsMap['imageOnPageLoadAnimation1']!),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Alan Walker',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .fontStyle,
                                  ),
                            ),
                            Text(
                              '4 Album • 256 Track',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ].divide(SizedBox(height: 4.0)),
                        ).animateOnPageLoad(
                            animationsMap['columnOnPageLoadAnimation2']!),
                        Text(
                          'Alan Walker is a Norwegian-British DJ and record producer, known for his 2015 hit single \"Faded\" and his distinctive hooded, masked look.',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                font: GoogleFonts.readexPro(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .fontStyle,
                                ),
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontStyle,
                              ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation']!),
                      ].divide(SizedBox(height: 12.0)),
                    ).animateOnPageLoad(
                        animationsMap['columnOnPageLoadAnimation1']!),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Albums',
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                font: GoogleFonts.readexPro(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .fontStyle,
                              ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(100.0),
                                    child: Image.network(
                                      'https://images.unsplash.com/photo-1660912354875-0b24bf71d816?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMXx8d29ybGQlMjBvZiUyMHdhbGtlcnxlbnwwfHx8fDE3NTc0MDk5NzJ8MA&ixlib=rb-4.1.0&q=80&w=1080',
                                      width: 100.0,
                                      height: 100.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'imageOnPageLoadAnimation2']!),
                                  Text(
                                    'World of Walkers',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          font: GoogleFonts.readexPro(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(100.0),
                                    child: Image.network(
                                      'https://images.unsplash.com/photo-1635358968139-f956707df23b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxNnx8ZGlmZmVyZW50JTIwd29ybGR8ZW58MHx8fHwxNzU3NDEwMDYxfDA&ixlib=rb-4.1.0&q=80&w=1080',
                                      width: 100.0,
                                      height: 100.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'imageOnPageLoadAnimation3']!),
                                  Text(
                                    'Different World',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          font: GoogleFonts.readexPro(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(100.0),
                                    child: Image.network(
                                      'https://images.unsplash.com/photo-1439792675105-701e6a4ab6f0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw0fHxkYXJrfGVufDB8fHx8MTc1NzQ5MDIyNnww&ixlib=rb-4.1.0&q=80&w=1080',
                                      width: 100.0,
                                      height: 100.0,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'imageOnPageLoadAnimation4']!),
                                  Text(
                                    'Faded',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          font: GoogleFonts.readexPro(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(100.0),
                                    child: Image.network(
                                      'https://images.unsplash.com/photo-1697020197659-37598072eee8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxNHx8d2Fsa2VyJTIwd29ybGR8ZW58MHx8fHwxNzU3NDEwMjg4fDA&ixlib=rb-4.1.0&q=80&w=1080',
                                      width: 100.0,
                                      height: 100.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'imageOnPageLoadAnimation5']!),
                                  Text(
                                    'Walker World',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          font: GoogleFonts.readexPro(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ].divide(SizedBox(width: 12.0)),
                          ),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ).animateOnPageLoad(
                        animationsMap['columnOnPageLoadAnimation3']!),
                    SingleChildScrollView(
                      primary: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.favcompModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: FavcompWidget(
                              music: 'Ghost',
                              singer: 'Au/Ra',
                              length: '2:57',
                            ),
                          ).animateOnPageLoad(
                              animationsMap['favcompOnPageLoadAnimation1']!),
                          wrapWithModel(
                            model: _model.favcompModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: FavcompWidget(
                              music: 'On My Way',
                              singer: 'Sabrina Carpenter',
                              length: '3:13',
                            ),
                          ).animateOnPageLoad(
                              animationsMap['favcompOnPageLoadAnimation2']!),
                          wrapWithModel(
                            model: _model.favcompModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: FavcompWidget(
                              music: 'Alone',
                              singer: 'Alan Walker',
                              length: '2:40',
                            ),
                          ).animateOnPageLoad(
                              animationsMap['favcompOnPageLoadAnimation3']!),
                          wrapWithModel(
                            model: _model.favcompModel4,
                            updateCallback: () => safeSetState(() {}),
                            child: FavcompWidget(
                              music: 'Do it all for you',
                              singer: 'Trevor Guthrie',
                              length: '2:50',
                            ),
                          ).animateOnPageLoad(
                              animationsMap['favcompOnPageLoadAnimation4']!),
                          wrapWithModel(
                            model: _model.favcompModel5,
                            updateCallback: () => safeSetState(() {}),
                            child: FavcompWidget(
                              music: 'Hero',
                              singer: 'Sasha ',
                              length: '1:55',
                            ),
                          ).animateOnPageLoad(
                              animationsMap['favcompOnPageLoadAnimation5']!),
                        ].divide(SizedBox(height: 12.0)),
                      ),
                    ),
                  ].divide(SizedBox(height: 12.0)),
                ),
              ),
            ),
          ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
        ),
      ),
    );
  }
}
