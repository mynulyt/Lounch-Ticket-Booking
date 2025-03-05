import 'package:flutter/material.dart';

class CustomTextField2 extends StatefulWidget {
  final String? hintMain;
  final String? hintSub;
  final String? labelHint;
  final Image? prefixIcon;
  final Color? colorM;

  const CustomTextField2({
    super.key,
    this.hintMain,
    this.hintSub,
    this.labelHint,
    required this.prefixIcon,
    this.colorM,
    required Color colorS,
  });

  @override
  _CustomTextField2State createState() => _CustomTextField2State();
}

class _CustomTextField2State extends State<CustomTextField2> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  bool _isHintVisible = true;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {
      _isHintVisible = _controller.text.isEmpty && !_focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 5),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          TextField(
            controller: _controller,
            focusNode: _focusNode,
            decoration: InputDecoration(
              prefixIcon: widget.prefixIcon ?? const Spacer(),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              labelText: widget.labelHint,
              labelStyle: TextStyle(color: Colors.white, fontSize: 14),
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
            style: TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            onChanged: (text) {
              setState(() {
                _isHintVisible = text.isEmpty && !_focusNode.hasFocus;
              });
            },
          ),
          if ((widget.hintMain != null || widget.hintSub != null) &&
              _isHintVisible)
            Positioned(
              left: 50,
              top: 14,
              child: AnimatedOpacity(
                opacity: _isHintVisible ? 1.0 : 0.0,
                duration: Duration(milliseconds: 200),
                child: RichText(
                  text: TextSpan(
                    children: [
                      if (widget.hintMain != null)
                        TextSpan(
                          text: "${widget.hintMain} ",
                          style: TextStyle(
                            fontSize: 20, // Bigger size
                            fontWeight: FontWeight.bold,
                            color: widget.colorM ?? Colors.blue,
                          ),
                        ),
                      if (widget.hintSub != null)
                        WidgetSpan(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 6, vertical: 3),
                            decoration: BoxDecoration(
                              color: Color(0xFF03C3FF),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              widget.hintSub!,
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
