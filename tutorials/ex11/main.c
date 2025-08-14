#include <stdio.h>
#include "add42.h"

int main() {
    int result;
    result = add42(30); // return value must be in EAX
    printf("Result: %i\n", result);
    return 0;
}