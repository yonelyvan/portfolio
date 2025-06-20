import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FullscreenImageViewer extends StatefulWidget {
  final List<String> imagePaths;
  final int initialIndex;

  const FullscreenImageViewer({
    super.key,
    required this.imagePaths,
    required this.initialIndex,
  });

  @override
  State<FullscreenImageViewer> createState() => _FullscreenImageViewerState();
}

class _FullscreenImageViewerState extends State<FullscreenImageViewer> {
  late int currentIndex;
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.initialIndex;
    focusNode = FocusNode();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      focusNode.requestFocus();
    });
  }

  void _handleKey(RawKeyEvent event) {
    if (event is RawKeyDownEvent) {
      final key = event.logicalKey;
      if (key == LogicalKeyboardKey.arrowRight) {
        if (currentIndex < widget.imagePaths.length - 1) {
          setState(() => currentIndex++);
        } else {
          setState(() {
            currentIndex = 0;
          });
        }
      } else if (key == LogicalKeyboardKey.arrowLeft) {
        if (currentIndex > 0) {
          setState(() => currentIndex--);
        } else {
          setState(() {
            currentIndex = widget.imagePaths.length - 1;
          });
        }
      } else if (key == LogicalKeyboardKey.escape) {
        Navigator.pop(context);
      }
    }
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final imagePath = widget.imagePaths[currentIndex];
    final tag = 'image_$currentIndex';

    return RawKeyboardListener(
      focusNode: focusNode,
      onKey: _handleKey,
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Scaffold(
          backgroundColor: Colors.black.withOpacity(0.6),
          body: Center(
            child: Hero(
              tag: tag,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 30,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      //height: 800,
                      child: Image.asset(
                        'assets/images/iphone_frame.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
