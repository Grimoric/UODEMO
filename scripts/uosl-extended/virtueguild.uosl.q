// UOSL (enhanced)
inherits guildbase;

trigger message<"checkGuildRequirements">(obj sender, list args)
{
  int Q56Y = 0x01;
  if(getFameLevel(this) < 0x03)
  {
    Q56Y = 0x00;
  }
  else
  {
    if(isMurderer(this))
    {
      Q56Y = 0x00;
    }
  }
  setObjVar(this, "metGuildRequirements", Q56Y);
  return(0x01);
}

function void removedFromSpecialGuild()
{
  obj Q5RU = getItemAtSlot(this, 0x02);
  if(Q5RU != NULL())
  {
    list args;
    message(Q5RU, "destroyVirtueShield", args);
  }
  setDefaultReturn(0x01);
  detachScript(this, Q4RU(Q4RR()));
  return;
}

trigger message<"removedFromGuild">(obj sender, list args)
{
  removedFromSpecialGuild();
  return(0x01);
}

trigger message<"removedFromSpecialGuild">(obj sender, list args)
{
  removedFromSpecialGuild();
  return(0x01);
}

trigger message<"addedToSpecialGuild">(obj sender, list args)
{
  setObjVar(this/* comma added by the decompiler post-processor */, "displayGuildAbbr", 0x01);
  return(0x01);
}

trigger famechanged()
{
  if(getFameLevel(this) < 0x03)
  {
    systemMessage(this, "You are no longer famous enough to remain in your guild.");
    Q5MP(this);
  }
  return(0x01);
}

trigger murdercountchanged()
{
  if(isMurderer(this))
  {
    systemMessage(this, "Murderers aren't allowed in your guild.");
    Q5MP(this);
  }
  return(0x01);
}