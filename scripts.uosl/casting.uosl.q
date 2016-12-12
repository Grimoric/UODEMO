// UOSL (native)
inherits spelskil;

member obj Q5UY;

function void Q4AR(obj it)
{
  setMobFlag(this, 0x02, 0x00);
  detachScript(it, "casting");
  return();
}

trigger creation
{
  Q5UY = getObjVar(this, "spellObj");
  removeObjVar(this, "spellObj");
  setMobFlag(this, 0x02, 0x01);
  return(0x01);
}

trigger callback(0x80)
{
  list Q5A8;
  appendToList(Q5A8, this);
  message(Q5UY, "castspell", Q5A8);
  Q4AR(this);
  return(0x00);
}

trigger callback(0x82)
{
  Q4J5(this, 0x01);
  shortcallback(this, 0x04, 0x82);
  return(0x01);
}

trigger washit
{
  int Q4IB = (Q42S(Q5UY) - 0x01) * 0x03E8 / 0x07;
  Q4IB = Q4IB + damamt * 0x14;
  int Q5NC = getSkillSuccessChance(this, 0x19, Q4IB, 0x28) - random(0x00, 0x03E7);
  if(Q5NC <= 0x00)
  {
    systemMessage(this, "Your concentration is disturbed, thus ruining thy spell.");
    Q4AR(this);
    return(0x01);
  }
  return(0x01);
}