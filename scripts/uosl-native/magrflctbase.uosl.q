// UOSL (native)
inherits spelskil;

function int Q4KN(obj user, obj usedon)
{
  int Q5NC = 0x00;
  if((!Q50G(usedon)) || (hasScript(usedon, "reflctor")))
  {
    Q4RD(user);
  }
  else
  {
    int Q4NC;
    loc Q4VS = getLocation(user);
    loc there = getLocation(usedon);
    faceHere(user, getDirectionInternal(Q4VS, there));
    Q5NC = 0x01;
    doMobAnimation(usedon, 0x375A, 0x0A, 0x0F, 0x00, 0x00);
    sfx(there, 0x01E9, 0x00);
    if(getSkillLevel(user, 0x19) < 0x0A)
    {
      Q4NC = 0x0A;
    }
    else
    {
      Q4NC = 0x0A * getSkillLevel(user, 0x19) / 0x05;
    }
    attachScript(usedon, "reflctor");
    callback(usedon, Q4NC, 0x16);
  }
  Q5UQ(this);
  return(Q5NC);
}