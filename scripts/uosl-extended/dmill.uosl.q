// UOSL (enhanced)
inherits housedeed;

function void Q4WV(obj Q5AO, loc Q5CV)
{
  obj Q63A;
  if(Q5AO != NULL())
  {
    loc Q5IO;
    Q5IO = Q5CV;
    changeLoc(Q5IO, 0x05, 0x00 - 0x06, 0x07);
    Q63A = createGlobalObjectAt(0x0943, Q5IO);
    Q4X0(Q63A);
    changeLoc(Q5IO, 0x00 - 0x01, 0x00, 0x00);
    Q63A = createGlobalObjectAt(0x0944, Q5IO);
    Q4X0(Q63A);
    changeLoc(Q5IO, 0x01, 0x00, 0x15);
    Q63A = createGlobalObjectAt(0x08D2, Q5IO);
    Q4X0(Q63A);
    Q5IO = Q5CV;
    changeLoc(Q5IO, 0x03, 0x00, 0x08);
    Q63A = createGlobalObjectAt(0x192C, Q5IO);
    Q4X0(Q63A);
    changeLoc(Q5IO, 0x00, 0x01, 0x00);
    Q63A = createGlobalObjectAt(0x192E, Q5IO);
    Q4X0(Q63A);
    changeLoc(Q5IO, 0x00, 0x01, 0x00);
    Q63A = createGlobalObjectAt(0x1937, Q5IO);
    Q4X0(Q63A);
  }
  return;
}