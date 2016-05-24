// UOSL (enhanced)
inherits housedeed;

function void Q4WV(obj Q5AO, loc Q5CV)
{
  obj Q63A;
  loc Q5IO;
  if(Q5AO != NULL())
  {
    Q5IO = Q5CV;
    changeLoc(Q5IO, 0x05, 0x02, 0x07);
    Q63A = createGlobalObjectAt(0x1061, Q5IO);
    Q4X0(Q63A);
    changeLoc(Q5IO, 0x01, 0x00, 0x00);
    Q63A = createGlobalObjectAt(0x1062, Q5IO);
    Q4X0(Q63A);
    changeLoc(Q5IO, 0x00 - 0x01, 0x01, 0x00);
    Q63A = createGlobalObjectAt(0x104A, Q5IO);
    Q4X0(Q63A);
    changeLoc(Q5IO, 0x00 - 0x01, 0x02, 0x00);
    Q63A = createGlobalObjectAt(0x1015, Q5IO);
    Q4X0(Q63A);
  }
  return;
}