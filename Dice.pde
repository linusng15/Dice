void setup()
{
	size(300,300);
	noLoop();
	background(0);
}

void draw()
{
//your code here
	for (int y= 10; y < 250; y = y + 60)
	{
		for(int x = 10; x < 301; x = x + 60)
		{
			Die hi = new Die(x,y);
			hi.show();
			hi.roll();
		}
	}
	
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX,myY,numDots;
	Die(int x, int y) //constructor
	{	
		roll();
		myX=x;
		myY=y;
		
		//variable initializations here
	}
	void roll()
	{
		numDots = (int)((Math.random()*6)+1);	
	}
	void show()
	{
		fill(200);
		rect(myX,myY,40,40,2);
		;
		if(numDots==1)
		{	
			fill(100);
			ellipse(myX+20,myY+20,5,5);
		}	
		if(numDots==2)
		{	
			fill(100);
			ellipse(myX+20,myY+13,5,5);
			ellipse(myX+20,myY+26,5,5);
		}	
		if (numDots==3)
    	{
     		fill(100);
     		ellipse(myX+13,myY+13,5,5);
      		ellipse(myX+26,myY+13,5,5);
      		ellipse(myX+13,myY+26,5,5);
    	}
    	if(numDots==4)
    	{
    		fill(100);
      		ellipse(myX+13,myY+13,5,5);
      		ellipse(myX+26,myY+13,5,5);
      		ellipse(myX+13,myY+26,5,5);
    		ellipse(myX+26,myY+26,5,5);
    	}
    	if(numDots==5)
    	{
      		fill(100);
      		ellipse(myX+13,myY+10,5,5);
     		ellipse(myX+13,myY+20,5,5);
     		ellipse(myX+26,myY+10,5,5);
     		ellipse(myX+26,myY+20,5,5);
      		ellipse(myX+13,myY+30,5,5);
    }
    if(numDots==6)
    	{
      		fill(100);
      		ellipse(myX+13,myY+10,5,5);
      		ellipse(myX+13,myY+20,5,5);
      		ellipse(myX+13,myY+30,5,5);
      		ellipse(myX+26,myY+10,5,5);
      		ellipse(myX+26,myY+20,5,5);
      		ellipse(myX+26,myY+30,5,5);
   	 	}	
    
		//your code here
	}
}
