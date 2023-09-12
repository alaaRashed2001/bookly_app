import 'package:bookly_app/Features/Home/Presentation/Views/book_details_view.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/home_view.dart';
import 'package:bookly_app/Features/Search/Presentation/Views/search_view.dart';
import 'package:bookly_app/Features/Splash/Presentatin/Views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
static const kHomeView = '/homeView';
static const kBookDetailsView = '/bookDetailsView';
static const kBookSearchView = '/bookSearchView';
  // GoRouter configuration
 static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kBookSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}