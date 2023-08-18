import 'package:ai_frontend/feedback/feedback_screen.dart';
import 'package:ai_frontend/gallery/gallery_screen.dart';
import 'package:ai_frontend/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'styles/styles.dart';

List<Map> chooseAspectRatio = [
  {
    'aspect_ratio': '1:1',
    'size': [60.0, 60.0]
  },
  {
    'aspect_ratio': '3:4',
    'size': [44.0, 58.5]
  },
  {
    'aspect_ratio': '4:3',
    'size': [58.5, 44.0]
  },
  {
    'aspect_ratio': '9:16',
    'size': [71.2, 40.0]
  },
  {
    'aspect_ratio': '16:9',
    'size': [40.0, 71.2]
  },
];

const String labelSubmitButton = 'get started';

List<Map> chooseStyleIcons = [
  {'icon': 'Cinematic', 'link': 'images/cinema.jpg'},
  {'icon': 'Anime', 'link': 'images/anime.jpg'},
  {'icon': 'Sketch', 'link': 'images/sketch.jpg'},
  {'icon': 'Render', 'link': 'images/render.jpg'},
  {'icon': 'Art', 'link': 'images/art.jpg'},
  {'icon': 'Cartoon', 'link': 'images/cartoon.jpg'},
];

double numberOfPictures = 1;

 List<Map> routes = [
  {
    'icon': Icon(Icons.home, size: 50, color: whiteColorRegular),
    'route_widget': MainScreen(),
    'path': '/',
    'route': '/'
  },
{
    'icon': Icon(Icons.image, size: 50, color: whiteColorRegular),
    'route_widget': GalleryScreen(),
    'path': 'gallery',
    'route': '/gallery'
  },
  {
    'icon': Icon(Icons.feedback, size: 50, color: whiteColorRegular),
    'route_widget': FeedbackScreen(),
    'path': 'feedback',
    'route': '/feedback'
  }
];

 Map initialRoute = 
  {
    'icon': Icon(Icons.home, size: 50, color: whiteColorRegular),
    'route_widget': MainScreen(),
    'path': '/',
    'route': '/'
  };

   List<Map> regularRoutes = [
{
    'icon': Icon(Icons.image, size: 50, color: whiteColorRegular),
    'route_widget': GalleryScreen(),
    'path': 'gallery',
    'route': '/gallery'
  },
  {
    'icon': Icon(Icons.feedback, size: 50, color: whiteColorRegular),
    'route_widget': FeedbackScreen(),
    'path': 'feedback',
    'route': '/feedback'
  }
];

