// UOSL (native)
inherits sndfx;

trigger use
{
  setObjVar(user, "lastInstrument", this);
  int Q5U6;
  if(!skillTest(user, 0x1D))
  {
    Q5U6 = getObjVar(this, "badSound");
    sfx(getLocation(user), Q5U6, 0x3C);
    return(0x00);
  }
  Q5U6 = getObjVar(this, "goodSound");
  sfx(getLocation(user), Q5U6, 0x3C);
  return(0x01);
}