
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class SigninListWidget extends StatefulWidget {
  const SigninListWidget({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SigninListWidget();
}

class _SigninListWidget extends State<SigninListWidget> {

  Future<void> _signInWithGoogle() async {
    try {
      UserCredential userCredential;
      final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final googleAuthCredential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      userCredential = await _auth.signInWithCredential(googleAuthCredential);
      final user = userCredential.user;
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text('Sign In ${user.uid} with Google'),
      ));
    } catch (e) {
      print(e);
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to sign in with Google: $e'),
        ),
      );
    }
  }

  // Example code of how to sign in with Facebook.
  // Future<void> _signInWithFacebook() async {
  //   try {
  //     final AuthCredential credential = FacebookAuthProvider.credential(
  //       _tokenController.text,
  //     );
  //     final User user = (await _auth.signInWithCredential(credential)).user;
  //
  //     Scaffold.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text('Sign In ${user.uid} with Facebook'),
  //       ),
  //     );
  //   } catch (e) {
  //     print(e);
  //     Scaffold.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text('Failed to sign in with Facebook: $e'),
  //       ),
  //     );
  //   }
  // }

  // Future<UserCredential> _signInWithFacebook() async {
  //     try {
  //       // final AuthCredential credential = FacebookAuthProvider.credential(_tokenController.text);
  //       // final User user = (await _auth.signInWithCredential(credential)).user;
  //       final LoginResult loginResult = await FacebookAuth.instance.login();
  //       final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken.token);
  //       final User user = (await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential)).user;
  //       Scaffold.of(context).showSnackBar(
  //         SnackBar(
  //           content: Text('Sign In ${user.uid} with Facebook'),
  //         ),
  //       );
  //     } catch (e) {
  //       print(e);
  //       Scaffold.of(context).showSnackBar(
  //         SnackBar(
  //           content: Text('Failed to sign in with Facebook: $e'),
  //         ),
  //       );
  //     }
  // }

  Future<void> _signOut() async {
    await _auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(25),
      children: [
        ListTile(
          title : Text('signup'),
          onTap: () {},
        ),
        ListTile(
          title : Text('google'),
          onTap: () {
            _signInWithGoogle();
          },
        ),
        ListTile(
            title : Text('apple'),
            onTap: () {}
        ),
        ListTile(
            title : Text('facebook'),
            onTap: () {
              // _signInWithFacebook();
            }
        ),
        ListTile(
          title : Text('signout'),
          onTap: () {
            _signOut();
          },
        ),
      ],
    );
  }
}