import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

Widget flushBar({required title, required message}){
  return Flushbar(
    title: title,
    message: message,
  );
}