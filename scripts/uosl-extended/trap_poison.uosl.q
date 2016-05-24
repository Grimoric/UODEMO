// UOSL (enhanced)
inherits trap_globals;

trigger creation()
{
  setObjVar(this, "trapType", 0x01);
  setObjVar(this, "trapLevel", 0x01);
  return(0x00);
}

trigger message<"removeTrap">(obj sender, list args)
{
  Q4DB();
  detachScript(this, "trap_poison");
  return(0x00);
}

trigger message<"triggerTrap">(obj sender, list args)
{
  obj user = args[0x00];
  if(Q4YA(user, this) > 0x00)
  {
    return(0x01);
  }
  barkTo(this, user, "A cloud of green gas engulfs your body!");
  int Q52T = 0x01;
  if(hasObjVar(this, "trapLevel"))
  {
    Q52T = getObjVar(this, "trapLevel");
  }
  setObjVar(user, "poison_strength", Q52T);
  attachScript(user, "poisoned");
  receiveUnhealthyActionFrom(user, this);
  Q4DB();
  detachScript(this, "trap_poison");
  return(0x01);
}