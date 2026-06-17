import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'color_circle_model.dart';
export 'color_circle_model.dart';

class ColorCircleWidget extends StatefulWidget {
  const ColorCircleWidget({
    super.key,
    Color? color,
    bool? selected,
  })  : this.color = color ?? const Color(0xFFC9A84C),
        this.selected = selected ?? true;

  final Color color;
  final bool selected;

  @override
  State<ColorCircleWidget> createState() => _ColorCircleWidgetState();
}

class _ColorCircleWidgetState extends State<ColorCircleWidget> {
  late ColorCircleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ColorCircleModel());

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
      width: 32.0,
      height: 32.0,
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          widget.color,
          Color(0xFFC9A84C),
        ),
        borderRadius: BorderRadius.circular(16.0),
        shape: BoxShape.rectangle,
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Visibility(
        visible: valueOrDefault<bool>(
          widget.selected,
          true,
        ),
        child: Icon(
          Icons.check_rounded,
          color: Colors.white,
          size: 18.0,
        ),
      ),
    );
  }
}
