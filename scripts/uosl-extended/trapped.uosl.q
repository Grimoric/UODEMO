// UOSL (enhanced)
inherits globals;

trigger message<"TRAP">(obj sender, list args)
{
  obj victim = args[0x00];
  string Q58D = args[0x01];
  string me = "blah";
  if(hasObjVar(this, "TrapTheMessage"))
  {
    me = getObjVar(this, "TrapTheMessage");
  }
  if(me != Q58D)
  {
    return(0x00);
  }
  if(hasObjVar(this, "TrapDoesAnim"))
  {
    int Q465 = getObjVar(this, "TrapDoesAnim");
    switch(Q465)
    {
    default:
      bark(this, "Nothing visible happens.");
      break;
    case 0x01:
      bark(this, "Eerie sparklies hover over " + getName(this) + ".");
      break;
    case 0x02:
      bark(this, "A fiery explosion results!");
      break;
    case 0x03:
      bark(this, "A puff of smoke goes up!");
      break;
    }
  }
  if(hasObjVar(this, "TrapPoisonLevel"))
  {
    int Q5JA = getObjVar(this, "TrapPoisonLevel");
    barkTo(this, victim, "A tiny needle jabs at your finger!");
    int Q5J9 = getObjVar(this, "TrapPoisonLevel");
    setObjVar(victim, "poison_strength", Q5J9);
  }
  if(hasObjVar(this, "TrapDamage"))
  {
    loseHP(victim, getObjVar(this, "TrapDamage"));
    bark(this, "You are hurt!");
  }
  if(hasObjVar(this, "TrapTeleportLoc"))
  {
    loc Q4VS = getObjVar(this, "TrapTeleportLoc");
    int Q64U = teleport(victim, Q4VS);
  }
  else
  {
    bark(this, "No teleportation set on trap.");
  }
  return(0x00);
}