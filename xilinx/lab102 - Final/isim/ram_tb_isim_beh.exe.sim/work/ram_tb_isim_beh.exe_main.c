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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000000685541874_3069169239_init();
    work_m_00000000000510493168_1317423471_init();
    work_m_00000000003157744269_2345047157_init();
    work_m_00000000003203865993_3674278440_init();
    work_m_00000000004274597940_0450250084_init();
    work_m_00000000001837208530_1923279871_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001837208530_1923279871");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
