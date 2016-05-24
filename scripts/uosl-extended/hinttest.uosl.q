// UOSL (enhanced)
inherits hintupdate;

trigger creation()
{
  int first;
  first = random(0x01, 0x0384);
  callback(this, first, 0x2A)/* semicolon added by the decompiler post-processor */;
  return(0x01);
}

trigger callback<0x2A>()
{
  hintupdate(0x01, this);
  callback(this, 0x0384, 0x2A)/* semicolon added by the decompiler post-processor */;
  return(0x01);
}