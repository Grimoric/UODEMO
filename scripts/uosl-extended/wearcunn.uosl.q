// UOSL (enhanced)
inherits wearstat;

trigger creation()
{
  Q4YI = 0x0A;
  return(0x01);
}

function void Q4HX(obj it)
{
  detachScript(it, "wearcunn");
  return;
}