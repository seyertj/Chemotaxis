Bacteria[] ann;  
 void setup()   
 {     
 	size(300,300);
 	ann = new Bacteria[15];
 	for(int i = 0; i < ann.length; i++)
 	{
 		ann[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	 background(0);
 	 for(int i = 0; i < ann.length; i++)
 	 {
 	 	ann[i].walk();
 	 	ann[i].show();
 	 }
 }  
 class Bacteria
 {
 	int myX, myY;
 	Bacteria()
 {
 	myX = 150;
 	myY = 150;
 }
 void walk()
 {
 	if(mouseX > myX)
 		myX = myX + (int)(Math.random()*10)-2;
 	else
 		myX = myX + (int)(Math.random()*10)-6;
 	if(mouseY > myY)
 		myY = myY + (int)(Math.random()*10)-2;
 	else
 		myY = myY + (int)(Math.random()*10)-6;
 }
 void show()
 {
 	noStroke();
 	fill(100,200,50);
 	ellipse(myX, myY, 30, 30);
 }
}