// UOSL (enhanced)
trigger objectloaded()
{
  setDefaultReturn(0x01);
  detachScript(this, "amnesty2");
  return(0x01);
}