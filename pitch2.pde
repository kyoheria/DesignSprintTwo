//function demo 
// 12hr work time window==  12min (just for the demo)
//(1hr=1min)
//start and stop buttons to know when they are starting and ending
//phase two will be getting user input to set the estimet time 



//she gets 1hr break twice (2hr)
int restNum = 2;
int restTime = 1;
//9hr work (task class in the array)
int numTask = 9;
int numTotal = 11;
Task[] tasks;
int count=0;
boolean running =false;

StopWatchTimer timeStamp = new StopWatchTimer();

void setup() { 
  
  tasks = new Task[12];
  int task =1;
  for(int i = 1; i<=numTotal+1; i++){
     if(i%4 ==0){
       tasks[i-1] = new Task(1, "rest", true);
     }else{
       tasks[i-1] = new Task(1, "task"+task, false);
       task++;
    }
  }
  
  
  size(200, 820);
  background(255);
}
void draw() {
  pushMatrix();
  
  for(int i = 0; i<numTotal+1; i++){
     float hi = tasks[i].display();
     translate(0, hi);
  }
  popMatrix();
  fill(255,0,0);
  rect(0,height-150,200,100);
  timeStamp.display(); 
}

void mouseClicked(){
  //int est = timeStamp.minute();
  if(running){
    tasks[count].update(2);
    println("trying");
    count++;
    timeStamp.stop();
    timeStamp.update("stop");
     
  }else{
    timeStamp.start();
    timeStamp.update("stop");
  }
}
  