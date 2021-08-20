import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

launchWebsite(String url)async{
  if( await canLaunch(url)==true){
    launch(url);
  }else{
    debugPrint('Cant load website');
  }
}