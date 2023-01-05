import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int number = 0;

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();
  TextEditingController religionController = TextEditingController();
  TextEditingController languageController = TextEditingController();
  TextEditingController biographyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Your Profile",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: Icon(Icons.arrow_back_outlined,color: Colors.white,),
      ),
      body: Stepper(
        currentStep: number,
        steps: [
          Step(
              title: Text("Profile Picture"),
              isActive: (number >= 0) ? true : false,
              content: CircleAvatar(radius: 60,)),
          Step(
              title: Text("Name"),
              isActive: (number >= 1) ? true : false,
              content: TextField(
                controller: nameController,
                textInputAction: TextInputAction.next,
                decoration:  InputDecoration(
                    hintText: "Enter Your name",
                    prefixIcon: Icon(Icons.person_outline)),
              )),
          Step(
              title:Text("Phone"),
              isActive: (number >= 2) ? true : false,
              content: TextField(
                controller: phoneController,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                    hintText: "Enter Your Phone Number",
                    prefixIcon: Icon(Icons.phone_outlined)),
              )),
          Step(
              title:  Text("Email"),
              isActive: (number >= 3) ? true : false,
              content: TextField(
                controller: emailController,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                    hintText: "Enter Your Email",
                    prefixIcon: Icon(Icons.mail_outline)),
              )),
          Step(
              title: Text("DOB"),
              isActive: (number >= 4) ? true : false,
              content: TextField(
                controller: dobController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    hintText: "Enter Your DOB",
                    prefixIcon: Icon(Icons.calendar_month_outlined)),
              )),
          Step(
              title:Text("Gender"),
              isActive: (number >= 5) ? true : false,
              content: TextField(
                controller: genderController,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                    hintText: "Enter Your Gender",
                    prefixIcon: Icon(Icons.manage_accounts)),
              )),
          Step(
              title: Text("Current Location"),
              isActive: (number >= 6) ? true : false,
              content: TextField(
                controller: locationController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    hintText: "Enter Your Current Location",
                    prefixIcon: Icon(Icons.location_on)),
              )),
          Step(
              title: Text("Nationality"),
              isActive: (number >= 7) ? true : false,
              content: TextField(
                controller: nationalityController,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                    hintText: "Enter Your Nationality",
                    prefixIcon: Icon(Icons.nature_outlined)),
              )),
          Step(
              title: Text("Religion"),
              isActive: (number >= 8) ? true : false,
              content: TextField(
                controller: religionController,
                textInputAction: TextInputAction.next,
                decoration:  InputDecoration(
                    hintText: "Enter Your Religion",
                    prefixIcon: Icon(Icons.account_balance_rounded)),
              )),
          Step(
              title:  Text("Language"),
              isActive: (number >= 9) ? true : false,
              content: TextField(
                controller: languageController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    hintText: "Enter Your Language",
                    prefixIcon: Icon(Icons.language)),
              )),
          Step(
              title: Text("Biography"),
              isActive: (number >= 10) ? true : false,
              content: TextField(
                controller: nameController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    hintText: "Enter Your Biography",
                    prefixIcon: Icon(Icons.currency_bitcoin_outlined)),
              )),
        ],
        onStepTapped: (val) {
          setState(() {
            number = val;
          });
        },
      ),
    );
  }
}
