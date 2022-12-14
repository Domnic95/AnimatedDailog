import 'package:flutter/material.dart';

Future<T?> showPlatformDialog<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  androidBarrierDismissible = false,
  useRootNavigator = true,
}) {
  return showDialog(context: context, builder: builder);
}