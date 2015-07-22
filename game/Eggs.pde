class Eggs {
  float eggsX;
  float eggsY;
  
  Eggs(float tempEggsX, float tempEggsY){
    eggsX = tempEggsX;
    eggsY = tempEggsY;
}

void display () {
  image(eggs_class_image, eggsX, eggsY);
  }
}
