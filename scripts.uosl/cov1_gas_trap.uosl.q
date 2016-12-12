// UOSL (native)
inherits globals;

trigger creation
{
  attachScript(this, "trap_gas_trap");
  return(0x00);
}

trigger message("cov_disarm")
{
  if(hasScript(this, "trap_gas_trap"))
  {
    detachScript(this, "trap_gas_trap");
  }
  return(0x00);
}

trigger message("cov_reload")
{
  if(!hasScript(this, "trap_gas_trap"))
  {
    attachScript(this, "trap_gas_trap");
  }
  return(0x00);
}