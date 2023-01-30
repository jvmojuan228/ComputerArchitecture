/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Alan/Desktop/procesador/rom.vhd";



static void work_a_2220189930_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int t11;
    int t12;
    int t13;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4493);
    t11 = xsi_mem_cmp(t1, t2, 16U);
    if (t11 == 1)
        goto LAB6;

LAB10:    t6 = (t0 + 4509);
    t12 = xsi_mem_cmp(t6, t2, 16U);
    if (t12 == 1)
        goto LAB7;

LAB11:    t8 = (t0 + 4525);
    t13 = xsi_mem_cmp(t8, t2, 16U);
    if (t13 == 1)
        goto LAB8;

LAB12:
LAB9:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 4589);
    t5 = (t0 + 2912);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast_port(t5);

LAB5:
LAB3:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(43, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t5 = t1;
    memset(t5, (unsigned char)4, 16U);
    t6 = (t0 + 2912);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB3;

LAB6:    xsi_set_current_line(46, ng0);
    t10 = (t0 + 4541);
    t15 = (t0 + 2912);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 16U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB5;

LAB7:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 4557);
    t5 = (t0 + 2912);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB8:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 4573);
    t5 = (t0 + 2912);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB13:;
}


extern void work_a_2220189930_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2220189930_3212880686_p_0};
	xsi_register_didat("work_a_2220189930_3212880686", "isim/rom_isim_beh.exe.sim/work/a_2220189930_3212880686.didat");
	xsi_register_executes(pe);
}
