import 'package:egyhealthcare/Cubit/cubit.dart';
import 'package:egyhealthcare/Cubit/states.dart';
import 'package:egyhealthcare/Widgets/componnents/componnents.dart';
import 'package:egyhealthcare/Widgets/componnents/constants.dart';
import 'package:egyhealthcare/Widgets/componnents/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Personal extends StatelessWidget {
  Personal({Key? key}) : super(key: key);
  var fixedHieght;
  var fixedWidth;
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var nationalIdController = TextEditingController();
  var nameController = TextEditingController();
  var dateOfBirthController = TextEditingController();
  var securtyController = TextEditingController();
  var phoneController = TextEditingController();

  Color textColor = Color(0xff255572);

  @override
  Widget build(BuildContext context) {
    fixedHieght = MediaQuery.of(context).size.height;
    fixedWidth = MediaQuery.of(context).size.width;

    return BlocConsumer<AppCubit, AppStates>(
      builder: (BuildContext context, state) {
        var cubit = AppCubit().get(context);
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: kSeconderycolor,
            title: Text(
              'Your Profile',
              style: TextStyle(
                  color: textColor, fontSize: 17, fontWeight: FontWeight.w600),
            ),
          ),
          backgroundColor: kSeconderycolor,
          body: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: fixedWidth * 10 / fixedWidth),
                    child: Container(
                      height: fixedHieght * 700 / fixedHieght,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: fixedHieght * (2 / fixedHieght),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "Personal Information",
                                          style: TextStyle(
                                              color: textColor,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height:
                                              fixedHieght * (7 / fixedHieght),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: fixedHieght * (25 / fixedHieght),
                                ),
                                defaultFormField(
                                    hintColor: Colors.black,
                                    hint: 'Islam Magdi',
                                    controller: nameController,
                                    validate: (value) {},
                                    type: TextInputType.name,
                                    Bordercolor1: Colors.black,
                                    Bordercolor2: Color(0xff0277BD),
                                    textColor: Colors.black,
                                    suffixColor: Color(0xff707070)),
                                SizedBox(
                                  height: fixedHieght * (25 / fixedHieght),
                                ),
                                defaultFormField(
                                    hintColor: Colors.black,
                                    hint: 'islammagdi@gmail.com',
                                    controller: emailController,
                                    validate: (value) {},
                                    type: TextInputType.emailAddress,
                                    Bordercolor1: Colors.black,
                                    Bordercolor2: Color(0xff0277BD),
                                    textColor: Colors.black,
                                    suffixColor: Color(0xff707070)),
                                SizedBox(
                                  height: 10,
                                ),
                                defaultFormField(
                                    hintColor: Color(0xff707070),
                                    hint: 'Phone Number',
                                    controller: phoneController,
                                    validate: (value) {},
                                    type: TextInputType.phone,
                                    Bordercolor1: Colors.black,
                                    Bordercolor2: Color(0xff0277BD),
                                    textColor: Colors.black,
                                    suffixColor: Color(0xff707070)),
                                SizedBox(
                                  height: 10,
                                ),
                                defaultFormField(
                                    onIconPressed: () {},
                                    hintColor: Color(0xff707070),
                                    hint: 'National ID',
                                    controller: nationalIdController,
                                    validate: (value) {},
                                    type: TextInputType.visiblePassword,
                                    Bordercolor1: Colors.black,
                                    Bordercolor2: Color(0xff0277BD),
                                    textColor: Colors.black,
                                    suffixColor: Color(0xff707070)),
                                SizedBox(
                                  height: 10,
                                ),
                                defaultFormField(
                                    hintColor: Color(0xff707070),
                                    hint: 'Date of Birth',
                                    controller: dateOfBirthController,
                                    validate: (value) {},
                                    type: TextInputType.visiblePassword,
                                    Bordercolor1: Colors.black,
                                    Bordercolor2: Color(0xff0277BD),
                                    textColor: Colors.black,
                                    suffixColor: Color(0xff707070)),
                                SizedBox(
                                  height: 17,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "Security Information",
                                          style: TextStyle(
                                              color: textColor,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height:
                                              fixedHieght * (7 / fixedHieght),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: fixedHieght * (15 / fixedHieght),
                                ),
                                defaultFormField(
                                    hintColor: Colors.black,
                                    obscuredText: true,
                                    hint: 'Enter Your Name',
                                    controller: securtyController,
                                    validate: (value) {},
                                    type: TextInputType.name,
                                    Bordercolor1: Colors.black,
                                    Bordercolor2: Color(0xff0277BD),
                                    textColor: Colors.black,
                                    suffixColor: Color(0xff707070)),
                              ],
                            ),
                            SizedBox(
                              height: fixedHieght * 25 / fixedHieght,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      child: Center(child: Text("Delete Account",style: TextStyle(color: Colors.red),),),
                                      height: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                          border: Border(
                                              top:
                                                  BorderSide(color: Colors.red),
                                              bottom:
                                                  BorderSide(color: Colors.red),
                                              right:
                                                  BorderSide(color: Colors.red),
                                              left: BorderSide(
                                                  color: Colors.red))),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: InkWell(
                                    onTap: () {},
                                    child: CustomButton(
                                      ButtonName: 'Sign Up',
                                      color: Color(0xff0089DB),
                                      condition: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      listener: (context, state) {
        // if (state is RegisterDataSuccessState) {
        //   if (state.registerModel.status == true) {
        //     Fluttertoast.showToast(
        //       msg: state.registerModel.msg!,
        //       backgroundColor: Colors.green,
        //       textColor: Colors.white,
        //       toastLength: Toast.LENGTH_SHORT,
        //       gravity: ToastGravity.BOTTOM,
        //       timeInSecForIosWeb: 3,
        //
        //     );
        //     CacheHelper.setData(
        //         key: 'api_token', value: state.registerModel.user!.apiToken)
        //         .then((value) {
        //       userToken = state.registerModel.user!.apiToken;
        //       navigateAndFinish(context, WalkThrow());
        //     });
        //   }
        //   else {
        //     Fluttertoast.showToast(
        //       msg: state.registerModel.msg!,
        //       backgroundColor: Colors.red,
        //       textColor: Colors.white,
        //       toastLength: Toast.LENGTH_SHORT,
        //       gravity: ToastGravity.BOTTOM,
        //       timeInSecForIosWeb: 3,
        //     );
        //   }
        // }
        // else if (state is RegisterDataErrorState) {
        //   Fluttertoast.showToast(
        //       msg: 'something errrrrrrrrrrrrrrr occurred ',
        //       backgroundColor: Colors.red,
        //       textColor: Colors.white,
        //       toastLength: Toast.LENGTH_SHORT,
        //       gravity: ToastGravity.BOTTOM,
        //       timeInSecForIosWeb: 3);
        // }
      },
    );
  }
}
