import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('버튼'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                // MaterialStateProperty.all => 모든 상태에서 같은 값 적용
                backgroundColor: MaterialStateProperty.all(
                  Colors.black,
                ),
                // MaterialState
                // hovered - 마우스 커서를 올려놓은 상태
                // focused - 포커스 됐을 때 (텍스트 필드에서 사용)
                // pressed - 눌렀을 때
                // dragged - 드래그 됐을 때
                // selected - 선택됐을 때 (체크박스, 라디오버튼 등)
                // scrollUnder - 다른 컴포턴트 밑으로 스크롤 됐을 때
                // disabled - 비활성화 됐을 때 (onPressed: null)
                // error = 에러 상태 (텍스트 필드에서 사용)
                foregroundColor: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.white;
                  }
                  return Colors.red;
                }),
                padding: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return EdgeInsets.all(100.0);
                  }
                  return EdgeInsets.all(20.0);
                }),
              ),
              child: Text(
                'Buttons Style',
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  // 배경
                  backgroundColor: Colors.red,
                  // 글자
                  foregroundColor: Colors.black,
                  // 그림자
                  shadowColor: Colors.green,
                  // 버튼에 입체감을 줌
                  elevation: 10.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(32.0),
                  // 버튼 테두리 지정
                  side: BorderSide(
                    color: Colors.black,
                    width: 4.0,
                  )),
              child: Text(
                'ElevatedButton',
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.green,
                elevation: 10.0,
              ),
              child: Text(
                'OutlinedButton',
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.brown,
              ),
              child: Text(
                'TextButton',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
