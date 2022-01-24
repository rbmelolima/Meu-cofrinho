import 'package:flutter/material.dart';
import 'package:meu_cofrinho/ui/theme/theme.dart';

enum SnackBarMessageType { info, success, error, warning }

class SnackBarMessage {
  static void show({
    @required BuildContext context,
    @required SnackBarMessageType type,
    @required String message,
  }) {
    Color _backgroundColor(SnackBarMessageType type) {
      switch (type) {
        case SnackBarMessageType.info:
          return ColorAppTheme.infoColor;
          break;
        case SnackBarMessageType.success:
          return ColorAppTheme.successColor;
          break;
        case SnackBarMessageType.error:
          return ColorAppTheme.errorColor;
          break;
        case SnackBarMessageType.warning:
          return ColorAppTheme.warningColor;
          break;
        default:
          return ColorAppTheme.infoColor;
          break;
      }
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: _backgroundColor(type),
        content: Text(
          message,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
