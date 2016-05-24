// UOSL (enhanced)
trigger use(obj user)
{
  int Q62A = getObjType(this);
  loc Q61U = getLocation(this);
  switch(Q62A)
  {
  case 0x0C4F:
  case 0x0C50:
  case 0x0C51:
  case 0x0C52:
  case 0x0C53:
  case 0x0C54:
    obj Q4EG = createNoResObjectAt(0x0DF9, Q61U);
    transferResources(Q4EG, this, 0x0A, "cloth");
    deleteObject(this);
    break;
  case 0x0C55:
  case 0x0C56:
  case 0x0C57:
  case 0x0C58:
  case 0x0C59:
  case 0x0C5A:
  case 0x0C5B:
    obj Q68H = createNoResObjectAt(0x1EBD, Q61U);
    transferResources(Q68H, this, 0x0A, "flour");
    int Q5L6 = random(0x00, 0x01) + 0x0DAE;
    setType(this, Q5L6);
    string Q5X3 = Q62A;
    detachscript(this, Q5X3);
    break;
  case 0x0C61:
  case 0x0C62:
  case 0x0C63:
    Q5L6 = random(0x00, 0x01) + 0x0D39;
    setType(this, Q5L6);
    string Q65J = Q5L6;
    attachscript(this, Q65J);
    detachscript(this, Q5X3);
    break;
  case 0x0C76:
    Q5L6 = random(0x00, 0x01) + 0x0C77;
    setType(this, Q5L6);
    string Q4AH = Q5L6;
    attachscript(this, Q4AH);
    detachscript(this, Q5X3);
    break;
  case 0x0C6F:
    Q5L6 = random(0x00, 0x01) + 0x0C6D;
    setType(this, Q5L6);
    string Q5GB = Q5L6;
    attachscript(this, Q5GB);
    detachscript(this, Q5X3);
    break;
  case 0x1A99:
  case 0x1A9A:
  case 0x1A9B:
    int Q4PR = random(0x00, 0x01) + 0x1A9C;
    obj flax = createNoResObjectAt(Q4PR, Q61U);
    transferResources(flax, this, 0x0A, "flax");
    deleteObject(this);
    break;
  }
  return(0x00);
}