//
// Created by Martsenkov, Georgi, Vodafone Group on 19/12/2016.
//

#ifndef SNAKE_FORMULAS_H
#define SNAKE_FORMULAS_H
#include "math.h"

double distance( int x1, int y1, int x2, int y2 )
{
    return sqrt( pow( x2 - x1, 2 ) + pow( y2 - y1, 2 ) );
}

#endif //SNAKE_FORMULAS_H
