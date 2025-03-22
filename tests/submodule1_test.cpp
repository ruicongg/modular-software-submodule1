#include "../src/submodule1.h"
#include <gtest/gtest.h>

TEST(Submodule1Test, HelloTest) {
    std::string result = hello_from_submodule1();
    EXPECT_EQ(result, "Hello from submodule 1_1 via submodule 1");
}
