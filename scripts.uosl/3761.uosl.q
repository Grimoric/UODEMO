// UOSL (native)
inherits play;

trigger creation
{
  setObjVar(this, "isInstrument", 0x01);
  setObjVar(this, "goodSound", 0x43);
  setObjVar(this, "badSound", 0x44);
  return(0x00);
}