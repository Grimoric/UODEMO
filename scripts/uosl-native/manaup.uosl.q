// UOSL (native)
inherits spelskil;

function void Q4KR(obj user, obj usedon)
{
  restoreMana(usedon);
  setCurMana(usedon, 0x5A);
  return();
}

trigger use
{
  targetObj(user, this);
  return(0x00);
}

trigger targetobj
{
  Q4KR(user, usedon);
  return(0x00);
}