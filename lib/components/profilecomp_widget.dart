import '/components/tripledot2_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profilecomp_model.dart';
export 'profilecomp_model.dart';

class ProfilecompWidget extends StatefulWidget {
  const ProfilecompWidget({
    super.key,
    this.image,
    this.music,
    this.totalsongs,
    this.length,
  });

  final String? image;
  final String? music;
  final String? totalsongs;
  final String? length;

  @override
  State<ProfilecompWidget> createState() => _ProfilecompWidgetState();
}

class _ProfilecompWidgetState extends State<ProfilecompWidget> {
  late ProfilecompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfilecompModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.85,
      height: 70.0,
      decoration: BoxDecoration(),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Align(
        alignment: AlignmentDirectional(-1.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 0.5,
              height: 70.0,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4.0),
                    child: Image.network(
                      valueOrDefault<String>(
                        widget!.image,
                        'https://images.unsplash.com/photo-1475275166152-f1e8005f9854?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NTczOTgzMzh8&ixlib=rb-4.1.0&q=80&w=1080',
                      ),
                      width: 50.0,
                      height: 50.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget!.music,
                          'Alan Walker',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.readexPro(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).primary,
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
                        valueOrDefault<String>(
                          widget!.totalsongs,
                          '69 Songs',
                        ),
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              font: GoogleFonts.readexPro(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontStyle,
                            ),
                      ),
                    ],
                  ),
                ].divide(SizedBox(width: 8.0)),
              ),
            ),
            Container(
              width: 90.0,
              height: 70.0,
              decoration: BoxDecoration(),
              child: Align(
                alignment: AlignmentDirectional(1.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        widget!.length,
                        '3:37:09',
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            font: GoogleFonts.readexPro(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodySmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodySmall
                                .fontStyle,
                          ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Builder(
                        builder: (context) => FlutterFlowIconButton(
                          buttonSize: 35.0,
                          icon: Icon(
                            Icons.more_vert,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            await showAlignedDialog(
                              context: context,
                              isGlobal: false,
                              avoidOverflow: true,
                              targetAnchor: AlignmentDirectional(1.0, 1.0)
                                  .resolve(Directionality.of(context)),
                              followerAnchor: AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              builder: (dialogContext) {
                                return Material(
                                  color: Colors.transparent,
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.45,
                                    child: Tripledot2Widget(),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ].divide(SizedBox(width: 7.0)),
                ),
              ),
            ),
          ].divide(SizedBox(width: 12.0)),
        ),
      ),
    );
  }
}
