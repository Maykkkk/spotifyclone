import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'favcomp_model.dart';
export 'favcomp_model.dart';

class FavcompWidget extends StatefulWidget {
  const FavcompWidget({
    super.key,
    this.music,
    this.singer,
    this.length,
  });

  final String? music;
  final String? singer;
  final String? length;

  @override
  State<FavcompWidget> createState() => _FavcompWidgetState();
}

class _FavcompWidgetState extends State<FavcompWidget> {
  late FavcompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavcompModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xB412D282),
                shape: BoxShape.circle,
              ),
              child: FlutterFlowIconButton(
                buttonSize: 40.0,
                icon: Icon(
                  Icons.play_arrow,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget!.music,
                      'Unity',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.readexPro(
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget!.singer,
                      'Alan Walker',
                    ),
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          font: GoogleFonts.readexPro(
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelSmall
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).labelSmall.fontStyle,
                        ),
                  ),
                ].divide(SizedBox(height: 4.0)),
              ),
            ),
            Text(
              valueOrDefault<String>(
                widget!.length,
                '1:20',
              ),
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    font: GoogleFonts.readexPro(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodySmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodySmall.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodySmall.fontWeight,
                    fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                  ),
            ),
            Builder(
              builder: (context) {
                if (_model.isToggledd == false) {
                  return Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 25.0,
                      ),
                      onPressed: () async {
                        _model.isToggledd = !_model.isToggledd;
                        safeSetState(() {});
                      },
                    ),
                  );
                } else {
                  return FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.favorite_rounded,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      _model.isToggledd = !_model.isToggledd;
                      safeSetState(() {});
                    },
                  );
                }
              },
            ),
          ].divide(SizedBox(width: 12.0)),
        ),
      ),
    );
  }
}
