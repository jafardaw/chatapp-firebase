import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key, this.onTap, required this.text});

  final VoidCallback? onTap;
  final String text;

  @override
  CustomButtonState createState() => CustomButtonState();
}

class CustomButtonState extends State<CustomButton> {
  bool _isPressed = false;

  void _updatePressState(bool isPressed) {
    setState(() {
      _isPressed = isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _updatePressState(true),
      onTapUp: (_) => _updatePressState(false),
      onTapCancel: () => _updatePressState(false),
      onTap: widget.onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width < 600 ? 16 : 60,
        ),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: _isPressed
                  ? [
                      const Color.fromARGB(255, 0, 0, 0),
                      const Color.fromARGB(255, 195, 190, 210),
                    ]
                  : const [
                      Color.fromARGB(255, 0, 0, 0),
                      Color.fromARGB(255, 54, 50, 67),
                      Color.fromARGB(255, 195, 190, 210),
                    ], // تدرج لوني
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 15,
                offset: const Offset(0, 6), // تغيير موقع الظل
              ),
            ],
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: Colors.white.withOpacity(0.5),
              width: 1.5,
            ),
          ),
          width: double.infinity,
          height: MediaQuery.of(context).size.width < 600 ? 48 : 60,
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width < 600 ? 16 : 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
