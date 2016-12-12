// UOSL (native)
inherits play;

trigger creation
{
  setObjVar(this, "isInstrument", 0x01);
  setObjVar(this, "goodSound", 0x52);
  setObjVar(this, "badSound", 0x53);
  return(0x00);
}