// UOSL (native)
inherits spelskil;

member int Q5NQ;
member obj Q57L;
member obj Q57M;

function int Q4JR(obj user, obj usedon, int Q5NM)
{
  int Q5NC = 0x00;
  if(Q50G(usedon))
  {
    Q5NC = 0x01;
    int damage;
    loc Q4VS = getLocation(user);
    loc there = getLocation(usedon);
    faceHere(user, getDirectionInternal(Q4VS, there));
    doMobAnimation(usedon, 0x36BD, 0x14, 0x0A, 0x00, 0x00);
    sfx(there, 0x0207, 0x00);
    Q57M = usedon;
    Q57L = user;
    callback(this, 0x03, 0x19);
    Q5NQ = Q5NM;
    Q5UK(user, usedon, 0x02, Q5NM);
  }
  Q5UR(this, Q5NC);
  return(Q5NC);
}

trigger callback(0x19)
{
  int Q527 = Q429(this, Q57L, Q57M, 0x04, Q5NQ);
  Q5UQ(this);
  return(0x00);
}