import 'package:flutter/material.dart';
import 'package:tunai_mudah/app/shared/theme.dart';

//pemabayaran
class MenuItemWidgets extends StatelessWidget {
  final String image;
  final String? label;

  const MenuItemWidgets({
    required this.image,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: background,
          ),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icons/${image}'),
                scale: 2,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          '${label}',
          style: regular.copyWith(
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
