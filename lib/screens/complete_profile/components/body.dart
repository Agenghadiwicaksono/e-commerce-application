import 'package:e_commerce/components/cutom_suffix_icon.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight* 0.03,
              ),
              Text(
                "Complete Profile",
                style: headingStyle,
              ),
              const Text(
                "Complete your Profile data",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight* 0.06,
              ),
              CompleteProfileForm()
            ],
          ),
        ),
      ),
    );
  }
}

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {

  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? adress;
  
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            onSaved: (newValue) => firstName = newValue,
            onChanged: (value){
              
            },
            validator: (value) {
              
            },
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: "First Name",
              hintText: "Enter Your First Name",
                                          
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CostumSuffixIcon(
                icon: "assets/icons/User.svg",
              )
            ),             
          )
        ],
      )
    );
  }
}

