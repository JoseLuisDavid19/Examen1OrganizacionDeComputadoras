#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN

#include <iostream>
#include <chrono>
#include <random>
#include "doctest.h"
#include "VBitExtender.h"

TEST_CASE("BitExtender") 
{
    VBitExtender m;

    m.extend = 0;
    m.in = 0x81a0;
    m.eval();
    CHECK(m.out == 0x81a0);

    m.extend = 1;
    m.in = 0x81a0;
    m.eval();
    CHECK(m.out == 0xffff81a0);
}
