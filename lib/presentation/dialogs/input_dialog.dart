import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';
import 'package:hdrezka_app/core/utils/mixins/validator.dart';
import 'package:useful_extensions/useful_extensions.dart';

class InputDialog extends StatefulWidget {
  const InputDialog({Key? key}) : super(key: key);

  @override
  State<InputDialog> createState() => _InputDialogState();
}

class _InputDialogState extends State<InputDialog> with Validator {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _okButtonFocusNode = FocusNode();

  final _emailFocusNode = FocusNode(
    onKey: (node, event) {
      if (event is RawKeyDownEvent &&
          event.logicalKey == LogicalKeyboardKey.arrowDown) {
        node.focusInDirection(TraversalDirection.down);
        return KeyEventResult.handled;
      }
      return KeyEventResult.ignored;
    },
  );
  final _passwordFocusNode = FocusNode(
    onKey: (node, event) {
      if (event is RawKeyDownEvent &&
          event.logicalKey == LogicalKeyboardKey.arrowDown) {
        node.focusInDirection(TraversalDirection.down);
        return KeyEventResult.handled;
      }
      if (event is RawKeyDownEvent &&
          event.logicalKey == LogicalKeyboardKey.arrowUp) {
        node.focusInDirection(TraversalDirection.up);
        return KeyEventResult.handled;
      }
      return KeyEventResult.ignored;
    },
  );

  void _onCancel() => Navigator.of(context).pop();

  void _onSave() {
    final isValid = _formKey.currentState?.validate() ?? false;

    if (isValid) {
      Navigator.of(context).pop(
        Pair<String, String>(_emailController.text, _passwordController.text),
      );
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _okButtonFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        TextButton(
          onPressed: _onCancel,
          child: Text(context.localizations.cancel.toUpperCase()),
        ),
        TextButton(
          focusNode: _okButtonFocusNode,
          onPressed: _onSave,
          child: Text(
            context.localizations.ok.toUpperCase(),
          ),
        ),
      ],
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _InputFormField(
              labelText: context.localizations.email,
              focusNode: _emailFocusNode,
              validator: (email) => validateEmail(email, context),
              controller: _emailController,
              onFieldSubmitted: (_) =>
                  FocusScope.of(context).requestFocus(_passwordFocusNode),
            ),
            _InputFormField(
              labelText: context.localizations.password,
              focusNode: _passwordFocusNode,
              validator: (password) => validatePassword(password, context),
              controller: _passwordController,
              onFieldSubmitted: (_) =>
                  FocusScope.of(context).requestFocus(_okButtonFocusNode),
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}

class _InputFormField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final TextEditingController? controller;
  final String? Function(String? value)? validator;
  final FocusNode? focusNode;
  final Function(String?)? onFieldSubmitted;

  const _InputFormField({
    required this.labelText,
    this.obscureText = false,
    this.controller,
    this.validator,
    this.focusNode,
    this.onFieldSubmitted,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      obscureText: obscureText,
      style: context.text.formFieldText,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 10,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: context.color.formFieldBorder,
            width: 2,
          ),
        ),
        labelText: labelText,
        labelStyle: context.text.formFieldLabel,
      ),
      controller: controller,
      validator: validator,
    );
  }
}
