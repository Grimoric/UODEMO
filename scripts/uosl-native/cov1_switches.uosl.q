// UOSL (native)
inherits globals;

trigger use
{
  list Q5DQ;
  messageToRange(getLocation(this), 0x0C, "switch", Q5DQ);
  return(0x00);
}

trigger message("switch")
{
  if(getObjType(this) == 0x108F)
  {
    setType(this, 0x1090);
    return(0x00);
  }
  if(getObjType(this) == 0x1090)
  {
    setType(this, 0x108F);
    return(0x00);
  }
  if(getObjType(this) == 0x1091)
  {
    setType(this, 0x1092);
    return(0x00);
  }
  if(getObjType(this) == 0x1092)
  {
    setType(this, 0x1091);
    return(0x00);
  }
  return(0x00);
}