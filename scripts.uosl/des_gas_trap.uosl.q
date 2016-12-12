// UOSL (native)
inherits sndfx;

member loc Q4VS;

trigger creation
{
  Q4VS = getLocation(this);
  return(0x00);
}

trigger enterrange(0x02)
{
  if(!hasObjVar(this, "working"))
  {
    setObjVar(this, "working", 0x01);
    doLocAnimation(Q4VS, 0x11A7, 0x05, 0x17, 0x00, 0x00);
    callback(this, 0x01, 0x24);
    sfx(Q4VS, 0x0230, 0x00);
  }
  removeObjVar(this, "working");
  return(0x01);
}

trigger enterrange(0x00)
{
  int damage;
  if(!hasObjVar(this, "working"))
  {
    setObjVar(this, "working", 0x01);
    doLocAnimation(Q4VS, 0x11A7, 0x05, 0x17, 0x00, 0x00);
    sfx(Q4VS, 0x0230, 0x00);
  }
  damage = random(0x02, 0x08);
  loseHP(target, damage);
  return(0x01);
}

trigger callback(0x24)
{
  list Q67I;
  int damage;
  getMobsInRange(Q67I, Q4VS, 0x03);
  if(numInList(Q67I) == 0x00)
  {
    if(hasObjVar(this, "working"))
    {
      removeObjVar(this, "working");
    }
    return(0x00);
  }
  doLocAnimation(Q4VS, 0x11A7, 0x05, 0x17, 0x00, 0x00);
  sfx(Q4VS, 0x0230, 0x00);
  callback(this, 0x01, 0x24);
  clearList(Q67I);
  getMobsInRange(Q67I, Q4VS, 0x02);
  if(numInList(Q67I) > 0x00)
  {
    for(int i = 0x00; i < numInList(Q67I); i ++)
    {
      damage = random(0x02, 0x08);
      loseHP(Q67I[i], damage);
    }
  }
  return(0x01);
}