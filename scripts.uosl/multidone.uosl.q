// UOSL (native)
trigger creation
{
  list Q5AG;
  obj Q54W;
  obj Q4H5;
  Q54W = getMultiSlaveId(this);
  if(Q54W != NULL())
  {
    if(hasObjVar(Q54W, "mydeed"))
    {
      Q4H5 = getobjvar_obj(Q54W, "mydeed");
      appendToList(Q5AG, Q54W);
      message(Q4H5, "multidone", Q5AG);
    }
  }
  detachScript(this, "multidone");
  return(0x01);
}