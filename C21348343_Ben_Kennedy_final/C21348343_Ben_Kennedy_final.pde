//int genders= {m,f,h,n};
//int names = new int[5];
//names[0] = bart;
//names[1] = epic;
//names[2] = lord;
//names[3] = guy;
//names[4] =fellur;

float m;




float lengt = random(1,10);
float limb = random(1,4);
float eyes = random(0,9);
float colour = random(0,255);
float jump = 50;
float x = 50;
float y = 20;

void setup()
{
  colorMode(HSB);
  size(1000,1000);
  background(0);
  stroke(255);

noLoop();
}

void draw(){
  fill(colour,200,200);
  body();
  gend();
  eye();
  text();
}
void body(){
while (x <= lengt*50){
 circle(width/2,x+50,50);
 if (limb <=2)
{
 
  line(450,x+50,550,x+50);
}
 x = x + jump;
 
}
}
void gend() {
//  float gender = { "m","f", "h", "n"};
//float list = random(gender); 
float gender = random(0,4);
 //if (list == 'm' );
 if(gender >=0 && gender <=1){

  circle(width/2,x+50,30);
  line(width/2,x,width/2,x+50);
  

}else if  (gender >1 && gender <= 2 ) {
  circle(width/2,x,25);

}else if (gender >2 && gender<= 3){
   circle(width/2,x+50,30);
  line(width/2,x,width/2,x+50);
   circle(width/2,x,25);
}else{
  println(gender);
}
}
void mousePressed() {
  x += 1;
  redraw();
}

void eye(){
while (y <= eyes*20){
 circle(400+y,50,10);
 line(400+y,50,500,100);
 
 y = y + jump;


}
}
void text(){
String[] words = { "Bart", "fellur", "garfeilf", "feddy" };
int naming = int(random(words.length));  // Same as int(random(4))

println(words[naming]);  // Prints one of the four words
textSize(128);
text(words[naming], 40, 700);
}
