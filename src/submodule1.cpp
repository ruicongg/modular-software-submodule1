#include "dependencies.h"

/**
 * Returns a greeting message.
 *
 * @return A greeting string
 */
std::string hello_from_submodule1() {
    return hello_from_submodule1_1() + " via submodule 1";
}
