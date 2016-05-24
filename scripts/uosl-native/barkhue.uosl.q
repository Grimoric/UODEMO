// UOSL (native)
trigger creation
{
  int Q4XG = getHue(this);
  Q4XG = Q4XG - 0x8000;
  string blah = Q4XG;
  bark(this, blah);
  detachScript(this, "barkhue");
  return(0x01);
}