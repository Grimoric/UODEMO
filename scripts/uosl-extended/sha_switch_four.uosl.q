// UOSL (enhanced)
inherits globals;

trigger use(obj user)
{
  list Q5DQ;
  loc trapLocation = 0x153E, 0xB8, 0x00;
  if(!hasObjVar(this, "switchWorking"))
  {
    setObjVar(this, "switchWorking", 0x01);
    messageToRange(trapLocation, 0x05, "disarm", Q5DQ);
    callback(this, 0x1E, 0x26);
    return(0x01);
  }
  return(0x00);
}

trigger callback<0x26>()
{
  list Q5DQ;
  loc trapLocation = 0x153E, 0xB8, 0x00;
  if(hasObjVar(this, "switchWorking"))
  {
    removeObjVar(this, "switchWorking");
    messageToRange(trapLocation, 0x05, "reset", Q5DQ);
  }
  return(0x00);
}