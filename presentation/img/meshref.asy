import common;
unitsize(1cm);

void electron(pair center)
{
    filldraw(circle(center, 0.2), unnblue5);
    label("$-$", center, white);
}

void positron(pair center)
{
    filldraw(circle(center, 0.2), red);
    label("$+$", center, white);
}

// grid
for (int i = 0; i <= 15; i += 3)
{
    draw((i, 0)--(i, 15));
    draw((0, i)--(15, i));
}

arrowbar arr = Arrow(HookHead, 5bp);
pen parr = linewidth(0.7bp);
for (int i = 0; i <= 15; i += 3)
{
    for (int j = 0; j <= 15; j += 3)
    {
        if (i != 15 && !(i < 9 && j >= 3 && j <= 12))
        {
            dot((i + 1.5, j));
            draw((i + 1.5, j)--(i + 2.5, j), p=parr, arrow=arr);
        }
        if (j != 15 && !(j >= 3 && j < 12 && i <= 9))
        {
            dot((i, j + 1.5));
            draw((i, j + 1.5)--(i, j + 2.5), p=parr, arrow=arr);
        }
    }
}

for (int i = 1; i < 9; ++i)
{
    draw((0, i + 3)--(9, i + 3), dashed);
    draw((i, 3)--(i, 12), dashed);
}

for (int i = 1; i < 9; ++i)
{
    draw((3, 6 + i/3.0)--(6, 6 + i/3.0), dotted);
    draw((3 + i/3.0, 6)--(3 + i/3.0, 9), dotted);
}

arr = Arrow(HookHead, 2bp);
for (int i = 0; i <= 9; ++i)
{
    for (int j = 3; j <= 12; ++j)
    {
        if (i != 9)
        {
            dot((i + 0.5, j));
            draw((i + 0.5, j)--(i + 0.83, j), p=parr, arrow=arr);
        }

        if (j != 12)
        {
            dot((i, j + 0.5));
            draw((i, j + 0.5)--(i, j + 0.83), p=parr, arrow=arr);
        }
    }
}

electron((3.7, 0.9));
positron((3.7, 0.9));
electron((3.7, 0.9));
electron((10.1, 1.2));
electron((11, 6.05));
positron((14.5, 14.3));
positron((8.7, 3.2));
positron((8, 12.9));
electron((5.9, 3.8));
positron((0.75, 4.9));
electron((1.1, 13.75));
electron((2.15, 10.5));
positron((4.4, 10.7));
positron((3.05, 8.6));
electron((3.1, 6.2));
positron((3.15, 7.4));
electron((3.7, 9.4));
positron((5.75, 6.15));
positron((5.95, 9.1));
positron((5.2, 7.6));
positron((4.4, 8.12));
electron((4.8, 6.23));
electron((4.54, 8.74));
electron((4.93, 7.33));
electron((3.66, 6.89));
positron((3.94, 8.3));
positron((4.05, 6.81));
electron((4.45, 7.18));
electron((4.15, 8.01));
electron((5.35, 6.54));

