// UOSL (native)
inherits spelskil;

function int Q4KS(obj user, obj usedon, int Q5NM)
{
  int Q5NC = 0x00;
  if(Q50G(usedon))
  {
    loc Q4VS = getLocation(user);
    loc there = getLocation(usedon);
    faceHere(user, getDirectionInternal(Q4VS, there));
    doMobAnimation(usedon, 0x374A, 0x0A, 0x0F, 0x00, 0x00);
    sfx(there, 0x01F9, 0x00);
    if(!Q4CN(user, usedon, 0x07))
    {
      int Q5YR = getCurMana(usedon);
      int Q4AQ = getCurMana(user);
      setCurMana(user, Q5YR + Q4AQ);
      setCurMana(usedon, 0x00);
      scriptTrig(usedon, 0x01, user);
    }
    Q422(user, usedon, 0x00, Q5NM);
    Q5UK(user, usedon, 0x02, Q5NM);
    Q5NC = 0x01;
  }
  Q5UQ(this);
  return(Q5NC);
}