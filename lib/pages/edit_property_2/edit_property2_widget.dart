import '/backend/backend.dart';
import '/components/amenitity_indicator/amenitity_indicator_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'edit_property2_model.dart';
export 'edit_property2_model.dart';

class EditProperty2Widget extends StatefulWidget {
  const EditProperty2Widget({
    super.key,
    this.propertyRef,
    this.propertyAmenities,
  });

  final PropertiesRecord? propertyRef;
  final AmenititiesRecord? propertyAmenities;

  @override
  State<EditProperty2Widget> createState() => _EditProperty2WidgetState();
}

class _EditProperty2WidgetState extends State<EditProperty2Widget> {
  late EditProperty2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditProperty2Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          buttonSize: 46.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 25.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'Edit Property',
          style: FlutterFlowTheme.of(context).headlineSmall.override(
                fontFamily: 'Ubuntu',
                letterSpacing: 0.0,
              ),
        ),
        actions: const [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
          child: StreamBuilder<AmenititiesRecord>(
            stream: AmenititiesRecord.getDocument(
                widget.propertyAmenities!.reference),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                );
              }
              final columnAmenititiesRecord = snapshot.data!;
              return Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'CHOOSE YOUR AMENITIES',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .gray600,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.amenitityIndicatorModel1,
                                    updateCallback: () => setState(() {}),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.pool_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background:
                                          FlutterFlowTheme.of(context).tertiary,
                                      borderColor: const Color(0xFFE1EDF9),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SwitchListTile.adaptive(
                                    value: _model.amenityPoolValue1 ??=
                                        widget.propertyAmenities!.pool,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.amenityPoolValue1 = newValue);
                                    },
                                    title: Text(
                                      'Pool',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    activeTrackColor: const Color(0xFF392BBA),
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 8.0, 0.0, 8.0),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.amenitityIndicatorModel2,
                                    updateCallback: () => setState(() {}),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.wifi,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background:
                                          FlutterFlowTheme.of(context).tertiary,
                                      borderColor: const Color(0xFFE1EDF9),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SwitchListTile.adaptive(
                                    value: _model.amenityEVChargingValue ??=
                                        widget.propertyAmenities!.internet,
                                    onChanged: (newValue) async {
                                      setState(() => _model
                                          .amenityEVChargingValue = newValue);
                                    },
                                    title: Text(
                                      'Internet',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    activeTrackColor: const Color(0xFF392BBA),
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 8.0, 0.0, 8.0),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.amenitityIndicatorModel3,
                                    updateCallback: () => setState(() {}),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.power_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background:
                                          FlutterFlowTheme.of(context).tertiary,
                                      borderColor: const Color(0xFFE1EDF9),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SwitchListTile.adaptive(
                                    value: _model.amenityExtraOutletsValue ??=
                                        widget.propertyAmenities!.extraOutlets,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.amenityExtraOutletsValue =
                                              newValue);
                                    },
                                    title: Text(
                                      'Extra Outlets',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    activeTrackColor: const Color(0xFF392BBA),
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 8.0, 0.0, 8.0),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.amenitityIndicatorModel4,
                                    updateCallback: () => setState(() {}),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.ac_unit_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background:
                                          FlutterFlowTheme.of(context).tertiary,
                                      borderColor: const Color(0xFFE1EDF9),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SwitchListTile.adaptive(
                                    value: _model.amenityACValue ??=
                                        widget.propertyAmenities!.ac,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.amenityACValue = newValue);
                                    },
                                    title: Text(
                                      'Air Conditioning (AC)',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    activeTrackColor: const Color(0xFF392BBA),
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 8.0, 0.0, 8.0),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.amenitityIndicatorModel5,
                                    updateCallback: () => setState(() {}),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.family_restroom_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background:
                                          FlutterFlowTheme.of(context).tertiary,
                                      borderColor: const Color(0xFFE1EDF9),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SwitchListTile.adaptive(
                                    value: _model.amenityHeatingValue ??= widget
                                        .propertyAmenities!.comfortRoomsPriv,
                                    onChanged: (newValue) async {
                                      setState(() => _model
                                          .amenityHeatingValue = newValue);
                                    },
                                    title: Text(
                                      'Private Rest Room',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    activeTrackColor: const Color(0xFF392BBA),
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 8.0, 0.0, 8.0),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.amenitityIndicatorModel6,
                                    updateCallback: () => setState(() {}),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.local_laundry_service_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background:
                                          FlutterFlowTheme.of(context).tertiary,
                                      borderColor: const Color(0xFFE1EDF9),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SwitchListTile.adaptive(
                                    value: _model.amenityWasherValue ??=
                                        widget.propertyAmenities!.washer,
                                    onChanged: (newValue) async {
                                      setState(() => _model.amenityWasherValue =
                                          newValue);
                                    },
                                    title: Text(
                                      'Washer',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    activeTrackColor: const Color(0xFF392BBA),
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 8.0, 0.0, 8.0),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.amenitityIndicatorModel7,
                                    updateCallback: () => setState(() {}),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.local_laundry_service_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background:
                                          FlutterFlowTheme.of(context).tertiary,
                                      borderColor: const Color(0xFFE1EDF9),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SwitchListTile.adaptive(
                                    value: _model.amenityDryerValue ??=
                                        widget.propertyAmenities!.dryer,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.amenityDryerValue = newValue);
                                    },
                                    title: Text(
                                      'Dryer',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    activeTrackColor: const Color(0xFF392BBA),
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 8.0, 0.0, 8.0),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.amenitityIndicatorModel8,
                                    updateCallback: () => setState(() {}),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.pets_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background:
                                          FlutterFlowTheme.of(context).tertiary,
                                      borderColor: const Color(0xFFE1EDF9),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SwitchListTile.adaptive(
                                    value: _model.amenityPetsValue ??=
                                        widget.propertyAmenities!.petFriendly,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.amenityPetsValue = newValue);
                                    },
                                    title: Text(
                                      'Pet Friendly',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    activeTrackColor: const Color(0xFF392BBA),
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 8.0, 0.0, 8.0),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.amenitityIndicatorModel9,
                                    updateCallback: () => setState(() {}),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.local_parking_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background:
                                          FlutterFlowTheme.of(context).tertiary,
                                      borderColor: const Color(0xFFE1EDF9),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SwitchListTile.adaptive(
                                    value: _model.amenityWorkoutValue ??=
                                        widget.propertyAmenities!.parking,
                                    onChanged: (newValue) async {
                                      setState(() => _model
                                          .amenityWorkoutValue = newValue);
                                    },
                                    title: Text(
                                      'Parking',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    activeTrackColor: const Color(0xFF392BBA),
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 8.0, 0.0, 8.0),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.amenitityIndicatorModel10,
                                    updateCallback: () => setState(() {}),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.transgender_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background:
                                          FlutterFlowTheme.of(context).tertiary,
                                      borderColor: const Color(0xFFE1EDF9),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SwitchListTile.adaptive(
                                    value: _model.amenityPoolValue2 ??= widget
                                        .propertyAmenities!.comfortRoomsPub,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.amenityPoolValue2 = newValue);
                                    },
                                    title: Text(
                                      'Shared Rest Room',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    activeTrackColor: const Color(0xFF392BBA),
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 8.0, 0.0, 8.0),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.amenitityIndicatorModel11,
                                      updateCallback: () => setState(() {}),
                                      child: AmenitityIndicatorWidget(
                                        icon: Icon(
                                          Icons.nightlife,
                                          color: FlutterFlowTheme.of(context)
                                              .gray600,
                                        ),
                                        background: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        borderColor: const Color(0xFFE1EDF9),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: SwitchListTile.adaptive(
                                      value: _model.amenityPoolValue3 ??=
                                          widget.propertyAmenities!.nightLife,
                                      onChanged: (newValue) async {
                                        setState(() => _model
                                            .amenityPoolValue3 = newValue);
                                      },
                                      title: Text(
                                        'Night Life',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      tileColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      activeColor:
                                          FlutterFlowTheme.of(context).primary,
                                      activeTrackColor: const Color(0xFF392BBA),
                                      dense: false,
                                      controlAffinity:
                                          ListTileControlAffinity.trailing,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              16.0, 8.0, 0.0, 8.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'STEP',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Text(
                              '2/3',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Ubuntu',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            await widget.propertyAmenities!.reference
                                .update(createAmenititiesRecordData(
                              ac: _model.amenityACValue,
                              pool: _model.amenityPoolValue1,
                              washer: _model.amenityWasherValue,
                              dryer: _model.amenityDryerValue,
                              nightLife: _model.amenityPoolValue3,
                              extraOutlets: _model.amenityExtraOutletsValue,
                              parking: false,
                              petFriendly: false,
                              internet: false,
                            ));

                            context.pushNamed(
                              'editProperty_3',
                              queryParameters: {
                                'propertyRef': serializeParam(
                                  widget.propertyRef,
                                  ParamType.Document,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                'propertyRef': widget.propertyRef,
                              },
                            );
                          },
                          text: 'NEXT',
                          options: FFButtonOptions(
                            width: 120.0,
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Roboto',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 2.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(60.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
