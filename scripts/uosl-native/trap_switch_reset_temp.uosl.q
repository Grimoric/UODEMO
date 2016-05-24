// UOSL (native)
inherits globals;

function int Q4TE(int Q5F8)
{
  int Q63F;
  if(Q5F8 == 0x1092)
  {
    Q63F = 0x1091;
  }
  if(Q5F8 == 0x1091)
  {
    Q63F = 0x1092;
  }
  if(Q5F8 == 0x108F)
  {
    Q63F = 0x1090;
  }
  if(Q5F8 == 0x1090)
  {
    Q63F = 0x108F;
  }
  return(Q63F);
}

trigger use
{
  int Q5F8 = getObjType(this);
  if(!hasObjVar(this, "working"))
  {
    setObjVar(this, "working", 0x01);
    int Q63F = Q4TE(getObjType(this));
    setType(this, Q63F);
    callback(this, 0x05, 0x24);
  }
  return(0x01);
}

trigger callback(0x24)
{
  if(hasObjVar(this, "working"))
  {
    removeObjVar(this, "working");
  }
  int Q63F = Q4TE(getObjType(this));
  setType(this, Q63F);
  return(0x00);
}