// UOSL (native)
inherits sndfx;

member obj Q62D;

trigger use
{
  doLocAnimation(getLocation(user), 0x3709, 0x0A, 0x1E, 0x00, 0x00);
  sfx(getLocation(user), 0x54, 0x05);
  shortcallback(this, 0x04, 0x41);
  Q62D = user;
  return(0x00);
}

trigger callback(0x41)
{
  setInvisible(Q62D, 0x00);
  int Q4Q1 = teleport(Q62D, getLocation(Q62D));
  return(0x00);
}