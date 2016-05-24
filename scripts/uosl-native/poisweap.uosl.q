// UOSL (native)
trigger ishitting
{
  int x = getObjVar(this, "poison_left");
  x --;
  setObjVar(this, "poison_left", x);
  int Q4AY = (getObjVar(this, "poison_chance"));
  if(random(0x00, 0x64) < Q4AY)
  {
    int strength = (getObjVar(this, "poison_strength"));
    if((!hasObjVar(victim, "poison_strength")) && (!hasScript(victim, "poisoned")))
    {
      switch(strength)
      {
      case 0x01
      case 0x02
      case 0x03
      case 0x04
      case 0x05
        setObjVar(victim, "poison_strength", strength);
        attachScript(victim, "poisoned");
        barkTo(victim, victim, " " + getName(this) + " has just poisoned you!");
        break;
      default
        setObjVar(victim, "poison_strength", 0x01);
        attachScript(victim, "poisoned");
        barkTo(victim, victim, " " + getName(this) + " has just poisoned you!");
        break;
      }
    }
  }
  if(x <= 0x00)
  {
    detachscript(this, "poisweap");
  }
  return(0x01);
}