/* @pjs preload = "picture.jpg";*/

int [] cheesesticks;
int i=0;
int j=0;
int temp;

void setup(){
  size(500,500);
  cheesesticks= new int[20];
  
  for(int i=0; i<cheesesticks.length;i++){
    cheesesticks[i]= (int)random(500);
  }
  
  for (int i=0; i<cheesesticks.length;i++){
    rect(0,i*20, cheesesticks[i],10);
  }
  
  for (int i=0;i<20;i++)
    println(cheesesticks[i]);
    
}

void draw(){
 
  background(0);
 
  if (i < cheesesticks.length-1) {
     i++;
     int temp = cheesesticks[i];
     delay(800);
     int j = i;
     while (j > 0 && temp < cheesesticks[j-1]) {
       cheesesticks[j] = cheesesticks[j-1];
       j--;
     }
     cheesesticks[j] = temp;
  }
  
  
  /*for (int i = 0; i < cheesesticks.length; i++) {
        int temp = cheesesticks[i];
        int j = i;
        while (j > 0 && temp < cheesesticks[j-1]) {
            cheesesticks[j] = cheesesticks[j-1];
            j--;
        }
        cheesesticks[j] = temp;
    }*/
  
  for (int i=0; i<cheesesticks.length;i++){
    rect(0,i*20, cheesesticks[i],10);
}
}
