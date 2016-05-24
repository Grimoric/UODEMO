// UOSL (native)
inherits globals;

trigger callback(0x47)
{
  seance(this, 0x00);
  removeObjVar(this, "seance_setting");
  detachScript(this, "seance_user");
  systemMessage(this, "You feel your contacts with the netherworld fade.");
  return(0x00);
}

trigger serverswitch
{
  if(hasObjVar(this, "seance_setting"))
  {
    seance(this, 0x01);
  }
  return(0x01);
}