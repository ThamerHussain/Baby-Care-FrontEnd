import 'package:baby_care/services/my_text.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/material.dart';
import 'services/used_fonts_and_colors.dart';
import 'user_info.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: blackColor.value,
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: MyText(
                    color: whiteColor.value,
                    data: 'الملف الشخصي',
                    font: arabicFont400,
                    size: 30,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 30,
                    color: whiteColor.value,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 110,
            ),
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Center(
                  child: Container(
                    height: 350,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      color: greyColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Column(
                        children: [
                          UserInfo(header: 'الإسم', data: 'محمد عبد الرسول'),
                          const Divider(
                            color: Colors.white24,
                            height: 20,
                            thickness: 1,
                            indent: 35,
                            endIndent: 35,
                          ),
                          UserInfo(header: 'رقم الهاتف', data: '07818115142'),
                          const Divider(
                            color: Colors.white24,
                            height: 20,
                            thickness: 1,
                            indent: 35,
                            endIndent: 35,
                          ),
                          UserInfo(header: 'المحافظة', data: 'البصرة')
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -50,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(60),
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/images/dr_mohammed.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: TextButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<BeveledRectangleBorder>(
                      BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
                ),
                onPressed: (() {}),
                child: Container(
                  width: 320,
                  height: 55,
                  decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                      child: MyText(
                          data: "تسجيل الخروج",
                          font: arabicFont400,
                          size: 20,
                          color: whiteColor.value)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
