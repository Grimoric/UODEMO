// UOSL (native)
inherits potion;

trigger use
{
  if(!Q4H6(user))
  {
    return(0x00);
  }
  if(Q4NQ(user) == 0x00)
  {
    return(0x00);
  }
  setInvisible(user, 0x00);
  int power = 0x01;
  if(hasObjVar(this, "power"))
  {
    power = getObjVar(this, "power");
  }
  if((hasScript(user, "poisoned")) || (hasObjVar(user, "poison_strength")))
  {
    systemMessage(user, "You are already poisoned.");
  }
  else
  {
    setObjVar(user, "poison_strength", power);
    attachScript(user, "poisoned");
  }
  obj Q4NN = createGlobalObjectOn(this, 0x0F0E);
  destroyOne(this);
  return(0x00);
}