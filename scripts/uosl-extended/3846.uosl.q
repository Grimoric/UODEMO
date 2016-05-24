// UOSL (enhanced)
inherits potion;

trigger creation()
{
  if(hasObjVar(this, "power"))
  {
    removeObjVar(this, "power");
  }
  return(0x00);
}

trigger use(obj user)
{
  if(!Q4H6(user))
  {
    return(0x00);
  }
  setInvisible(user, 0x00);
  int Q4YJ = 0x0E;
  doMobAnimation(user, 0x376A, 0x09, 0x20, 0x00, 0x00);
  sfx(getLocation(user), 0x01E3, 0x00);
  setLight(user, Q4YJ, 0x01);
  obj Q4NN = createGlobalObjectOn(this, 0x0F0E);
  deleteObject(this);
  return(0x00);
}