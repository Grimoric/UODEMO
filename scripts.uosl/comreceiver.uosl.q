// UOSL (native)
inherits guildbase;

function void Q4DQ()
{
  list args;
  appendToList(args, getLocation(this));
  multiMessageToLoc(getRelayLoc(this), "collect", args);
  return();
}

trigger online
{
  Q4DQ();
  return(0x01);
}

trigger serverswitch
{
  Q4DQ();
  return(0x01);
}

trigger message("requestCollection")
{
  Q4DQ();
  return(0x01);
}