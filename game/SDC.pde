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
      keyArray[18] = false;
      actionArray[0] = false;
      actionArray[1] = false;
      actionArray[2] = false;
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
      keyArray[2] = false;
      ingredientsArray[2] = true;
      actionArray[3] = false;
      actionArray[4] = false;
      actionArray[5] = false;
    }
}
void set_p1_ingredient_chop() {
   if (!actionArray[6]) {
     actionArray[6] = true;
   } else if (actionArray[6] && !actionArray[7]) {
     actionArray[7] = true;
   } else if (actionArray[6] && actionArray[7] && !actionArray[8]) {
     actionArray[8] = true;
   } else if (actionArray[6] && actionArray[7] && actionArray[8] && !actionArray[9]) {
     actionArray[9] = true;
   } else if (actionArray[6] && actionArray[7] && actionArray[8] && actionArray[9]) {   
     actionArray[10] = true;
     println("the eggs somehow got chopped.");
     keyArray[3] = false;
     ingredientsArray[4] = true;
     actionArray[6] = false;
     actionArray[7] = false;
     actionArray[8] = false;
     actionArray[9] = false;
     actionArray[10] = false;
   }
}
