// UOSL (native)
trigger enterrange(0x08)
{
  if(isHuman(target))
  {
    if(!isDead(target))
    {
      attack(this, target);
    }
  }
  return(0x01);
}