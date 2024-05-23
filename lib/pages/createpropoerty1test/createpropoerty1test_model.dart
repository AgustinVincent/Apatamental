import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'createpropoerty1test_widget.dart' show Createpropoerty1testWidget;
import 'package:flutter/material.dart';

class Createpropoerty1testModel
    extends FlutterFlowModel<Createpropoerty1testWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for propertyName widget.
  FocusNode? propertyNameFocusNode;
  TextEditingController? propertyNameTextController;
  String? Function(BuildContext, String?)? propertyNameTextControllerValidator;
  String? _propertyNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'We need to know the name of the place...';
    }

    return null;
  }

  // State field(s) for propertyAddress widget.
  FocusNode? propertyAddressFocusNode;
  TextEditingController? propertyAddressTextController;
  String? Function(BuildContext, String?)?
      propertyAddressTextControllerValidator;
  // State field(s) for propertyNeighborhood widget.
  FocusNode? propertyNeighborhoodFocusNode;
  TextEditingController? propertyNeighborhoodTextController;
  String? Function(BuildContext, String?)?
      propertyNeighborhoodTextControllerValidator;
  // State field(s) for propertyDescription widget.
  FocusNode? propertyDescriptionFocusNode;
  TextEditingController? propertyDescriptionTextController;
  String? Function(BuildContext, String?)?
      propertyDescriptionTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PropertiesRecord? newProperty;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  AmenititiesRecord? amenitiesRecord;

  @override
  void initState(BuildContext context) {
    propertyNameTextControllerValidator = _propertyNameTextControllerValidator;
  }

  @override
  void dispose() {
    propertyNameFocusNode?.dispose();
    propertyNameTextController?.dispose();

    propertyAddressFocusNode?.dispose();
    propertyAddressTextController?.dispose();

    propertyNeighborhoodFocusNode?.dispose();
    propertyNeighborhoodTextController?.dispose();

    propertyDescriptionFocusNode?.dispose();
    propertyDescriptionTextController?.dispose();
  }
}
