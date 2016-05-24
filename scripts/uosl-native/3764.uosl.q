// UOSL (native)
inherits play;

trigger creation
{
  setObjVar(this, "isInstrument", 0x01);
  setObjVar(this, "goodSound", 0x4C);
  setObjVar(this, "badSound", 0x4D);
  return(0x00);
}