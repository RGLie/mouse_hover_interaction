import 'package:flutter/material.dart';
import 'package:mouse_hover/hover_provider.dart';
import 'package:provider/provider.dart';

class MyButton extends StatelessWidget {
  final Widget initialWidget;
  final Widget hoverWidget;

  MyButton({super.key,
    required this.initialWidget,
    required this.hoverWidget,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<StartButtonProvider>(
      create: (BuildContext context) => StartButtonProvider(),
      child: Consumer<StartButtonProvider>(builder: (BuildContext context, StartButtonProvider _startButtonProvider, Widget? _) {
        return MouseRegion(
          onEnter: (PointerEvent details) {
            _startButtonProvider.isRegion();
          },
          onExit: (PointerEvent details) {
            _startButtonProvider.isnRegion();
          },
          child: InkWell(
            onTap: () {
              _startButtonProvider.clicked();
              
            },
            child: (() {
              switch (_startButtonProvider.mouse_state) {
                case 1:
                  return hoverWidget;
                case 2:
                  return Container(
                    width: 100,
                    height: 100,
                    color: Colors.greenAccent,
                  );
              }
              return initialWidget;
            })(),
          ));
      }
      ),
      
      
    );
  }
}