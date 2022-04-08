import 'dart:math';
import 'package:flutter/cupertino.dart';

import 'insta.dart';
import 'package:flutter/material.dart';

void main() {
  const app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // callback method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SU CAFE REVIEW BLOG',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      home: Test(),
    );
  }
}

class Test extends StatelessWidget {
  Test({Key? key}) : super(key: key);

  final List<Insta> InstaList = [
    Insta(imguser: 'assets/images/coffee-logo.jpg', img: 'assets/images/baketillwedie.png',
        userpost: 'SU CAFE REVIEW BLOG', comments: [Comments(user: 'Sophia', comment: "อยากไปจัง"),Comments(user: 'Isabella', comment: 'ร้านนี้อร่อยจริง แนะนำเลยค่ะ')],
        caption: "🏚💡🦌𓂂𓂂  BAKE TILL WE DIE 𓏲☕️🦙🪵\nคาเฟ่สไตล์เมดิเตอร์เรเนียน ด้วยการออกแบบ และตกแต่งอย่างน่ารัก ชวนให้มาถ่ายรูป พร้อมทานขนมโฮมเมด ในตัวเมืองนครปฐม \n"
            "ตึกแถวหนึ่งคูหา แฝงกลิ่นอายความเป็นโฮมมี่ ฝั่งตรงข้าม ม.ศิลปากร อย่างโดดเด่นกับคาเฟ่ที่มีเอกลักษณ์ขึ้นชื่อเรื่องขนมอร่อย แบบโฮมเมด 100% \n"
            "ผนังฉาบแบบปูนเปลือยสีครีม ตกแต่งด้วยสีเอิรธ์โทน เขียวอ่อน น้ำตาล พร้อมแสงไฟสีส้ม เฟอร์นิเจอร์ ของตกแต่งที่เข้ากันอย่างน่ารัก เพิ่มเสน่ห์ และกลิ่นอายความอบอุ่น\n"
            "กลิ่นหอมของขนมอบใหม่ๆ อบอวลภายในร้าน บอกให้เรารู้ว่าห้ามพลาดกับขนมโฮมเมดที่มีให้เลือกลองความอร่อยกัน ทานคู่กับเครื่องดื่มแบบ Coffee & Non-Coffee เข้ากันได้อย่างดี\n"
            "อีกหนึ่งคาเฟ่ เดินทางไม่ไกลจากกรุงเทพ ให้เพื่อนๆ เซฟแล้วไปด้วยกัน ออกไปพักผ่อน สัมผัสบรรยากาศใหม่ๆ เหมือนที่ใครเคยบอกไว้ว่าการเดินทางจะช่วยเยียวยาจิตใจ\n"
            "📌 BAKE TILL WE DIE\n"
            "🕐 10.00 - 20.00 น. (เวลาเปิดและปิดอาจมีเปลี่ยนแปลง แนะนำโทรสอบถามก่อนไปนะ)\n"
            "📞 087-151-4556\n"
            "🚗 จอดรถบริเวณหน้าร้าน\n"
            "ถนนทรงพล ตำบลพระปฐมเจดีย์ อ.เมือง นครปฐม\n#baketillwedie"),
    Insta(imguser: 'assets/images/coffee-logo.jpg', img: 'assets/images/carpediem.png',
        userpost: 'SU CAFE REVIEW BLOG',comments: [Comments(user: 'Emma', comment: 'ร้านนี้ขนมอร่อยทุกอย่างเลย'),Comments(user: 'Olivia', comment: 'น่าไปมาก')],
        caption: '  𓏬🥛🍪 CARPEDIEM - คาเปเดี้ยม 🍨𓐄𓈒 🪟\nคาเฟ่เล็กๆที่มีต้นไม้เป็นสมาชิกคอยต้อนรับเข้าสู่ตัวร้านเมื่อผ่านประตูไม้บานใหญ่ เข้าไปก็จะพบกับถอนที่เต็มไปด้วยรอยยิ้มเรียบง่าย\n'
            'และสบายใจคือสิ่งที่ไม่ว่าใครมายืนก็จะได้รับกลับไปทุกคน พราะภายในร้านตกแต่งได้อย่างสบายตาและอบอุ่นเรากลับบ้านในเทพนิยาย ไม่ว่าจะเป็นการจัดวางเก้าอี้ของตกแต่งสุดน่ารัก \n'
            'และโทนสีของร้านนานาเมนูเค้กท็อปด้วยผลไม้สดและตกแต่งด้วยดอกไม้ที่คงความน่ารักแต่ซ่อนความอร่อยมหาศาลไว้วางเรียงไว้ในตู้ได้สร้างความตื่นเต้น\n'
            'ให้กับทุกคนอยู่เสมอเมนูเครื่องดื่มก็มีให้เลือกไม่น้อยบอกได้คำเดียวเลยว่าร้านนี้เป็นอีกหนึ่งคำนิยามของความสุขจริงๆ\n'
            "📌 CARPEDIEM - คาเปเดี้ยม\n"
            "🕐 09.00 - 19.00 น. (หยุดทุกวันพุธ)\n"
            "📞 083-615-8435\n"
            '#carpediem'),
    Insta(imguser: 'assets/images/coffee-logo.jpg', img: 'assets/images/KogumaClubKafe.png',
        userpost: 'SU CAFE REVIEW BLOG',comments: [Comments(user: 'Ava', comment: 'อาหารอร่อยมากร้านนี้ ประทับใจ'),Comments(user: 'Emily', comment: 'รออาหารไม่นาน พนักงาจัดการเวลาได้ดีมาก')],
        caption: '🩰🧸🧉 Koguma Club Kafe 🧹🥛⭐️\n'
        "🔵 ร้านโคกุมะ เอ็ม คาเฟ่ แอนด์ อีทเทอรึ่ 🔵 เสริฟความอร่อยทั้งกาแฟหอมๆ ตกเเต่งโทนขาวน้ำเงิน ภายในโปร่ง นั่งได้สบายๆ มีตุ๊กตาน้องหมีต้อนรับอยู่หน้าร้าน\n"
        "มีอาหารจานเดียว กาเเฟ เครื่องดื่ม เค้ก พนักงานบริการดีอาหารอร่อยๆ ทั้งวัน ลูกค้าแวะมาทานได้รับรอง อิ่ม อร่อย คุ้มราคา\n"
        "📌 Koguma Club Kafe\n"
            "🕐 09.00 - 20.00 น. (หยุดทุกวันพุธ)\n"
            "📞 064-953-6950\n"
            '#kogumaclubkafe'),
    Insta(imguser: 'assets/images/coffee-logo.jpg', img: 'assets/images/staywithtree.png',
        userpost: 'SU CAFE REVIEW BLOG',comments: [Comments(user: 'Abigail', comment: 'บรรยากาศดีมาก'),Comments(user: 'Madison', comment: 'เหมมาะกับการถ่ายรูปสวยๆมาก ')],
        caption: '✨🌻🍋 STAY WITH TREE cafe 🍧 🌷🧸 \n''คาเฟ่ในสวนที่จัดมุมสวยมาก มองไปทางไหนก็น่าถ่ายรูป ในร้านคุมโทนด้วยสีน้ำตาล ขาว เสริมด้วยสีส้มจากโคมไฟและสีเขียวของต้นไม้ ร้านร่มรื่น\n'
            'มุมถ่ายรูปเยอะ ราคาไม่แพง จอดรถริมถนนได้ ขนมและเครื่องดื่มกลางๆ มีลานจอดรถเล็กๆ ข้างร้าน ซึ่งเราเข้าไปจอด ก็โดนจอดปิดท้าย 2 คัน ต้องไล่ถามทีละโต๊ะว่ารถของใคร\n'
            'ซึ่งทุกคนน่ารักนะคะ รีบวิ่งมาถอยรถให้ แต่จุดนี้อาจจะทำให้หงุดหงิดได้\n'
            "📌 STAY WITH TREE cafe\n"
            "🕐 09.00 - 17.00 น. (หยุดทุกวันพฤหัสบดี)\n"
            "📞 064-117-4019\n"
            '#staywithtreecafe'),
    Insta(imguser: 'assets/images/coffee-logo.jpg', img: 'assets/images/memorycafe.png',
        userpost: 'SU CAFE REVIEW BLOG',comments: [Comments(user: 'Chloe', comment: 'อเมริกาโนอร่อยมาก'),Comments(user: 'Mia', comment: 'น้องแมวน่ารักมาก')],
        caption: '☕️🌿🍃 MEMORYCAFE BAR 🧸📻🍶\n'
        "คาเฟ่เล็กๆที่ตกแต่งได้น่ารักมากก รสชาติของเครื่องดื่มก็อร่อย ภายในร้านมีกล้องฟิล์มมากมายที่ร้านนำมาตกแต่ง มีมุมให้นั่งคุย ถ่ายรูป มากมาย เจ้าของคาเฟ่นี้เฟลนลี่สุดๆไปเลย\n"
            "📌 MEMORYCAFE BAR\n"
            "🕐 11.00 - 20.00 น.\n"
            "📞 064-549-2941\n"
            '#memorycafebar'),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade50,
      appBar: AppBar(title: Text('👩🏻‍🍳🥞🥄 SU CAFE REVIEW BLOG 🧁🥖🧈',
          style: TextStyle(fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 25.0,))),
      body: ListView.builder(
          itemCount: InstaList.length,
          itemBuilder: (context, index) =>
              MyCard(insta: InstaList[index])),

    );
  }
}
class MyCard extends StatefulWidget {
  final Insta insta;

