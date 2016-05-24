// UOSL (enhanced)
inherits shrine;

trigger creation()
{
  Q5T1 = 0x00;
  return(0x01);
}

trigger objectloaded()
{
  Q5T1 = 0x00;
  return(0x01);
}