// UOSL (enhanced)
inherits globals;

trigger use(obj user)
{
  loc Q4N2 = 0x158D, 0xB2, 0x00;
  list Q5DQ;
  if(!hasObjVar(this, "working"))
  {
    setObjVar(this, "working", 0x01);
    messageToRange(Q4N2, 0x0A, "unlock", Q5DQ);
    setType(this, 0x108D);
    callback(this, 0x01, 0x24);
  }
  return(0x00);
}

trigger callback<0x24>()
{
  int Q5A2 = getObjType(this);
  int newType;
  loc Q4N2 = 0x158D, 0xB2, 0x00;
  list Q5DQ;
  switch(Q5A2)
  {
  case 0x108D:
    newType = 0x108C;
    callback(this, 0x01, 0x24);
    break;
  case 0x108C:
    newType = 0x108E;
    callback(this, 0x3C, 0x24);
    break;
  case 0x108E:
    newType = Q5A2;
    removeObjVar(this, "working");
    messageToRange(Q4N2, 0x01, "reset", Q5DQ);
    break;
  }
  setType(this, newType);
  return(0x00);
}