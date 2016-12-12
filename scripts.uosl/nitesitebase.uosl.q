// UOSL (native)
inherits spelskil;

function int Q4LF(obj user, obj usedon)
{
  int Q5NC = 0x00;
  if(Q50G(usedon))
  {
    loc Q4VS = getLocation(user);
    loc there = getLocation(usedon);
    faceHere(user, getDirectionInternal(Q4VS, there));
    int Q4YJ = 0x01 + (getSkillLevel(usedon, 0x19) / 0x04);
    doMobAnimation(usedon, 0x376A, 0x09, 0x20, 0x00, 0x00);
    sfx(there, 0x01E3, 0x00);
    setLight(usedon, Q4YJ, 0x01);
    Q5NC = 0x01;
    int Q527 = Q41J(user, usedon, 0x00, this);
  }
  Q5UQ(this);
  return(Q5NC);
}