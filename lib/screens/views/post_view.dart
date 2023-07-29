import 'dart:ui';

import 'package:flutter/material.dart';

class PostView extends StatelessWidget {
  final String? url;
  final String title;
  final String subTitle;

  const PostView({
    super.key,
    required this.title,
    required this.subTitle,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Transform.scale(
        scale: 1.1,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
            image:  DecorationImage(
              image: NetworkImage(url ?? "https://w0.peakpx.com/wallpaper/536/506/HD-wallpaper-404-not-found-blue-dark-glitched-typography-words.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10,
                    sigmaY: 7,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 10,
                      bottom: 40,
                    ),
                    color: Colors.black.withOpacity(0.2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          subTitle,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
