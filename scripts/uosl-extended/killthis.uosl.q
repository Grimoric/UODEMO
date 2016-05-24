// UOSL (enhanced)
trigger use(obj user)
{
  bark(this, "who do I kill???");
  targetObj(user, this);
  return(0x00);
}

trigger targetobj(obj user, obj usedon)
{
  attack(this, usedon);
  attack(usedon, this);
  bark(this, "Attack!");
  bark(usedon, "Hurrah! Let's kill!");
  return(0x00);
}