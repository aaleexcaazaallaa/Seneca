import 'package:go_router/go_router.dart';
import 'package:seneca/presentation/screens/home/home_screen.dart';
import 'package:seneca/presentation/screens/login/login_screen.dart';
import 'package:seneca/presentation/screens/sign_in/sign_in_page.dart';


final router = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: '/',
      name: 'login',
      builder: ((context, state) => const LoginScreen())
    ),
    GoRoute(
      path: '/sign-in',
      name: 'sign-in',
      builder: ((context, state) => const SignInPage())
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      builder: ((context, state) => const HomeScreen())
    ),
  ],
);