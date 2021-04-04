import 'package:flutter/widgets.dart';
import 'package:time_tracker_flutter_course/common_widgets/custom_elevated_button.dart';

class SignInbutton extends CustomElevatedButton {
  SignInbutton({
    @required String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  })  : assert(text != null),
        super(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 15.0,
            ),
          ),
          color: color,
          // height: 40.0,
          onPressed: onPressed,
        );
}
