// UOSL (native)
inherits spelskil;

trigger callback(0x2E)
{
  int newType = getObjVar(this, "newType");
  setType(this, newType);
  int Q67X = getObjVar(this, "walltype");
  int Q67U = getObjVar(this, "walldur");
  switch(Q67X)
  {
  case 0x00
    attachScript(this, "ff_trig");
    break;
  case 0x01
    attachScript(this, "pf_trig");
    break;
  case 0x02
    attachScript(this, "paf_trig");
    break;
  case 0x03
    attachScript(this, "ef_trig");
    break;
  case 0x04
    attachScript(this, "sf_trig");
    break;
  }
  attachScript(this, "destroy");
  callback(this, Q67U, 0x1E);
  return(0x00);
}