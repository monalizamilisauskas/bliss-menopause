import '/components/form_section_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'profile_card_child_model.dart';
export 'profile_card_child_model.dart';

class ProfileCardChildWidget extends StatefulWidget {
  const ProfileCardChildWidget({super.key});

  @override
  State<ProfileCardChildWidget> createState() => _ProfileCardChildWidgetState();
}

class _ProfileCardChildWidgetState extends State<ProfileCardChildWidget> {
  late ProfileCardChildModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileCardChildModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        wrapWithModel(
          model: _model.formSectionHeaderModel,
          updateCallback: () => safeSetState(() {}),
          child: FormSectionHeaderWidget(
            title: 'Personal Information',
          ),
        ),
      ],
    );
  }
}
