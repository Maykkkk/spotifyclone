import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'playlistcomp_model.dart';
export 'playlistcomp_model.dart';

class PlaylistcompWidget extends StatefulWidget {
  const PlaylistcompWidget({
    super.key,
    this.musicName,
    this.singer,
    this.image,
    this.length,
  });

  final String? musicName;
  final String? singer;
  final String? image;
  final String? length;

  @override
  State<PlaylistcompWidget> createState() => _PlaylistcompWidgetState();
}

class _PlaylistcompWidgetState extends State<PlaylistcompWidget> {
  late PlaylistcompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlaylistcompModel());
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
              width: 36.0,
              height: 36.0,
              decoration: BoxDecoration(
                color: Color(0xFFD46868),
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Container(
                width: 200.0,
                height: 200.0,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  widget!.image!,
                  fit: BoxFit.cover,
                ),
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
                      widget!.musicName,
                      'As It Was',
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
                      'CAS',
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
                '2:47',
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
                if (_model.isToggle == false) {
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
                        _model.isToggle = !_model.isToggle;
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
                      _model.isToggle = !_model.isToggle;
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
