import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthServices{

  final authInstance = FirebaseAuth.instance.currentUser;
  final userCollection = "userCollection";

  Future singUpUser({required firstName, required lastName, required emailAddress, required password ,required dateOfBirth, required gender, context}) async{
    try{
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailAddress, password: password);
      await authInstance!.updateDisplayName(firstName + lastName);
      await authInstance!.updateEmail(emailAddress);
      await saveUserData(firstName, lastName, emailAddress, password, dateOfBirth, gender, userCredential.user!.uid);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Successfully registered")));
      //Get.toNamed(Routes.getSignInScreen());
      Get.back();

    } on FirebaseException catch(e){
      if((e.code == "email-already-in-use")){
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Email already exists")));

      }
    } catch(e){
      debugPrint(e.toString());
    }
  }

  saveUserData(firstName, lastName, emailAddress, password ,dateOfBirth, gender, uid) async{
    await FirebaseFirestore.instance.collection(userCollection).doc(uid).set({
      'id' : uid,
      'firstName' : firstName,
      'lastName' : lastName,
      'emailAddress' : emailAddress,
      'password' : password,
      'dateOfBirth' : dateOfBirth,
      'gender' : gender,
    });
  }

}
