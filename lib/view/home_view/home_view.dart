import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:h_ide/view/bottom_view/bottom_view.dart';
import 'package:h_ide/view/code_view/code_view.dart';
import 'package:h_ide/view/finder_view/finder_view.dart';
import 'package:resizable_widget/resizable_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget upperView() {
    return ResizableWidget(
      children: [
        FinderView(),
        CodeView(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WindowBorder(
        color: Colors.transparent,
        width: 0,
        child: ResizableWidget(
          isHorizontalSeparator: true,
          children: [
            upperView(),
            BottomView(),
          ],
        ),
      ),
    );
  }
}
