// UOSL (native)
trigger message("barknow")
{
  string Q5ZM = args[0x00];
  bark(this, Q5ZM);
  return(0x00);
}