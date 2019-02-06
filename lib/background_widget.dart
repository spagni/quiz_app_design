import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BackgroundPainter(),
      child: Container(
        height: double.infinity,
        width: double.infinity
      ),
    );
  }
}

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    Path softBluePaht = Path();
    softBluePaht.moveTo(size.width * .2, 0.0);
    softBluePaht.lineTo(size.width, 0);
    softBluePaht.lineTo(size.width, size.height * .40);
    softBluePaht.close();
    paint.color = BackgroundColors.softBlue;
    canvas.drawPath(softBluePaht, paint);

    Path mainBluePath = Path();
    mainBluePath.lineTo(size.width * .2, 0.0);
    //Curva hasta donde termina la curva celeste
    mainBluePath.quadraticBezierTo(size.width * .7, size.height * .07, size.width, size.height * .40);
    mainBluePath.lineTo(size.width, size.height * .60);
    mainBluePath.lineTo(0, size.height * .5);
    mainBluePath.close();
    paint.color = BackgroundColors.mainBlue;
    canvas.drawPath(mainBluePath, paint);

    Path darkBluePaht = Path();
    darkBluePaht.moveTo(size.width, size.height * .2);
    darkBluePaht.quadraticBezierTo(size.width * .7, size.height/2, 0.0, size.height * .55);
    darkBluePaht.lineTo(size.width, size.height * .6);
    darkBluePaht.close();
    paint.color = BackgroundColors.darkBlue;
    canvas.drawPath(darkBluePaht, paint);

    Path lightBluePath = Path();
    lightBluePath.moveTo(0.0, size.height * .45);
    lightBluePath.quadraticBezierTo(size.width/2, size.height * .58, size.width, size.height * .5);
    lightBluePath.lineTo(size.width, size.height);
    lightBluePath.lineTo(0, size.height);
    lightBluePath.close();
    paint.color = BackgroundColors.lightBlue;
    canvas.drawPath(lightBluePath, paint);

    Path mainBluePath2 = Path();
    mainBluePath2.moveTo(0, size.height * .80);
    mainBluePath2.quadraticBezierTo(size.width * .2, size.height * .99, size.width, size.height * .98);
    mainBluePath2.lineTo(size.width, size.height);
    mainBluePath2.lineTo(0, size.height);
    mainBluePath2.close();
    paint.color = BackgroundColors.mainBlue;
    canvas.drawPath(mainBluePath2, paint);

    Path darkOrangePath = Path();
    darkOrangePath.moveTo(size.width, size.height * .6);
    darkOrangePath.quadraticBezierTo(size.width * .35, size.height * .6, size.width * .20, size.height);
    darkOrangePath.lineTo(size.width, size.height);
    darkOrangePath.close();
    paint.color = BackgroundColors.darkOrange;
    canvas.drawPath(darkOrangePath, paint);

    Path softOrangePath = Path();
    softOrangePath.moveTo(size.width, size.height * .75);
    softOrangePath.quadraticBezierTo(size.width * .60, size.height * .80, size.width * .45, size.height);
    softOrangePath.lineTo(size.width, size.height);
    softOrangePath.close();
    paint.shader = RadialGradient(
      colors: [Colors.orange[300], Colors.deepOrange[700]]
    ).createShader(Rect.fromCircle(center: Offset(size.width, size.height), radius: size.height * .5));
    canvas.drawPath(softOrangePath, paint);

    Path pinkPath = Path();
    pinkPath.moveTo(size.width, size.height * .985);
    pinkPath.quadraticBezierTo(size.width * .3, size.height , 0.0, size.height * .93);
    pinkPath.lineTo(0.0, size.height);
    pinkPath.lineTo(size.width, size.height);
    pinkPath.close();
    paint.color = BackgroundColors.pink;
    paint.shader = null;
    canvas.drawPath(pinkPath, paint);

    Path yellowPath = Path();
    yellowPath.moveTo(size.width, size.height * .94);
    yellowPath.quadraticBezierTo(size.width * .8, size.height * .98, size.width * .4665, size.height * .98);
    yellowPath.lineTo(size.width * .452, size.height);
    yellowPath.lineTo(size.width, size.height);
    yellowPath.close();
    paint.color = BackgroundColors.yellow;
    canvas.drawPath(yellowPath, paint);
    
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    // return old != this;
    return false;
  }

}

class BackgroundColors {
  static Color pink = Color(0XFFE33B6C);
  static Color mainBlue = Color(0XFF264BBE);
  static Color darkBlue = Color(0XFF103AAE).withOpacity(.4);
  static Color softBlue = Color(0XFF2951CD);
  static Color darkOrange = Colors.orange[400];
  static Color softOrange = Colors.orange[800];
  static Color lightBlue = Colors.lightBlue[200];
  static Color softLightBlue = Colors.lightBlueAccent;
  static Color yellow = Color(0XFFFDDC57);
}