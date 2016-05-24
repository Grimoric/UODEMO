// UOSL (enhanced)
inherits sndfx;

trigger callback<0x1E>()
{
  bark(this, "You are unworthy of wielding me.");
  loc where = getLocation(this);
  doLocAnimation(where, 0x3728, 0x0A, 0x0A, 0x00, 0x00);
  sfx(where, 0x01FE, 0x00);
  deleteObject(this);
  return(0x01);
}

function void Q4HV()
{
  shortcallback(this, 0x01, 0x1E);
  return;
}

trigger message<"destroyVirtueShield">(obj sender, list args)
{
  Q4HV();
  return(0x01);
}

trigger creation()
{
  int Q4Q1 = makeValueless(this);
  return(0x01);
}

trigger objectloaded()
{
  int Q4Q1 = makeValueless(this);
  return(0x01);
}