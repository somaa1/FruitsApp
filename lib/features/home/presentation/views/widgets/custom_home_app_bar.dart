import 'package:flutter/material.dart';

import '../../../../../core/helper_functions/get_users.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/notification_widget.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: const NotificationWidget(),
      leading: Image.asset(Assets.imagesProfileImage),
      title: Text(
        'صباح الخير !..',
        textAlign: TextAlign.right,
        style: TextStyles.regular16.copyWith(
          color: const Color(0xFF949D9E),
        ),
      ),
      subtitle: Text(
        getUser().name,
        textAlign: TextAlign.right,
        style: TextStyles.bold16,
      ),
    );
  }
}
