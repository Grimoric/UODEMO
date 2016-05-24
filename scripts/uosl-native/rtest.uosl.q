// UOSL (native)
trigger use
{
  initArrayFromFile(0x029A, 0x00, 0x00, "womarray.txt");
  for(int i = 0x00; i < getArrayHeight(0x029A); i ++)
  {
    debugMessage(":" + getArrayIntElem(0x029A, 0x00, i) + "," + getArrayIntElem(0x029A, 0x01, i) + "," + getArrayStrElem(0x029A, 0x02, i) + ":");
  }
  return(0x00);
}