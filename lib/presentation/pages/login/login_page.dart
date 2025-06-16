import 'package:flix_id/gen/assets.gen.dart';
import 'package:flix_id/presentation/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/router/router_provider.dart';
import '../../widgets/widgets.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
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
                SpaceHeight(50.0),
                Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SpaceHeight(24.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      AppForm(labelText: 'Email'),
                      SpaceHeight(24.0),
                      AppForm(labelText: 'Password'),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgot password',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                      SpaceHeight(24.0),
                      AppButton.filled(onPressed: () {}, label: "Login"),
                      SpaceHeight(24.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Dont have an account?"),
                          TextButton(
                            onPressed: () {
                              ref.read(routerProvider).goNamed('register');
                            },
                            child: const Text(
                              'Register here',
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
