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
static const char *ng0 = "G:/Arquitectura Computadores/Procesadores/Procesador 3/sparcv8/UC.vhd";
extern char *IEEE_P_3620187407;



static void work_a_2425904575_2118387372_p_0(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    int t13;
    char *t14;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t29;
    int t31;
    char *t32;
    int t34;
    char *t35;
    int t37;
    char *t38;
    int t40;
    char *t41;
    int t43;
    char *t44;
    int t46;
    char *t47;
    int t49;
    char *t50;
    int t52;
    char *t53;
    int t55;
    char *t56;
    int t58;
    char *t59;
    int t61;
    char *t62;
    int t64;
    char *t65;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    char *t71;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4708U);
    t3 = (t0 + 4778);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t7 = (t0 + 1192U);
    t11 = *((char **)t7);
    t7 = (t0 + 4780);
    t13 = xsi_mem_cmp(t7, t11, 6U);
    if (t13 == 1)
        goto LAB6;

LAB25:    t14 = (t0 + 4786);
    t16 = xsi_mem_cmp(t14, t11, 6U);
    if (t16 == 1)
        goto LAB7;

LAB26:    t17 = (t0 + 4792);
    t19 = xsi_mem_cmp(t17, t11, 6U);
    if (t19 == 1)
        goto LAB8;

LAB27:    t20 = (t0 + 4798);
    t22 = xsi_mem_cmp(t20, t11, 6U);
    if (t22 == 1)
        goto LAB9;

LAB28:    t23 = (t0 + 4804);
    t25 = xsi_mem_cmp(t23, t11, 6U);
    if (t25 == 1)
        goto LAB10;

LAB29:    t26 = (t0 + 4810);
    t28 = xsi_mem_cmp(t26, t11, 6U);
    if (t28 == 1)
        goto LAB11;

LAB30:    t29 = (t0 + 4816);
    t31 = xsi_mem_cmp(t29, t11, 6U);
    if (t31 == 1)
        goto LAB12;

LAB31:    t32 = (t0 + 4822);
    t34 = xsi_mem_cmp(t32, t11, 6U);
    if (t34 == 1)
        goto LAB13;

LAB32:    t35 = (t0 + 4828);
    t37 = xsi_mem_cmp(t35, t11, 6U);
    if (t37 == 1)
        goto LAB14;

LAB33:    t38 = (t0 + 4834);
    t40 = xsi_mem_cmp(t38, t11, 6U);
    if (t40 == 1)
        goto LAB15;

LAB34:    t41 = (t0 + 4840);
    t43 = xsi_mem_cmp(t41, t11, 6U);
    if (t43 == 1)
        goto LAB16;

LAB35:    t44 = (t0 + 4846);
    t46 = xsi_mem_cmp(t44, t11, 6U);
    if (t46 == 1)
        goto LAB17;

LAB36:    t47 = (t0 + 4852);
    t49 = xsi_mem_cmp(t47, t11, 6U);
    if (t49 == 1)
        goto LAB18;

LAB37:    t50 = (t0 + 4858);
    t52 = xsi_mem_cmp(t50, t11, 6U);
    if (t52 == 1)
        goto LAB19;

LAB38:    t53 = (t0 + 4864);
    t55 = xsi_mem_cmp(t53, t11, 6U);
    if (t55 == 1)
        goto LAB20;

LAB39:    t56 = (t0 + 4870);
    t58 = xsi_mem_cmp(t56, t11, 6U);
    if (t58 == 1)
        goto LAB21;

LAB40:    t59 = (t0 + 4876);
    t61 = xsi_mem_cmp(t59, t11, 6U);
    if (t61 == 1)
        goto LAB22;

LAB41:    t62 = (t0 + 4882);
    t64 = xsi_mem_cmp(t62, t11, 6U);
    if (t64 == 1)
        goto LAB23;

LAB42:
LAB24:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 4996);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(55, ng0);
    t65 = (t0 + 4888);
    t67 = (t0 + 2912);
    t68 = (t67 + 56U);
    t69 = *((char **)t68);
    t70 = (t69 + 56U);
    t71 = *((char **)t70);
    memcpy(t71, t65, 6U);
    xsi_driver_first_trans_fast_port(t67);
    goto LAB5;

LAB7:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 4894);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB8:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 4900);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB9:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 4906);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB10:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 4912);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB11:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 4918);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB12:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 4924);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB13:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 4930);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB14:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 4936);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB15:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 4942);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB16:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 4948);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB17:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 4954);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB18:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 4960);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB19:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 4966);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB20:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 4972);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB21:    xsi_set_current_line(100, ng0);
    t1 = (t0 + 4978);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB22:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 4984);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB23:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 4990);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB43:;
}


extern void work_a_2425904575_2118387372_init()
{
	static char *pe[] = {(void *)work_a_2425904575_2118387372_p_0};
	xsi_register_didat("work_a_2425904575_2118387372", "isim/Procesador2_TB_isim_beh.exe.sim/work/a_2425904575_2118387372.didat");
	xsi_register_executes(pe);
}
