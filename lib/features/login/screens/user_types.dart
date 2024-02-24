import 'package:bhojansathi/config/routePaths.dart';
import 'package:bhojansathi/config/routePaths.dart';
import 'package:bhojansathi/config/routePaths.dart';
import 'package:bhojansathi/generated/assets.dart';
import 'package:bhojansathi/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UserTypeScreen extends StatefulWidget {
  const UserTypeScreen({super.key});

  @override
  State<UserTypeScreen> createState() => _UserTypeScreenState();
}

class _UserTypeScreenState extends State<UserTypeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Identify Yourself'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildUserTypeButton(
                  "Individual",
                  Assets.usertypeIndividual,
                  () {
                    GoRouter.of(context).push(RoutePaths.individualUserRegisterScreen);
                  },
                ),
                buildUserTypeButton(
                  "Organization",
                  Assets.usertypeOrganization,
                  () {
                    GoRouter.of(context).push(RoutePaths.organizationProfileCreateScreen);
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            buildUserTypeButton(
              "Volunteer",
              Assets.usertypeVolunter,
              () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget buildUserTypeButton(
    String userType,
    String assetPath,
    VoidCallback onNext,
  ) {
    return InkWell(
      onTap: onNext,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            clipBehavior: Clip.antiAlias,
            width: 100,
            height: 100,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Image.asset(
              assetPath,
              scale: 1.5,
            ),
          ),
          Text(userType),
        ],
      ),
    );
  }
}
