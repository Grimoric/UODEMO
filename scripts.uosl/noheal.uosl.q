// UOSL (native)
inherits sk_table;

trigger callback(0x2C)
{
  detachScript(this, "noheal");
  return(0x00);
}