import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:musaliarapp/vibration/vibration_helper.dart';
import 'package:musaliarapp/widgets/bottom_navigation_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetintouchPage extends StatefulWidget {
  const GetintouchPage({super.key});

  @override
  State<GetintouchPage> createState() => _GetintouchPageState();
}

class _GetintouchPageState extends State<GetintouchPage> {
  String name = '';
  String email = '';
  String phone = '';
  final _formKey = GlobalKey<FormState>();

  void trysubmit() {
    final isvalid = _formKey.currentState!.validate();
    if (isvalid) {
      _formKey.currentState!.save();
      submitform();
    } else {
      if (kDebugMode) {
        print('Validation error');
      }
    }
  }

  void submitform() async {
    try {
      await FirebaseFirestore.instance.collection('get_in_touch').add({
        'name': name,
        'email': email,
        'phone': phone,
        'timestamp': Timestamp.now(),
      });

      ScaffoldMessenger.of(
        // ignore: use_build_context_synchronously
        context,
      ).showSnackBar(
        SnackBar(
          content: Text('Submitted Successfully'),
          behavior: SnackBarBehavior.floating,
        ),
      );

      _formKey.currentState!.reset();
    } catch (e) {
      if (kDebugMode) {
        print('Firebase Error: $e');
      }
      ScaffoldMessenger.of(
        // ignore: use_build_context_synchronously
        context,
      ).showSnackBar(SnackBar(content: Text('Failed to submit')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: SizeExtension(20).w),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: SizeExtension(90).h),
                    Text(
                      'Get In Touch',
                      style: TextStyle(
                        fontSize: 28.sp,
                        color: Theme.of(context).textTheme.titleLarge?.color,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(SizeExtension(10).w),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            SizedBox(height: SizeExtension(35).h),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsetsGeometry.symmetric(
                                    horizontal: 7,
                                  ),
                                ),
                                SizedBox(height: SizeExtension(40).h),
                                Text(
                                  'Name',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Theme.of(
                                      context,
                                    ).textTheme.titleLarge?.color,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            buildFormField(
                              label: 'Name',
                              onSaved: (value) => name = value!,
                              validator: (value) =>
                                  value!.isEmpty ? 'Name is required' : null,
                            ),
                            SizedBox(height: SizeExtension(5).h),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsetsGeometry.symmetric(
                                    horizontal: 7,
                                  ),
                                ),
                                SizedBox(height: SizeExtension(40).h),
                                Text(
                                  'Email',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Theme.of(
                                      context,
                                    ).textTheme.titleLarge?.color,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            buildFormField(
                              label: 'Email',
                              onSaved: (value) => email = value!,
                              validator: (value) =>
                                  value!.isEmpty ? 'Email is required' : null,
                            ),
                            SizedBox(height: SizeExtension(5).h),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsetsGeometry.symmetric(
                                    horizontal: 7,
                                  ),
                                ),
                                SizedBox(height: SizeExtension(40).h),

                                Text(
                                  'Phone',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Theme.of(
                                      context,
                                    ).textTheme.titleLarge?.color,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            buildFormField(
                              label: 'Phone',
                              keyboardType: TextInputType.phone,
                              onSaved: (value) => phone = value!,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Phone is required';
                                } else if (!RegExp(
                                  r'^\d{10}$',
                                ).hasMatch(value)) {
                                  return 'Enter a valid 10-digit number';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: SizeExtension(50).h),
                            GestureDetector(
                              onTap: () => vibrateIfEnabled(context),
                              behavior: HitTestBehavior.translucent,
                              child: Container(
                                height: SizeExtension(55).h,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 221, 23, 23),
                                  borderRadius: BorderRadius.circular(
                                    SizeExtension(30).r,
                                  ),
                                ),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: WidgetStateProperty.all(
                                      Theme.of(
                                        context,
                                      ).textTheme.titleLarge?.color,
                                    ),
                                  ),
                                  onPressed: () {
                                    vibrateIfEnabled(context);
                                    trysubmit();
                                  },
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(
                                      color: Theme.of(
                                        context,
                                      ).scaffoldBackgroundColor,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 10,
            left: 30,
            right: 30,
            child: BottomNavigationBarWidget(),
          ),
        ],
      ),
    );
  }

  Widget buildFormField({
    required String label,
    required void Function(String?) onSaved,
    required String? Function(String?) validator,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeExtension(5).h),
      child: Container(
        padding: EdgeInsets.all(SizeExtension(5).w),
        decoration: BoxDecoration(
          color: Theme.of(context).textTheme.titleLarge?.color,
          borderRadius: BorderRadius.circular(SizeExtension(10).r),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: label,
            hintStyle: TextStyle(
              color: Theme.of(context).textTheme.titleLarge?.color,
            ),
            filled: true,
            fillColor: Theme.of(context).dividerColor,
            border: InputBorder.none,
          ),
          keyboardType: keyboardType,
          validator: validator,
          onSaved: onSaved,
        ),
      ),
    );
  }
}
