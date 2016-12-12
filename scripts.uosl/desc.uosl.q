// UOSL (native)
trigger speech("descr")
{
  string desc;
  loc Q5M7;
  loc Q4VS = getLocation(speaker);
  int x = (getLocalizedDesc(desc, Q5M7, Q4VS, Q4VS));
  bark(this, desc);
  return(0x00);
}