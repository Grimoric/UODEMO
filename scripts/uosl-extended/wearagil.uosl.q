// UOSL (enhanced)
inherits wearstat;

trigger creation()
{
  Q4HZ = 0x0A;
  return(0x01);
}

function void Q4HX(obj it)
{
  detachScript(it, "wearagil");
  return;
}