import 'package:flutter/material.dart';

class CustomSuccessContainer extends StatelessWidget {

  const CustomSuccessContainer({super.key, });

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(24.0),
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
          color: const Color(0xffC2DEA8),
          borderRadius: BorderRadius.circular(10.0)
      
      ),
      child: Column(children: [
        // Icon(Icons.,size: MediaQuery.of(context).size.width * 0.5,)
        Image.asset("assets/images/check-broken.png",width:MediaQuery.of(context).size.width * 0.5 ,),
        const SizedBox(height: 16.0,),
        const Text("تم تأكيد  كلمة المرور",style: TextStyle(color: Color(0xff868889)),),

      ],),
    );
  }
}
