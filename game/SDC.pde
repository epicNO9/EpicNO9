void set_p1_ingredient_slice() {
    if (!actionArray[0]){
      actionArray[0] = true;
    } else if (actionArray[0] && !actionArray[1]) {
      actionArray[1] = true;
    } else if (actionArray[0] && actionArray[1]) {
      actionArray[2] = true;
      println("Garlic is sliced to perfection");
      keyArray[1] = false;
      ingredientsArray[0] = true;
    }
   
}
void set_p1_ingredient_dice() {
    if (!actionArray[3]) {
      actionArray[3] = true;
    } else if (actionArray[3] && !actionArray[4]) {
      actionArray[4] = true;
    } else if (actionArray[3] && actionArray[4]) {
      actionArray[5] = true;
      println("the chocolate is diced");
      keyArray[4] = false;
      ingredientsArray[2] = true;
    }
}
