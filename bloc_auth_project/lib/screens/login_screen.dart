import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/auth_bloc.dart';
import '../blocs/auth_event.dart';
import '../blocs/auth_state.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: Scaffold(
        appBar: AppBar(title: Text("Login")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: "Email"),
                    onChanged: (value) {
                      context.read<AuthBloc>().add(UpdateEmail(value));
                    },
                  ),
                  SizedBox(height: 16),
                  TextField(
                    obscureText: !state.isPasswordVisible,
                    decoration: InputDecoration(
                      labelText: "Password",
                      suffixIcon: IconButton(
                        icon: Icon(
                          state.isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          context.read<AuthBloc>().add(
                            TogglePasswordVisibility(),
                          );
                        },
                      ),
                    ),
                    onChanged: (value) {
                      context.read<AuthBloc>().add(UpdatePassword(value));
                    },
                  ),
                  SizedBox(height: 16),
                  Text("Email: ${state.email}"),
                  Text("Password: ${state.password}"),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
