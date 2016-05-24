// UOSL (enhanced)
inherits sndfx;

trigger ooruse(obj user)
{
  member obj Q646 = user;
  setObjVar(user, "oldBodyType", getObjType(user));
  setObjVar(user, "oldHue", getHue(user));
  setType(user, 0x3B);
  callBack(this, 0x0A, 0xC8);
  return(0x01);
}

trigger callback<0xC8>()
{
  setType(Q646, (getObjVar(Q646, "oldBodyType")));
  return(0x01);
}