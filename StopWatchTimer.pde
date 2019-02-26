class StopWatchTimer {
  int startTime = 0, stopTime = 0;
  boolean running = false;  
  String dis = "start";
    
    void start() {
        startTime = millis();
        running = true;
    }
    void stop() {
        stopTime = millis();
        running = false;
        tasks[count].update(minute());
    }
    int getElapsedTime() {
        int elapsed;
        if (running) {
             elapsed = (millis() - startTime);
        }
        else {
            elapsed = (stopTime - startTime);
        }
        return elapsed;
    }
    int second() {
      return (getElapsedTime() / 1000) % 60;
    }
    int minute() {
      return (getElapsedTime() / (1000*60)) % 60;
    }
    int hour() {
      return (getElapsedTime() / (1000*60*60)) % 24;
    }
    
    void display(){
      int m = minute();
      int s =second();
      String se;
      
      if(s<10){
        se= "0"+s;
      }else{
        se=""+s;
      }
      fill(0);
      textSize(32);
      text(""+m+":"+se, 0,height-120);
      text(dis, 50,height-100);
    }
    
    void update(String a){
        dis =a;
    }
    
}