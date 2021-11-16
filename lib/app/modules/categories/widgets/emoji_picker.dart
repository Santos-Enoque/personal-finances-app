import 'dart:io';
import 'package:flutter/material.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';

class CustomEmojiPicker extends StatelessWidget {
  const CustomEmojiPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      child: EmojiPicker(
        onEmojiSelected: (category, Emoji emoji) {
          // Do something when emoji is tapped
        },
        config: Config(
            columns: 7,
            emojiSizeMax: 32 *
                (Platform.isIOS
                    ? 1.30
                    : 1.0), // Issue: https://github.com/flutter/flutter/issues/28894
            verticalSpacing: 0,
            horizontalSpacing: 0,
            initCategory: Category.RECENT,
            bgColor: Theme.of(context).scaffoldBackgroundColor,
            indicatorColor: Theme.of(context).primaryColor,
            iconColor: Colors.grey,
            iconColorSelected: Theme.of(context).primaryColor,
            progressIndicatorColor: Theme.of(context).primaryColor,
            showRecentsTab: true,
            recentsLimit: 28,
            noRecentsText: "No Recents",
            noRecentsStyle:
                const TextStyle(fontSize: 20, color: Colors.black26),
            tabIndicatorAnimDuration: kTabScrollDuration,
            categoryIcons: const CategoryIcons(),
            buttonMode: ButtonMode.CUPERTINO),
      ),
    );
  }
}
