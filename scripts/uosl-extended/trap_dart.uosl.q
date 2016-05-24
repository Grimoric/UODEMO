// UOSL (enhanced)
inherits trap_globals;

trigger creation()
{
  setObjVar(this, "trapType", 0x03);
  setObjVar(this, "trapLevel", 0x01);
  return(0x00);
}

trigger message<"removeTrap">(obj sender, list args)
{
  Q4DB();
  detachScript(this, "trap_dart");
  return(0x00);
}

trigger message<"triggerTrap">(obj sender, list args)
{
  obj user;
  user = args[0x00];
  if(Q4YA(user, this) > 0x00)
  {
    return(0x01);
  }
  barkTo(this, user, "A dart imbeds itself into your flesh.");
  int Q52T = 0x01;
  if(hasObjVar(this, "trapLevel"))
  {
    Q52T = getObjVar(this, "trapLevel");
  }
  int damage = random(0x05, 0x0F) * Q52T;
  doDamage(this, user, damage);
  Q4DB();
  detachScript(this, "trap_dart");
  return(0x01);
}