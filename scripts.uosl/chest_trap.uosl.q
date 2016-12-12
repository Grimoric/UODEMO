// UOSL (native)
trigger use
{
  list Q5DQ;
  if(!hasObjVar(this, "unlocked"))
  {
    bark(this, "This chest seems to be locked.");
    return(0x00);
  }
  messageToRange(getLocation(this), 0x03, "chest_wall_fire_check", Q5DQ);
  return(0x01);
}

trigger message("chest_unlocked")
{
  int Q5DQ;
  if(!hasObjVar(this, "unlocked"))
  {
    setObjVar(this, "unlocked", Q5DQ);
  }
  return(0x00);
}

trigger message("chest_locked")
{
  if(hasObjVar(this, "unlocked"))
  {
    removeObjVar(this, "unlocked");
  }
  return(0x00);
}