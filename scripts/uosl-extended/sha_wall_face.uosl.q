// UOSL (enhanced)
trigger message<"fireInTheHole">(obj sender, list args)
{
  int Q62A = getObjType(this);
  loc Q61U = getLocation(this);
  list Q67G;
  getMobsInRange(Q67G, Q61U, 0x01);
  if(numInList(Q67G) != 0x00)
  {
    obj target = Q67G[0x00];
  }
  if(!hasObjVar(this, "disarmed"))
  {
    switch(Q62A)
    {
    case 0x10FC:
      doLocAnimation(Q61U, 0x10FE, 0x02, 0x10, 0x00, 0x00);
      break;
    case 0x1110:
      doLocAnimation(Q61U, 0x1111, 0x02, 0x10, 0x00, 0x00);
      break;
    default:
      break;
    }
    int Q4GH = dice(0x03, 0x0F);
    loseHP(target, Q4GH);
  }
  return(0x01);
}