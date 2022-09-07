import 'package:flutter/material.dart';
import 'package:rize_app/pages/home.dart';
import 'package:rize_app/pages/nutrition/meal/edit_daily_meals.dart';

// NUTRITION PAGES
import 'package:rize_app/pages/nutrition/meal/index.dart';
import 'package:rize_app/pages/nutrition/meal/meal_show.dart';
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
import 'package:rize_app/services/loading_edit_daily_meals.dart';
import 'package:rize_app/services/loading_meal_show.dart';
import 'package:rize_app/services/loading_meals.dart';
import 'package:rize_app/services/loading_meals_per_day.dart';
import 'package:rize_app/services/loading_nutritions.dart';
import 'package:rize_app/services/loading_sleep.dart';
import 'package:rize_app/services/loading_training_show.dart';
import 'package:rize_app/services/loading_trainings.dart';
import 'package:rize_app/services/loading_weight.dart';
import 'package:rize_app/services/loading_weight_edit.dart';

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
    '/trainings_loading': (context) => const LoadingTrainings(),
    '/loading_training_show': (context) => const LoadingTrainingShow(),

    // ROUTES WEIGHT
    '/weight': (context) => const Weight(),
    '/weight_edit': (context) => const WeightEdit(),
    '/weight_loading': (context) => const LoadingWeight(),
    '/weight_edit_loading': (context) => const LoadingWeightEdit(),

    // ROUTES NUTRITION
    '/nutritions': (context) => const Nutritions(),
    '/loading_nutritions': (context) => const LoadingNutritions(),
    '/meals': (context) => const MealIndex(),
    '/loading_meals': (context) => const LoadingMealsIndex(),
    '/loading_meal_show': (context) => const LoadingMealShow(),
    '/meal_show': (context) => const MealShow(),
    '/daily_meals': (context) => const DailyMeal(),
    '/loading_meals_per_days': (context) => const LoadingMealsPerDay(),
    '/edit_daily_meals': (context) => const EditDailyMeals(),
    '/loading_edit_daily_meals': (context) => const LoadingEditDailyMeals(),

    // ROUTES SLEEPING
    '/sleepings': (context) => const Sleepings(),
    '/edit_sleeping': (context) => const SleepingEdit(),
    '/sleep_loading': (context) => const LoadingSleep(),
  },
));
