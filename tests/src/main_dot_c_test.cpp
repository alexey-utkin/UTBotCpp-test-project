/*
 * This file is automatically generated by UnitTestBot. For further information see https://www.utbot.org
 */

#include "main_dot_c_test.h"

#include "gtest/gtest.h"
namespace UTBot {


#pragma region regression
TEST(regression, foo12_test_1)
{
    int actual = foo12(2);
    EXPECT_EQ(0, actual);
}

TEST(regression, opp_test_1)
{
    int actual = opp(2);
    EXPECT_EQ(0, actual);
}

#pragma endregion
#pragma region error
TEST(error, foo12_test_2)
{
    foo12(0);
}

TEST(error, opp_test_2)
{
    opp(0);
}

TEST(error, main_test_1)
{
    char _argv[2][2] = {{'c', 'c'}, {'c', 'c'}};
    char ** argv = (char **) calloc(3, sizeof(char *));
    for (int it_8_0 = 0; it_8_0 < 2; it_8_0 ++) {
        argv[it_8_0] = _argv[it_8_0];
    }
    argv[2] = NULL;
    main(0, argv);
}

#pragma endregion
}
