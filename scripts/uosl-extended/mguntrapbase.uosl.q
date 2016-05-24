// UOSL (enhanced)
inherits spelskil;

function int Q4KP(obj user, obj usedon)
{
  int Q5NC = 0x00;
  if(Q50J(usedon))
  {
    loc Q4VS = getLocation(user);
    loc there = getLocation(usedon);
    faceHere(user, getDirectionInternal(Q4VS, there));
    doLocAnimation(getLocation(usedon), 0x376A, 0x09, 0x20, 0x00, 0x00);
    sfx(there, 0x01F0, 0x00);
    if(hasObjVar(usedon, "isTrapped"))
    {
      Q5NC = 0x01;
      setObjVar(usedon, "disarmed", 0x01);
    }
    else
    {
      if(hasScript(usedon, "mgtp_use"))
      {
        detachScript(usedon, "mgtp_use");
        Q5NC = 0x01;
      }
      else
      {
        barkToHued(user, user, 0x22, "That isn't trapped.");
      }
    }
  }
  Q5UQ(this);
  return(Q5NC);
}