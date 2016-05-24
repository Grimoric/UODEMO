// UOSL (enhanced)
inherits spelskil;

member int Q5NQ;
member obj Q57L;
member obj Q57M;

function int Q4KG(obj user, obj usedon, int Q5NM)
{
  int Q5NC = 0x00;
  if(Q50G(usedon))
  {
    int damage;
    loc Q4VS = getLocation(user);
    loc there = getLocation(usedon);
    faceHere(user, getDirectionInternal(Q4VS, there));
    doLightning(usedon);
    sfx(there, 0x29, 0x00);
    Q57M = usedon;
    Q57L = user;
    Q5UK(user, usedon, 0x02, Q5NM);
    callback(this, 0x01, 0x19);
    Q5NQ = Q5NM;
    Q5NC = 0x01;
  }
  Q5UR(this, Q5NC);
  return(Q5NC);
}

trigger callback<0x19>()
{
  if(!isValid(Q57M))
  {
    return(0x00);
  }
  int Q527 = Q429(this, Q57L, Q57M, 0x02, Q5NQ);
  Q5UQ(this);
  return(0x00);
}