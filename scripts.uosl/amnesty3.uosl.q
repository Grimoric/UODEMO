// UOSL (native)
trigger objectloaded
{
  setDefaultReturn(0x01);
  detachScript(this, "amnesty3");
  return(0x01);
}