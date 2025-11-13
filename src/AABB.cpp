template<typename T1,typename T2>
bool RectVsRect(const T1& r1,const T1& r2)
{
    T2 pos1 = r1.getPosition();
    T2 size1 = r1.getSize();

    T2 pos2 = r2.getPosition();
    T2 size2 = r2.getSize();

    return (pos1.x < pos2.x + size2.x &&
            pos1.x + size1.x > pos2.x &&
            pos1.y < pos2.y + size2.y &&
            pos1.y + size1.y > pos2.y);
}