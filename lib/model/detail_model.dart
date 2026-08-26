import 'dart:ui';

class DoctorDetail {
  String image;
  String categoryImage;
  String drName;
  String drCategory;
  Color containerColor;
  Color color;
  String Date;
  int noOfDoctor;
  int time1;
  int time2;
  int time3;
  String consultainTime;
  String aboutDoctor;
  DoctorDetail({
    required this.image,
    required this.categoryImage,
    required this.drName,
    required this.drCategory,
    required this.noOfDoctor,
    required this.time1,
    required this.Date,
    required this.aboutDoctor,
    required this.consultainTime,
    required this.time2,
    required this.time3,
    required this.containerColor,
    required this.color,
  });
}

List<DoctorDetail> DoctorItem = [
  DoctorDetail(
    image: 'https://static.vecteezy.com/system/resources/thumbnails/026/375/249/small/ai-generative-portrait-of-confident-male-doctor-in-white-coat-and-stethoscope-standing-with-arms-crossed-and-looking-at-camera-photo.jpg',
    categoryImage: 'https://www.bioniq-repair-zahnpflege.com/fileadmin/user_upload/bioniq-repair-zahnpflege.com/images/content/zahngesundheit/zahnaufbau/DE/bioniq-repair-teaser-zahnaufbau.jpg',
    drName: 'Dr.jason',
    drCategory: 'Dental Surgeon',
    noOfDoctor: 50,
    time1: 9,
    Date: '15\njan',
    aboutDoctor: 'A dental doctor is called a dentist.\nThey care for teeth, gums, and overall oral health.\nDentists treat cavities, tooth pain, and gum problems.\nRegular dental checkups help keep teeth clean, strong, and healthy.',
    consultainTime: 'Sunday . 9am - 11am',
    time2: 11,
    time3: 16,
    containerColor: Color(0xFFEEF0FF),
    color: Color(0xFF6D7BCE),
  ),
  DoctorDetail(
    image: 'https://static.vecteezy.com/system/resources/thumbnails/027/186/053/small/smiling-male-doctor-with-good-test-results-wearing-a-white-coat-and-stethoscope-looking-into-camera-on-isolated-white-background-copy-space-for-health-free-photo.jpg',
    categoryImage: 'https://static.vecteezy.com/system/resources/thumbnails/045/828/276/small/human-heart-image-free-png.png',
    drName: 'Dr.johan',
    drCategory: 'Heart Surgeon',
    noOfDoctor: 70,
    time1: 10,
    Date: '11\nFeb',
    aboutDoctor: 'A heart doctor is called a cardiologist.\nThey treat heart diseases and blood pressure problems.\nCardiologists help patients maintain a healthy heart and lifestyle.\nRegular heart checkups can help prevent serious heart conditions.',
    consultainTime: 'monday . 8am - 12am',
    time2: 10,
    time3: 14,
    containerColor: Color(0xFFFCDFEF),
    color: Color(0xFFFF8906),
  ),
  DoctorDetail(
    image: 'https://img.freepik.com/free-photo/female-doctor-hospital-with-stethoscope_23-2148827774.jpg',
    categoryImage: 'https://media.istockphoto.com/id/1211362452/vector/parts-of-the-eye-labeled-vector-illustration-diagram.jpg?s=612x612&w=0&k=20&c=OWobzaZzwuAVzGZE3g0hgeed67dLSmOAl_X8RL59tIk=',
    drName: 'Dr.Broiny',
    drCategory: 'Eye Surgeon',
    noOfDoctor: 65,
    time1: 8,
    Date: '11\njan',
    aboutDoctor: 'An eye doctor helps people care for their eyesight and eye health.\nThey treat vision problems, eye infections, and eye injuries.\nEye doctors can prescribe glasses or contact lenses for clear vision.\nRegular eye checkups help protect the eyes and prevent serious problems.',
    consultainTime: 'thursday . 10am - 12am',
    time2: 10,
    time3: 15,
    containerColor: Color(0xFFE8F5E9),
    color: Color(0xFFFFB300),
  ),
  DoctorDetail(
    image: 'https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg',
    categoryImage: 'https://www.visiblebody.com/hs-fs/hub/189659/file-2382117556.jpg',
    drName: 'Dr.Smith',
    drCategory: 'Skeleton Surgeon',
    noOfDoctor: 70,
    time1: 9,
    Date: '13\njan',
    aboutDoctor: 'A skeleton doctor is called an orthopedic doctor.\nThey treat bone, joint, and muscle problems.\nThey help with fractures, back pain, and sports injuries.\nOrthopedic doctors also perform surgeries to improve movement and reduce pain.',
    consultainTime: 'Sunday . 8am - 10am',
    time2: 10,
    time3: 15,
    containerColor: Color(0xFFFDE2E4),
    color: Color(0xFFF48FB1),
  ),
  DoctorDetail(
    image: 'https://img.magnific.com/free-photo/pleased-young-female-doctor-wearing-medical-robe-stethoscope-around-neck-standing-with-closed-posture_409827-254.jpg?semt=ais_hybrid&w=740&q=80',
    categoryImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSys8l1qF_r0r52jEN5KwCkjAeYyy6Jx0gMhQ&s',
    drName: 'Dr.Jasmine',
    drCategory: 'Kidney Surgeon',
    noOfDoctor: 80,
    time1: 8,
    Date: '15\nMarch',
    aboutDoctor: 'A kidney doctor is called a nephrologist.\nThey treat kidney diseases, infections, and kidney stones.\nThey also help patients with dialysis and high blood pressure problems.\nRegular checkups with a kidney specialist can help keep kidneys healthy.',
    consultainTime: 'Wednesday . 9am - 11am',
    time2: 12,
    time3: 14,
    containerColor: Color(0xFFF3E5F5),
    color: Color(0xFFBA68C8),
  ),
];
