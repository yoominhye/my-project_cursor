#include <stdio.h>

int HeapSize;

int
parent (int i)
{
  return (i + 1) / 2;
}

int
left (int i)
{
  return 2 * i + 1;
}

int
right (int i)
{
    return 2 * i + 2;
}

void
exchange (int v[], int i, int j)
{
  int t = v[i];
  v[i] = v[j];
  v[j] = t;
}

void max_heapify (int v[], int i)
{
  int l = left (i);
  int r = right (i);
  int largest;
  if (l < HeapSize && v[l] > v[i])
    largest = l;
  else
    largest = i;
  if (r < HeapSize && v[r] > v[largest])
    largest = r;
  if (largest != i)
    {
      exchange (v, i, largest);
      max_heapify (v, largest);
    }
}

void
build_max_heap (int v[])
{
    int i;
    for (i = HeapSize / 2 - 1; i >= 0; i--)
        max_heapify (v, i);
}

void
heap_sort (int v[])
{
    int i;
    int length = HeapSize;
    build_max_heap (v);
    for (i = length - 1; i > 0; i--)
    {
        exchange (v, 0, i);
        HeapSize--;
        max_heapify (v, 0);
    }
}

int main()
{
    int v[] = {2, 9, 4, 7, 1, 5, 8, 3};
    int i;
    int length = sizeof(v) / sizeof(v[0]);
    HeapSize = length;
    heap_sort(v);
    for (i = 0; i < length; i++)
        printf("%d, ", v[i]);
    printf("\n");
    printf ("\nPress any key to end...");
    getchar ();
    return 0;
}