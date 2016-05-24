// UOSL (native)
inherits spelskil;

function int Q4K5(obj user, obj usedon)
{
  int Q5NC = 0x00;
  if(Q50G(usedon))
  {
    int Q5MJ;
    loc Q4VS = getLocation(user);
    loc there = getLocation(usedon);
    faceHere(user, getDirectionInternal(Q4VS, there));
    doMobAnimation(usedon, 0x376A, 0x09, 0x20, 0x00, 0x00);
    sfx(there, 0x0202, 0x00);
    if(hasObjVar(this, "magicItemBonus"))
    {
      Q5MJ = 0x19 + dice(0x01, 0x0A);
    }
    else
    {
      Q5MJ = (getSkillLevel(user, 0x19) / 0x0A) * 0x04 + dice(0x01, 0x0A);
    }
    int Q4FY = getCurHP(usedon);
    addHP(usedon, Q5MJ);
    int Q5CO = getCurHP(usedon);
    Q5MJ = Q5CO - Q4FY;
    string Q4PN = Q5MJ;
    if(isPlayer(user))
    {
      systemMessage(user, Q4PN + " points of damage have been healed.");
    }
    if(Q5MJ != 0x00)
    {
      int Q527 = Q41J(user, usedon, 0x00, this);
      Q5NC = 0x01;
    }
  }
  Q5UQ(this);
  return(Q5NC);
}