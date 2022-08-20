import 'package:flutter/material.dart';
import 'strings_manager.dart';
import '../../features/blog/presentation/screens/blog_view.dart';
import '../../features/blog/presentation/screens/single_blog.dart';
import '../../features/forum/presentation/screens/discussion_forum.dart';
import '../../features/notification/presentation/screens/notifitication_view.dart';
import '../../features/posts/presentation/screens/create_posts_view.dart';
import '../../features/profile/presentation/screens/profile_view.dart';
import '../../features/quiz/presentation/screens/quiz_view.dart';

import '../../features/auth/presentation/screens/auth_view.dart';
import '../../features/auth/presentation/screens/forgot_password_view.dart';
import '../../features/auth/presentation/screens/login_view.dart';
import '../../features/auth/presentation/screens/register_view.dart';
import '../../features/cart/presentation/screens/cart_view.dart';
import '../../features/details/presentation/screens/details_view.dart';
import '../../features/home/presentation/screens/home_view.dart';
import '../../features/home/presentation/screens/main_planets_view.dart';
import '../../features/qr_scanner/presentation/screens/qr_details.dart';
import '../../features/splash/presentation/screens/splash_view.dart';

class Routes {
  static const String splashRoute = "/";
  static const String authRoute = "/authRoute";

  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String homeRoute = "/homeRoute";

  static const String forgotPasswordRoute = "/forgotPassword";

  static const String mainPlanetsRoute = "/mainPlanets";
  static const String storeDetailsRoute = "/storeDetails";
  static const String qrDetails = "/qrDetails";
  static const String cartRoute = "/cart";
  static const String profileRoute = "/profile";
  static const String createPostsRoute = "/createPosts";
  static const String discussionForumRoute = "/discussionForum";
  static const String quizRoute = "/quizRoute";
  static const String blogRoute = "/blogRoute";
  static const String singleBlogRoute = "/singleBlog";
    static const String notificationRoute = "/notification";

}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.authRoute:
        return MaterialPageRoute(builder: (_) => const AuthView());
      case Routes.loginRoute:
        //initLoginModule();
        return MaterialPageRoute(builder: (_) => const LoginView());

      case Routes.registerRoute:
        //  initRegisterModule();
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.forgotPasswordRoute:
        //  initForgotPasswordModule();
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      case Routes.homeRoute:
        //  initHomeModule();
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.mainPlanetsRoute:
        //initLoginModule();
        return MaterialPageRoute(builder: (_) => const MainPlanetsView());
      case Routes.storeDetailsRoute:
        // initStoreDetailsModule();
        return MaterialPageRoute(builder: (_) => const DetailsView());
      case Routes.qrDetails:
        // initStoreDetailsModule();
        return MaterialPageRoute(builder: (_) => const ScannedItemDetails());
      case Routes.cartRoute:
        // initStoreDetailsModule();
        return MaterialPageRoute(builder: (_) => const CartView());
      case Routes.profileRoute:
        // initStoreDetailsModule();
        return MaterialPageRoute(builder: (_) => const ProfileView());
      case Routes.createPostsRoute:
        // initStoreDetailsModule();
        return MaterialPageRoute(builder: (_) => const CreatePostsView());
      case Routes.discussionForumRoute:
        // initStoreDetailsModule();
        return MaterialPageRoute(builder: (_) => const DiscussionForumView());
      case Routes.quizRoute:
        // initStoreDetailsModule();
        return MaterialPageRoute(builder: (_) => const QuizView());
      case Routes.blogRoute:
        // initStoreDetailsModule();
        return MaterialPageRoute(builder: (_) => const BlogView());
      case Routes.singleBlogRoute:
        // initStoreDetailsModule();
        return MaterialPageRoute(builder: (_) => const SingleBlogView());
              case Routes.notificationRoute:
        // initStoreDetailsModule();
        return MaterialPageRoute(builder: (_) => const NotifiticationView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text(AppStrings.noRouteFound.trim()),
              ),
              body: Center(child: Text(AppStrings.noRouteFound.trim())),
            ));
  }
}
