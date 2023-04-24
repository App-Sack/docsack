import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';

class FloatingButton extends StatefulWidget {

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> with SingleTickerProviderStateMixin  {

  late Animation<double> _animation;
  late AnimationController _animationController;
  @override
  void initState() {
    _animationController = AnimationController(
      duration: Duration(milliseconds: 260),
      vsync: this,
    );

    final curvedAnimation =
    CurvedAnimation(curve: Curves.easeInOut, parent: _animationController);

    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return FloatingActionBubble(
        items: [
          Bubble(
              icon: (Icons.file_copy_outlined),
              iconColor: Colors.white,
              title: "File",
              titleStyle: TextStyle(color: Colors.white,fontSize: 16),
              bubbleColor: Colors.blue,
              onPress: () {

              }),
          Bubble(
              icon: (Icons.folder_copy_outlined),
              iconColor: Colors.white,
              title: "Folder",
              titleStyle: TextStyle(color: Colors.white,fontSize: 16),
              bubbleColor: Colors.blue,
              onPress: () {}),
        ],
        animation: _animation,

        // On pressed change animation state
        onPress: () => _animationController.isCompleted
            ? _animationController.reverse()
            : _animationController.forward(),

        // Floating Action button Icon color
        iconColor: Colors.white,

        // Flaoting Action button Icon
        iconData: Icons.add,
        backGroundColor: Colors.blue);
  }
}