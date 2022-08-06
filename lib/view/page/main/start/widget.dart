import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: InkWell(
              onTap: () {},
              child: Card(
                color: const Color(0xffD9D9D9),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '운동하러 가기',
                        style: TextStyle(fontSize: 40.0),
                      ),
                      SizedBox(height: 100),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(
                          Icons.timelapse_sharp,
                          size: 100,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 172.0,
                  height: 172.0,
                  child: InkWell(
                    onTap: () {},
                    child: Card(
                      color: const Color(0xffD9D9D9),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              '내 기록\n보러가기',
                              style: TextStyle(fontSize: 20.0),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Icon(
                                  Icons.dvr,
                                  size: 60.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 172.0,
                  height: 172.0,
                  child: InkWell(
                    onTap: () {},
                    child: Card(
                      color: const Color(0xffD9D9D9),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              '챌린지',
                              style: TextStyle(fontSize: 20.0),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Icon(
                                  Icons.military_tech_outlined,
                                  size: 60.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
