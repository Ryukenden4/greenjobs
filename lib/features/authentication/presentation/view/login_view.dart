import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenjobs/routes/routes.dart';

import '../../../../shared/widget/app_snackbars.dart';
import '../../domain/repositories/authentication_repository.dart';
import '../providers/login_viewmodel.dart';

class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView>
    with SingleTickerProviderStateMixin {
  late LoginViewModel viewModel;
  late AuthenticationStatus status;
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    viewModel = ref.read(loginViewModelProvider.notifier);
    super.initState();
  }

  @override
  Widget build(final BuildContext context) {
    status = ref.watch(loginViewModelProvider);
    ref.listen(loginViewModelProvider, (prev, next) {
      if ([AuthenticationStatus.error, AuthenticationStatus.invalid]
          .contains(next)) {
        showErrorSnackbar(context, viewModel.errorMessage ?? '');
      } else if (next == AuthenticationStatus.authenticated) {
        showSuccessSnackbar(context, 'Login successful');
      }
    });
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 800,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'GreenJobs',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.green,
                        fontFamily: GoogleFonts.irishGrover().fontFamily,
                      ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text('Login',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.green,
                        )),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TabBar(
                          labelColor: Colors.green,
                          controller: _tabController,
                          tabs: const [
                            Tab(text: 'User'),
                            Tab(text: 'Company'),
                          ]),
                      SizedBox(
                        height: 300,
                        child: TabBarView(
                            controller: _tabController,
                            children: [
                              Center(child: userLoginForm),
                              Center(child: companyLoginForm)
                            ]),
                      ),
                    ],
                  ),
                ),
                RichText(
                    text: TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            const SignUpRoute().go(context);
                          },
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.green,
                            ),
                        text: 'No Account? Sign up here')),
                const SizedBox(
                  height: 30,
                ),
                const Text('Developed by Eve, Danial, Muiz with ❤️'),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget get userLoginForm => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: phoneNumberInput,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: otpInput,
          ),
        ],
      );

  Widget get companyLoginForm => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: emailInput,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: passwordInput,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: loginButton,
          ),
        ],
      );

  Widget get phoneNumberInput => TextFormField(
        onFieldSubmitted: status == AuthenticationStatus.loading
            ? null
            : (value) async {
                await ref.read(loginViewModelProvider.notifier).requestOtp();
              },
        initialValue: viewModel.loginFormOtpData.phoneNumber,
        key: const Key('loginForm_phoneNumberInput_textField'),
        validator: (value) {
          if (value == null || value.length < 11) {
            return 'Phone Number';
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: 'Phone Number',
          helperText: '(60+)',
          suffixIcon: requestOtp,
        ),
        onChanged: viewModel.setPhoneNumber,
        maxLength: 12,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      );

  Widget get emailInput => TextFormField(
        onFieldSubmitted: (value) async {
          await ref.read(loginViewModelProvider.notifier).loginPassword();
        },
        initialValue: viewModel.loginFormPasswordData.email,
        key: const Key('loginForm_emailInput_textField'),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Email';
          } else {
            return null;
          }
        },
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Email',
        ),
        onChanged: viewModel.setEmail,
      );

  Widget get requestOtp => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () async => await viewModel.requestOtp(),
            child: const Text('Request OTP')),
      );

  Widget get otpInput => OtpTextField(
        onSubmit: (value) async {
          viewModel.setOtp(value);
          await ref.read(loginViewModelProvider.notifier).verifyOtp();
        },
        obscureText: false,
        numberOfFields: 6,
        showFieldAsBox: true,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      );

  Widget get passwordInput => TextFormField(
        onFieldSubmitted: (value) async {
          await ref.read(loginViewModelProvider.notifier).loginPassword();
        },
        key: const Key('loginForm_passwordInput_textField'),
        textInputAction: TextInputAction.go,
        obscureText: true,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Enter password';
          } else {
            return null;
          }
        },
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Password',
        ),
        onChanged: viewModel.setPassword,
      );

  Widget get loginButton => ElevatedButton(
      style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(40)),
      onPressed: () async {
        await viewModel.loginPassword();
      },
      child: status == AuthenticationStatus.loading
          ? const CircularProgressIndicator()
          : const Text('Login'));
}
