boolean mouthOpen = true;  // 初期は閉じてる
void setup() {
  size(400, 400);
  strokeWeight(2);
}
void draw(){
  background(255);
  
   if (mouthOpen) {
   // 顔の外側（水色）
  fill(1,160,233);
  ellipse(200, 200, 300, 300);

  // 顔の内側（白）
  fill(255);
  ellipse(200, 229, 270, 240);
    // 目（白、上に突き出す）
  fill(255);
  ellipse(170, 115, 60, 75);  // 左目
  ellipse(230, 115, 60, 75);  // 右目
  
   // 黒目（大きめ）
  fill(0);
  ellipse(180, 120, 25, 30);  // 左
   // 黒目（右）
  noFill();     // 塗りつぶしなし
  stroke(0);   // 黒の線
  arc(220, 120, 25, 25,PI,TWO_PI);  // 上向きアーチ
  
    // 目の光（小さい）
  fill(255);
  ellipse(185, 120, 10, 15);  // 左
  
    // 鼻（赤）
  fill(253,0,15);
  ellipse(200, 155, 35, 35);
  
      // 鼻（白）
  noStroke();    
  fill(255);
  ellipse(195, 149, 10, 10);
  
    // 鼻下の線
  stroke(0);
  line(200, 173, 200, 325);


  // 口（にっこり）
  noFill();
  stroke(0);
  arc(200, 220, 230, 210,0,PI);
  line(75, 225, 95, 215);
  line(305, 215, 325, 225);
  
   // ひげ
  stroke(0);
  line(80, 150, 160, 170);
  line(80, 180, 160, 180);
  line(80, 210, 160, 190);

  line(320, 150, 240, 170);
  line(320, 180, 240, 180);
  line(320, 210, 240, 190);
 }else{
   // 顔の外側（水色）
  fill(1,160,233);
  ellipse(200, 200, 300, 300);

  // 顔の内側（白）
  fill(255);
  ellipse(200, 229, 270, 240);
   //aiteru
    // 目（白、上に突き出す）
  fill(255);
  ellipse(170, 115, 60, 75);  // 左目
  ellipse(230, 115, 60, 75);  // 右目
  
   // 黒目（大きめ）
  fill(0);
  ellipse(180, 120, 25, 30);  // 左
  ellipse(220, 120, 25, 30);  // 右
  
    // 目の光（小さい）
  fill(255);
  ellipse(185, 120, 10, 15);  // 左
  ellipse(215, 120, 10, 15);  // 右
  
    // 鼻（赤）
  fill(253,0,15);
  ellipse(200, 155, 35, 35);
  
      // 鼻（白）
  noStroke();    
  fill(255);
  ellipse(195, 149, 10, 10);
  
    // 鼻下の線
  stroke(0);
  line(200, 173, 200, 225);


  // 口（半円）
  stroke(0);
  fill(253,0,15);
  arc(200, 220, 230, 210, 0, PI, CHORD);
  
   // 口（半円）
  noStroke();
  fill(233,93,28);
  arc(200, 289, 150, 70, 0, PI, CHORD);
  
    // 舌（小さめ & 口の中に収める）
  noStroke();
  fill(233,93,28);
  arc(200, 290, 150, 90, PI, TWO_PI, CHORD);
  // ひげ
  stroke(0);
  line(80, 150, 160, 170);
  line(80, 180, 160, 180);
  line(80, 210, 160, 190);

  line(320, 150, 240, 170);
  line(320, 180, 240, 180);
  line(320, 210, 240, 190);
 }
}
// マウスを押したときに mouthOpen を切り替え
void mousePressed() {
  mouthOpen = !mouthOpen;
}
