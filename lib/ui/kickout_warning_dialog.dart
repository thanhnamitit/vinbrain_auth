import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../auth.dart';

extension ContextExtension on BuildContext {
  void showKickOutDialog(LoginSession session) {
    showDialog(context: this, builder: (_) => KickOutWarningDialog(session));
  }
}

class KickOutWarningDialog extends StatefulWidget {
  final LoginSession session;

  const KickOutWarningDialog(
    this.session, {
    Key? key,
  }) : super(key: key);

  @override
  _KickOutWarningDialogState createState() => _KickOutWarningDialogState();
}

class _KickOutWarningDialogState extends State<KickOutWarningDialog> {
  @override
  Widget build(BuildContext context) {
    final normalTextStyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w400,
      fontSize: 16,
    );
    final boldTextStyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    );
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cảnh báo đăng nhập',
            style: TextStyle(
              color: Colors.red,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 16),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Tài khoản của bạn đã đăng nhập trên thiết bị',
                  style: normalTextStyle,
                ),
                TextSpan(
                  text: ' ${widget.session.deviceName} ',
                  style: boldTextStyle,
                ),
                TextSpan(
                  text: 'vào lúc',
                  style: normalTextStyle,
                ),
                TextSpan(
                  text:
                      ' ${DateFormat('HH:mm dd/MM/yyyy').format(widget.session.dateTime)}.',
                  style: boldTextStyle,
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            minWidth: double.infinity,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
              side: BorderSide(
                width: 2,
                color: Colors.black38,
              ),
            ),
            child: Text(
              'Đóng',
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
