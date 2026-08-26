import 'package:flutter/material.dart';
import 'package:medical_app_ui/model/detail_model.dart';

class AboutDoctor extends StatelessWidget {
  const AboutDoctor({super.key, required this.Doctorr});
  final DoctorDetail Doctorr;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //for doctor image
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: MediaQuery.of(context).size.height * 0.50,
              child: Container(
            width: MediaQuery.of(context).size.width,
                child: Image(image: NetworkImage(Doctorr.image),fit: BoxFit.cover,),
          )
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.4,
              left: 0,
              right: 0,
              height: MediaQuery.of(context).size.height * 0.55,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 30),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(Doctorr.drName,
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        //for doctor category
                        Text(Doctorr.drCategory,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            color: Colors.black45
                          ),
                        ),
                        //for doctor about
                        SizedBox(height: 10,),
                        Text('About Doctor',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                    
                        SizedBox(height: 10,),
                        Text(Doctorr.aboutDoctor,
                          style: TextStyle(
                            height: 1.3,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        //for upcoming schedule
                        SizedBox(height: 10,),
                        Text('Upcoming Schedules',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 15,),
                        Container(
                          height: 60,
                    
                          decoration: BoxDecoration(
                            color: Doctorr.containerColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 17),
                                child: Container(
                                  height: 47,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Doctorr.color,
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Center(child: Text(Doctorr.Date,
                                  style: TextStyle(
                                    height: 1.1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.white
                                  ),
                                  )
                                  ),
                                ),
                              ),
                              SizedBox(width: 15,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Consultation',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold
                                  ),),
                                  Text(Doctorr.consultainTime,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold
                                    ),)
                                ],
                              )
                            ],
                          ),
                        )
                    
                    
                      ],
                    ),
                  ),
                ),
              )
          ),
          //for back button
          Positioned(
            top: MediaQuery.of(context).padding.top,
              left: 10,
              child: GestureDetector(

            onTap: (){
              Navigator.pop(context);
              
            },child: Icon(Icons.arrow_back,size: 20,color: Colors.black,),
          ))
          
        ],
      ),
    );
  }
}
