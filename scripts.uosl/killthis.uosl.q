// UOSL (native)
trigger use
{
  bark(this, "who do I kill???");
  targetObj(user, this);
  return(0x00);
}

trigger targetobj
{
  attack(this, usedon);
  attack(usedon, this);
  bark(this, "Attack!");
  bark(usedon, "Hurrah! Let's kill!");
  return(0x00);
}