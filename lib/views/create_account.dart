import 'package:company_ui/utils/res/customTextFeild/customTextform_feild.dart';
import 'package:company_ui/utils/res/fonts.dart';
import 'package:company_ui/views/dashboard.dart';
import 'package:flutter/material.dart';

class Create_Account extends StatefulWidget {
  const Create_Account({super.key});

  @override
  State<Create_Account> createState() => _Create_AccountState();
}

class _Create_AccountState extends State<Create_Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff1fbf5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xfff1fbf5),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.04),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create Your Account',
                style: TextStyle(
                  fontFamily: AppFonts.Poppins_Light,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 1
                    ..color = Colors.black,
                  shadows: const [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 3,
                      offset: Offset(1, 1),
                    ),
                  ],
                  // Fill color
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const Text(
                'Missed joining us? Now is your chance to join our community',
                style: TextStyle(
                    fontFamily: AppFonts.Poppins_Medium,
                    fontSize: 14,
                    color: Colors.black),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const CustomTextFormField(
                  hintText: 'First Name', prefixIcon: Icons.person_outline),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const CustomTextFormField(
                  hintText: 'Last Name', prefixIcon: Icons.person_outline),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const CustomTextFormField(
                  hintText: '90532525xx', prefixIcon: Icons.phone_outlined),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const CustomTextFormField(
                  hintText: 'Emial Id', prefixIcon: Icons.email_outlined),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const CustomTextFormField(
                  hintText: 'Aaadhar Card Number',
                  prefixIcon: Icons.credit_card),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const CustomTextFormField(
                  hintText: 'Pan Card Number', prefixIcon: Icons.credit_card),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Aligns the containers at the start, end, and in between
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 95,
                      height: 95,
                      decoration: BoxDecoration(
                          color: Color(0xff6fcf97),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          Text(
                            'Aadhar',
                            style: TextStyle(
                                fontFamily: AppFonts.Poppins_Light,
                                fontSize: 13,
                                color: Colors.white),
                          ),
                          Text(
                            'Front',
                            style: TextStyle(
                                fontFamily: AppFonts.Poppins_Light,
                                fontSize: 13,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 95,
                      height: 95,
                      decoration: BoxDecoration(
                          color: Color(0xff6fcf97),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          Text(
                            'Aadhar',
                            style: TextStyle(
                                fontFamily: AppFonts.Poppins_Light,
                                fontSize: 13,
                                color: Colors.white),
                          ),
                          Text(
                            'Back',
                            style: TextStyle(
                                fontFamily: AppFonts.Poppins_Light,
                                fontSize: 13,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 95,
                      height: 95,
                      decoration: BoxDecoration(
                          color: Color(0xff6fcf97),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          Text(
                            'Pan Card',
                            style: TextStyle(
                                fontFamily: AppFonts.Poppins_Light,
                                fontSize: 13,
                                color: Colors.white),
                          ),
                          Text(
                            'Front',
                            style: TextStyle(
                                fontFamily: AppFonts.Poppins_Light,
                                fontSize: 13,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const CustomTextFormField(
                  hintText: 'Password', prefixIcon: Icons.lock_outline),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const CustomTextFormField(
                  hintText: 'Confirm Password', prefixIcon: Icons.lock_outline),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const CustomTextFormField(
                  hintText: 'Referral Code (optional)', prefixIcon: Icons.code),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Container(
                height: 45,
                width: 900,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0xff58be83)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashBoard()),
                    );
                  },
                  child: const Text(
                    'Create my Account',
                    style: TextStyle(
                        fontFamily: AppFonts.Poppins_Medium,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              )
            ],
          ),
        ),
      ),
    );
  }
}
