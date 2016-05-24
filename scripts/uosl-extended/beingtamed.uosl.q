// UOSL (enhanced)
inherits globals;

trigger creation()
{
  callback(this, 0x10, 0x5C);
  return(0x00);
}

trigger callback<0x5C>()
{
  detachScript(this, "beingtamed");
  return(0x00);
}

trigger washit(obj attacker, int damamt)
{
  detachScript(this, "beingtamed");
  return(0x01);
}