// UOSL (native)
trigger use
{
  int n = 0x00 - 0x01;
  list a = 0x120E, 0x00, n, n, 0x00, 0x120F, 0x00, 0x00, n, 0x00, 0x1210, 0x00, 0x01, n, 0x00, 0x1211, 0x00, 0x01, 0x00, 0x00, 0x1212, 0x00, 0x01, 0x01, 0x00, 0x1213, 0x00, 0x00, 0x01, 0x00, 0x1214, 0x00, n, 0x01, 0x00, 0x1215, 0x00, n, 0x00, 0x00, 0x1216, 0x00, 0x00, 0x00, 0x00;
  targetLocObjList(user, this, 0x00, 0x00, 0x00, a);
  return(0x01);
}