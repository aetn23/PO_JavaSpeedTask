#include "stdio.h"

size_t ack(size_t m, size_t n) {
  if (m == 0)
    return n + 1;
  else if (n == 0)
    return ack(m - 1, 1);
  else
    ack(m - 1, ack(m, n - 1));
}

int main() {
  for (size_t i = 0; i < 4; i++)
    for (size_t j = 0; j < 16; j++)
    ack(i,j);
      //printf("Ack for: (%zu, %zu): %zu\n", i, j, ack(i, j));
  return 0;
}