// UOSL (enhanced)
trigger use(obj user)
{
  targetObj(user, this);
  return(0x00);
}

trigger targetobj(obj user, obj usedon)
{
  doMissile_Mob2Mob(user, usedon, 0x20F5, 0x01, 0x00, 0x00);
  return(0x00);
}