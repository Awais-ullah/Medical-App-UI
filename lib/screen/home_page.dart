import 'package:flutter/material.dart';
import 'package:medical_app_ui/model/detail_model.dart';
import 'package:medical_app_ui/screen/about_doctor.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //for profile page and menu
              children: [
                Image.asset('assets/images/menu.png', width: 40, height: 40),
                Image.asset('assets/images/profile.png', width: 40, height: 40),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Choose Your Doctor',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '100+ Available',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black45,
              ),
            ),
            SizedBox(height: 10),
            //for search bar
            searchBar(),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Category',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text('Children', style: TextStyle(fontSize: 15)),
                SizedBox(width: 5),
                Container(
                  height: 20,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Color(0xFFFDBFAFC),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      'Ault',
                      style: TextStyle(fontSize: 12, color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: DoctorItem.length,
                itemBuilder: (context, index) {
                  final Doctor = DoctorItem[index];
                  return Padding(
                    padding: const EdgeInsets.all(6),
                    child: Card(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(Doctor.categoryImage),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(11),
                                topRight: Radius.circular(11),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            Doctor.drCategory,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "${Doctor.noOfDoctor} Doctors",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10,),
            Text('  Available Doctor',
              style:TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),),

            Expanded(
              child: ListView.builder(
                shrinkWrap: true,

                itemCount: DoctorItem.length,
                itemBuilder: (context, index) {
                  final doctor = DoctorItem[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AboutDoctor(Doctorr: doctor)));
                      },
                      child: Material(
                        color: doctor.containerColor,
                        elevation: 4,
                        borderRadius: BorderRadius.circular(40),
                        child: Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage: NetworkImage(doctor.image),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(doctor.drName,
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                            SizedBox(width: 8,),
                                            Icon(Icons.star,
                                            color: Colors.amber,
                                            size: 10,),
                                            Icon(Icons.star,
                                              color: Colors.amber,
                                              size: 10,),
                                            Icon(Icons.star,
                                              color: Colors.amber,
                                              size: 10,),
                                            Icon(Icons.star,
                                              color: Colors.amber,
                                              size: 10,),
                                          ],
                                        ),
                                        Text(doctor.drCategory,
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 18,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                color: doctor.color,
                                                borderRadius: BorderRadius.circular(20)
                                              ),
                                              child:  Center(
                                                child: Text("${doctor.time1}.00",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.bold,
                                                    color: Colors.white
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 10,),
                                            Text("${doctor.time2}.00"),
                                            SizedBox(width: 25,),
                                            Text("${doctor.time3}.00"),
                                            SizedBox(width: 26,),
                                            Material(

                                              color: doctor.color,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                bottomRight: Radius.circular(20),

                                              ),
                                              child: Icon(Icons.arrow_forward,color: Colors.white,size: 25,),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding searchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(31, 141, 140, 140),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Icon(Icons.search, size: 30, color: Colors.black45),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'search doctor speciality',
                    hintStyle: TextStyle(color: Colors.black45),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
