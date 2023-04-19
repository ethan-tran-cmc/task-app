import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

import '../../../utilities/constants/colors.dart';

class ImageItem extends StatelessWidget {
  const ImageItem({
    required this.imagePath,
    required this.aspectRatio,
    required this.onDeleteTap,
    this.isMemoryImage = false,
    Key? key,
  }) : super(key: key);

  final String imagePath;

  final double aspectRatio;

  final VoidCallback onDeleteTap;

  final bool isMemoryImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: aspectRatio,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: isMemoryImage
                ? Image.memory(
                    const Base64Decoder().convert(
                      imagePath,
                    ),
                    fit: BoxFit.cover,
                  )
                : Image.file(
                    File(imagePath),
                    fit: BoxFit.cover,
                  ),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: onDeleteTap,
            child: SizedBox(
              width: 48,
              height: 48,
              child: Center(
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: backgroundColor.withOpacity(0.8),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.close,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
