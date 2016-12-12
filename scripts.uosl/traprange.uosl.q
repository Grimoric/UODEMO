// UOSL (native)
trigger enterrange(0x01)
{
  if(isDead(target))
  {
    return(0x01);
  }
  string Q58D;
  if(hasObjVar(this, "TrapMessageRange"))
  {
    int range = getObjVar(this, "TrapMessageRange");
    if(hasObjVar(this, "TrapTheMessage"))
    {
      Q58D = getObjVar(this, "TrapTheMessage");
    }
    else
    {
      Q58D = "blah";
    }
    list Q4OK = target, Q58D;
    messageToRange(getLocation(this), range, "TRAP", Q4OK);
  }
  return(0x01);
}