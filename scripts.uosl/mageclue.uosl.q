// UOSL (native)
inherits sndfx;

member loc Q4VK;
member loc Q4VL;
member int Q453;
member obj marker;
member obj subject;
member obj Q5YF;
member obj Q5YG;
member obj Q46H;
member obj Q46I;
member int Q4XY;

forward void Q4JS();

trigger message("activate")
{
  list Q5Y2;
  int i = 0x00;
  marker = this;
  getMobsAt(Q5Y2, getLocation(this));
  subject = Q5Y2[i];
  Q4JS();
  return(0x00);
}

trigger callback(0x2F)
{
  if(isValid(Q46H))
  {
    deleteObject(Q46H);
  }
  switch(Q453)
  {
  case 0x01
    Q46H = createGlobalObjectAt(0x1EEC, Q4VK);
    shortcallback(marker, 0x02, 0x2F);
    Q453 = 0x02;
    break;
  case 0x02
    Q5YF = createGlobalObjectAt(0x1EF3, Q4VK);
    barkToHued(Q5YF, subject, 0x22, "Start as the sun and move with time. Consider A FEW before the elements are placed, for a lack of order can bring Relvinian's bane.");
    Q453 = 0x03;
    callback(marker, 0x09, 0x2F);
    break;
  case 0x03
    deleteObject(Q5YF);
    Q46I = createGlobalObjectAt(0x1EEC, Q4VL);
    Q453 = 0x04;
    shortcallback(marker, 0x02, 0x2F);
    break;
  case 0x04
    deleteObject(Q46I);
    Q5YG = createGlobalObjectAt(0x1EF3, Q4VL);
    barkToHued(Q5YG, subject, 0x22, "Once thy decision has been made, proceed to the altar and between the flames pronounce the Master's name.");
    Q453 = 0x05;
    callback(marker, 0x09, 0x2F);
    break;
  case 0x05
    deleteObject(Q5YG);
    Q4XY = 0x00;
    break;
  default
    break;
  }
  return(0x00);
}

function void Q4JS()
{
  Q4VK = 0x0469, 0x08B7, 0x1E;
  Q4VL = 0x0469, 0x08B5, 0x1E;
  Q453 = 0x01;
  if(Q4XY == 0x00)
  {
    Q4XY = 0x01;
    shortcallback(marker, 0x01, 0x2F);
  }
  return();
}