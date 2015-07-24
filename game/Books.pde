void disbluebook() {
 if(pan_blueX > -400) {
   pan_blueX -= 700;
   blue_bookX +=700;
   
 } else {
   pan_blueX += 700;
   blue_bookX -= 700;
 }
}

void disredbook() {
 if(pan_redX < 1024) {
   pan_redX += 700;
   red_bookX -= 700;
 } else {
   pan_redX -= 700;
   red_bookX += 700;
 }
}

void cookbook() {
  if(blue_bookX > -400) {
    reset_p1_keys();
  if(keyArray[1]) {
    textSize(32);
    text("Slice the garlic (3x).", 200, 150);
    image(sm_key_blue, 130, 165);
    image(sm_key_blue, 155, 220);
    image(sm_key_blue, 180, 275);
    text("W", 155, 200);
    text("S", 180, 255);
    text("X", 205, 310);
    }
  if(keyArray[2]) {
    textSize(32);
    text("Dice the chocolate (3x).", 200, 150);
    image(sm_key_blue, 100, 220);
    image(sm_key_blue, 165, 220);
    image(sm_key_blue, 230, 220);
    text("A", 125, 255);
    text("S", 190, 255);
    text("D", 255, 255);
    }
   if(keyArray[3]) {
     textSize(32);
     text("Chop the eggs (5x).", 200, 150);
     image(sm_key_blue, 130, 165);
     image(sm_key_blue, 155, 220);
     text("W", 155, 200);
     text("S", 180, 255);
   }
   if(!keyArray[1] && !keyArray[2] && !keyArray[3]){
     textSize(32);
     text("Cookies:", 200, 125);
     text("Sliced Garlic", 200, 175);
     text("Diced Chocolate", 200, 210);
     text("Chopped Eggs", 200, 245);  
   }
     
  }
}
