// UOSL (enhanced)
trigger creation()
{
  int Q642 = getObjType(this);
  if(Q642 == 0x0FA9)
  {
    deleteObject(this);
  }
  return(0x01);
}