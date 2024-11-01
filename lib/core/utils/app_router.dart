import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';
import '../../Features/home/presentation/views/book_details_view.dart';
import '../../Features/splash/presentation/view/splash_view.dart';

abstract class AppRouter {
  static const khomeView = '/homeView';
  static const kBookDetailsView = '/BookDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/BookDetailsView',
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
