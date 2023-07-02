import 'package:airbnb_ui_clone/screens/explore/explore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class SeoulDetail extends StatelessWidget {
  const SeoulDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 96,
        child: BottomAppBar(
            child: Padding(
          padding: const EdgeInsets.only(top: 15, left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: const [
                      Text(r'$97.67',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600)),
                      SizedBox(
                        width: 5,
                      ),
                      Text('/1day',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w400))
                    ],
                  ),
                  const Text('6월 2-7일',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline))
                ],
              ),
              Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  decoration: BoxDecoration(
                      color: Colors.red.shade900,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    '예약문의하기',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ))
            ],
          ),
        )),
      ),
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              ImageSlideshow(
                height: 350,
                children: [
                  Image.asset(
                    'assets/images/seoul_detail.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/seoul_detail2.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/seoul_detail3.jpg',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Positioned(
                top: 60,
                right: 20,
                child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Icon(Icons.favorite_outline)),
              ),
              Positioned(
                top: 60,
                left: 20,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration:
                            Duration(milliseconds: 500), // 전환 시간 설정
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return Explore(); // 전환될 화면
                        },
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return FadeTransition(
                            opacity: animation, // 페이드 효과를 위해 투명도 애니메이션 적용
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Icon(Icons.arrow_back_rounded)),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '경복궁 근처 조용한 한옥 호텔',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.star,
                      size: 15,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      '5.0',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '3개의 리뷰',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline),
                    )
                  ],
                ),
                Row(
                  children: const [
                    Text('서울, 대한민국 북촌한옥마을',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w400))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      width: 270,
                      child: Text('개인소유의 룸쉐어 호스트 \n모두연',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(
                        "assets/images/modulabs.png",
                      ),
                    )
                  ],
                ),
                const Text('2명의 게스트 • 1개의 방 • 침대 1개',
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.w400)),
                const Text('2개의 공용욕실',
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.w400)),
                const SizedBox(
                  height: 25,
                ),
                const Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/door.png',
                      height: 40,
                      width: 40,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text('호스트 체크인',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 55,
                    ),
                    Text('호스트에게 문의',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey)),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
