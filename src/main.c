#include <stdio.h>
#include "utils.h"
#include "math.h"
#include "driver.h"

int main() {
    print_message("Hello from Utils!");
    int result = add(10, 20);
    printf("[MAIN] Sum: %d\n", result);
    run_driver();
    return 0;
}