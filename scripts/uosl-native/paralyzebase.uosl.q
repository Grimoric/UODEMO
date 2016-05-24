// UOSL (native)
inherits spelskil;

function int Q4LI(obj user, obj usedon, int Q5NM)
{
  int Q5NC = 0x00;
  if(Q50G(usedon))
  {
    if(!getMobFlag(usedon, 0x02))
    {
      int Q4NC;
      loc Q4VS = getLocation(user);
      loc there = getLocation(usedon);
      faceHere(user, getDirectionInternal(Q4VS, there));
      if(hasObjVar(this, "magicItemModifier"))
      {
        Q4NC = 0x02 * (getObjVar(this, "magicItemModifier")) + 0x05;
      }
      else
      {
        Q4NC = (getSkillLevel(user, 0x19) / 0x0A + 0x01) * 0x02 + 0x05;
      }
      if(Q4CN(NULL(), usedon, 0x05))
      {
        Q4NC = Q4NC / 0x02;
      }
      doMobAnimation(usedon, 0x376A, 0x06, Q4NC, 0x00, 0x00);
      sfx(there, 0x0204, 0x00);
      setWaitState(usedon, Q4NC);
      int Q67T = waitState(usedon);
      setMobFlag(usedon, 0x02, 0x01);
      scriptTrig(usedon, 0x01, user);
      if(isValid(usedon))
      {
        Q422(user, usedon, 0x00, Q5NM);
        if(isValid(usedon))
        {
          Q5UK(user, usedon, 0x02, Q5NM);
          if(isValid(usedon))
          {
            attachScript(usedon, "rempara");
            callback(usedon, Q4NC, 0x0D);
          }
        }
      }
    }
  }
  Q5UQ(this);
  return(Q5NC);
}