// UOSL (native)
inherits spelskil;

function void Q65X()
{
  setDefaultReturn(0x01);
  Q42D(this, 0x02, 0x01);
  return();
}

trigger message("cancelmagic")
{
  Q65X();
  return(0x01);
}

trigger callback(0x6B)
{
  Q65X();
  return(0x01);
}