// UOSL (native)
inherits globals;

trigger use
{
  loc Q4N2 = 0x14AF, 0x0244, 0x00;
  list Q5DQ;
  if(!hasObjVar(this, "working"))
  {
    setObjVar(this, "working", 0x01);
    messageToRange(Q4N2, 0x02, "unlocked", Q5DQ);
    setType(this, 0x1090);
    callback(this, 0x02, 0x24);
  }
  return(0x00);
}

trigger callback(0x24)
{
  if(hasObjVar(this, "working"))
  {
    removeObjVar(this, "working");
  }
  if(getObjType(this) == 0x1090)
  {
    setType(this, 0x108F);
  }
  return(0x00);
}