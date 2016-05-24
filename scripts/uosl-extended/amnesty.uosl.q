// UOSL (enhanced)
trigger objectloaded()
{
  setDefaultReturn(0x01);
  detachScript(this, "amnesty");
  return(0x01);
}