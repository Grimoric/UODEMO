// UOSL (native)
inherits wearstat;

trigger creation
{
  Q5X6 = 0x0A;
  Q4HZ = 0x0A;
  Q4YI = 0x0A;
  return(0x01);
}

function void Q4HX(obj it)
{
  detachScript(it, "wearbless");
  return();
}