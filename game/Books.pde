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
