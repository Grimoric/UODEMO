// UOSL (native)
trigger use
{
  int Q4AY = (getObjVar(this, "poison_chance"));
  if(Q4AY == 0x00)
  {
    Q4AY = 0x32;
  }
  if(random(0x00, 0x64) < Q4AY)
  {
    int strength = (getObjVar(this, "poison_strength"));
    if((!hasObjVar(user, "poison_strength")) && (!hasScript(user, "poisoned")))
    {
      if(strength < 0x01)
      {
        strength = 0x01;
      }
      if(strength > 0x05)
      {
        strength = 0x05;
      }
      setObjVar(user, "poison_strength", strength);
      attachScript(user, "poisoned");
      receiveUnhealthyActionFrom(user, this);
      systemMessage(user, "That " + getName(this) + " was poisoned!");
    }
  }
  setDefaultReturn(0x01);
  detachscript(this, "poisfood");
  return(0x01);
}