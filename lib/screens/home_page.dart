import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int stepperIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Stepper App"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stepper(
              currentStep: stepperIndex,
              onStepContinue: () {
                setState(() {
                  if (stepperIndex < 2) {
                    stepperIndex++;
                  }
                });
              },
              onStepTapped: (val) {
                setState(() {
                  stepperIndex = val;
                });
              },
              onStepCancel: () {},
              steps: <Step>[
                Step(
                  title: const Text(
                    "Sign Up",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  content: Form(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                              icon: const Icon(Icons.person),
                              border: UnderlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              hintText: "Full Name",
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              icon: const Icon(Icons.email),
                              border: UnderlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              hintText: "Email ID",
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              icon: const Icon(Icons.lock),
                              border: UnderlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              hintText: "Password",
                            ),
                            obscureText: true,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              icon: const Icon(Icons.lock),
                              border: UnderlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              hintText: "Confirm Password",
                            ),
                            obscureText: true,
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                  isActive: stepperIndex >= 0,
                  state: stepperIndex >= 1
                      ? StepState.complete
                      : StepState.disabled,
                ),
                Step(
                  title: const Text("Login",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  content: Form(
                      child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                            icon: const Icon(Icons.person_outline),
                            border: UnderlineInputBorder(
                              borderSide: const BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(0),
                            ),
                            hintText: "Username",
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            icon: const Icon(Icons.lock),
                            border: UnderlineInputBorder(
                              borderSide: const BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(0),
                            ),
                            hintText: "Password",
                          ),
                          obscureText: true,
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  )),
                  isActive: stepperIndex >= 0,
                  state: stepperIndex >= 2
                      ? StepState.complete
                      : StepState.disabled,
                ),
                Step(
                  title: const Text(
                    "Home",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  content: Container(),
                  isActive: stepperIndex >= 0,
                  state: stepperIndex >= 2
                      ? StepState.complete
                      : StepState.disabled,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
