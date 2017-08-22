/*
Author : Ahmet Özlü
ahmetozlu93@gmail.com
*/
PImage marioimage;
PImage mariorun;
PImage mariorun2;
 
boolean isHandMovementDetectorWindowCreated = false;
int loadingScreenCounter=0;
Mario myMario;
PImage backgroundImg, hole, cloud;
int[] randomHolePosition = new int[50]; // 50 holes

int[] randomCloudPositionx = new int[50]; // 50 clouds, x positions
int[] randomCloudPositiony = new int[50]; // 50 clouds, y positions

float xPos; // x position of Mario character
float yPos; // y position of Mario character

boolean gameOver = false; 
int startTime, currentTime;

boolean didUserChooseMovementDetectorType =false;
int userChoiseForMovementDetectorType = 0;

void setup() {  
  startTime = millis();
  currentTime = 0;
  smooth();
  noStroke();
  
  marioimage = loadImage("Wing_Mario.png");
  marioimage.resize(80,80);
  
  mariorun = loadImage("mariorun.png");
  
  mariorun2 = loadImage("mariorun2.png");
  
  myMario = new Mario(50,530);
  
  backgroundImg = loadImage("game-background.jpg");
  
  hole = loadImage("hole.png");
  
  cloud = loadImage("cloud.jpg");
  
  // creating random 50 holes
  randomHolePosition[0] = 250; 
  for(int i=1; i<50; i++) {    
    randomHolePosition[i] = randomHolePosition[i-1]+int(random(150,800));
  }  
  randomHolePosition = sort (randomHolePosition);    
     
  // creating random 50 clouds
  randomCloudPositiony[0] = 25;
  randomCloudPositionx[0] = 250;  
  for(int i=1; i<50; i++) {       
    randomCloudPositionx[i] = randomCloudPositionx[i-1]+int(random(150,800));
    randomCloudPositiony[i] = randomCloudPositiony[i-1]+int(random(20,60));
  }
  randomCloudPositionx = sort (randomCloudPositionx);  
    
}

void settings() {
  size(1200,800); 
}

void initialization() {
  // creating random 50 holes
  randomHolePosition[0] = 250; 
  for(int i=1; i<50; i++) {    
    randomHolePosition[i] = randomHolePosition[i-1]+int(random(150,800));
  }  
  randomHolePosition = sort (randomHolePosition);    
     
  // creating random 50 clouds
  randomCloudPositiony[0] = 25;
  randomCloudPositionx[0] = 250;  
  for(int i=1; i<50; i++) {       
    randomCloudPositionx[i] = randomCloudPositionx[i-1]+int(random(150,800));
    randomCloudPositiony[i] = randomCloudPositiony[i-1]+int(random(20,60));
  }
  randomCloudPositionx = sort (randomCloudPositionx);
  currentTime = 0;
  startTime = millis();
}
 
