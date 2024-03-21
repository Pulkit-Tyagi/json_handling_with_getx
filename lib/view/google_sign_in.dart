import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignn extends StatefulWidget {
  const GoogleSignn({super.key});

  @override
  State<GoogleSignn> createState() => _GoogleSignnState();
}

class _GoogleSignnState extends State<GoogleSignn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignIn'),
      actions: [TextButton(onPressed: (){

      },
          child: Text('Sign In'))],
      ),
    );
  }

  googleSignIn()async {
    try{
      GoogleSignInAccount? googleSignInAccount = await GoogleSignIn().signIn();
      var authentication = await googleSignInAccount?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: authentication?.accessToken,
        idToken: authentication?.idToken,
      );

    final  userCredentials = await FirebaseAuth.instance.signInWithCredential(credential);

    }catch(e){
      print(e.toString());
    }
  }
}
