// UOSL (enhanced)
inherits globals;

member loc Q4N2;
member list Q5DQ;

trigger creation()
{
  Q4N2 = 0x15C2, 0xC6, 0x00;
  return(0x00);
}

trigger use(obj user)
{
  if(!hasObjVar(this, "doorSwitchWorking"))
  {
    setObjVar(this, "doorSwitchWorking", 0x01);
    messageToRange(Q4N2, 0x01, "unlock", Q5DQ);
    callback(this, 0x1E, 0x26);
    return(0x01);
  }
  return(0x00);
}

trigger callback<0x26>()
{
  if(hasObjVar(this, "doorSwitchWorking"))
  {
    removeObjVar(this, "doorSwitchWorking");
    messageToRange(Q4N2, 0x01, "lockup", Q5DQ);
  }
  return(0x00);
}