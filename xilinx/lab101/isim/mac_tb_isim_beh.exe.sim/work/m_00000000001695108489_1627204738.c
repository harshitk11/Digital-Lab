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
static const char *ng0 = "C:/Users/user/Documents/GitHub/Digital-Lab/xilinx/lab101/mac_tb.v";
static int ng1[] = {0, 0};
static const char *ng2 = "mem1.txt";
static const char *ng3 = "mem2.txt";
static unsigned int ng4[] = {0U, 0U};
static unsigned int ng5[] = {1U, 0U};
static int ng6[] = {16, 0};
static int ng7[] = {1, 0};



static void Initial_49_0(char *t0)
{
    char t4[8];
    char t24[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;

LAB0:    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);

LAB4:    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2248);
    xsi_vlogfile_readmemb(ng2, 0, t2, 0, 0, 0, 0);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2408);
    xsi_vlogfile_readmemb(ng3, 0, t2, 0, 0, 0, 0);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB12;

LAB10:    if (*((unsigned int *)t6) == 0)
        goto LAB9;

LAB11:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB12:    t13 = (t4 + 4);
    t14 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB14;

LAB13:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t0 + 1768);
    xsi_vlogvar_assign_value(t23, t4, 0, 0, 1);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    *((unsigned int *)t4) = 1;
    goto LAB12;

LAB14:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB13;

LAB15:    xsi_set_current_line(71, ng0);
    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB16:    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng6)));
    memset(t4, 0, 8);
    xsi_vlog_signed_less(t4, 32, t5, 32, t6, 32);
    t12 = (t4 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB17;

LAB18:    goto LAB1;

LAB17:    xsi_set_current_line(72, ng0);

LAB19:    xsi_set_current_line(73, ng0);
    t13 = (t0 + 2248);
    t14 = (t13 + 56U);
    t23 = *((char **)t14);
    t25 = (t0 + 2248);
    t26 = (t25 + 72U);
    t27 = *((char **)t26);
    t28 = (t0 + 2248);
    t29 = (t28 + 64U);
    t30 = *((char **)t29);
    t31 = (t0 + 2088);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    xsi_vlog_generic_get_array_select_value(t24, 8, t23, t27, t30, 2, 1, t33, 32, 1);
    t34 = (t0 + 1448);
    xsi_vlogvar_wait_assign_value(t34, t24, 0, 0, 8, 0LL);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 2408);
    t12 = (t6 + 72U);
    t13 = *((char **)t12);
    t14 = (t0 + 2408);
    t23 = (t14 + 64U);
    t25 = *((char **)t23);
    t26 = (t0 + 2088);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    xsi_vlog_generic_get_array_select_value(t4, 8, t5, t13, t25, 2, 1, t28, 32, 1);
    t29 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t29, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng7)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t12 = (t0 + 2088);
    xsi_vlogvar_assign_value(t12, t4, 0, 0, 32);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB20:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng7)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t12 = (t0 + 1928);
    xsi_vlogvar_assign_value(t12, t4, 0, 0, 32);
    goto LAB16;

}


extern void work_m_00000000001695108489_1627204738_init()
{
	static char *pe[] = {(void *)Initial_49_0};
	xsi_register_didat("work_m_00000000001695108489_1627204738", "isim/mac_tb_isim_beh.exe.sim/work/m_00000000001695108489_1627204738.didat");
	xsi_register_executes(pe);
}
