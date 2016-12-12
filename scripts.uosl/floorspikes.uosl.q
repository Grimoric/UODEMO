// UOSL (native)
inherits sndfx;

trigger creation
{
  setObjVar(this, "isTrapped", 0x01);
  return(0x00);
}

trigger enterrange(0x00)
{
  list Q5DQ;
  if(!hasObjVar(this, "disarmed"))
  {
    setType(this, 0x11A1);
    sfx(getLocation(this), 0x022C, 0x00);
    loseHP(target, dice(0x01, 0x06) * 0x06);
    shortcallback(this, 0x01, 0x23);
  }
  else
  {
    callback(this, 0x64, 0x2F);
  }
  return(0x01);
}

trigger message("fs_disarm")
{
  int Q5DQ;
  if(!hasObjVar(this, "disarmed"))
  {
    setType(this, 0x11A0);
    setObjVar(this, "disarmed", Q5DQ);
  }
  return(0x00);
}

trigger message("fs_reload")
{
  int Q5DQ;
  if(hasObjVar(this, "disarmed"))
  {
    setType(this, 0x11A0);
    removeObjVar(this, "disarmed");
  }
  return(0x00);
}

trigger callback(0x2F)
{
  int Q5DQ;
  if(hasObjVar(this, "disarmed"))
  {
    setType(this, 0x11A0);
    removeObjVar(this, "disarmed");
  }
  return(0x00);
}

trigger callback(0x23)
{
  setType(this, 0x11A5);
  setObjVar(this, "disarmed", 0x01);
  callback(this, 0x05, 0x24);
  return(0x00);
}

trigger callback(0x24)
{
  setType(this, 0x11A4);
  setType(this, 0x11A3);
  setType(this, 0x11A2);
  setType(this, 0x11A1);
  setType(this, 0x11A0);
  removeObjVar(this, "disarmed");
  return(0x00);
}