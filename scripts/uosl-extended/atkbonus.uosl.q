// UOSL (enhanced)
inherits spelskil;

member int Q688;
member int Q471;

trigger equip(obj equippedon)
{
  list Q57J = 0x0F4F, 0x0F50, 0x13B1, 0x13B2, 0x13FC, 0x13FD;
  int weapon = getObjType(this);
  for(int Q624 = 0x00; Q624 < numInList(Q57J); Q624 ++)
  {
    int Q4GB = Q57J[Q624];
    if(Q4GB == weapon)
    {
      Q688 = 0x01;
    }
  }
  int mod;
  if(Q688 == 0x01)
  {
    mod = modifySkillMod(equippedon, 0x1F, Q471);
  }
  else
  {
    mod = modifySkillMod(equippedon, 0x1B, Q471);
  }
  return(0x01);
}

trigger unequip(obj unequippedfrom)
{
  int mod;
  if(Q688 == 0x01)
  {
    mod = modifySkillMod(unequippedfrom, 0x1F, (0x00 - Q471));
  }
  else
  {
    mod = modifySkillMod(unequippedfrom, 0x1B, (0x00 - Q471));
  }
  return(0x01);
}