// UOSL (enhanced)
inherits play;

trigger creation()
{
  setObjVar(this, "isInstrument", 0x01);
  setObjVar(this, "goodSound", 0x38);
  setObjVar(this, "badSound", 0x39);
  return(0x00);
}