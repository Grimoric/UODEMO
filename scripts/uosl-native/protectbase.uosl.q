// UOSL (native)
inherits spelskil;

function int Q4LV(obj user, obj usedon)
{
  int Q5NC = 0x00;
  if(Q50G(usedon))
  {
    int Q4NC;
    int defenseBonus;
    loc Q4VS = getLocation(user);
    loc there = getLocation(usedon);
    faceHere(user, getDirectionInternal(Q4VS, there));
    if(!hasScript(usedon, "remprtct"))
    {
      doMobAnimation(usedon, 0x375A, 0x09, 0x14, 0x00, 0x00);
      sfx(there, 0x01ED, 0x00);
      if(hasObjVar(this, "magicItemModifier"))
      {
        int Q52W = getObjVar(this, "magicItemModifier");
        Q4NC = 0x06 * Q52W;
        defenseBonus = 0x07;
      }
      else
      {
        defenseBonus = (getSkillLevel(user, 0x19) / 0x0A);
        Q4NC = 0x06 * getSkillLevel(user, 0x19) / 0x05;
      }
      setNaturalAC(usedon, getNaturalAC(usedon) + defenseBonus);
      setObjVar(usedon, "defenseBonus", defenseBonus);
      attachScript(usedon, "remprtct");
      int Q527 = Q41J(user, usedon, 0x00, this);
      callback(usedon, Q4NC, 0x13);
      Q5NC = 0x01;
    }
  }
  Q5UQ(this);
  return(Q5NC);
}