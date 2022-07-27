import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';
import 'package:hdrezka_app/core/utils/utils/my_platform.dart';
import 'package:hdrezka_app/domain/entities/content.dart';

class ContentWidget extends StatefulWidget {
  final Content content;
  final Function(Content) onTap;
  final bool autoFocus;

  const ContentWidget({
    required this.content,
    required this.onTap,
    this.autoFocus = false,
    Key? key,
  }) : super(key: key);

  @override
  State<ContentWidget> createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  bool isFocused = false;

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
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      autofocus: widget.autoFocus,
      onFocusChange: _onFocusChanged,
      onKey: _onKeyHandler,
      child: Transform.scale(
        scale: isFocused
            ? 1.0
            : MyPlatform.isTvMode
                ? 0.9
                : 1.0,
        child: _buildContent(),
      ),
    );
  }

  Widget _buildContent() {
    final content = widget.content;
    return GestureDetector(
      onTap: () => widget.onTap(content),
      child: Opacity(
        opacity: isFocused
            ? 1.0
            : MyPlatform.isTvMode
                ? 0.5
                : 1.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                _buildContentImage(),
                Align(
                  alignment: Alignment.topRight,
                  child: _buildContentType(),
                ),
                if (content.status != null)
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: _buildContentStatus(),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 6),
            _buildContentTitle(),
            const SizedBox(height: 2),
            Expanded(child: _buildContentShortInfo()),
          ],
        ),
      ),
    );
  }

  Widget _buildContentImage() {
    final content = widget.content;
    return AspectRatio(
      aspectRatio: 6 / 9,
      child: CachedNetworkImage(
        imageUrl: content.imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildContentType() {
    final content = widget.content;
    return Container(
      color: content.contentType.getColor(),
      padding: const EdgeInsets.all(4),
      child: Text(
        content.type,
        style: context.text.contentType,
      ),
    );
  }

  Widget _buildContentStatus() {
    final content = widget.content;
    return Container(
      color: context.color.contentStatusBackground,
      padding: const EdgeInsets.all(4),
      child: Text(
        content.status ?? "",
        style: context.text.contentStatus,
      ),
    );
  }

  Widget _buildContentTitle() {
    final content = widget.content;
    return Text(
      content.title,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      style: context.text.contentTitle,
    );
  }

  Widget _buildContentShortInfo() {
    final content = widget.content;
    return Text(
      content.shortInfo,
      style: context.text.contentShortInfo,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
