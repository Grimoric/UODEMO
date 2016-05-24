// UOSL (native)
inherits globals;

trigger use
{
  int Q62A = getObjType(this);
  switch(Q62A)
  {
  case 0x1039
    setType(this, 0x103A);
    attachScript(this, "4154");
    detachScript(this, "4153");
    break;
  case 0x1045
    setType(this, 0x1046);
    attachScript(this, "4166");
    detachScript(this, "4165");
    break;
  }
  return(0x00);
}