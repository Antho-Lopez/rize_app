import 'package:flutter/material.dart';
import 'package:rize_app/pages/home.dart';

// NUTRITION PAGES
import 'package:rize_app/pages/nutrition/meal/choose_daily_meal.dart';
import 'package:rize_app/pages/nutrition/meal/index.dart';
import 'package:rize_app/pages/nutrition/nutritions.dart';
import 'package:rize_app/pages/nutrition/meal/daily_meal.dart';

// SLEEPING SCHEDULE PAGES
import 'package:rize_app/pages/see_more.dart';
import 'package:rize_app/pages/sleeping/edit.dart';
import 'package:rize_app/pages/sleeping/sleepings.dart';

// WEIGHT CHANGE PAGES
import 'package:rize_app/pages/weight/weight.dart';
import 'package:rize_app/pages/weight/edit.dart';

// TRAINING PAGES
import 'package:rize_app/pages/training/trainings.dart';
import 'package:rize_app/pages/training/show.dart';
import 'package:rize_app/pages/training/sessions/index.dart';
import 'package:rize_app/pages/training/sessions/show.dart';

// LOADING SCREENS
import 'package:rize_app/services/loading.dart';
import 'package:rize_app/services/loading_weight.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => const LoadingHome(),
    '/home': (context) => const Home(),
    '/see_more': (context) => const SeeMore(),

    // ROUTES TRAINING
    '/trainings': (context) => const Trainings(),
    '/training_show': (context) => const TrainingShow(),
    '/sessions_index': (context) => const SessionsIndex(),
    '/session_show': (context) => const SessionShow(),

    // ROUTES WEIGHT
    '/weight': (context) => const Weight(),
    '/edit_weight': (context) => const WeightEdit(),
    '/weight_loading': (context) => const LoadingWeight(),
    // ROUTES NUTRITION
    '/nutritions': (context) => const Nutritions(),
    '/meals': (context) => const MealIndex(),
    '/daily_meals': (context) => const DailyMeal(),
    '/choose_daily_meal': (context) => const ChooseDailyMeal(),

    // ROUTES SLEEPING
    '/sleepings': (context) => const Sleepings(),
    '/edit_sleeping': (context) => const SleepingEdit(),
  },
));
