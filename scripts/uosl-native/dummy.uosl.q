// UOSL (native)
trigger objectloaded
{
  attachScript(this, "masterdummy");
  return(0x01);
}

trigger creation
{
  attachScript(this, "masterdummy");
  return(0x01);
}