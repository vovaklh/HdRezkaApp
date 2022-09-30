import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';
import 'package:hdrezka_app/core/utils/utils/my_platform.dart';
import 'package:hdrezka_app/domain/entities/content.dart';

class ContentWidget extends StatefulWidget {
  final Content content;
  final Function(Content) onTap;
  final bool hasFocus;
  final Function(bool)? onFocusChange;

  const ContentWidget({
    required this.content,
    required this.onTap,
    this.hasFocus = false,
    this.onFocusChange,
    Key? key,
  }) : super(key: key);

  @override
  State<ContentWidget> createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  final FocusNode focusNode = FocusNode();

  bool isFocused = false;

  Content get content => widget.content;

  KeyEventResult _onKeyHandler(_, RawKeyEvent event) {
    if (event is RawKeyUpEvent &&
        event.logicalKey == LogicalKeyboardKey.select) {
      widget.onTap(widget.content);
      return KeyEventResult.handled;
    }
    return KeyEventResult.ignored;
  }

  void _onFocusChanged(bool focused) {
    setState(() {
      isFocused = focused;
    });
    widget.onFocusChange?.call(focused);
  }

  double _getScale() {
    if (isFocused) return 1.0;
    return MyPlatform.isTvMode ? 0.9 : 1.0;
  }

  double _getOpacity() {
    if (isFocused) return 1.0;
    return MyPlatform.isTvMode ? 0.7 : 1.0;
  }

  @override
  void initState() {
    super.initState();
    if (widget.hasFocus) {
      focusNode.requestFocus();
    }
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: focusNode,
      onFocusChange: _onFocusChanged,
      onKey: _onKeyHandler,
      child: AnimatedScale(
        scale: _getScale(),
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        child: GestureDetector(
          onTap: () => widget.onTap(content),
          child: Opacity(
            opacity: _getOpacity(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    _ContentImage(content.imageUrl),
                    Align(
                      alignment: Alignment.topRight,
                      child: _ContentType(content),
                    ),
                    if (content.status != null)
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: _ContentStatus(content.status),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 6),
                _ContentTitle(content.title),
                const SizedBox(height: 2),
                Expanded(child: _ContentShortInfo(content.shortInfo)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ContentImage extends StatelessWidget {
  final String imageUrl;

  const _ContentImage(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 6 / 9,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}

class _ContentType extends StatelessWidget {
  final Content content;

  const _ContentType(this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: content.contentType.getColor(),
      padding: const EdgeInsets.all(4),
      child: Text(
        content.type,
        style: context.text.contentType,
      ),
    );
  }
}

class _ContentStatus extends StatelessWidget {
  final String? status;

  const _ContentStatus(this.status);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.color.contentStatusBackground,
      padding: const EdgeInsets.all(4),
      child: Text(
        status ?? "",
        style: context.text.contentStatus,
      ),
    );
  }
}

class _ContentTitle extends StatelessWidget {
  final String title;

  const _ContentTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      style: context.text.contentTitle,
    );
  }
}

class _ContentShortInfo extends StatelessWidget {
  final String shortInfo;

  const _ContentShortInfo(this.shortInfo);

  @override
  Widget build(BuildContext context) {
    return Text(
      shortInfo,
      style: context.text.contentShortInfo,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
