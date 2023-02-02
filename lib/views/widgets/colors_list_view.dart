// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    Key? key,
    required this.isActive,
    required this.color,
  }) : super(key: key);

  final bool isActive;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 35,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({
    Key? key,
  }) : super(key: key);

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;

  List<Color> colors = const [
    Color(0xffD7E9B9),
    Color(0xffFFFBAC),
    Color(0xffFFD495),
    Color(0xffFAAB78),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  setState(() {});
                },
                child: ColorItem(
                  color: colors[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
