String pi;
int[] digits;
int index = 0;

void setup(){
  size (700,700);
  pi = loadStrings("piMillion.txt")[0];
  
  //println(pi.length());
  
  String[] sdigits = pi.split("");
  
  //println(sdigits.length);
  
  digits = int(sdigits);
  
  //printArray(digits);
  
    background(0);
    stroke(255);
    noFill();
    translate(width/2, height/2);
    ellipse(0,0,600,600);
    //creating the label circle
    stroke(255);
    strokeCap(SQUARE);
    noFill();
    strokeWeight(16);
    
    //variable for the lines
    int lineLenght = 36;
    int borderCap = 2;
    int currentLine = 36;
    
    for (int i = 0; i < 10; i++){
      arc(0,0,625,625,((currentLine - (lineLenght /2) + borderCap) * PI) /180,((currentLine + (lineLenght /2) - borderCap) * PI) /180);
      currentLine = currentLine + lineLenght;
    }
    //setting values for the numbers
    fill(0, 102, 153);
    textSize(20);
    rectMode(CENTER);

    for (int i = 0; i < 10; i++){
      float a1 = map(i,0,10,0,TWO_PI);
      float x1 = 300 * cos(a1);
      float y1 = 300 * sin(a1);
      text(i, x1, y1);

    }
}
void draw(){
  translate(width/2, height/2);
  int digit = digits[index];
  int nextDigit = digits[index + 1];
  index++;  
  
  float a1 = map(digit,0,10,0,TWO_PI);
  float a2 = map(nextDigit,0,10,0,TWO_PI);
  
  float x1 = 300 * cos(a1);
  float y1 = 300 * sin(a1);
  
  float x2 = 300 * cos(a2);
  float y2 = 300 * sin(a2);
  
  stroke(255);
  strokeWeight(0.5);
  line(x1, y1, x2,y2);
  
  
}