void draw() {  
  surface.setLocation(660,50);
  if(didUserChooseMovementDetectorType==false){
    background(0, 175, 0);
    textSize(25);
    fill(0,0,127);
    text("Please enter 1 for activating 'fist movement detector' , enter 2 for 'hand movement detector'...",20,50);     
  }
  
  if ((userChoiseForMovementDetectorType == 1 || userChoiseForMovementDetectorType == 2) && didUserChooseMovementDetectorType == false) { 
    String[] args = {"TwoFrameTest"};
    HandMovementDetector sa = new HandMovementDetector();
    PApplet.runSketch(args, sa);
    didUserChooseMovementDetectorType=true;    
  }
  if(isHandMovementDetectorWindowCreated == false && didUserChooseMovementDetectorType ==true) {
    background(255, 204, 0);
    textSize(32);
    fill(0,0,127);
    text("Please wait, the game is loading...", 375, 50); 
  }
  if (gameOver == false && isHandMovementDetectorWindowCreated == true && didUserChooseMovementDetectorType == true) {
    background(backgroundImg);
    
    // configurating the positions of holes and drawing the holes with updated positions
    if (randomHolePosition[0] >= -75) {
      randomHolePosition[0] = randomHolePosition[0]-1;
      image(hole, randomHolePosition[0], 530,101, 92);
    }
    if (randomHolePosition[1] >= -75) {
      randomHolePosition[1] = randomHolePosition[1]-1;
      image(hole, randomHolePosition[1], 530,101, 92);
    } 
    if (randomHolePosition[2] >= -75) {
      randomHolePosition[2] = randomHolePosition[2]-1;
      image(hole, randomHolePosition[2], 530,101, 92);
    }
    if (randomHolePosition[3] >= -75) {
      randomHolePosition[3] = randomHolePosition[3]-1;
      image(hole, randomHolePosition[3], 530,101, 92);
    }
    if (randomHolePosition[4] >= -75) {
      randomHolePosition[4] = randomHolePosition[4]-1;
      image(hole, randomHolePosition[4], 530,101, 92);
    }
    if (randomHolePosition[5] >= -75) {
      randomHolePosition[5] = randomHolePosition[5]-1;
      image(hole, randomHolePosition[5], 530,101, 92);
    }
    if (randomHolePosition[6] >= -75) {
      randomHolePosition[6] = randomHolePosition[6]-1;
      image(hole, randomHolePosition[6], 530,101, 92);
    }
    if (randomHolePosition[7] >= -75) {
      randomHolePosition[7] = randomHolePosition[7]-1;
      image(hole, randomHolePosition[7], 530,101, 92);
    }
    if (randomHolePosition[8] >= -75) {
      randomHolePosition[8] = randomHolePosition[8]-1;
      image(hole, randomHolePosition[8], 530,101, 92);
    }
    if (randomHolePosition[9] >= -75) {
      randomHolePosition[9] = randomHolePosition[9]-1;
      image(hole, randomHolePosition[9], 530,101, 92);
    }
    if (randomHolePosition[10] >= -75) {
      randomHolePosition[10] = randomHolePosition[10]-1;
      image(hole, randomHolePosition[10], 530,101, 92);
    } 
    if (randomHolePosition[11] >= -75) {
      randomHolePosition[11] = randomHolePosition[11]-1;
      image(hole, randomHolePosition[11], 530,101, 92);
    }
    if (randomHolePosition[12] >= -75) {
      randomHolePosition[12] = randomHolePosition[12]-1;
      image(hole, randomHolePosition[12], 530,101, 92);
    }
    if (randomHolePosition[13] >= -75) {
      randomHolePosition[13] = randomHolePosition[13]-1;
      image(hole, randomHolePosition[13], 530,101, 92);
    }
    if (randomHolePosition[14] >= -75) {
      randomHolePosition[14] = randomHolePosition[14]-1;
      image(hole, randomHolePosition[14], 530,101, 92);
    }
    if (randomHolePosition[15] >= -75) {
      randomHolePosition[15] = randomHolePosition[15]-1;
      image(hole, randomHolePosition[15], 530,101, 92);
    }
    if (randomHolePosition[16] >= -75) {
      randomHolePosition[16] = randomHolePosition[16]-1;
      image(hole, randomHolePosition[16], 530,101, 92);
    }  
    if (randomHolePosition[17] >= -75) {
      randomHolePosition[17] = randomHolePosition[17]-1;
      image(hole, randomHolePosition[17], 530,101, 92);
    }
    if (randomHolePosition[18] >= -75) {
      randomHolePosition[18] = randomHolePosition[18]-1;
      image(hole, randomHolePosition[18], 530,101, 92);
    }
    if (randomHolePosition[19] >= -75) {
      randomHolePosition[19] = randomHolePosition[19]-1;
      image(hole, randomHolePosition[19], 530,101, 92);
    }
    if (randomHolePosition[20] >= -75) {
      randomHolePosition[20] = randomHolePosition[20]-1;
      image(hole, randomHolePosition[20], 530,101, 92);
    }
    if (randomHolePosition[21] >= -75) {
      randomHolePosition[21] = randomHolePosition[21]-1;
      image(hole, randomHolePosition[21], 530,101, 92);
    }
    if (randomHolePosition[22] >= -75) {
      randomHolePosition[22] = randomHolePosition[22]-1;
      image(hole, randomHolePosition[22], 530,101, 92);
    }  
    if (randomHolePosition[23] >= -75) {
      randomHolePosition[23] = randomHolePosition[23]-1;
      image(hole, randomHolePosition[23], 530,101, 92);
    }
    if (randomHolePosition[24] >= -75) {
      randomHolePosition[24] = randomHolePosition[24]-1;
      image(hole, randomHolePosition[24], 530,101, 92);
    }
    if (randomHolePosition[25] >= -75) {
      randomHolePosition[25] = randomHolePosition[25]-1;
      image(hole, randomHolePosition[25], 530,101, 92);
    }
    if (randomHolePosition[26] >= -75) {
      randomHolePosition[26] = randomHolePosition[26]-1;
      image(hole, randomHolePosition[26], 530,101, 92);
    }
    if (randomHolePosition[27] >= -75) {
      randomHolePosition[27] = randomHolePosition[27]-1;
      image(hole, randomHolePosition[27], 530,101, 92);
    }
    if (randomHolePosition[28] >= -75) {
      randomHolePosition[28] = randomHolePosition[28]-1;
      image(hole, randomHolePosition[28], 530,101, 92);
    }
    if (randomHolePosition[29] >= -75) {
      randomHolePosition[29] = randomHolePosition[29]-1;
      image(hole, randomHolePosition[29], 530,101, 92);
    }
    if (randomHolePosition[30] >= -75) {
      randomHolePosition[30] = randomHolePosition[30]-1;
      image(hole, randomHolePosition[30], 530,101, 92);
    }
    if (randomHolePosition[31] >= -75) {
      randomHolePosition[31] = randomHolePosition[31]-1;
      image(hole, randomHolePosition[31], 530,101, 92);
    }
    if (randomHolePosition[32] >= -75) {
      randomHolePosition[32] = randomHolePosition[32]-1;
      image(hole, randomHolePosition[32], 530,101, 92);
    }
    if (randomHolePosition[33] >= -75) {
      randomHolePosition[33] = randomHolePosition[33]-1;
      image(hole, randomHolePosition[33], 530,101, 92);
    }
    if (randomHolePosition[34] >= -75) {
      randomHolePosition[34] = randomHolePosition[34]-1;
      image(hole, randomHolePosition[34], 530,101, 92);
    }  
    if (randomHolePosition[35] >= -75) {
      randomHolePosition[35] = randomHolePosition[35]-1;
      image(hole, randomHolePosition[35], 530,101, 92);
    }
    if (randomHolePosition[36] >= -75) {
      randomHolePosition[36] = randomHolePosition[36]-1;
      image(hole, randomHolePosition[36], 530,101, 92);
    }
    if (randomHolePosition[37] >= -75) {
      randomHolePosition[37] = randomHolePosition[37]-1;
      image(hole, randomHolePosition[37], 530,101, 92);
    }
    if (randomHolePosition[38] >= -75) {
      randomHolePosition[38] = randomHolePosition[38]-1;
      image(hole, randomHolePosition[38], 530,101, 92);
    }
    if (randomHolePosition[39] >= -75) {
      randomHolePosition[39] = randomHolePosition[39]-1;
      image(hole, randomHolePosition[39], 530,101, 92);
    }
    if (randomHolePosition[40] >= -75) {
      randomHolePosition[40] = randomHolePosition[40]-1;
      image(hole, randomHolePosition[40], 530,101, 92);
    }  
    if (randomHolePosition[41] >= -75) {
      randomHolePosition[41] = randomHolePosition[41]-1;
      image(hole, randomHolePosition[41], 530,101, 92);
    }
    if (randomHolePosition[42] >= -75) {
      randomHolePosition[42] = randomHolePosition[42]-1;
      image(hole, randomHolePosition[42], 530,101, 92);
    }
    if (randomHolePosition[43] >= -75) {
      randomHolePosition[43] = randomHolePosition[43]-1;
      image(hole, randomHolePosition[43], 530,101, 92);
    }
    if (randomHolePosition[44] >= -75) {
      randomHolePosition[44] = randomHolePosition[44]-1;
      image(hole, randomHolePosition[44], 530,101, 92);
    }
    if (randomHolePosition[45] >= -75) {
      randomHolePosition[45] = randomHolePosition[45]-1;
      image(hole, randomHolePosition[45], 530,101, 92);
    }
    if (randomHolePosition[46] >= -75) {
      randomHolePosition[46] = randomHolePosition[46]-1;
      image(hole, randomHolePosition[46], 530,101, 92);
    }  
    if (randomHolePosition[47] >= -75) {
      randomHolePosition[47] = randomHolePosition[47]-1;
      image(hole, randomHolePosition[47], 530,101, 92);
    }  
    if (randomHolePosition[48] >= -75) {
      randomHolePosition[48] = randomHolePosition[48]-1;
      image(hole, randomHolePosition[48], 530,101, 92);
    }
    if (randomHolePosition[48] >= -75) {
      randomHolePosition[49] = randomHolePosition[49]-1;
      image(hole, randomHolePosition[49], 530,101, 92);
    }
    
    // configurating the positions of clouds and drawing the clouds with updated positions
    if(randomCloudPositionx[0] >= -75) {
      randomCloudPositionx[0] = randomCloudPositionx[0]-1;  
      image(cloud, randomCloudPositionx[0], randomCloudPositiony[0],101, 92);
    }  
    if(randomCloudPositionx[1] >= -75) {
      randomCloudPositionx[1] = randomCloudPositionx[1]-1;  
      image(cloud, randomCloudPositionx[1], randomCloudPositiony[1],101, 92);
    }
    if(randomCloudPositionx[2] >= -75) {
      randomCloudPositionx[2] = randomCloudPositionx[2]-1;  
      image(cloud, randomCloudPositionx[2], randomCloudPositiony[2],101, 92);
    }
    if(randomCloudPositionx[3] >= -75) {
      randomCloudPositionx[3] = randomCloudPositionx[3]-1;  
      image(cloud, randomCloudPositionx[3], randomCloudPositiony[3],101, 92);
    }
    if(randomCloudPositionx[4] >= -75) {
      randomCloudPositionx[4] = randomCloudPositionx[4]-1;  
      image(cloud, randomCloudPositionx[4], randomCloudPositiony[4],101, 92);
    }
    if(randomCloudPositionx[5] >= -75) {
      randomCloudPositionx[5] = randomCloudPositionx[5]-1;  
      image(cloud, randomCloudPositionx[5], randomCloudPositiony[5],101, 92);
    }
    if(randomCloudPositionx[6] >= -75) {
      randomCloudPositionx[6] = randomCloudPositionx[6]-1;  
      image(cloud, randomCloudPositionx[6], randomCloudPositiony[6],101, 92);
    }
    if(randomCloudPositionx[7] >= -75) {
      randomCloudPositionx[7] = randomCloudPositionx[7]-1;  
      image(cloud, randomCloudPositionx[7], randomCloudPositiony[7],101, 92);
    } 
    if(randomCloudPositionx[8] >= -75) {
      randomCloudPositionx[8] = randomCloudPositionx[8]-1;  
      image(cloud, randomCloudPositionx[8], randomCloudPositiony[8],101, 92);
    }
    if(randomCloudPositionx[9] >= -75) {
      randomCloudPositionx[9] = randomCloudPositionx[9]-1;  
      image(cloud, randomCloudPositionx[9], randomCloudPositiony[9],101, 92);
    }
    if(randomCloudPositionx[10] >= -75) {
      randomCloudPositionx[10] = randomCloudPositionx[10]-1;  
      image(cloud, randomCloudPositionx[10], randomCloudPositiony[10],101, 92);
    }
    if(randomCloudPositionx[11] >= -75) {
      randomCloudPositionx[11] = randomCloudPositionx[11]-1;  
      image(cloud, randomCloudPositionx[11], randomCloudPositiony[11],101, 92);
    }
    if(randomCloudPositionx[12] >= -75) {
      randomCloudPositionx[12] = randomCloudPositionx[12]-1;  
      image(cloud, randomCloudPositionx[12], randomCloudPositiony[12],101, 92);
    }
    if(randomCloudPositionx[13] >= -75) {
      randomCloudPositionx[13] = randomCloudPositionx[13]-1;  
      image(cloud, randomCloudPositionx[13], randomCloudPositiony[13],101, 92);
    } 
    if(randomCloudPositionx[14] >= -75) {
      randomCloudPositionx[14] = randomCloudPositionx[14]-1;  
      image(cloud, randomCloudPositionx[14], randomCloudPositiony[14],101, 92);
    }
    if(randomCloudPositionx[15] >= -75) {
      randomCloudPositionx[15] = randomCloudPositionx[15]-1;  
      image(cloud, randomCloudPositionx[15], randomCloudPositiony[15],101, 92);
    }
    if(randomCloudPositionx[16] >= -75) {
      randomCloudPositionx[16] = randomCloudPositionx[16]-1;  
      image(cloud, randomCloudPositionx[16], randomCloudPositiony[16],101, 92);
    }
    if(randomCloudPositionx[17] >= -75) {
      randomCloudPositionx[17] = randomCloudPositionx[17]-1;  
      image(cloud, randomCloudPositionx[17], randomCloudPositiony[17],101, 92);
    }
    if(randomCloudPositionx[18] >= -75) {
      randomCloudPositionx[18] = randomCloudPositionx[18]-1;  
      image(cloud, randomCloudPositionx[18], randomCloudPositiony[18],101, 92);
    }
    if(randomCloudPositionx[19] >= -75) {
      randomCloudPositionx[19] = randomCloudPositionx[19]-1;  
      image(cloud, randomCloudPositionx[19], randomCloudPositiony[19],101, 92);
    }  
    if(randomCloudPositionx[20] >= -75) {
      randomCloudPositionx[20] = randomCloudPositionx[20]-1;  
      image(cloud, randomCloudPositionx[20], randomCloudPositiony[20],101, 92);
    }
    if(randomCloudPositionx[21] >= -75) {
      randomCloudPositionx[21] = randomCloudPositionx[21]-1;  
      image(cloud, randomCloudPositionx[21], randomCloudPositiony[21],101, 92);
    }
    if(randomCloudPositionx[22] >= -75) {
      randomCloudPositionx[22] = randomCloudPositionx[22]-1;  
      image(cloud, randomCloudPositionx[22], randomCloudPositiony[22],101, 92);
    }
    if(randomCloudPositionx[23] >= -75) {
      randomCloudPositionx[23] = randomCloudPositionx[23]-1;  
      image(cloud, randomCloudPositionx[23], randomCloudPositiony[23],101, 92);
    }
    if(randomCloudPositionx[24] >= -75) {
      randomCloudPositionx[24] = randomCloudPositionx[24]-1;  
      image(cloud, randomCloudPositionx[24], randomCloudPositiony[24],101, 92);
    }
    if(randomCloudPositionx[25] >= -75) {
      randomCloudPositionx[25] = randomCloudPositionx[25]-1;  
      image(cloud, randomCloudPositionx[25], randomCloudPositiony[25],101, 92);
    }  
    if(randomCloudPositionx[26] >= -75) {
      randomCloudPositionx[26] = randomCloudPositionx[26]-1;  
      image(cloud, randomCloudPositionx[26], randomCloudPositiony[26],101, 92);
    }  
    if(randomCloudPositionx[27] >= -75) {
      randomCloudPositionx[27] = randomCloudPositionx[27]-1;  
      image(cloud, randomCloudPositionx[27], randomCloudPositiony[27],101, 92);
    }
    if(randomCloudPositionx[28] >= -75) {
      randomCloudPositionx[28] = randomCloudPositionx[28]-1;  
      image(cloud, randomCloudPositionx[28], randomCloudPositiony[28],101, 92);
    }
    if(randomCloudPositionx[29] >= -75) {
      randomCloudPositionx[29] = randomCloudPositionx[29]-1;  
      image(cloud, randomCloudPositionx[29], randomCloudPositiony[29],101, 92);
    }
    if(randomCloudPositionx[30] >= -75) {
      randomCloudPositionx[30] = randomCloudPositionx[30]-1;  
      image(cloud, randomCloudPositionx[30], randomCloudPositiony[30],101, 92);
    }
    if(randomCloudPositionx[31] >= -75) {
      randomCloudPositionx[31] = randomCloudPositionx[31]-1;  
      image(cloud, randomCloudPositionx[31], randomCloudPositiony[31],101, 92);
    }  
    if(randomCloudPositionx[32] >= -75) {
      randomCloudPositionx[32] = randomCloudPositionx[32]-1;  
      image(cloud, randomCloudPositionx[32], randomCloudPositiony[32],101, 92);
    }
    if(randomCloudPositionx[33] >= -75) {
      randomCloudPositionx[33] = randomCloudPositionx[33]-1;  
      image(cloud, randomCloudPositionx[33], randomCloudPositiony[33],101, 92);
    }
    if(randomCloudPositionx[34] >= -75) {
      randomCloudPositionx[34] = randomCloudPositionx[34]-1;  
      image(cloud, randomCloudPositionx[34], randomCloudPositiony[34],101, 92);
    }
    if(randomCloudPositionx[35] >= -75) {
      randomCloudPositionx[35] = randomCloudPositionx[35]-1;   
      image(cloud, randomCloudPositionx[35], randomCloudPositiony[35],101, 92);
    }
    if(randomCloudPositionx[36] >= -75) {
      randomCloudPositionx[36] = randomCloudPositionx[36]-1;   
      image(cloud, randomCloudPositionx[36], randomCloudPositiony[36],101, 92);
    }
    if(randomCloudPositionx[37] >= -75) {
      randomCloudPositionx[37] = randomCloudPositionx[37]-1;   
      image(cloud, randomCloudPositionx[37], randomCloudPositiony[37],101, 92);
    } 
    if(randomCloudPositionx[38] >= -75) {
      randomCloudPositionx[38] = randomCloudPositionx[38]-1;   
      image(cloud, randomCloudPositionx[38], randomCloudPositiony[38],101, 92);
    }
    if(randomCloudPositionx[39] >= -75) {
      randomCloudPositionx[39] = randomCloudPositionx[39]-1;   
      image(cloud, randomCloudPositionx[39], randomCloudPositiony[39],101, 92);
    }
    if(randomCloudPositionx[40] >= -75) {
      randomCloudPositionx[40] = randomCloudPositionx[40]-1;   
      image(cloud, randomCloudPositionx[40], randomCloudPositiony[40],101, 92);
    }
    if(randomCloudPositionx[41] >= -75) {
      randomCloudPositionx[41] = randomCloudPositionx[41]-1;   
      image(cloud, randomCloudPositionx[41], randomCloudPositiony[41],101, 92);
    }
    if(randomCloudPositionx[42] >= -75) {
      randomCloudPositionx[42] = randomCloudPositionx[42]-1;   
      image(cloud, randomCloudPositionx[42], randomCloudPositiony[42],101, 92);
    }
    if(randomCloudPositionx[43] >= -75) {
      randomCloudPositionx[43] = randomCloudPositionx[43]-1;   
      image(cloud, randomCloudPositionx[43], randomCloudPositiony[43],101, 92);
    }  
    if(randomCloudPositionx[44] >= -75) {
      randomCloudPositionx[44] = randomCloudPositionx[44]-1;   
      image(cloud, randomCloudPositionx[44], randomCloudPositiony[44],101, 92);
    }
    if(randomCloudPositionx[45] >= -75) {
      randomCloudPositionx[45] = randomCloudPositionx[45]-1;   
      image(cloud, randomCloudPositionx[45], randomCloudPositiony[45],101, 92);
    }
    if(randomCloudPositionx[46] >= -75) {
      randomCloudPositionx[46] = randomCloudPositionx[46]-1;   
      image(cloud, randomCloudPositionx[46], randomCloudPositiony[46],101, 92);
    }
    if(randomCloudPositionx[47] >= -75) {
      randomCloudPositionx[47] = randomCloudPositionx[47]-1;   
      image(cloud, randomCloudPositionx[47], randomCloudPositiony[47],101, 92);
    }
    if(randomCloudPositionx[48] >= -75) {
      randomCloudPositionx[48] = randomCloudPositionx[48]-1;   
      image(cloud, randomCloudPositionx[48], randomCloudPositiony[48],101, 92);
    }
    if(randomCloudPositionx[49] >= -75) {
      randomCloudPositionx[49] = randomCloudPositionx[49]-1;   
      image(cloud, randomCloudPositionx[49], randomCloudPositiony[49],101, 92);
    }           
      
    myMario.move();
    myMario.display(); 
    checkGameOver();  
    currentTime = millis() - startTime;    
    textSize(32);
    fill(0,0,127);
    text("Time: "+round(currentTime/1000), 20, 50);     
  }
  
}

