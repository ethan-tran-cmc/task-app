import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo_app/utilities/constants/colors.dart';

import '../../../utilities/constants/text_style.dart';

enum TypeDialogPlatform {
  alert,
  confirm,
}

enum ActionDialogPlatform {
  cancel,
  ok,
}

class AppBaseDialog with ButtonDialogPlatform {
  AppBaseDialog({
    required this.context,
    required this.content,
    this.title,
    this.type = TypeDialogPlatform.alert,
    this.btnOK = 'OK',
    this.btnCancel = 'Cancel',
    this.paddingContentTop = 10,
    this.paddingContentBottom = 10,
    this.barrierDismissible = false,
    this.isUnLockWillPop = false,
    this.isDestructiveAction,
    this.dialogTitleStyle = AppTextStyle.dialogTitle,
    this.dialogContentStyle = AppTextStyle.dialogContent,
    this.onCancelTap,
    this.isCloseOnOkTap = true,
    this.onOkTap,
  })  : assert(content != null),
        assert(
          content is Widget || content is String,
          'Param content must be of type Widget or String',
        );

  final String? title;
  final dynamic content;
  final TypeDialogPlatform type;
  final String btnOK, btnCancel;
  final double paddingContentTop, paddingContentBottom;
  final bool barrierDismissible, isUnLockWillPop;
  final BuildContext context;
  final TextStyle dialogTitleStyle;
  final TextStyle dialogContentStyle;
  final bool? isDestructiveAction;
  final VoidCallback? onCancelTap;
  final VoidCallback? onOkTap;
  final bool isCloseOnOkTap;

  Future<ActionDialogPlatform> show() async {
    return await showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) => WillPopScope(
        onWillPop: () async => isUnLockWillPop,
        child: defaultTargetPlatform == TargetPlatform.android
            ? _androidPlatform(context)
            : _iosPlatform(context),
      ),
    );
  }

  CupertinoAlertDialog _iosPlatform(BuildContext context) =>
      CupertinoAlertDialog(
        title: title == null
            ? null
            : Text(
                title!,
                textAlign: TextAlign.center,
                style: dialogTitleStyle,
              ),
        content: Padding(
          padding: EdgeInsets.only(
            top: paddingContentTop,
            bottom: paddingContentBottom,
          ),
          child: content is String
              ? Text(
                  content,
                  style: dialogContentStyle,
                )
              : content,
        ),
        actions: <Widget>[
          if (type == TypeDialogPlatform.confirm)
            cupertinoButtonCustom(
              context,
              txtButton: btnCancel,
              isDefaultAction: false,
              isDestructiveAction: false,
              onTap: () {
                Navigator.of(context).pop(ActionDialogPlatform.cancel);
                onCancelTap?.call();
              },
            ),
          cupertinoButtonCustom(
            context,
            txtButton: btnOK,
            isDestructiveAction: isDestructiveAction ?? false,
            isDefaultAction: true,
            onTap: () {
              if (isCloseOnOkTap) {
                Navigator.of(context).pop(ActionDialogPlatform.ok);
              }
              onOkTap?.call();
            },
          ),
        ],
      );

  AlertDialog _androidPlatform(BuildContext context) => AlertDialog(
        title: title == null
            ? null
            : Text(
                title!,
                style: dialogTitleStyle,
              ),
        content: Padding(
          padding: EdgeInsets.only(
            top: paddingContentTop,
            bottom: paddingContentBottom,
          ),
          child: content is String
              ? Text(
                  content,
                  style: dialogContentStyle,
                )
              : content,
        ),
        actions: <Widget>[
          if (type == TypeDialogPlatform.confirm)
            materialButtonCustom(
              context,
              txtButton: btnCancel,
              isDefaultAction: false,
              isDestructiveAction: false,
              onTap: () {
                Navigator.of(context).pop(ActionDialogPlatform.cancel);
                onCancelTap?.call();
              },
            ),
          materialButtonCustom(
            context,
            txtButton: btnOK,
            isDefaultAction: true,
            isDestructiveAction: isDestructiveAction ?? false,
            onTap: () {
              if (isCloseOnOkTap) {
                Navigator.of(context).pop(ActionDialogPlatform.ok);
              }
              onOkTap?.call();
            },
          ),
        ],
      );
}

mixin ButtonDialogPlatform {
  Widget materialButtonCustom(
    context, {
    required String txtButton,
    required bool isDefaultAction,
    required bool isDestructiveAction,
    required VoidCallback onTap,
  }) =>
      TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          foregroundColor:
              isDestructiveAction ? Colors.red : primaryColor, // Text Color
        ),
        child: Text(
          txtButton,
          style: TextStyle(
            fontSize: 17,
            fontWeight: isDefaultAction ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      );

  Widget cupertinoButtonCustom(
    context, {
    required String txtButton,
    required bool isDefaultAction,
    required bool isDestructiveAction,
    required VoidCallback onTap,
  }) =>
      CupertinoDialogAction(
        onPressed: onTap,
        isDefaultAction: isDefaultAction,
        isDestructiveAction: isDestructiveAction,
        child: Text(
          txtButton,
          style: const TextStyle(
            fontSize: 17,
          ),
        ),
      );
}
