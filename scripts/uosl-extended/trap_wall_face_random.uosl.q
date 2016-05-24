// UOSL (enhanced)
trigger time<"min:**">()
{
  int Q62A = getObjType(this);
  loc Q61U = getLocation(this);
  obj target;
  list Q67G;
  int Q4GH;
  if(!hasObjVar(this, "working"))
  {
    setObjVar(this, "working", 0x01);
    switch(Q62A)
    {
    case 0x10FC:
      doLocAnimation(Q61U, 0x10FE, 0x02, 0x20, 0x00, 0x00);
      break;
    case 0x1110:
      doLocAnimation(Q61U, 0x1111, 0x02, 0x20, 0x00, 0x00);
      break;
    default:
      break;
    }
    getMobsInRange(Q67G, getLocation(this), 0x01);
    if(numInList(Q67G) != 0x00)
    {
      target = Q67G[0x00];
      Q4GH = dice(0x03, 0x0F);
      loseHP(target, Q4GH);
    }
  }
  if(hasObjVar(this, "working"))
  {
    removeObjVar(this, "working");
  }
  return(0x01);
}