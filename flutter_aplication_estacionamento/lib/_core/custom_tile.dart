import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/_core/app_colors.dart';

class CustomExpansionTile extends StatefulWidget {
  final String title;
  final List<Widget> children;
  final IconData icon;

  const CustomExpansionTile({
    super.key,
    required this.title,
    required this.children,
    required this.icon,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomExpansionTileState createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile>
    with SingleTickerProviderStateMixin {
  final Color activeColor = AppColors.secondaryColor;

  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            widget.icon,
            color:
                _expanded ? activeColor : const Color.fromARGB(255, 72, 72, 72),
            size: 30,
          ),
          title: Text(
            widget.title,
            style: TextStyle(
              color: _expanded ? activeColor : Colors.black,
              fontWeight: _expanded ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
          trailing: AnimatedRotation(
            turns: _expanded ? 0.5 : 0.0, // 0.5 = 180 graus
            duration: Duration(milliseconds: 200),
            child: Icon(
              Icons.keyboard_arrow_down,
              color: _expanded ? activeColor : Colors.black,
            ),
          ),
          onTap: () {
            setState(() {
              _expanded = !_expanded;
            });
          },
        ),
        if (_expanded) Column(children: widget.children),
      ],
    );
  }
}
