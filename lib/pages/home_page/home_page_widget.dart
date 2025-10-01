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
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 700.0.ms,
            begin: Offset(90.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.bounceOut,
            delay: 770.0.ms,
            duration: 1800.0.ms,
            begin: Offset(0.0, -50.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 580.0.ms,
            duration: 1400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 800.0.ms,
            duration: 1200.0.ms,
            begin: Offset(50.0, 0.0),
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
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 800.0.ms,
            duration: 1200.0.ms,
            begin: Offset(10.0, 0.0),
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
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 800.0.ms,
            duration: 1200.0.ms,
            begin: Offset(20.0, 0.0),
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
      'rowOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 800.0.ms,
            duration: 1300.0.ms,
            begin: Offset(50.0, 0.0),
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
      'playlistcompOnPageLoadAnimation1': AnimationInfo(
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
      'playlistcompOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 800.0.ms,
            duration: 1200.0.ms,
            begin: Offset(75.0, 0.0),
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
      'playlistcompOnPageLoadAnimation3': AnimationInfo(
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
      'playlistcompOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 800.0.ms,
            duration: 1200.0.ms,
            begin: Offset(80.0, 0.0),
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
      'playlistcompOnPageLoadAnimation5': AnimationInfo(
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
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Builder(
                          builder: (context) => InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await showDialog(
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: AlignmentDirectional(0.0, -1.0)
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
                                                0.35,
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.98,
                                        child: SearchWidget(),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Icon(
                              Icons.search_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 26.0,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/Spotify--Streamline-Core.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Text(
                                'Saytify',
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                    ),
                              ),
                            ].divide(SizedBox(width: 10.0)),
                          ),
                        ),
                        Builder(
                          builder: (context) => InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
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
                            child: Icon(
                              Icons.more_vert,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 12.0)),
                    ).animateOnPageLoad(
                        animationsMap['rowOnPageLoadAnimation1']!),
                    Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Welcome ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.mukta(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              TextSpan(
                                text: FFAppState().userName,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.oswald(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              )
                            ],
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
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 120.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primary,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 16.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Happier Than Ever',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.robotoMono(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation1']!),
                                  Text(
                                    'Billie Eilish',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.oswald(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation2']!),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Image.asset(
                                'assets/images/BILLIE_EILISH_040823_DEFAULT-GettyImages-1201586589.webp',
                                width: 80.0,
                                height: 80.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ].divide(SizedBox(width: 16.0)),
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation2']!),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'News',
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
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                        ),
                        Text(
                          'Video',
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
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                        ),
                        Text(
                          'Artists',
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
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                        ),
                        Text(
                          'Podcast',
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
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                        ),
                      ].divide(SizedBox(width: 16.0)),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.newscontModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: NewscontWidget(
                              image:
                                  'https://images.unsplash.com/photo-1526115540060-c0548a6a3096?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMXx8YmFkJTIwZ3V5c3xlbnwwfHx8fDE3NTc0ODk5OTZ8MA&ixlib=rb-4.1.0&q=80&w=1080',
                              musicName: 'Bad Guy',
                              artist: 'Billie Eilish',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.newscontModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: NewscontWidget(
                              image:
                                  'https://images.unsplash.com/photo-1686948166316-04644630b0bf?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw1fHxwbGF5JTIwZGF0ZXxlbnwwfHx8fDE3NTc0OTAwMzJ8MA&ixlib=rb-4.1.0&q=80&w=1080',
                              musicName: 'Play Date',
                              artist: 'Melanie Martinez',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.newscontModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: NewscontWidget(
                              image:
                                  'https://images.unsplash.com/photo-1553779331-9274993ecd57?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxoaWdoZXN0JTIwc21va2V8ZW58MHx8fHwxNzU3NDkwMDY4fDA&ixlib=rb-4.1.0&q=80&w=1080',
                              musicName: 'Highest in the Room',
                              artist: 'Travis Scott',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.newscontModel4,
                            updateCallback: () => safeSetState(() {}),
                            child: NewscontWidget(
                              image:
                                  'https://images.unsplash.com/photo-1532135468830-e51699205b70?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHx1bWJyZWxsYXxlbnwwfHx8fDE3NTc0OTAwOTZ8MA&ixlib=rb-4.1.0&q=80&w=1080',
                              musicName: 'Umbrella',
                              artist: 'Ember Island',
                            ),
                          ),
                          Builder(
                            builder: (context) => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await showDialog(
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: GestureDetector(
                                        onTap: () {
                                          FocusScope.of(dialogContext)
                                              .unfocus();
                                          FocusManager.instance.primaryFocus
                                              ?.unfocus();
                                        },
                                        child: Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.75,
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.98,
                                          child: MusiccompWidget(),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Icon(
                                Icons.arrow_right,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ].divide(SizedBox(width: 8.0)),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['rowOnPageLoadAnimation2']!),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Playlist',
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
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                        ),
                        Text(
                          'See More',
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
                        ),
                      ].divide(SizedBox(width: 12.0)),
                    ),
                    ListView(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        wrapWithModel(
                          model: _model.playlistcompModel1,
                          updateCallback: () => safeSetState(() {}),
                          updateOnChange: true,
                          child: PlaylistcompWidget(
                            musicName: 'As It Was',
                            singer: 'Harry Styles',
                            image:
                                'https://images.unsplash.com/photo-1627069119966-4b6ea8b3a377?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyNHx8aGFycnklMjBzdHlsZXN8ZW58MHx8fHwxNzU3MDYwNzYzfDA&ixlib=rb-4.1.0&q=80&w=1080',
                            length: '2:47',
                          ),
                        ).animateOnPageLoad(
                            animationsMap['playlistcompOnPageLoadAnimation1']!),
                        wrapWithModel(
                          model: _model.playlistcompModel2,
                          updateCallback: () => safeSetState(() {}),
                          updateOnChange: true,
                          child: PlaylistcompWidget(
                            musicName: 'Somewhere only we Know',
                            singer: 'Keane',
                            image:
                                'https://media.gettyimages.com/id/1191446612/photo/keane-in-concert.webp?s=2048x2048&w=gi&k=20&c=-btiu77rHehwPtK6c1lyMyMNHv121opLbPucPeP8zi4=',
                            length: '3:57',
                          ),
                        ).animateOnPageLoad(
                            animationsMap['playlistcompOnPageLoadAnimation2']!),
                        wrapWithModel(
                          model: _model.playlistcompModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: PlaylistcompWidget(
                            musicName: 'Unity',
                            singer: 'Alan Walker',
                            image:
                                'https://images.unsplash.com/photo-1604184221837-cd1c5fe094f0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw5fHx1bml0eXxlbnwwfHx8fDE3NTc0OTAxMjR8MA&ixlib=rb-4.1.0&q=80&w=1080',
                            length: '3:24',
                          ),
                        ).animateOnPageLoad(
                            animationsMap['playlistcompOnPageLoadAnimation3']!),
                        wrapWithModel(
                          model: _model.playlistcompModel4,
                          updateCallback: () => safeSetState(() {}),
                          child: PlaylistcompWidget(
                            musicName: 'Now We are Free',
                            singer: 'Hans Zimmer',
                            image:
                                'https://images.unsplash.com/photo-1556977883-533cd9c5ad0b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxoYW5zJTIwemltbWVyfGVufDB8fHx8MTc1NzQ5MDE1Mnww&ixlib=rb-4.1.0&q=80&w=1080',
                            length: '2:15',
                          ),
                        ).animateOnPageLoad(
                            animationsMap['playlistcompOnPageLoadAnimation4']!),
                        wrapWithModel(
                          model: _model.playlistcompModel5,
                          updateCallback: () => safeSetState(() {}),
                          child: PlaylistcompWidget(
                            musicName: 'People You Know',
                            singer: 'Salena Gomez',
                            image:
                                'https://images.unsplash.com/photo-1605099922599-a9e6eaf1ab5e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxzYWxlbmElMjBnb21lenxlbnwwfHx8fDE3NTc0OTAxODJ8MA&ixlib=rb-4.1.0&q=80&w=1080',
                            length: '3:31',
                          ),
                        ).animateOnPageLoad(
                            animationsMap['playlistcompOnPageLoadAnimation5']!),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
            ),
          ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation1']!),
        ),
      ),
    );
  }
}
