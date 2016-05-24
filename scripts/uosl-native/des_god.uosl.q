// UOSL (native)
trigger speech("reset")
{
  if(hasObjVar(speaker, "usedDespiseLvlOneAnkh"))
  {
    bark(this, "You have the object variable I'm looking for.");
    removeObjVar(speaker, "usedDespiseLvlOneAnkh");
  }
  return(0x00);
}