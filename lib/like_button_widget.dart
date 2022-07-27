import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class LikeButtonWidget extends StatefulWidget {
  @override
  _LikeButtonWidgetState createState() => _LikeButtonWidgetState();
}

class _LikeButtonWidgetState extends State<LikeButtonWidget> {
  bool isLiked = false;
  int likeCount = 8;
  bool hasBackground = false;
  final key = GlobalKey<LikeButtonState>();

  @override
  Widget build(BuildContext context) {
    final double size = 40;
    final animationDuration = Duration(milliseconds: 500);

    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: hasBackground ? Colors.red.shade100 : null,
        fixedSize: Size.fromWidth(160),
        padding: EdgeInsets.zero,
        side: BorderSide(color: Colors.black, width: 3.0,),
      ),
      onPressed: () async {
        setState(() => hasBackground = !isLiked);

        key.currentState!.onTap();
      },
      child: IgnorePointer(
        child: LikeButton(
            key: key,
            padding: EdgeInsets.all(12),
            size: size,
            isLiked: isLiked,
            likeCount: likeCount,
            circleColor: CircleColor(
              start: Color(0xFFD4AF37),
              end: Color(0xFFD4AF37),
            ),
            bubblesColor: BubblesColor(
                dotPrimaryColor: Color(0xFFA11E1E),
                dotSecondaryColor: Colors.greenAccent),
            likeBuilder: (isLiked) {
              final color = isLiked ? Colors.red : Colors.grey;

              return Icon(Icons.favorite, color: color, size: size);
            },
            animationDuration: animationDuration,
            likeCountPadding: EdgeInsets.only(left: 12),
            countBuilder: (likeCount, isLiked, text) {
              final color = isLiked ? Colors.black : Colors.grey;

              return Text(
                text,
                style: TextStyle(
                  color: color,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              );
            },
            onTap: (isLiked) async {
              this.isLiked = !isLiked;
              likeCount += this.isLiked ? 1 : -1;

              Future.delayed(animationDuration)
                  .then((_) => setState(() => hasBackground = !isLiked));

              return !isLiked;
            }),
      ),
    );
  }
}
