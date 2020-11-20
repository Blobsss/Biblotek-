Button buttonTerning6 = new Button(10, 10, 150, 50, "Slå med 6s terning!",this);
Button buttonTerning10 = new Button(340, 10, 150, 50, "Slå med 10s terning!",this);
Button buttonTerning15 = new Button(340,150,150,50,"slå med 15s terning!",this);
Button buttonTerning20 = new Button(10,150,150,50, "slå med 20s terning!",this);
// Her laver vi de forskellige buttons

int sum;
int terningeKast;
//de forskellige variabler vibruger gennem koden

void setup() {
  size(500, 300); 
  
  
  buttonTerning20.addAction(new Action() {   
    public void execute() {
      terningeKast = int(random(1, 21));
      sum += terningeKast;
    }
  }
  );
   buttonTerning15.addAction(new Action() {   
    public void execute() {
      terningeKast = int(random(1, 16));
      sum += terningeKast;
    }
  }
  );

  buttonTerning6.addAction(new Action() {   
    public void execute() {
      terningeKast = int(random(1, 7));
      sum += terningeKast;
    }
  }
  );

  buttonTerning10.addAction(new Action() {   
    public void execute() {
      terningeKast = int(random(1, 11));
      sum += terningeKast;
    }
  }
  );
}
//her har vi fortalt koden at vi har 4 forskellige terninger og hvad de skal slå når man trykker på dem

void draw() {
  clear();
  buttonTerning6.display();
  buttonTerning10.display();
  buttonTerning20.display();
  buttonTerning15.display();
  fill(255);
  textAlign(CENTER);
  text("Du har kastet " + terningeKast, width/2, 200);
  text("Samlet sum    " + sum, width/2, 250);
}
//her har vi tegnet de forskellige terningerr

void mousePressed() {
  buttonTerning6.click(mouseX,mouseY);
  buttonTerning10.click(mouseX,mouseY);
  buttonTerning20.click(mouseX,mouseY);
  buttonTerning15.click(mouseX,mouseY);
}
//når vi trykker på terningerne ruller de
