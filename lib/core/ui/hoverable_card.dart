import 'package:flutter/material.dart';

class HoverableCard extends StatefulWidget {
  const HoverableCard({
    required this.imageUrl,
    required this.title,
    required this.onTap,
    this.size = 300,
    // ignore: unused_element
    super.key,
  });

  final String imageUrl;
  final String title;
  final VoidCallback onTap;
  final double size;

  @override
  State<HoverableCard> createState() => _HoverableCardState();
}

class _HoverableCardState extends State<HoverableCard> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          _isHovering = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovering = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: SizedBox.square(
          dimension: widget.size,
          child: Card(
            elevation: _isHovering ? 8 : 4,
            clipBehavior: Clip.hardEdge,
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Image.network(
                    widget.imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      widget.title,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