void checkGameOver() {
  if (((0<=randomHolePosition[0] && randomHolePosition[0]<=110) &  yPos > 480) || ((0<=randomHolePosition[1] && randomHolePosition[1]<=110) &  yPos > 480) || ((0<=randomHolePosition[2] && randomHolePosition[2]<=110) &  yPos > 480) || ((0<=randomHolePosition[3] && randomHolePosition[3]<=110) &  yPos > 480) || ((0<=randomHolePosition[4] && randomHolePosition[4]<=110) &  yPos > 480) || ((0<=randomHolePosition[5] && randomHolePosition[5]<=110) &  yPos > 480) || ((0<=randomHolePosition[6] && randomHolePosition[6]<=110) &  yPos > 480) || ((0<=randomHolePosition[7] && randomHolePosition[7]<=110) &  yPos > 480) || ((0<=randomHolePosition[8] && randomHolePosition[8]<=110) &  yPos > 480) || ((0<=randomHolePosition[9] && randomHolePosition[9]<=110) &  yPos > 480) || ((0<=randomHolePosition[10] && randomHolePosition[10]<=110) &  yPos > 480) || ((0<=randomHolePosition[11] && randomHolePosition[11]<=110) &  yPos > 480) || ((0<=randomHolePosition[12] && randomHolePosition[12]<=110) &  yPos > 480) || ((0<=randomHolePosition[13] && randomHolePosition[13]<=110) &  yPos > 480) || ((0<=randomHolePosition[14] && randomHolePosition[14]<=110) &  yPos > 480) || ((0<=randomHolePosition[15] && randomHolePosition[15]<=110) &  yPos > 480) || ((0<=randomHolePosition[16] && randomHolePosition[16]<=110) &  yPos > 480) || ((0<=randomHolePosition[17] && randomHolePosition[17]<=110) &  yPos > 480) || ((0<=randomHolePosition[18] && randomHolePosition[18]<=110) &  yPos > 480) || ((0<=randomHolePosition[19] && randomHolePosition[19]<=110) &  yPos > 480) || ((0<=randomHolePosition[20] && randomHolePosition[20]<=110) &  yPos > 480) || ((0<=randomHolePosition[21] && randomHolePosition[21]<=110) &  yPos > 480) || ((0<=randomHolePosition[22] && randomHolePosition[22]<=110) &  yPos > 480) || ((0<=randomHolePosition[23] && randomHolePosition[23]<=110) &  yPos > 480) || ((0<=randomHolePosition[24] && randomHolePosition[24]<=110) &  yPos > 480) || ((0<=randomHolePosition[25] && randomHolePosition[25]<=110) &  yPos > 480) || ((0<=randomHolePosition[26] && randomHolePosition[26]<=110) &  yPos > 480) || ((0<=randomHolePosition[27] && randomHolePosition[27]<=110) &  yPos > 480) || ((0<=randomHolePosition[28] && randomHolePosition[28]<=110) &  yPos > 480) || ((0<=randomHolePosition[29] && randomHolePosition[29]<=110) &  yPos > 480) || ((0<=randomHolePosition[30] && randomHolePosition[30]<=110) &  yPos > 480) || ((0<=randomHolePosition[31] && randomHolePosition[31]<=110) &  yPos > 480) || ((0<=randomHolePosition[32] && randomHolePosition[32]<=110) &  yPos > 480) || ((0<=randomHolePosition[33] && randomHolePosition[33]<=110) &  yPos > 480) || ((0<=randomHolePosition[34] && randomHolePosition[34]<=110) &  yPos > 480) || ((0<=randomHolePosition[35] && randomHolePosition[35]<=110) &  yPos > 480) || ((0<=randomHolePosition[36] && randomHolePosition[36]<=110) &  yPos > 480) || ((0<=randomHolePosition[37] && randomHolePosition[37]<=110) &  yPos > 480) || ((0<=randomHolePosition[38] && randomHolePosition[38]<=110) &  yPos > 480) || ((0<=randomHolePosition[39] && randomHolePosition[39]<=110) &  yPos > 480) || ((0<=randomHolePosition[40] && randomHolePosition[40]<=110) &  yPos > 480) || ((0<=randomHolePosition[41] && randomHolePosition[41]<=110) &  yPos > 480) || ((0<=randomHolePosition[42] && randomHolePosition[42]<=110) &  yPos > 480) || ((0<=randomHolePosition[43] && randomHolePosition[43]<=110) &  yPos > 480) || ((0<=randomHolePosition[44] && randomHolePosition[44]<=110) &  yPos > 480) || ((0<=randomHolePosition[45] && randomHolePosition[45]<=110) &  yPos > 480) || ((0<=randomHolePosition[46] && randomHolePosition[46]<=110) &  yPos > 480) || ((0<=randomHolePosition[47] && randomHolePosition[47]<=110) &  yPos > 480) || ((0<=randomHolePosition[48] && randomHolePosition[48]<=110) &  yPos > 480) || ((0<=randomHolePosition[49] && randomHolePosition[49]<=110) &  yPos > 480)) {       
    textSize(60);
    fill(127,0,0);
    text("GAME OVER!", 400, 400);
    textSize(32);
    fill(0,0,127);
    text("please press 's' to start again", 350, 440); 
    gameOver = true;
    
  }  
  else if (((0<=randomCloudPositionx[0]) && (randomCloudPositionx[0]<=90) && (randomCloudPositiony[0] >= yPos-7) && (randomCloudPositiony[0] <= yPos+7)) || ((0<=randomCloudPositionx[1]) && (randomCloudPositionx[1]<=90) && (randomCloudPositiony[1] >= yPos-7) && (randomCloudPositiony[1] <= yPos+7)) || ((0<=randomCloudPositionx[2]) && (randomCloudPositionx[2]<=90) && (randomCloudPositiony[2] >= yPos-7) && (randomCloudPositiony[2] <= yPos+7)) || ((0<=randomCloudPositionx[3]) && (randomCloudPositionx[3]<=90) && (randomCloudPositiony[3] >= yPos-7) && (randomCloudPositiony[3] <= yPos+7)) || ((0<=randomCloudPositionx[4]) && (randomCloudPositionx[4]<=90) && (randomCloudPositiony[4] >= yPos-7) && (randomCloudPositiony[4] <= yPos+7)) || ((0<=randomCloudPositionx[5]) && (randomCloudPositionx[5]<=90) && (randomCloudPositiony[5] >= yPos-7) && (randomCloudPositiony[5] <= yPos+7)) || ((0<=randomCloudPositionx[6]) && (randomCloudPositionx[6]<=90) && (randomCloudPositiony[6] >= yPos-7) && (randomCloudPositiony[6] <= yPos+7)) || ((0<=randomCloudPositionx[7]) && (randomCloudPositionx[7]<=90) && (randomCloudPositiony[7] >= yPos-7) && (randomCloudPositiony[7] <= yPos+7)) || ((0<=randomCloudPositionx[8]) && (randomCloudPositionx[8]<=90) && (randomCloudPositiony[8] >= yPos-7) && (randomCloudPositiony[8] <= yPos+7)) || ((0<=randomCloudPositionx[9]) && (randomCloudPositionx[9]<=90) && (randomCloudPositiony[9] >= yPos-7) && (randomCloudPositiony[9] <= yPos+7)) || ((0<=randomCloudPositionx[10]) && (randomCloudPositionx[10]<=90) && (randomCloudPositiony[10] >= yPos-7) && (randomCloudPositiony[10] <= yPos+7)) || ((0<=randomCloudPositionx[11]) && (randomCloudPositionx[11]<=90) && (randomCloudPositiony[11] >= yPos-7) && (randomCloudPositiony[11] <= yPos+7)) || ((0<=randomCloudPositionx[12]) && (randomCloudPositionx[12]<=90) && (randomCloudPositiony[12] >= yPos-7) && (randomCloudPositiony[12] <= yPos+7)) || ((0<=randomCloudPositionx[13]) && (randomCloudPositionx[13]<=90) && (randomCloudPositiony[13] >= yPos-7) && (randomCloudPositiony[13] <= yPos+7)) || ((0<=randomCloudPositionx[14]) && (randomCloudPositionx[14]<=90) && (randomCloudPositiony[14] >= yPos-7) && (randomCloudPositiony[14] <= yPos+7)) || ((0<=randomCloudPositionx[15]) && (randomCloudPositionx[15]<=90) && (randomCloudPositiony[15] >= yPos-7) && (randomCloudPositiony[15] <= yPos+7)) || ((0<=randomCloudPositionx[16]) && (randomCloudPositionx[16]<=90) && (randomCloudPositiony[16] >= yPos-7) && (randomCloudPositiony[16] <= yPos+7)) || ((0<=randomCloudPositionx[17]) && (randomCloudPositionx[17]<=90) && (randomCloudPositiony[17] >= yPos-7) && (randomCloudPositiony[17] <= yPos+7)) || ((0<=randomCloudPositionx[18]) && (randomCloudPositionx[18]<=90) && (randomCloudPositiony[18] >= yPos-7) && (randomCloudPositiony[18] <= yPos+7)) || ((0<=randomCloudPositionx[19]) && (randomCloudPositionx[19]<=90) && (randomCloudPositiony[19] >= yPos-7) && (randomCloudPositiony[19] <= yPos+7)) || ((0<=randomCloudPositionx[20]) && (randomCloudPositionx[20]<=90) && (randomCloudPositiony[20] >= yPos-7) && (randomCloudPositiony[20] <= yPos+7)) || ((0<=randomCloudPositionx[21]) && (randomCloudPositionx[21]<=90) && (randomCloudPositiony[21] >= yPos-7) && (randomCloudPositiony[21] <= yPos+7)) || ((0<=randomCloudPositionx[22]) && (randomCloudPositionx[22]<=90) && (randomCloudPositiony[22] >= yPos-7) && (randomCloudPositiony[22] <= yPos+7)) || ((0<=randomCloudPositionx[23]) && (randomCloudPositionx[23]<=90) && (randomCloudPositiony[23] >= yPos-7) && (randomCloudPositiony[23] <= yPos+7)) || ((0<=randomCloudPositionx[24]) && (randomCloudPositionx[24]<=90) && (randomCloudPositiony[24] >= yPos-7) && (randomCloudPositiony[24] <= yPos+7)) || ((0<=randomCloudPositionx[25]) && (randomCloudPositionx[25]<=90) && (randomCloudPositiony[25] >= yPos-7) && (randomCloudPositiony[25] <= yPos+7)) || ((0<=randomCloudPositionx[26]) && (randomCloudPositionx[26]<=90) && (randomCloudPositiony[26] >= yPos-7) && (randomCloudPositiony[26] <= yPos+7)) || ((0<=randomCloudPositionx[27]) && (randomCloudPositionx[27]<=90) && (randomCloudPositiony[27] >= yPos-7) && (randomCloudPositiony[27] <= yPos+7)) || ((0<=randomCloudPositionx[28]) && (randomCloudPositionx[28]<=90) && (randomCloudPositiony[28] >= yPos-7) && (randomCloudPositiony[28] <= yPos+7)) || ((0<=randomCloudPositionx[29]) && (randomCloudPositionx[29]<=90) && (randomCloudPositiony[29] >= yPos-7) && (randomCloudPositiony[29] <= yPos+7)) || ((0<=randomCloudPositionx[30]) && (randomCloudPositionx[30]<=90) && (randomCloudPositiony[30] >= yPos-7) && (randomCloudPositiony[30] <= yPos+7)) || ((0<=randomCloudPositionx[31]) && (randomCloudPositionx[31]<=90) && (randomCloudPositiony[31] >= yPos-7) && (randomCloudPositiony[31] <= yPos+7)) || ((0<=randomCloudPositionx[32]) && (randomCloudPositionx[32]<=90) && (randomCloudPositiony[32] >= yPos-7) && (randomCloudPositiony[32] <= yPos+7)) || ((0<=randomCloudPositionx[33]) && (randomCloudPositionx[33]<=90) && (randomCloudPositiony[33] >= yPos-7) && (randomCloudPositiony[33] <= yPos+7)) || ((0<=randomCloudPositionx[34]) && (randomCloudPositionx[34]<=90) && (randomCloudPositiony[34] >= yPos-7) && (randomCloudPositiony[34] <= yPos+7)) || ((0<=randomCloudPositionx[35]) && (randomCloudPositionx[35]<=90) && (randomCloudPositiony[35] >= yPos-7) && (randomCloudPositiony[35] <= yPos+7)) || ((0<=randomCloudPositionx[36]) && (randomCloudPositionx[36]<=90) && (randomCloudPositiony[36] >= yPos-7) && (randomCloudPositiony[36] <= yPos+7)) || ((0<=randomCloudPositionx[37]) && (randomCloudPositionx[37]<=90) && (randomCloudPositiony[37] >= yPos-7) && (randomCloudPositiony[37] <= yPos+7)) || ((0<=randomCloudPositionx[38]) && (randomCloudPositionx[38]<=90) && (randomCloudPositiony[38] >= yPos-7) && (randomCloudPositiony[38] <= yPos+7)) || ((0<=randomCloudPositionx[39]) && (randomCloudPositionx[39]<=90) && (randomCloudPositiony[39] >= yPos-7) && (randomCloudPositiony[39] <= yPos+7)) || ((0<=randomCloudPositionx[40]) && (randomCloudPositionx[40]<=90) && (randomCloudPositiony[40] >= yPos-7) && (randomCloudPositiony[40] <= yPos+7)) || ((0<=randomCloudPositionx[41]) && (randomCloudPositionx[41]<=90) && (randomCloudPositiony[41] >= yPos-7) && (randomCloudPositiony[41] <= yPos+7)) || ((0<=randomCloudPositionx[42]) && (randomCloudPositionx[42]<=90) && (randomCloudPositiony[42] >= yPos-7) && (randomCloudPositiony[42] <= yPos+7)) || ((0<=randomCloudPositionx[43]) && (randomCloudPositionx[43]<=90) && (randomCloudPositiony[43] >= yPos-7) && (randomCloudPositiony[43] <= yPos+7)) || ((0<=randomCloudPositionx[44]) && (randomCloudPositionx[44]<=90) && (randomCloudPositiony[44] >= yPos-7) && (randomCloudPositiony[44] <= yPos+7)) || ((0<=randomCloudPositionx[45]) && (randomCloudPositionx[45]<=90) && (randomCloudPositiony[45] >= yPos-7) && (randomCloudPositiony[45] <= yPos+7)) || ((0<=randomCloudPositionx[46]) && (randomCloudPositionx[46]<=90) && (randomCloudPositiony[46] >= yPos-7) && (randomCloudPositiony[46] <= yPos+7)) || ((0<=randomCloudPositionx[47]) && (randomCloudPositionx[47]<=90) && (randomCloudPositiony[47] >= yPos-7) && (randomCloudPositiony[47] <= yPos+7)) || ((0<=randomCloudPositionx[48]) && (randomCloudPositionx[48]<=90) && (randomCloudPositiony[48] >= yPos-7) && (randomCloudPositiony[48] <= yPos+7)) || ((0<=randomCloudPositionx[49]) && (randomCloudPositionx[49]<=90) && (randomCloudPositiony[49] >= yPos-7) && (randomCloudPositiony[49] <= yPos+7))) {
    textSize(60);
    fill(127,0,0);
    text("GAME OVER!", 400, 400);
    textSize(32);
    fill(0,0,127);
    text("please press 's' to start again", 350, 440); 
    gameOver = true;
  }
}
 
