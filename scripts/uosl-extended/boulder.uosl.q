// UOSL (enhanced)
trigger creation()
{
  setType(this, 0x11B6);
  return(0x00);
}

trigger speech<"*">(obj speaker, string arg)
{
  int Q4FS = getX(getLocation(this));
  int Q4FT = getY(getLocation(this));
  int Q4FU = getZ(getLocation(this));
  loc Q5C0;
  if(arg == "w" || (arg == "west"))
  {
    Q5C0 = (Q4FS - 0x01), Q4FT, Q4FU;
  }
  if(arg == "e" || (arg == "east"))
  {
    Q5C0 = (Q4FS + 0x01), Q4FT, Q4FU;
  }
  if(arg == "n" || (arg == "north"))
  {
    Q5C0 = Q4FS, (Q4FT - 0x01), Q4FU;
  }
  if(arg == "s" || (arg == "south"))
  {
    Q5C0 = Q4FS, (Q4FT + 0x01), Q4FU;
  }
  if(arg == "implode" || (arg == "Andrew"))
  {
    setType(this, 0x11A6);
    return(0x00);
  }
  if(arg == "boulder")
  {
    setType(this, 0x11B6);
    return(0x00);
  }
  if(!teleport(this, Q5C0))
  {
    return(0x00);
  }
  return(0x01);
}