  const MyCard({
    Key? key,
    required this.insta,
  }) : super(key: key);

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  final controller = TextEditingController();
  var like = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Text(covid.date),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 23,
                  backgroundImage: AssetImage('${widget.insta.imguser}'),
                ),
                SizedBox(width: 10.0),
                Expanded(
                    child: Text(
                        '${widget.insta.userpost}'
                    )
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.more_vert),)
              ],
            ),
          ),
          Image.asset('${widget.insta.img}',fit: BoxFit.cover,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                /*SizedBox(width: 5.0),*/
                Expanded(
                    child: Text(
                        '${widget.insta.caption}'))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0,left: 16.0,right: 16.0),
            child: Column(
              children: [
                for(int i=0;i<widget.insta.comments.length;i++)
                  Row(
                    children: [
                      SizedBox(height: 23.0,),
                      Text(
                        '${widget.insta.comments[i].user}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey.shade800,
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(width: 5.0,),
                      Text(
                        '${widget.insta.comments[i].comment}',
                        style: TextStyle(

                        ),
                      )
                    ],
                  ),
              ],
            ),
          ),


          Row(
            children: [
              IconButton(onPressed: (){
                setState(() {
                  like = !like;
                });
              }, icon: like? Icon(Icons.favorite,color: Colors.pink,): Icon(Icons.favorite_border),),
              Expanded(
                child: TextField(
                  onSubmitted: (value){

                    setState(() {
                      widget.insta.comments.add(Comments(user: 'Flutter', comment: value));
                      controller.clear();

                    });
                  },
                  controller: controller,
                  decoration: const InputDecoration(
                    hintText: 'Add a comment',
                  ),
                ),
              ),
            ],
          )


        ],
      ),
    );
  }
}