//KEYBOARD INPUT
void keyPressed() {
  if (key == CODED) {
     if(keyCode == UP) {
       myMario.moveUp = true;
     }     
  }
  if(gameOver == true && key == 's')  {   
    gameOver = false;
    initialization();
  }
  if(didUserChooseMovementDetectorType==false && key == '1')  {   
    userChoiseForMovementDetectorType=1;    
  }
  else if(didUserChooseMovementDetectorType==false && key == '2')  {   
    userChoiseForMovementDetectorType=2;    
  }
}
 
void keyReleased() {
  if (key == CODED) {
     if(keyCode == UP) {
       myMario.moveUp = false;
       myMario.moveDown = true;
     }
  }
}


//PLAYER CLASS
class Mario {
  float speed = 2;
  boolean moveLeft, moveRight, moveUp, moveDown = false;
 
  Mario(float x_in, float y_in) {
    xPos = x_in;
    yPos = y_in; 
  }
 
  void display() {
    fill(255);
    noStroke();
    image(marioimage, xPos, yPos);    
  }
  
  void move() {    
    if(moveUp) yPos -= speed*3;
    if(moveDown) yPos += speed*2;
    if (yPos >= 530) {
      moveDown = false;
    }  
   }
}

import gab.opencv.*;
import processing.video.*;
import java.awt.*;

