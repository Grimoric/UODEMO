// UOSL (enhanced)
trigger use(obj user)
{
  if(isDead(user))
  {
    return(0x00);
  }
  if(hasObjVar(this, "inUse"))
  {
    ebarkTo(this, user, "Someone else is already using those dice.");
    return(0x00);
  }
  setObjVar(this, "inUse", 0x01);
  int Q4I6 = dice(0x01, 0x06);
  int Q4I7 = dice(0x01, 0x06);
  int Q63R = Q4I6 + Q4I7;
  string Q4I8 = Q4I6;
  string Q4I9 = Q4I7;
  string Q5XE = Q63R;
  string Q47T = getName(user) + " shakes the cup and spills the dice. The dice come to a stop showing a " + Q4I8 + " and a " + Q4I9 + " for a total of " + Q5XE + ".";
  ebark(this, Q47T);
  removeObjVar(this, "inUse");
  return(0x00);
}