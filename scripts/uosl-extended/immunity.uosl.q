// UOSL (enhanced)
inherits globals;

function void Q434(obj Q61K, int Q4NC, int Q65M)
{
  switch(Q65M)
  {
  case 0x00:
    setObjVar(Q61K, "poisonImmunity", 0x01);
    if(Q4NC != 0x00)
    {
      callback(Q61K, Q4NC, 0x96)/* semicolon added by the decompiler post-processor */;
    }
    ;
    break;
  case 0x01:
    setObjVar(Q61K, "coldImmunity", 0x01);
    if(Q4NC != 0x00)
    {
      callback(Q61K, Q4NC, 0x97)/* semicolon added by the decompiler post-processor */;
    }
    ;
    break;
  case 0x02:
    setObjVar(Q61K, "fireImmunity", 0x01);
    if(Q4NC != 0x00)
    {
      callback(Q61K, Q4NC, 0x98)/* semicolon added by the decompiler post-processor */;
    }
    ;
    break;
  default:
    bark(Q61K, "Invalid immunity type.");
    break;
  }
  return;
}

trigger callback<0x96>()
{
  removeObjVar(this, "poisonImmunity");
  return(0x01);
}

trigger callback<0x97>()
{
  removeObjVar(this, "coldImmunity");
  return(0x01);
}

trigger callback<0x98>()
{
  removeObjVar(this, "fireImmunity");
  return(0x01);
}