class Chocolate {
  float chocoX;
  float chocoY;
  
  Chocolate(float tempChocoX, float tempChocoY) {
    chocoX = tempChocoX;
    chocoY = tempChocoY;
  }
  
  void display() {
    image(chocolate_class_image, chocoX, chocoY);
  }
}
