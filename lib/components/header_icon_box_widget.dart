import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'header_icon_box_model.dart';
export 'header_icon_box_model.dart';

class HeaderIconBoxWidget extends StatefulWidget {
  const HeaderIconBoxWidget({
    super.key,
    this.name,
  });

  final Widget? name;

  @override
  State<HeaderIconBoxWidget> createState() => _HeaderIconBoxWidgetState();
}

class _HeaderIconBoxWidgetState extends State<HeaderIconBoxWidget> {
  late HeaderIconBoxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderIconBoxModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36.0,
      height: 36.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        shape: BoxShape.rectangle,
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: widget.name!,
    );
  }
}
