import 'package:flutter/material.dart';

class CustomVotedRadioButton extends StatefulWidget {
  final String comment;
  final bool isSelected;
  final ValueChanged<bool> onChanged;

  const CustomVotedRadioButton({
    Key? key,
    required this.comment,
    required this.isSelected,
    required this.onChanged,
  }) : super(key: key);

  @override
  _CustomVotedRadioButtonState createState() => _CustomVotedRadioButtonState();
}

class _CustomVotedRadioButtonState extends State<CustomVotedRadioButton> {
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
                  color: widget.isSelected ? Colors.grey : Colors.grey,
                  width: 1.0,
                ),
              ),
              child: widget.isSelected ?  Center(
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              ) : null
            ),
            SizedBox(width: 10),
            AnimatedContainer(
              width: MediaQuery.of(context).size.width / 1.6,
              height: 24,
              duration: Duration(milliseconds: 300),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: widget.isSelected ? Colors.black : Colors.black,
                  width: 1.0,
                ),
                color: widget.isSelected ? Colors.blue : Colors.transparent,
              ),
              child: Center(
                child: Text(
                  widget.comment,
                  style: TextStyle(
                    color: widget.isSelected ? Colors.white : Colors.black,
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
