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
static const char *ng0 = "C:/Users/ferna/Documents/FER/procesador/procesador.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_4207577721_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(127, ng0);

LAB3:    t1 = (t0 + 8432);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4207577721_3212880686_p_1(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(129, ng0);

LAB3:    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t2 = (t0 + 13584U);
    t4 = (t0 + 1832U);
    t5 = *((char **)t4);
    t4 = (t0 + 13584U);
    t6 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t1, t3, t2, t5, t4);
    t7 = (t1 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (16U != t9);
    if (t10 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 8496);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 16U);
    xsi_driver_first_trans_fast(t11);

LAB2:    t16 = (t0 + 8304);
    *((int *)t16) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(16U, t9, 0);
    goto LAB6;

}

static void work_a_4207577721_3212880686_p_2(char *t0)
{
    char t23[16];
    char t43[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    char *t16;
    char *t17;
    unsigned char t18;
    unsigned char t19;
    char *t20;
    unsigned char t21;
    unsigned char t22;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned char t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    unsigned char t35;
    char *t36;
    char *t37;
    unsigned char t38;
    unsigned char t39;
    char *t40;
    unsigned char t41;
    unsigned char t42;
    char *t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned char t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;

LAB0:    xsi_set_current_line(132, ng0);
    t2 = (t0 + 3912U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)2);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t16 = (t0 + 3912U);
    t17 = *((char **)t16);
    t18 = *((unsigned char *)t17);
    t19 = (t18 == (unsigned char)2);
    if (t19 == 1)
        goto LAB10;

LAB11:    t15 = (unsigned char)0;

LAB12:    if (t15 != 0)
        goto LAB8;

LAB9:    t36 = (t0 + 3912U);
    t37 = *((char **)t36);
    t38 = *((unsigned char *)t37);
    t39 = (t38 == (unsigned char)3);
    if (t39 == 1)
        goto LAB17;

LAB18:    t35 = (unsigned char)0;

LAB19:    if (t35 != 0)
        goto LAB15;

LAB16:
LAB22:    t55 = (t0 + 13834);
    t57 = (t0 + 8560);
    t58 = (t57 + 56U);
    t59 = *((char **)t58);
    t60 = (t59 + 56U);
    t61 = *((char **)t60);
    memcpy(t61, t55, 16U);
    xsi_driver_first_trans_fast(t57);

LAB2:    t62 = (t0 + 8320);
    *((int *)t62) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 13818);
    t10 = (t0 + 8560);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 16U);
    xsi_driver_first_trans_fast(t10);
    goto LAB2;

LAB5:    t2 = (t0 + 5352U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t1 = t8;
    goto LAB7;

LAB8:    t16 = (t0 + 1992U);
    t24 = *((char **)t16);
    t16 = (t0 + 13584U);
    t25 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t23, t24, t16, 1);
    t26 = (t23 + 12U);
    t27 = *((unsigned int *)t26);
    t28 = (1U * t27);
    t29 = (16U != t28);
    if (t29 == 1)
        goto LAB13;

LAB14:    t30 = (t0 + 8560);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    memcpy(t34, t25, 16U);
    xsi_driver_first_trans_fast(t30);
    goto LAB2;

LAB10:    t16 = (t0 + 5352U);
    t20 = *((char **)t16);
    t21 = *((unsigned char *)t20);
    t22 = (t21 == (unsigned char)3);
    t15 = t22;
    goto LAB12;

LAB13:    xsi_size_not_matching(16U, t28, 0);
    goto LAB14;

LAB15:    t36 = (t0 + 2152U);
    t44 = *((char **)t36);
    t36 = (t0 + 13584U);
    t45 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t43, t44, t36, 1);
    t46 = (t43 + 12U);
    t47 = *((unsigned int *)t46);
    t48 = (1U * t47);
    t49 = (16U != t48);
    if (t49 == 1)
        goto LAB20;

LAB21:    t50 = (t0 + 8560);
    t51 = (t50 + 56U);
    t52 = *((char **)t51);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    memcpy(t54, t45, 16U);
    xsi_driver_first_trans_fast(t50);
    goto LAB2;

LAB17:    t36 = (t0 + 5352U);
    t40 = *((char **)t36);
    t41 = *((unsigned char *)t40);
    t42 = (t41 == (unsigned char)2);
    t35 = t42;
    goto LAB19;

LAB20:    xsi_size_not_matching(16U, t48, 0);
    goto LAB21;

LAB23:    goto LAB2;

}

