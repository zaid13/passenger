import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:passenger/general/CommonWidgets.dart';
import 'package:passenger/general/strings.dart';
import 'package:passenger/general/variables.dart';
import 'package:regexpattern/regexpattern.dart';
import 'package:passenger/features/custom-rides/presentation/pages/rideListTime_widget.dart';
import 'package:passenger/features/custom-rides/presentation/pages/school_Business.dart';

class Custom_Rides extends StatefulWidget {
  @override
  _Custom_RidesState createState() => _Custom_RidesState();
}

class _Custom_RidesState extends State<Custom_Rides> {



  TextEditingController phnctrl =   TextEditingController();
  TextEditingController psdctrl =TextEditingController();


  bool isCorrectNumber = false;

  @override
  void initState() => phnctrl.addListener(() {
      setState(() {
        isCorrectNumber = /*(phnctrl.text.isNumeric() ) &&  */(phnctrl.text.length>9 )?true:false;
             });
    });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor:Mycolor.backgroundColor,

      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(

          children: [
            Stack(
              children: [
                Container(
                    height: 280,
                    child: Common_Widgets_Class.Topbar(context,(){Navigator.pop(context);},'CUSTOM RIDES')),
                Positioned(
                    top: 70,
                    left: 50,
                    child: School_Business())
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15,left: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RideTile_widget(DateTime.now(),'shujaa','Paid by card','500'),
                  RideTile_widget(DateTime.now(),'zaid','Paid by card','500'),
                  RideTile_widget(DateTime.now(),'hamza','Paid by card','500'),
                  RideTile_widget(DateTime.now(),'khubaib','Paid by card','500'),


                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  _upperTextWid() {
    return Expanded(child: Container(child: Text(helloScreenUpper, style: Theme.of(context).textTheme.headline1)));
  }
  _getCrousel() {    return Expanded(child: Container(child: Text(helloScreenUpper, style: Theme.of(context).textTheme.headline1)));
  }
  _bottomWid() {    return Expanded(child: Container(child: Text(helloScreenUpper, style: Theme.of(context).textTheme.headline1)));
  }
  _getcountryDropDown(fun){
    return CountryCodePicker(
      onChanged: fun,
      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
      initialSelection: 'PK',
      favorite: ['+92','PK'],
      // optional. Shows only country name and flag
      showCountryOnly: false,
      // optional. Shows only country name and flag when popup is closed.
      showOnlyCountryWhenClosed: false,
      // optional. aligns the flag and the Text left
      alignLeft: false,

    );

  }
  _getTextFieldColumn(label,ctrl,istrue,fun ){

    return Column(
mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(label,style: GoogleFonts.poppins(color: Mycolor.h1color,fontSize: 12,fontWeight: FontWeight.normal),),
    _getTextField(ctrl,TextInputType.number ,istrue,fun),],

    );

}
  _getTextField(TextEditingController ctrl,  TextInputType tctip,isvisible,codeNumberFun){

    return  Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 45,
alignment:Alignment.center ,
      child: TextField(

        controller: ctrl,
        keyboardType: tctip,
          decoration: InputDecoration(
              prefixIcon: _getcountryDropDown(codeNumberFun),
              suffixIcon: isvisible?Padding(
  padding: const EdgeInsets.only(bottom: 10),
  child:   Icon(Icons.check_circle_rounded,color: Mycolor.primaryColor, size: 28,),
):Container(
                height: 0,
                width: 0,
              ),
            // enabledBorder: UnderlineInputBorder(
            //   borderSide: BorderSide(color: Colors.transparent),
            // ),
            // focusedBorder: UnderlineInputBorder(
            //   borderSide: BorderSide(color: Colors.transparent),
            // ),
            // border: UnderlineInputBorder(
            //   borderSide: BorderSide(color:  Colors.transparent),
            // ),
          )
      ),
    );

  }
  _getPasswordField(isvisible,psdctrl){
    return  Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 45,

      // padding: EdgeInsets.only(left: 20),
      child: TextField(

controller: psdctrl,

        obscureText: true,

          decoration: InputDecoration(

hintText: "Password",
            suffixIcon: isvisible?Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child:   Icon(Icons.check_circle_rounded,color: Mycolor.primaryColor, size: 28,),
            ):Container(
              height: 0,
              width: 0,
            ),


            // enabledBorder: UnderlineInputBorder(
            //   borderSide: BorderSide(color: Colors.transparent),
            // ),
            // focusedBorder: UnderlineInputBorder(
            //   borderSide: BorderSide(color: Colors.transparent),
            // ),
            // border: UnderlineInputBorder(
            //   borderSide: BorderSide(color:  Colors.transparent),
            // ),
          )
      ),
    );
  }
  _getTopRow( back){
    return Row(
      children: [
        FlatButton(onPressed: back,
            child: Icon(Icons.arrow_back,color: Colors.white,)),
        Text('data')

      ],
    );


  }
  _BigBlueButton(String str,Function fun){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: FlatButton(

        onPressed: fun, child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(str,style: GoogleFonts.poppins(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
            Icon(Icons.arrow_forward,color: Colors.white,size: 30,)

          ],
        ),
        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(7.0)),

        padding: EdgeInsets.only(left: 10,bottom: 15,top: 15,right: 10),
      color: Mycolor.electricBlue,

      ),
    );

    _loginButton(fun){


    }

  }
  _buttonText (str,fun){
    return       FlatButton(
      padding:  EdgeInsets.all(0),
       onPressed: fun,
      color: Colors.transparent,
      child: Text(str,style: GoogleFonts.poppins(color: Mycolor.h1color,fontSize: 14,fontWeight: FontWeight.normal),
      ),
    );

  }
  _otherSignInOption(){
    return Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Text('Or Sign In Using',style: GoogleFonts.poppins(color: Mycolor.h1color,fontSize: 14,fontWeight: FontWeight.normal),),
          Row(
mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 17.0,
                backgroundImage:
                AssetImage('assets/ui/signinoption/facebook.png'),
                backgroundColor: Colors.transparent,
              ),
              Container(
                width: MediaQuery.of(context).size.width* 0.05,
              ),
              CircleAvatar(
                radius: 22.0,
                backgroundImage:
                AssetImage  ('assets/ui/signinoption/google.png'),
                backgroundColor: Colors.transparent,
              )


            ],
          )

        ],),
      ),
    );
  }
}
