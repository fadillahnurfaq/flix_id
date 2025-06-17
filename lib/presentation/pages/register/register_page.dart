import 'package:flix_id/gen/assets.gen.dart';
import 'package:flix_id/presentation/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/router/router_provider.dart';
import '../../widgets/widgets.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Assets.flixLogo.image(width: 150.0)),
                SpaceHeight(24.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      AppForm(
                        labelText: 'Email',
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SpaceHeight(24.0),
                      AppForm(labelText: 'Name'),
                      SpaceHeight(24.0),
                      AppForm(labelText: 'Password', isPassword: true),
                      SpaceHeight(24.0),
                      AppForm(labelText: 'Retype Password', isPassword: true),
                      SpaceHeight(24.0),
                      AppButton.filled(onPressed: () {}, label: "Register"),
                      SpaceHeight(24.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Already Have an account'),
                          TextButton(
                            onPressed: () {
                              ref.read(routerProvider).goNamed('login');
                            },
                            child: const Text(
                              'Login here',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