static void work_a_4207577721_3212880686_p_3(char *t0)
{
    char t19[16];
    char t21[16];
    char t26[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t20;
    char *t22;
    char *t23;
    int t24;
    unsigned int t25;
    char *t27;
    int t28;
    unsigned char t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned char t34;
    char *t35;
    char *t36;
    unsigned char t37;
    unsigned char t38;
    char *t39;
    unsigned char t40;
    unsigned char t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    unsigned char t47;
    char *t48;
    char *t49;
    unsigned char t50;
    unsigned char t51;
    char *t52;
    unsigned char t53;
    unsigned char t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;

LAB0:    xsi_set_current_line(137, ng0);
    t2 = (t0 + 5192U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)2);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t35 = (t0 + 5192U);
    t36 = *((char **)t35);
    t37 = *((unsigned char *)t36);
    t38 = (t37 == (unsigned char)2);
    if (t38 == 1)
        goto LAB12;

LAB13:    t34 = (unsigned char)0;

LAB14:    if (t34 != 0)
        goto LAB10;

LAB11:    t48 = (t0 + 5192U);
    t49 = *((char **)t48);
    t50 = *((unsigned char *)t49);
    t51 = (t50 == (unsigned char)3);
    if (t51 == 1)
        goto LAB17;

LAB18:    t47 = (unsigned char)0;

LAB19:    if (t47 != 0)
        goto LAB15;

LAB16:
LAB20:    t60 = (t0 + 13850);
    t62 = (t0 + 8624);
    t63 = (t62 + 56U);
    t64 = *((char **)t63);
    t65 = (t64 + 56U);
    t66 = *((char **)t65);
    memcpy(t66, t60, 8U);
    xsi_driver_first_trans_fast(t62);

LAB2:    t67 = (t0 + 8336);
    *((int *)t67) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 1672U);
    t9 = *((char **)t2);
    t10 = (15 - 11);
    t11 = (t10 * 1U);
    t12 = (0 + t11);
    t2 = (t9 + t12);
    t13 = (t0 + 1672U);
    t14 = *((char **)t13);
    t15 = (15 - 3);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t13 = (t14 + t17);
    t20 = ((IEEE_P_2592010699) + 4024);
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 11;
    t23 = (t22 + 4U);
    *((int *)t23) = 8;
    t23 = (t22 + 8U);
    *((int *)t23) = -1;
    t24 = (8 - 11);
    t25 = (t24 * -1);
    t25 = (t25 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t25;
    t23 = (t26 + 0U);
    t27 = (t23 + 0U);
    *((int *)t27) = 3;
    t27 = (t23 + 4U);
    *((int *)t27) = 0;
    t27 = (t23 + 8U);
    *((int *)t27) = -1;
    t28 = (0 - 3);
    t25 = (t28 * -1);
    t25 = (t25 + 1);
    t27 = (t23 + 12U);
    *((unsigned int *)t27) = t25;
    t18 = xsi_base_array_concat(t18, t19, t20, (char)97, t2, t21, (char)97, t13, t26, (char)101);
    t25 = (4U + 4U);
    t29 = (8U != t25);
    if (t29 == 1)
        goto LAB8;

LAB9:    t27 = (t0 + 8624);
    t30 = (t27 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t18, 8U);
    xsi_driver_first_trans_fast(t27);
    goto LAB2;

LAB5:    t2 = (t0 + 3752U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t1 = t8;
    goto LAB7;

LAB8:    xsi_size_not_matching(8U, t25, 0);
    goto LAB9;

LAB10:    t35 = (t0 + 2632U);
    t42 = *((char **)t35);
    t35 = (t0 + 8624);
    t43 = (t35 + 56U);
    t44 = *((char **)t43);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    memcpy(t46, t42, 8U);
    xsi_driver_first_trans_fast(t35);
    goto LAB2;

LAB12:    t35 = (t0 + 3752U);
    t39 = *((char **)t35);
    t40 = *((unsigned char *)t39);
    t41 = (t40 == (unsigned char)3);
    t34 = t41;
    goto LAB14;

LAB15:    t48 = (t0 + 2952U);
    t55 = *((char **)t48);
    t48 = (t0 + 8624);
    t56 = (t48 + 56U);
    t57 = *((char **)t56);
    t58 = (t57 + 56U);
    t59 = *((char **)t58);
    memcpy(t59, t55, 8U);
    xsi_driver_first_trans_fast(t48);
    goto LAB2;

LAB17:    t48 = (t0 + 3752U);
    t52 = *((char **)t48);
    t53 = *((unsigned char *)t52);
    t54 = (t53 == (unsigned char)2);
    t47 = t54;
    goto LAB19;

LAB21:    goto LAB2;

}

static void work_a_4207577721_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(142, ng0);

LAB3:    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5512U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 4232U);
    t7 = *((char **)t1);
    t8 = *((unsigned char *)t7);
    t1 = (t0 + 5512U);
    t9 = *((char **)t1);
    t10 = *((unsigned char *)t9);
    t11 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t10);
    t12 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t8, t11);
    t13 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t6, t12);
    t1 = (t0 + 8688);
    t14 = (t1 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = t13;
    xsi_driver_first_trans_fast(t1);

LAB2:    t18 = (t0 + 8352);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_4207577721_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4207577721_3212880686_p_0,(void *)work_a_4207577721_3212880686_p_1,(void *)work_a_4207577721_3212880686_p_2,(void *)work_a_4207577721_3212880686_p_3,(void *)work_a_4207577721_3212880686_p_4};
	xsi_register_didat("work_a_4207577721_3212880686", "isim/procesador_isim_beh.exe.sim/work/a_4207577721_3212880686.didat");
	xsi_register_executes(pe);
}
