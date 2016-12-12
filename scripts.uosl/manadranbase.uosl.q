// UOSL (native)
inherits spelskil;

function int Q4KQ(obj user, obj usedon, int Q5NM)
{
  int Q5NC = 0x00;
  if(Q50G(usedon))
  {
    Q5NC = 0x01;
    loc Q4VS = getLocation(user);
    loc there = getLocation(usedon);
    faceHere(user, getDirectionInternal(Q4VS, there));
    doMobAnimation(usedon, 0x374A, 0x0A, 0x0F, 0x00, 0x00);
    sfx(there, 0x01F8, 0x00);
    if(!Q4CN(user, usedon, 0x04))
    {
      setCurMana(usedon, 0x00);
      scriptTrig(usedon, 0x01, user);
    }
    Q422(user, usedon, 0x00, Q5NM);
    Q5UK(user, usedon, 0x02, Q5NM);
  }
  Q5UQ(this);
  return(Q5NC);
}