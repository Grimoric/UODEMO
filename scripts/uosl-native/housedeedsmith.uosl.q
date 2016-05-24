// UOSL (native)
inherits housedeed;

function void Q4WV(obj Q5AO, loc Q5CV)
{
  obj Q63A;
  if(Q5AO != NULL())
  {
    setZ(Q5CV, getZ(Q5CV) + 0x07);
    Q63A = createGlobalObjectAt(0x0FAF, Q5CV);
    Q4X0(Q63A);
    setX(Q5CV, getX(Q5CV) + 0x01);
    Q63A = createGlobalObjectAt(0x0FB1, Q5CV);
    Q4X0(Q63A);
  }
  return();
}