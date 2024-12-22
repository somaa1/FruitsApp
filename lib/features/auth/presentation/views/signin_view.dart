import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitsecommerce/core/Service/get_it_service.dart';
import 'package:fruitsecommerce/features/auth/domin/repos/auth_repo.dart';
import 'package:fruitsecommerce/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:fruitsecommerce/features/auth/presentation/views/widget/signin_view_body.dart';
import 'package:fruitsecommerce/features/auth/presentation/views/widget/signin_view_body_consumer.dart';

import '../../../../core/widgets/custom_app_bar.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  static const routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
          appBar: buildAppBar(context, title: "تسجيل دخول"),
          body: SigninViewBodyConsumer()),
    );

    // return const LoginViewBody();
  }
}


