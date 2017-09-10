// Filename: domtypes.cpp
//
// Description:
// Author: Damian Machtey
// Maintainer:
//
// Created: Thu Nov 10 09:17:43 2016 (-0600)
//
// Last-Updated: Tue Sep  5 17:00:45 2017 (-0300)
//           By:
//     Update #: 28

// Change Log:
//
//
// Copyright (C) 2016 Damian Machtey
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or (at
// your option) any later version.
//
// This program is distributed in the hope that it will be useful, but
// WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program. If not, see <http://www.gnu.org/licenses/>.
//
//

// Code:

#include "domtypes.h"
#include "pru_data.hp"


namespace lighting{
  // array of:
  //         GPIO_SP address
  //         gpio number
  extern t_slot const slots[] = {
                                 {GPIO1_13_SP, 45  // Slot o0
                                  GPIO1_12_SP, 44
                                  GPIO0_23_SP, 23
                                  GPIO0_26_SP, 26
                                  GPIO1_6_SP, 38
                                  GPIO1_7_SP, 39
                                  GPIO1_2_SP, 34
                                  GPIO1_3_SP, 35},

                                 {GPIO3_16_SP, 112  // Slot o1
                                  GPIO3_14_SP, 110
                                  GPIO0_20_SP, 20
                                  GPIO0_7_SP, 7
                                  GPIO0_4_SP, 4
                                  GPIO0_5_SP, 5
                                  GPIO1_19_SP, 51
                                  GPIO1_16_SP, 48},

                                 {GPIO2_2_SP, 66  // Slot o2
                                  GPIO2_3_SP, 67
                                  GPIO2_5_SP, 69
                                  GPIO2_4_SP, 68
                                  GPIO1_18_SP, 50
                                  GPIO0_31_SP, 31
                                  GPIO1_28_SP, 60
                                  GPIO0_30_SP, 30},

                                 {GPIO0_15_SP, 15  // Slot o3
                                  GPIO1_17_SP, 49
                                  GPIO0_2_SP, 2
                                  GPIO0_3_SP, 3
                                  GPIO3_17_SP, 113
                                  GPIO3_19_SP, 115
                                  GPIO0_14_SP, 14
                                  GPIO3_21_SP, 117},

                                 {GPIO2_15_SP, 79  // Slot i0
                                  GPIO0_8_SP, 8
                                  GPIO0_9_SP, 9
                                  GPIO0_10_SP, 10
                                  GPIO2_7_SP, 71
                                  GPIO2_9_SP, 73
                                  GPIO2_10_SP, 74
                                  GPIO2_12_SP, 76},

                                 {GPIO0_11_SP, 11  // Slot i1
                                  GPIO2_17_SP, 81
                                  GPIO2_16_SP, 80
                                  GPIO2_14_SP, 78
                                  GPIO2_13_SP, 77
                                  GPIO2_11_SP, 75
                                  GPIO2_8_SP, 72
                                  GPIO2_6_SP, 70},

                                 {GPIO1_30_SP, 62  // Slot i2
                                  GPIO0_22_SP, 22
                                  GPIO0_27_SP, 27
                                  GPIO1_15_SP, 47
                                  GPIO2_25_SP, 89
                                  GPIO2_24_SP, 88
                                  GPIO1_29_SP, 61
                                  GPIO1_1_SP, 33},

                                 {GPIO1_14_SP, 46  // Slot i3
                                  GPIO2_1_SP, 65
                                  GPIO1_31_SP, 63
                                  GPIO1_5_SP, 37
                                  GPIO1_4_SP, 36
                                  GPIO1_0_SP, 32
                                  GPIO2_22_SP, 86
                                  GPIO2_23_SP, 87}};

}//namespace
//
// domtypes.cpp ends here
