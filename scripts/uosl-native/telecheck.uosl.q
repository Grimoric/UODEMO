// UOSL (native)
inherits globals;

member obj Q68D;
member loc where;
member int Q4VQ;
member int Q58C;

trigger message("telecheck")
{
  Q68D = args[0x00];
  where = args[0x01];
  Q4VQ = args[0x02];
  Q58C = args[0x03];
  callback(this, 0x00, 0x86);
  int Q527 = teleport(this, where);
  return(0x01);
}

trigger callback(0x86)
{
  int success = 0x00;
  if(getLocation(this) == where)
  {
    if(canExistAt(where, Q4VQ, Q58C) == 0x07)
    {
      success = 0x01;
    }
  }
  list Q5MM;
  if(success)
  {
    appendToList(Q5MM, 0x01);
  }
  else
  {
    appendToList(Q5MM, 0x00);
  }
  appendToList(Q5MM, where);
  multimessage(Q68D, "telereply", Q5MM);
  deleteObject(this);
  return(0x01);
}