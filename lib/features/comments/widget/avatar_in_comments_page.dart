import 'package:flutter/material.dart';

class AvatarInCommentsPage extends StatefulWidget {
  const AvatarInCommentsPage({
    super.key,
    required this.haveStories,
    required this.isSender,
    required this.isCommentsPage,
    required this.pathToImage,
    required this.isLeft,
    required this.onTap,
  });

  final VoidCallback onTap;
  final bool haveStories;
  final bool isSender;
  final bool isCommentsPage;
  final String? pathToImage;
  final bool isLeft;

  @override
  State<AvatarInCommentsPage> createState() => _AvatarInCommentsPageState();
}

class _AvatarInCommentsPageState extends State<AvatarInCommentsPage> {
  @override
  Widget build(BuildContext context) {
    return widget.isLeft
        ? widget.isCommentsPage
            ? widget.isSender
                ? SizedBox(
                    height: 0,
                    width: 0,
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: widget.onTap,
                        child: Container(
                          alignment: Alignment.center,
                          height: widget.haveStories ? 74 : 62,
                          width: widget.haveStories ? 74 : 62,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            gradient: widget.haveStories
                                ? LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffff0000).withOpacity(0.25),
                                      Color(0xffb4bbf5).withOpacity(0.25),
                                    ],
                                  )
                                : null,
                          ),
                          child: widget.haveStories
                              ? Container(
                                  alignment: Alignment.center,
                                  height: 68,
                                  width: 68,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: widget.pathToImage != null
                                        ? Image.network(
                                            widget.pathToImage!,
                                            fit: BoxFit.cover,
                                            height: 62,
                                            width: 62,
                                          )
                                        : null,
                                  ),
                                )
                              : ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: widget.pathToImage != null
                                      ? Image.network(
                                          widget.pathToImage!,
                                          fit: BoxFit.cover,
                                          height: 62,
                                          width: 62,
                                        )
                                      : null,
                                ),
                        ),
                      ),
                      SizedBox(width: widget.haveStories ? 9 : 21),
                    ],
                  )
            : SizedBox(
                height: 0,
                width: 0,
              )
        : widget.isCommentsPage
            ? !widget.isSender
                ? SizedBox(
                    height: 0,
                    width: 0,
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(width: widget.haveStories ? 9 : 21),
                      Container(
                        alignment: Alignment.center,
                        height: widget.haveStories ? 74 : 62,
                        width: widget.haveStories ? 74 : 62,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          gradient: widget.haveStories
                              ? LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xffff0000).withOpacity(0.25),
                                    Color(0xffb4bbf5).withOpacity(0.25),
                                  ],
                                )
                              : null,
                        ),
                        child: widget.haveStories
                            ? Container(
                                alignment: Alignment.center,
                                height: 68,
                                width: 68,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: widget.pathToImage != null
                                      ? Image.network(
                                          widget.pathToImage!,
                                          fit: BoxFit.cover,
                                          height: 62,
                                          width: 62,
                                        )
                                      : null,
                                ),
                              )
                            : ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: widget.pathToImage != null
                                    ? Image.network(
                                        widget.pathToImage!,
                                        fit: BoxFit.cover,
                                        height: 62,
                                        width: 62,
                                      )
                                    : null,
                              ),
                      ),
                    ],
                  )
            : SizedBox(
                height: 0,
                width: 0,
              );
  }
}
