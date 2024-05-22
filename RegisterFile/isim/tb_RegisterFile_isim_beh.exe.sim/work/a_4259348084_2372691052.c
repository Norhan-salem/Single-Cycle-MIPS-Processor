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
static const char *ng0 = "C:/meow/PROBABILITY/RegisterFile/tb_RegisterFile.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_4259348084_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 4064);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3240);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 4064);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3240);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_4259348084_2372691052_p_1(char *t0)
{
    char t6[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    int64 t16;

LAB0:    t1 = (t0 + 3680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 6848);
    *((int *)t2) = 0;
    t3 = (t0 + 6852);
    *((int *)t3) = 30;
    t4 = 0;
    t5 = 30;

LAB4:    if (t4 <= t5)
        goto LAB5;

LAB7:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 6856);
    t7 = (t0 + 4256);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 5U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 6861);
    t7 = (t0 + 4320);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 32U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(61, ng0);
    t16 = (50 * 1000LL);
    t2 = (t0 + 3488);
    xsi_process_wait(t2, t16);

LAB15:    *((char **)t1) = &&LAB16;

LAB1:    return;
LAB5:    xsi_set_current_line(54, ng0);
    t7 = (t0 + 6848);
    t8 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t6, *((int *)t7), 5);
    t9 = (t0 + 4128);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t8, 5U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 6848);
    t14 = *((int *)t2);
    t15 = (t14 + 1);
    t3 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t6, t15, 5);
    t7 = (t0 + 4192);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t3, 5U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(56, ng0);
    t16 = (25 * 1000LL);
    t2 = (t0 + 3488);
    xsi_process_wait(t2, t16);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB6:    t2 = (t0 + 6848);
    t4 = *((int *)t2);
    t3 = (t0 + 6852);
    t5 = *((int *)t3);
    if (t4 == t5)
        goto LAB7;

LAB12:    t14 = (t4 + 1);
    t4 = t14;
    t7 = (t0 + 6848);
    *((int *)t7) = t4;
    goto LAB4;

LAB8:    goto LAB6;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB13:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 6893);
    t7 = (t0 + 4256);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 5U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(64, ng0);
    t16 = (5 * 1000LL);
    t2 = (t0 + 3488);
    xsi_process_wait(t2, t16);

LAB19:    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB14:    goto LAB13;

LAB16:    goto LAB14;

LAB17:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 6898);
    t7 = (t0 + 4256);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 5U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(67, ng0);
    t16 = (5 * 1000LL);
    t2 = (t0 + 3488);
    xsi_process_wait(t2, t16);

LAB23:    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB18:    goto LAB17;

LAB20:    goto LAB18;

LAB21:    xsi_set_current_line(70, ng0);
    if ((unsigned char)0 == 0)
        goto LAB25;

LAB26:    goto LAB2;

LAB22:    goto LAB21;

LAB24:    goto LAB22;

LAB25:    t2 = (t0 + 6903);
    xsi_report(t2, 3U, (unsigned char)3);
    goto LAB26;

}


extern void work_a_4259348084_2372691052_init()
{
	static char *pe[] = {(void *)work_a_4259348084_2372691052_p_0,(void *)work_a_4259348084_2372691052_p_1};
	xsi_register_didat("work_a_4259348084_2372691052", "isim/tb_RegisterFile_isim_beh.exe.sim/work/a_4259348084_2372691052.didat");
	xsi_register_executes(pe);
}
