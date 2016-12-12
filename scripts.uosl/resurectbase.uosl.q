// UOSL (native)
inherits spelskil;

function int Q4M2(obj user, obj usedon)
{
  int Q5NC = 0x00;
  if(Q41R(user, usedon))
  {
    loc Q4VS = getLocation(user);
    loc there = getLocation(usedon);
    faceHere(user, getDirectionInternal(Q4VS, there));
    doMobAnimation(usedon, 0x376A, 0x09, 0x20, 0x00, 0x00);
    sfx(there, 0x0214, 0x00);
    int Q527 = Q41J(user, usedon, 0x00, this);
    Q5NC = 0x01;
    Q426(user, usedon, 0x00, "It is possible for you to be resurrected now. Do you wish to try?");
  }
  Q5UQ(this);
  return(Q5NC);
}