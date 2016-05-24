// UOSL (native)
trigger speech("*")
{
  if(isObscene(arg))
  {
    systemMessage(this, "obscene");
  }
  else
  {
    systemMessage(this, "okay");
  }
  return(0x00);
}