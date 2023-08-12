import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../routes/routes.dart';
import '../../../../shared/widget/app_snackbars.dart';
import '../../domain/repositories/authentication_repository.dart';
import '../providers/login_viewmodel.dart';
import '../providers/signup_viewmodel.dart';

class SignUpView extends ConsumerStatefulWidget {
  const SignUpView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpViewState();
}

class _SignUpViewState extends ConsumerState<SignUpView>
    with TickerProviderStateMixin {
  late SignUpViewModel viewModel;
  late AuthenticationStatus status;
  late TabController _tabController;
  late TabController _companyTabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _companyTabController = TabController(length: 3, vsync: this);
    viewModel = ref.read(signUpViewModelProvider.notifier);
    super.initState();
  }

  @override
  Widget build(final BuildContext context) {
    status = ref.watch(signUpViewModelProvider);
    ref.listen(signUpViewModelProvider, (prev, next) {
      if ([AuthenticationStatus.error, AuthenticationStatus.invalid]
          .contains(next)) {
        showErrorSnackbar(context, viewModel.errorMessage ?? '');
      } else if (next == AuthenticationStatus.authenticated) {
        showSuccessSnackbar(context, 'Login successful');
      } else if (next == AuthenticationStatus.otpSent) {
        showSuccessSnackbar(context,
            'Otp Sent to ${ref.watch(signUpViewModelProvider.notifier).signUpFormUserData.phoneNumber})}');
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
                Text('GreenJobs',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Colors.green,
                          fontFamily: GoogleFonts.irishGrover().fontFamily,
                        )),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Sign Up',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.green),
                ),
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
                        height: 450,
                        child: TabBarView(
                            controller: _tabController,
                            children: [
                              Center(child: userSignUpForm),
                              Center(child: companySignUpForm)
                            ]),
                      ),
                    ],
                  ),
                ),
                RichText(
                    text: TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            const LoginRoute().go(context);
                          },
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.green),
                        text: 'Already have an account? Login here')),
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

  Widget get userSignUpForm => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: userNameInput,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: userPhoneNumberInput,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: otpInput,
          ),
        ],
      );

  Widget get companySignUpForm => Column(
        children: [
          TabBar(
              labelColor: Colors.green,
              controller: _companyTabController,
              tabs: const [
                Tab(text: '1'),
                Tab(text: '2'),
              ]),
          SizedBox(
            height: 400,
            child: TabBarView(controller: _companyTabController, children: [
              Center(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: companyNameInput,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: representativeNameInput,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: representativeEmailInput,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: nextButton,
                  ),
                ],
              )),
              Center(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: representativePhoneInput,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: passwordInput,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: signUpButton,
                  ),
                ],
              )),
            ]),
          ),
        ],
      );

  Widget get userNameInput => TextFormField(
        onFieldSubmitted: (value) async {
          await ref.read(signUpViewModelProvider.notifier).requestOtp();
        },
        initialValue: viewModel.signUpFormUserData.name,
        key: const Key('loginForm_userNameInput_textField'),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Name';
          } else {
            return null;
          }
        },
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Name',
        ),
        onChanged: viewModel.setUserName,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z\s]'))
        ],
      );

  Widget get userPhoneNumberInput => TextFormField(
        onFieldSubmitted: (value) async {
          await ref.read(signUpViewModelProvider.notifier).requestOtp();
        },
        initialValue: viewModel.signUpFormUserData.phoneNumber,
        key: const Key('loginForm_userPhoneNumberInput_textField'),
        validator: (value) {
          if (value == null || value.isEmpty) {
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
        onChanged: viewModel.setUserPhoneNumber,
        maxLength: 12,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      );

  Widget get representativePhoneInput => TextFormField(
        onFieldSubmitted: (value) async {
          await viewModel.signUpPassword();
        },
        initialValue: viewModel.signUpFormCompanyData.representativePhone,
        key: const Key('loginForm_representativePhoneInput_textField'),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Phone Number';
          } else {
            return null;
          }
        },
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Representative Phone Number',
          helperText: '(60+)',
        ),
        onChanged: viewModel.setRepresentativePhoneNumber,
        maxLength: 12,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
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
          await ref.read(signUpViewModelProvider.notifier).verifyOtp();
        },
        obscureText: false,
        numberOfFields: 6,
        showFieldAsBox: true,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      );

  Widget get companyNameInput => TextFormField(
        onFieldSubmitted: (value) async {
          _companyTabController.index = 1;
        },
        initialValue: viewModel.signUpFormCompanyData.companyName,
        key: const Key('loginForm_companyNameInput_textField'),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Company Name';
          } else {
            return null;
          }
        },
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Company Name',
        ),
        onChanged: viewModel.setCompanyName,
      );

  Widget get representativeNameInput => TextFormField(
        onFieldSubmitted: (value) async {
          _companyTabController.index = 1;
        },
        initialValue: viewModel.signUpFormCompanyData.representativeName,
        key: const Key('loginForm_representativeNameInput_textField'),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Representative Name';
          } else {
            return null;
          }
        },
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Representative Name',
        ),
        onChanged: viewModel.setReprensentativeName,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z\s]'))
        ],
      );

  Widget get representativeEmailInput => TextFormField(
        onFieldSubmitted: (value) async {
          _companyTabController.index = 1;
        },
        initialValue: viewModel.signUpFormCompanyData.representativeEmail,
        key: const Key('loginForm_representativeEmailInput_textField'),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Representative Email';
          } else {
            return null;
          }
        },
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Representative Email',
        ),
        onChanged: viewModel.setRepresentativeEmail,
      );

  Widget get passwordInput => TextFormField(
        onFieldSubmitted: (value) async {
          await ref.read(signUpViewModelProvider.notifier).signUpPassword();
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
        onChanged: viewModel.setCompanyPassword,
      );

  Widget get nextButton => ElevatedButton(
      onPressed: () {
        _companyTabController.index = 1;
      },
      child: const Text('Next'));

  Widget get signUpButton => ElevatedButton(
      style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(40)),
      onPressed: () async {
        await viewModel.signUpPassword();
      },
      child: status == AuthenticationStatus.loading
          ? const CircularProgressIndicator()
          : const Text('Sign Up'));
}
