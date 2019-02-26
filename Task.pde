class Task {
  float time;
  String name;
  boolean done = false;
  boolean rest;
  int hour;
  int min;
  
  Task(int t, String n, boolean r){
    time = t;
    name = n;
    rest =r;
  }
  float display(){
    if(rest){
      fill(0,150,0);
      
    }else{
      fill(0,0,200);
    }
    rect(0,0,200,time*50);
    fill(0);
    text(name, 0,0,200,time*50);
    text(""+time+"min", 90,0,200,time*50);
    float r = time*50;
    return r;
  }
  
  void update(float newA){
    time = newA;
    println("updating");
  }
  
}