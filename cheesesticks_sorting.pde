float [] cheesesticks;

void setup(){
  size(500, 500);
  cheesesticks = new float[20];

  for(int i = 0; i < cheesesticks.length; i++){
    cheesesticks[i] = random(500);
  }
}

void draw(){
  for(int i = 0; i < cheesesticks.length; i++){
    line(0, i*10, cheesesticks[i], i*10);
  }
  
  for(int i = 1; i < cheesesticks.length; i++) {
    float temp = cheesesticks[i];
    int j;
    for(j = i - 1; j >= 0 && temp < cheesesticks[j]; j--){
      cheesesticks[j+1] = cheesesticks[j];
    }
    cheesesticks[j+1] = temp;
  }
  
  background(255,255,255);
  
  for(int i = 0; i < cheesesticks.length; i++){
    line(0, i*10, cheesesticks[i], i*10);
  }
  
}
