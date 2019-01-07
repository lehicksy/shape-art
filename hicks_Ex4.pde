/*Lauren Hicks
/ Polygon function from https://processing.org/examples/regularpolygon.html
/ The rest is written from scratch. 
/ Code draws shapes at random positions when keys are pressed.
/ The number of the key you press corresponds with the number of vertices the shape has.
/ Adjective: TURBULENT (I chose this adjective because the program is highly random)
*/

//Variables to control random position of shapes
int a= (int(random(0, 640)));
int b= (int(random(0, 360)));
int c= (int(random(0, 640)));
int d= (int(random(0, 360)));
//Variables to control random colours
int col1 = (int(random(0, 255)));
int col2 = (int(random(0, 255)));
int col3 = (int(random(0, 255)));

void setup() 
{
  size(640, 360);
  background(255); // sets a white background. I made the background white as to not clash with the colours of the shapes. 
}

void draw() 
{
  // If statements to control drawings when keys 1-9 are pressed 
  if (keyPressed) // I decided to use the number keys to make the program more user-friendly. 
  {
    if (key == '1') //Draws a dot when the 1 key is pressed
    {
    noStroke();
    ellipse(a, b, 3, 3); // I chose to use "ellipse" instead of "point" because point was too small and it was difficult to distinguish the colours. 
    fill(col1, col2, col3);
    //Only the first colour is changed to maintain a nice colour scheme 
    col1 = (int(random(0, 255)));
    } 
    else if (key == '2') //Draws a line when the 2 key is pressed
    {
      stroke(col1, col2, col3);
      //I made the length of the line random to add more randomness to the program 
      line(a, b, c, d);
      col1 = (int(random(0, 255)));
    }  
    else if (key == '3') //Draws a triangle when the 3 key is pressed
    {
      noStroke();
      polygon(a, b, 30, 3);
      fill(col1, col2, col3);
      col1 =(int(random(0, 255)));
    } 
    else if (key == '4') //Draws a square when the 4 key is pressed
    {
      noStroke();
      polygon(a, b, 30, 4);
      fill(col1, col2, col3);
      col1 =(int(random(0, 255)));
    } 
    else if (key == '5') //Draws a pentagon when the 5 key is pressed
    {
      noStroke();
      polygon(a, b, 30, 5);
      fill(col1, col2, col3);
      col1 =(int(random(0, 255)));
    } 
    else if (key == '6') // Draws a hexagon when the 6 key is pressed
    {
      noStroke();
      polygon(a, b, 30, 6);
      fill(col1, col2, col3);
      col1 =(int(random(0, 255)));
    } 
    else if (key == '7') //Draws a heptagon when the 7 key is pressed
    {
      noStroke();
      polygon(a, b, 30, 7);
      fill(col1, col2, col3);
      col1 =(int(random(0, 255)));
    } 
    else if (key == '8') //Draws an octagon when the 8 key is pressed
    {
      noStroke();
      polygon(a, b, 30, 8);
      fill(col1, col2, col3);
      col1 =(int(random(0, 255)));
    } 
    else if (key == '9') //Draws a nonagon when the 9 key is pressed
    {
      noStroke();
      polygon(a, b, 30, 9);
      fill(col1, col2, col3);
      col1 =(int(random(0, 255)));
    } 
    //The next 2 'if' statements cause the screen to clear when 'c' is pressed and the colour scheme to reset when 'r' is pressed. 
    //It is easier to press 'r' or 'c' than to close the program and reload it. 
    else if (key == 'C' | key == 'c') //Clears the screen when the 'C' key is pressed
    {
      background(255);
    } 
    else if (key == 'R' | key == 'r')
    {
      //I chose to add this to display the different colour schemes possible with this code.
      col1 = (int(random(0, 255)));
      col2 = (int(random(0, 255)));
      col3 = (int(random(0, 255)));
    }  
  }

//Randomizes the position variables so the position of the shape will be different next time. 
// I chose to randomize the positions to create a pattern over time. 
a = (int(random(0, 640)));
b = (int(random(0, 360)));
c= (int(random(0, 640)));
d= (int(random(0, 360)));
}

//This function is the only part of the program not written from scratch. 
void polygon(float x, float y, float radius, int npoints) 
{
  //Draws a regular polygon given location, radius, and number of sides
  //I chose to make it draw regular polygons instead of irregular to maintain a nice pattern. 
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) 
  {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
