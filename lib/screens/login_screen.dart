import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/app_logo.dart';
import 'package:flutter_widgets/Widgets/app_text_field.dart';
import 'package:flutter_widgets/Widgets/auth_footer.dart';
import 'package:flutter_widgets/Widgets/auth_scaffold.dart';
import 'package:flutter_widgets/Widgets/gradient_button.dart';
import 'package:flutter_widgets/Widgets/or_divider.dart';
import 'package:flutter_widgets/Widgets/social_button.dart';
import 'package:flutter_widgets/screens/signup_screen.dart';

import '../theme/app_color.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onLogin() {}
  void _onGoogle() {}
  void _onApple() {}
  void _onForgotPassword() {}

  void _gotoSignUp() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const SignupScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 130,
          ),
          const Center(child: AppLogo()),
          const Spacer(
            flex: 5,
          ),
          const Text(
            'Hi There!',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColor.textWhite,
                fontSize: 36,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 28),
          Row(
            children: [
              Expanded(
                  child: SocialButton(
                label: 'Google',
                icon: Image.asset(
                  'assets/images/icons8-google-logo-40.png',
                  height: 20,
                  width: 20,
                ),
                onPresssed: _onGoogle,
              )),
              SizedBox(
                width: 14,
              ),
              Expanded(
                  child: SocialButton(
                label: 'Apple',
                icon: Image.asset(
                  'assets/images/icons8-apple-logo-48.png',
                  height: 20,
                  width: 20,
                ),
                onPresssed: _onApple,
              )),
              SizedBox(
                width: 14,
              ),
            ],
          ),
          const SizedBox(height: 20),
          const OrDivider(),
          const SizedBox(
            height: 20,
          ),
          AppTextField(
            controller: _emailController,
            hinttext: 'Email',
            textInputAction: TextInputAction.next,
            KeyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 14,
          ),
          AppTextField(
            controller: _passwordController,
            hinttext: 'Password',
            obscureText: _obscurePassword,
            textInputAction: TextInputAction.done,
            suffixIcon: IconButton(
                onPressed: () =>
                    setState(() => _obscurePassword = !_obscurePassword),
                icon: Icon(
                  _obscurePassword ? Icons.visibility_off : Icons.visibility,
                  color: AppColor.textMuted,
                  size: 20,
                )),
          ),
          const SizedBox(
            height: 12,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: _onForgotPassword,
              child: const Text(
                'Forgot Password?',
                style: TextStyle(
                    color: AppColor.textMuted,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GradientButton(
            label: 'Login',
            onPressed: _onLogin,
          ),
          const SizedBox(
            height: 24,
          ),
          Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Create an acoount? ',
                    style: TextStyle(color: AppColor.textMuted, fontSize: 14),
                  ),
                  GestureDetector(
                    onTap: _gotoSignUp,
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          color: AppColor.textWhite,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Spacer(
            flex: 4,
          ),
          const Center(
            child: AuthFooter(),
          ),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}
