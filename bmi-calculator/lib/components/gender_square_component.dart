import 'package:flutter/material.dart';

class GenderSquareComponent extends StatefulWidget {
  const GenderSquareComponent({
    Key? key,
    required this.text,
    required this.icon,
    required this.isSelected,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final bool isSelected;

  @override
  State<GenderSquareComponent> createState() => _GenderSquareComponentState();
}

class _GenderSquareComponentState extends State<GenderSquareComponent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: widget.isSelected
              ? Color.fromARGB(45, 69, 69, 219)
              : Colors.white10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              size: 80,
              color: Colors.white,
            ),
            Text(
              widget.text,
              style: TextStyle(
                color: Color.fromARGB(255, 183, 183, 183),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
