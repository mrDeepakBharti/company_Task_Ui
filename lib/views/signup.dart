import 'package:company_ui/utils/res/customTextFeild/customTextform_feild.dart';
import 'package:company_ui/utils/res/fonts.dart';
import 'package:company_ui/views/create_account.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff1fbf5),
      appBar: AppBar(
        backgroundColor: const Color(0xfff1fbf5),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 341,
                  width: 341,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assest/images/Investing-cuate 1 (1).png'),
                          fit: BoxFit.cover)),
                ),
              ),
              const Text(
                "Let's sign you in",
                style: TextStyle(
                    fontFamily: AppFonts.Poppins_Medium, fontSize: 24),
              ),
              const Text(
                'Welcome back',
                style: TextStyle(
                  fontFamily: AppFonts.Poppins_Light,
                  fontSize: 14,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              const CustomTextFormField(
                  hintText: '90532525xx', prefixIcon: Icons.phone_outlined),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const CustomTextFormField(
                  hintText: '', prefixIcon: Icons.lock_outline),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Passwod?',
                    style: TextStyle(
                      fontFamily: AppFonts.Poppins_Light,
                      fontSize: 14,
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
                ),
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
                          builder: (context) => const Create_Account()),
                    );
                  },
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                        fontFamily: AppFonts.Poppins_Medium,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
