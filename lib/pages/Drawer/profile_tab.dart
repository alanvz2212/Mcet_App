import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/pages/Drawer/Navigate_Pages/contact_page.dart';
import 'package:musaliarapp/pages/Drawer/Navigate_Pages/more_page.dart';
import 'package:musaliarapp/pages/Drawer/Navigate_Pages/about_page.dart';
import 'package:musaliarapp/pages/Drawer/Navigate_Pages/privay_policy_page.dart';
import 'package:musaliarapp/pages/Drawer/Navigate_Pages/terms_page.dart';
import 'package:musaliarapp/theme/theme_provider.dart';
import 'package:musaliarapp/utils/colors.dart';
import 'package:musaliarapp/vibration/vibration_helper.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musaliarapp/vibration/bloc/vibration_bloc.dart';
import 'package:musaliarapp/vibration/bloc/vibration_state.dart';
import 'package:musaliarapp/vibration/bloc/vibration_event.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    final backgroundColor = isDarkMode ? MyColors.Black : MyColors.white;
    final textColor = isDarkMode ? MyColors.white : MyColors.Black;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeExtension(40).w),
          child: Column(
            children: [
              SizedBox(height: SizeExtension(80).h),
              ClipRRect(
                borderRadius: BorderRadius.circular(SizeExtension(30).r),
                child: Container(
                  color: MyColors.darkGreen,
                  height: SizeExtension(200).h,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                        top: -SizeExtension(1).h,
                        left: -SizeExtension(10).w,
                        child: Image.asset(
                          'assets/images/college_1.jpg',
                          height: SizeExtension(270).h,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: SizeExtension(20).h),
              _buildListTile(
                context,
                icon: Icons.dark_mode_rounded,
                iconBgColor: MyColors.Black,
                title: 'Dark Mode',
                textColor: textColor,
                trailing: Switch(
                  value: isDarkMode,
                  onChanged: (value) {
                    vibrateIfEnabled(context);
                    themeProvider.toggleTheme();
                  },
                  activeColor: MyColors.darkGreen,
                ),
              ),
              SizedBox(height: SizeExtension(15).h),
              _buildListTile(
                context,
                icon: Icons.event_available_rounded,
                iconBgColor: MyColors.darkGreen,
                title: 'Rate App',
                textColor: textColor,
                onTap: () {
                  vibrateIfEnabled(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Moreapppage(),
                    ),
                  );
                },
              ),
              SizedBox(height: SizeExtension(20).h),
              _buildListTile(
                context,
                icon: Icons.phone,
                iconBgColor: const Color.fromARGB(255, 241, 185, 190),
                title: 'Contact Us',
                textColor: textColor,
                onTap: () {
                  vibrateIfEnabled(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Contactuspage(),
                    ),
                  );
                },
              ),
              SizedBox(height: SizeExtension(15).h),
              BlocBuilder<VibrationBloc, VibrationState>(
                builder: (context, state) {
                  return _buildListTile(
                    context,
                    icon: CupertinoIcons.command,
                    iconBgColor: MyColors.grey,
                    iconColor: MyColors.darkGreen,
                    title: 'Vibrate on Touch',
                    textColor: textColor,
                    trailing: Switch(
                      value: state.isVibrationOn,
                      onChanged: (value) {
                        vibrateIfEnabled(context);
                        context.read<VibrationBloc>().add(ToggleVibration());
                      },
                      activeColor: MyColors.darkGreen,
                    ),
                  );
                },
              ),
              SizedBox(height: SizeExtension(20).h),
              _buildListTile(
                context,
                icon: Icons.privacy_tip_rounded,
                iconBgColor: MyColors.darkGreen,
                title: 'Privacy Policy',
                textColor: textColor,
                onTap: () {
                  vibrateIfEnabled(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PrivayPolicyPage(),
                    ),
                  );
                },
              ),
              SizedBox(height: SizeExtension(15).h),
              _buildListTile(
                context,
                icon: Icons.notifications_active_rounded,
                iconBgColor: const Color.fromARGB(255, 70, 70, 70),
                title: 'Terms & Conditions',
                textColor: textColor,
                onTap: () {
                  vibrateIfEnabled(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TermsPage()),
                  );
                },
              ),
              SizedBox(height: SizeExtension(20).h),
              _buildListTile(
                context,
                icon: Icons.language_rounded,
                iconBgColor: MyColors.darkGreen,
                title: 'About Us',
                textColor: textColor,
                onTap: () {
                  vibrateIfEnabled(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AboutPage()),
                  );
                },
              ),
              SizedBox(height: SizeExtension(15).h),
              _buildListTile(
                context,
                icon: Icons.exit_to_app,
                iconBgColor: MyColors.Black,
                title: 'Exit App',
                textColor: textColor,
                onTap: () {
                  vibrateIfEnabled(context);
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      backgroundColor: isDarkMode
                          ? const Color(0xFF202020)
                          : MyColors.white,
                      title: Text(
                        'Exit App',
                        style: TextStyle(color: textColor),
                      ),
                      content: Text(
                        'Are you sure you want to exit the app?',
                        style: TextStyle(color: textColor),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            vibrateIfEnabled(context);
                            Navigator.of(ctx).pop();
                          },
                          child: Text(
                            'Cancel',
                            style: TextStyle(color: MyColors.darkGreen),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            vibrateIfEnabled(context);
                            Navigator.of(ctx).pop();
                            SystemNavigator.pop();
                          },
                          child: Text(
                            'Exit',
                            style: TextStyle(color: MyColors.red),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListTile(
    BuildContext context, {
    required IconData icon,
    required Color iconBgColor,
    Color iconColor = MyColors.white,
    required String title,
    required Color textColor,
    Widget? trailing,
    VoidCallback? onTap,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        height: SizeExtension(40).h,
        width: SizeExtension(40).w,
        decoration: BoxDecoration(
          color: iconBgColor,
          borderRadius: BorderRadius.circular(SizeExtension(12).r),
        ),
        child: Icon(icon, color: iconColor),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: textColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
