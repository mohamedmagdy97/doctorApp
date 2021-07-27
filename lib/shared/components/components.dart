import 'package:doctor_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';

Widget defaultFormField({
  @required TextEditingController controller,
  @required Function validator,
  Function onTap,
  @required TextInputType type,
  Widget pIcon,
  Widget sIcon,
  Function onSubmit,
  Function onChange,
  bool enabled = true,
  bool isPassword = false,
  @required String label,
}) =>
    TextFormField(
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      controller: controller,
      validator: validator,
      keyboardType: type,
      obscureText: isPassword,
      onTap: onTap,
      decoration: InputDecoration(
        prefixIcon: pIcon,
        // labelText: label,
        hintText: label,
        suffixIcon: sIcon,
        enabled: enabled,
        contentPadding: EdgeInsets.fromLTRB(20.0, 8, 20.0, 8),
        border: OutlineInputBorder(),
      ),
    );

Widget defaultButton({
  @required String text,
  @required Function onPressed,
  bool isUpperCase = true,
  double width = double.infinity,
  double height = 50,
  double radius = 10,
  double fontSize = 18,
  Color color = Colors.blue,
}) {
  return Container(
    width: width,
    height: height,
    child: MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      onPressed: onPressed,
      color: color,
      textColor: Colors.white,
      child: Text(
        isUpperCase ? text.toUpperCase() : text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
        ),
      ),
    ),
  );
}

Widget defaultCircleButton({
  @required Function onPressed,
  @required String text,
  String image,
}) {
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
    child: OutlinedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(
              color: defaultColor,
            ),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          Text(text),
          Image(
            image: AssetImage(image),
            width: 15,
            height: 15,
          ),
        ],
      ),
    ),
  );
}

Widget defaultTextButton(
    {@required String text, @required Function onPressed}) {
  return TextButton(
      onPressed: onPressed,
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          // color: defaultColor,
        ),
      ));
}

void navigateTo(BuildContext context, Widget widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

void navigateAndFinish(BuildContext context, Widget widget) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => widget),
    (route) => false,
  );
}

Widget myDivider(context) {
  return Padding(
    padding: EdgeInsetsDirectional.only(start: 10),
    child: Container(
      height: 1.0,
      color: Theme.of(context).primaryColor.withOpacity(0.2),
      width: double.infinity,
    ),
  );
}

Widget buildServiceCard({
  @required Function onTap,
  @required String image,
  @required String name,
  double width = 100,
  double height = 100,
}) {
  return InkWell(
    onTap: onTap,
    child: Card(
      color: Colors.white.withOpacity(0.9),
      child: Column(
        children: [
          Image.asset(
            image,
            width: width,
            height: height,
          ),
          Text(name),
        ],
      ),
    ),
  );
}
