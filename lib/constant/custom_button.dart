import 'package:flutter/material.dart';

class CustomBasicButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final TextStyle textStyle;
  final Icon icon;

  const CustomBasicButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
    required this.textStyle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        splashColor: Colors.grey.shade400,
        borderRadius: BorderRadius.circular(20),
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              icon,
              const SizedBox(
                width: 40,
              ),
              Text(
                text,
                style: textStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomSmallButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final TextStyle textStyle;

  const CustomSmallButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
    required this.textStyle
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.white),
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        splashColor: Colors.white70,
        borderRadius: BorderRadius.circular(20),
        onTap: onPressed,
        child: Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2),
              child: Text(
                text,
                style: textStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomShadowButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final TextStyle textStyle;
  final Icon icon;

  const CustomShadowButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
    required this.textStyle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                spreadRadius: 3,
                blurStyle: BlurStyle.outer)
          ]),
      child: InkWell(
        splashColor: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(25),
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 0,
              ),
              icon,
              const SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: textStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final TextStyle textStyle;

  const CustomButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.color,
      required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 22),
      decoration: BoxDecoration(
        color: const Color(0xff0bb0c6),
        borderRadius: BorderRadius.circular(25),
      ),
      child: InkWell(
        splashColor: Colors.white,
        borderRadius: BorderRadius.circular(25),
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: textStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
