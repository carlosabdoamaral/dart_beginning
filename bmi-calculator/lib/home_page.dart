import 'package:bmi_calculator/components/gender_square_component.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool maleIsSelected = true;
  bool femaleIsSelected = false;
  double sliderValue = 100.0;
  int weight = 40;
  int age = 10;

  void UpdateSlider(value) {
  setState(() {
      sliderValue = (value).roundToDouble();
    });
  }

  void IncrementAge() {
    setState(() {
      age++;
    });
  }

  void DecrementAge() {
    setState(() {
      age--;
    });
  }

  void IncrementWeight() {
    setState(() {
      weight++;
    });
  }

  void DecrementWeight() {
    setState(() {
      weight--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 23, 39),
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        backgroundColor: Color.fromARGB(255, 5, 23, 39),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                GenderSquareComponent(
                  text: "MALE",
                  icon: Icons.male,
                  isSelected: this.maleIsSelected,
                ),
                GenderSquareComponent(
                  text: "FEMALE",
                  icon: Icons.female,
                  isSelected: this.femaleIsSelected,
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: TextStyle(
                      color: Color.fromARGB(255, 183, 183, 183),
                    ),
                  ),
                  Text(
                    "$sliderValue cm",
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Slider(
                    value: sliderValue,
                    onChanged: UpdateSlider,
                    activeColor: Color.fromARGB(255, 144, 41, 41),
                    min: 100,
                    max: 250,
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: TextStyle(
                            color: Color.fromARGB(255, 183, 183, 183),
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "$weight",
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: DecrementWeight,
                              child: Container(
                                margin: EdgeInsets.only(top: 20),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white30,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: IncrementWeight,
                              child: Container(
                                margin: EdgeInsets.only(top: 20),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white30,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: TextStyle(
                            color: Color.fromARGB(255, 183, 183, 183),
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "$age",
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: DecrementAge,
                              child: Container(
                                margin: EdgeInsets.only(top: 20),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white30,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: IncrementAge,
                              child: Container(
                                margin: EdgeInsets.only(top: 20),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white30,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Container(
              color: Color.fromARGB(255, 206, 41, 82),
              height: 100,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "CALCULATE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
