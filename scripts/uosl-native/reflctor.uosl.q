// UOSL (native)
inherits spelskil;

trigger callback(0x16)
{
  loseFatigue(this, 0x0A);
  return(0x00);
}