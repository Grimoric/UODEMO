// UOSL (enhanced)
inherits globals;

trigger creation()
{
  attachScript(this, "trap_gas_trap");
  return(0x00);
}

trigger message<"cov_disarm">(obj sender, list args)
{
  if(hasScript(this, "trap_gas_trap"))
  {
    detachScript(this, "trap_gas_trap");
  }
  return(0x00);
}

trigger message<"cov_reload">(obj sender, list args)
{
  if(!hasScript(this, "trap_gas_trap"))
  {
    attachScript(this, "trap_gas_trap");
  }
  return(0x00);
}