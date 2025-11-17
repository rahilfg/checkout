#include <stdio.h>
#include "utils.h"
#include "math.h"
#include "driver.h"

int main() {
    print_message("Hello from Utils!");
    int result1 = add(10, 20);
    printf("[MAIN] Sum: %d\n", result1);
    int result2 = multi(10, 20);
    printf("[MAIN] Product: %d\n", result2);
    run_driver();
    return 0;
}