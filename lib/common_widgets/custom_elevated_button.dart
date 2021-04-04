import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({
    this.child,
    this.color,
    this.borderRadius: 2.0,
    this.height: 50.0,
    this.onPressed,
  }) : assert(borderRadius != null);

  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        // child: Text(
        //   'Sign in with Google',
        //   style: TextStyle(
        //     color: Colors.black87,
        //     fontSize: 15.0,
        //   ),
        // ),
        child: child,
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            side: BorderSide.none,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
    );
  }
}
