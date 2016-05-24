// UOSL (enhanced)
inherits globals;

trigger enterrange<0x00>(obj target)
{
  if(isDead(target))
  {
    return(0x01);
  }
  int Q5A2 = getObjType(this);
  if(hasObjVar(this, "working"))
  {
    return(0x01);
  }
  setObjVar(this, "working", 0x01);
  switch(Q5A2)
  {
  case 0x01:
    setType(this, 0x1122);
    setObjVar(this, "plateDown", 0x01);
    shortcallback(this, 0x01, 0x24);
    break;
  case 0x1122:
    break;
  case 0x1123:
    break;
  case 0x1124:
    break;
  default:
    break;
  }
  return(0x01);
}

trigger callback<0x24>()
{
  int Q5A2 = getObjType(this);
  if(!hasObjVar(this, "working"))
  {
    setType(this, 0x01);
    removeObjVar(this, "plateDown");
    return(0x00);
  }
  switch(Q5A2)
  {
  case 0x01:
    setType(this, 0x1122);
    shortcallback(this, 0x01, 0x24);
    break;
  case 0x1122:
    setType(this, 0x1123);
    shortcallback(this, 0x01, 0x24);
    break;
  case 0x1123:
    setType(this, 0x1124);
    removeObjVar(this, "working");
    break;
  case 0x1124:
    break;
  default:
    break;
  }
  return(0x00);
}

trigger leaverange<0x00>(obj target)
{
  removeObjVar(this, "working");
  callback(this, 0x01, 0x24);
  return(0x01);
}