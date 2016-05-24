// UOSL (enhanced)
trigger speech<"mapdump">(obj speaker, string arg)
{
  int i = 0x00;
  string Q5N7;
  string Q63B;
  loc Q5B8;
  while(0x01)
  {
    if(!getMapPoint(Q5B8, this, i))
    {
      break;
    }
    Q5N7 = "Nav point ";
    Q63B = (i + 0x01);
    concat(Q5N7, Q63B);
    concat(Q5N7, ": ");
    Q63B = getX(Q5B8);
    concat(Q5N7, Q63B);
    concat(Q5N7, " ");
    Q63B = getY(Q5B8);
    concat(Q5N7, Q63B);
    concat(Q5N7, " ");
    bark(this, Q5N7);
    i ++;
  }
  return(0x00);
}