public class HandMovementDetector extends PApplet {

  Capture video;
  OpenCV opencv;
  
  boolean handDetectionPositive = false;  

  public void settings() {
    size(640, 480);
  }

  void setup() {     
    video = new Capture(this, 640/2, 480/2);
    opencv = new OpenCV(this, 640/2, 480/2);
    if(userChoiseForMovementDetectorType == 1)
      opencv.loadCascade(".\\fist.xml");    
    else if(userChoiseForMovementDetectorType == 2)
      opencv.loadCascade(".\\palm.xml");
    currentTime = 0;
    startTime = millis();
    video.start();
  }

  void draw() {
    isHandMovementDetectorWindowCreated = true;    
    surface.setLocation(0,50);
    scale(2);
    opencv.loadImage(video);
  
    image(video, 0, 0 );
  
    noFill();
    stroke(0, 255, 0);
    strokeWeight(3);
    Rectangle[] faces = opencv.detect();
    //println(faces.length);
    
    if(faces.length == 0) {
      handDetectionPositive=false;
    }
    
    for (int i = 0; i < faces.length; i++) {
      //println(faces[i].x + "," + faces[i].y);
      rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
      
      if(faces[i].x>0 && (faces[i].x+faces[i].width)<=320 && faces[i].y+faces[i].height<=50) {               
        if (yPos >= -10) {
          myMario.moveUp = true;        
          handDetectionPositive=true;
        }
      }    
      else if(faces[i].x>0 && (faces[i].x+faces[i].width)<=320 && faces[i].y<=50) {        
        if (yPos >= -10) {
          myMario.moveUp = true;        
          handDetectionPositive=true;
        }
      }    
      else {       
        handDetectionPositive=false;
      }
    }
    
    if (handDetectionPositive == false){
       if (yPos <= 530) {
           myMario.moveUp = false;
           myMario.moveDown = true;           
       }
    }             
    line(0, 50, 320, 50);
  }

  void captureEvent(Capture c) {
    c.read();
  }
}