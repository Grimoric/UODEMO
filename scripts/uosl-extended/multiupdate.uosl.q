// UOSL (enhanced)
inherits globals;

trigger creation()
{
  multiCompSetSendSlave(this, 0x01);
  shortCallback(this, 0x01, 0x37);
  return(0x01);
}

trigger callback<0x37>()
{
  int Q5NC = teleport(this, getLocation(this));
  detachScript(this, "multiupdate");
  return(0x01);
}