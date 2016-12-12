// UOSL (native)
trigger use
{
  bark(this, "I have been used.");
  callback(this, 0x05, 0x01);
  return(0x00);
}

trigger callback(0x01)
{
  bark(this, "Five seconds have past since I have been used");
  return(0x00);
}