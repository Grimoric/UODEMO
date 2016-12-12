// UOSL (native)
inherits globals;

trigger serverswitch
{
  shortcallback(this, 0x08, 0x5E);
  return(0x01);
}

trigger callback(0x5E)
{
  sendPlayerZmoveStuff(this);
  detachScript(this, "shipnakedhack");
  return(0x01);
}