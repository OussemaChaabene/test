import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  String dropDownValue1;
  String dropDownValue2;
  String dropDownValue3;
  double sliderValue1;
  double sliderValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFFEFA139),
            size: 30,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        title: Text(
          'Filter',
          style: FlutterFlowTheme.of(context).title2.override(
            fontFamily: 'Poppins',
            color: Color(0xFFEFA139),
            fontSize: 22,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(-0.55, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                  child: Text(
                    'Apply your filters',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).subtitle1,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: FlutterFlowDropDown(
                  options: ['affenpinscher', 'Afghan hound', ''].toList(),
                  onChanged: (val) => setState(() => dropDownValue1 = val),
                  width: 270,
                  height: 40,
                  textStyle: FlutterFlowTheme.of(context).bodyText2,
                  hintText: 'Race',
                  fillColor: Color(0x55EFA139),
                  elevation: 2,
                  borderColor: Colors.transparent,
                  borderWidth: 10,
                  borderRadius: 30,
                  margin: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  hidesUnderline: true,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: FlutterFlowDropDown(
                  options: ['affenpinscher', 'Afghan hound', ''].toList(),
                  onChanged: (val) => setState(() => dropDownValue2 = val),
                  width: 270,
                  height: 40,
                  textStyle: FlutterFlowTheme.of(context).bodyText2,
                  hintText: 'Age',
                  fillColor: Color(0x55EFA139),
                  elevation: 2,
                  borderColor: Colors.transparent,
                  borderWidth: 10,
                  borderRadius: 30,
                  margin: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  hidesUnderline: true,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: FlutterFlowDropDown(
                  options: [
                    'Zaghouan',
                    'Tunis',
                    'Tozeur',
                    'Tataouine',
                    'Sousse',
                    'Siliana',
                    'Sidi Bouzid'
                  ].toList(),
                  onChanged: (val) => setState(() => dropDownValue3 = val),
                  width: 270,
                  height: 40,
                  textStyle: FlutterFlowTheme.of(context).bodyText2,
                  hintText: 'Region',
                  fillColor: Color(0x55EFA139),
                  elevation: 2,
                  borderColor: Colors.transparent,
                  borderWidth: 10,
                  borderRadius: 30,
                  margin: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  hidesUnderline: true,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.65, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 45, 0, 0),
                  child: Text(
                    'Distance',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).subtitle2,
                  ),
                ),
              ),
              SliderTheme(
                data: SliderThemeData(
                  showValueIndicator: ShowValueIndicator.always,
                ),
                child: Slider.adaptive(
                  activeColor: FlutterFlowTheme.of(context).primaryColor,
                  inactiveColor: Color(0xFF9E9E9E),
                  min: 0,
                  max: 10,
                  value: sliderValue1 ??= 0,
                  label: sliderValue1.toString(),
                  onChanged: (newValue) {
                    setState(() => sliderValue1 = newValue);
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.65, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: Text(
                    'Prix',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).subtitle2,
                  ),
                ),
              ),
              SliderTheme(
                data: SliderThemeData(
                  showValueIndicator: ShowValueIndicator.always,
                ),
                child: Slider.adaptive(
                  activeColor: FlutterFlowTheme.of(context).primaryColor,
                  inactiveColor: Color(0xFF9E9E9E),
                  min: 0,
                  max: 10,
                  value: sliderValue2 ??= 0,
                  label: sliderValue2.toString(),
                  onChanged: (newValue) {
                    setState(() => sliderValue2 = newValue);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(60, 0, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Clear',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: Color(0xFFEFA139),
                          textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 40,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 60, 0),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Validate',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: Color(0xFFEFA139),
                          textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
