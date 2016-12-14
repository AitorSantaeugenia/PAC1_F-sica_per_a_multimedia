//Variables
//En cream per la parabola 2 i la 3 que ens demana l'anunciat
int ball_radius,ball_radius2,ball_radius3;
float ball_y,ball_y3,ball_y2;
float ball_y0,ball_y02,ball_y03;
float ball_x,ball_x2,ball_x3;
float ball_x0,ball_x02,ball_x03;
float time,time2,time3;
float v_0,v_02,v_03;
float angle,angle2,angle3;
float a,a2,a3 ;

  
//Inici programa
void setup() {
  //Mides escenari
  size(600, 600);
  frameRate (70);
  smooth();
  
  //Parametres pilota 1
  ball_radius = 20;  //Mida (radi)
  ball_y = 250.0;
  ball_y0 = 250.0;
  ball_x = 250.0;     
  ball_x0 = 150.0;    
  time = 0.0;
  v_0= 50 ;
  angle = PI/4 ;
  a = 10 ;
  
  //Parametres pilota 2 - MÉS AMUNT
  ball_radius2 = 5;  //Mida (radi)
  ball_y2 = 250.0;
  ball_y02 = 250.0;
  ball_x2 = 250.0;     
  ball_x02 = 150.0;    
  time2 = 0.0;
  v_02= 60 ;
  angle2 = PI/4 ;
  a2 = 10 ;  
  
  //Parametres pilota 3 - MËS ENFORA
  ball_radius3 = 10;  //Mida (radi)
  ball_y3 = 250.0;
  ball_y03 = 250.0;
  ball_x3 = 250.0;   
  ball_x03 = 150.0;   
  time3 = 0.0;
  v_03= 80 ;
  angle3 = PI/4;
  a3 = 10 ;
}

//Inici dibuix parabola
void draw() {
  //color fons
  background(0.10);
  //color pilota
  fill (255,255,255);

ellipse (ball_x, ball_y, ball_radius, ball_radius);
ball_x = ball_x0 + v_0*cos(angle)*time ;
ball_y = ball_y0 - v_0*sin(angle)*time +a/2*sq(time) ;
time = time + 0.07;                                              //Podem modificar el temps per veure major diferència

ellipse (ball_x2, ball_y2, ball_radius2, ball_radius2);
ball_x2 = ball_x02 + v_02*cos(angle2)*time2 ;
ball_y2 = ball_y02 - v_02*sin(angle2)*time2 +a2/2*sq(time2) ;
time2 = time2 + 0.07;                                            //Modifiquem temps per que vagi més rapida que les demés

ellipse (ball_x3, ball_y3, ball_radius3, ball_radius3);
ball_x3 = ball_x03 + v_03*cos(angle3)*time3 ;
ball_y3 = ball_y03 - v_03*sin(angle3)*time3 +a3/2*sq(time3) ;
time3 = time3 + 0.07;                                           //Modifiquem temps per que vagi més lent que la 1
}