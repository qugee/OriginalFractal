public int j;
public void setup() {
	size(800,800);
	noFill();
	background(0,0,0);
	stroke(0);
	strokeWeight(2);
	oFractal(650,780,1,1,275,650,780);
}
public void draw() {
}
public void mousePressed()
{
		
		j++;
		if(j%2==0)
		{
			background(0);
			stroke(255);
			strokeWeight(1);
			bFractal(650,780,1,1,275,650,780);
		}
		else
		{
			background(0,0,0);
			stroke(0);
			strokeWeight(2);
			oFractal(650,780,1,1,275,650,780);
		}
	
}
public void oFractal(float x,float y, float z, float a, float n, float k, float l) {
	float b = x;
	float c = y;
	stroke(random(256),random(256),random(256));
	line(k,l,x,y);
	if(n>1)
	{
		oFractal(x+(float)(Math.sin(n)*1.5*n),y+(float)(Math.cos(n)*1.5*n),z+0.05,a+0.05,n-1,b,c);
	}
}
public void bFractal(float x,float y, float z, float a, float n, float k, float l) {
	
	stroke(random(256),random(256),random(256));
	line(k,l,x,y);
	rect(x,y,z,a);
	if(n>1)
	{
		bFractal(x+(float)(Math.sin(n)*1.5*n),y+(float)(Math.cos(n)*1.5*n),z+0.05,a+0.05,n-1,x+(float)(Math.sin(n+1)*1.5*(n+1)),y+(float)(Math.cos(n+1)*1.5*(n+1)));
	}
}
