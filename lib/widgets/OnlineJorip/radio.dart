import 'package:flutter/material.dart';

class CustomRadioButton extends StatefulWidget {
  final String comment;
  final bool isSelected;
  final ValueChanged<bool> onChanged;

  const CustomRadioButton({
    Key? key,
    required this.comment,
    required this.isSelected,
    required this.onChanged,
  }) : super(key: key);

  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onChanged(!widget.isSelected);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          children: [
            AnimatedContainer(
              width: 24.0,
              height: 24.0,
              duration: Duration(milliseconds: 300),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: widget.isSelected ? Colors.grey.shade300 : Colors.black,
                  width: 1.0,
                ),
              ),
              child: widget.isSelected ?  Center(
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    shape: BoxShape.circle,
                  ),
                ),
              ) : null
            ),
            SizedBox(width: 10),
            AnimatedContainer(
              width: MediaQuery.of(context).size.width / 1.3,
              height: 24,
              duration: Duration(milliseconds: 300),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
                color: widget.isSelected ? Color(0X3B89FFFF): Colors.transparent,
              ),
              child: Center(
                child: Text(
                  widget.comment,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
