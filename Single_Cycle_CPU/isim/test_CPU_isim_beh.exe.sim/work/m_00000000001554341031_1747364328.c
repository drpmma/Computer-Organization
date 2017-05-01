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
static const char *ng0 = "E:/Study/Coumputer Science/s2/computer orgization/project/Single_Cycle_CPU/slt32.v";
static int ng1[] = {31, 0};
static int ng2[] = {1, 0};
static int ng3[] = {0, 0};



static void Cont_28_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3512);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 3416);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Always_29_1(char *t0)
{
    char t6[8];
    char t11[8];
    char t27[8];
    char t41[8];
    char t46[8];
    char t62[8];
    char t70[8];
    char t102[8];
    char t117[8];
    char t122[8];
    char t138[8];
    char t152[8];
    char t157[8];
    char t173[8];
    char t181[8];
    char t213[8];
    char t221[8];
    char t257[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    char *t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    char *t75;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    char *t84;
    char *t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    int t94;
    int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    char *t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    char *t109;
    char *t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    char *t115;
    char *t116;
    char *t118;
    char *t119;
    char *t120;
    char *t121;
    char *t123;
    char *t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    char *t137;
    char *t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    char *t145;
    char *t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    char *t150;
    char *t151;
    char *t153;
    char *t154;
    char *t155;
    char *t156;
    char *t158;
    char *t159;
    unsigned int t160;
    unsigned int t161;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    unsigned int t169;
    unsigned int t170;
    unsigned int t171;
    char *t172;
    char *t174;
    unsigned int t175;
    unsigned int t176;
    unsigned int t177;
    unsigned int t178;
    unsigned int t179;
    char *t180;
    unsigned int t182;
    unsigned int t183;
    unsigned int t184;
    char *t185;
    char *t186;
    char *t187;
    unsigned int t188;
    unsigned int t189;
    unsigned int t190;
    unsigned int t191;
    unsigned int t192;
    unsigned int t193;
    unsigned int t194;
    char *t195;
    char *t196;
    unsigned int t197;
    unsigned int t198;
    unsigned int t199;
    unsigned int t200;
    unsigned int t201;
    unsigned int t202;
    unsigned int t203;
    unsigned int t204;
    int t205;
    int t206;
    unsigned int t207;
    unsigned int t208;
    unsigned int t209;
    unsigned int t210;
    unsigned int t211;
    unsigned int t212;
    char *t214;
    unsigned int t215;
    unsigned int t216;
    unsigned int t217;
    unsigned int t218;
    unsigned int t219;
    char *t220;
    unsigned int t222;
    unsigned int t223;
    unsigned int t224;
    char *t225;
    char *t226;
    char *t227;
    unsigned int t228;
    unsigned int t229;
    unsigned int t230;
    unsigned int t231;
    unsigned int t232;
    unsigned int t233;
    unsigned int t234;
    char *t235;
    char *t236;
    unsigned int t237;
    unsigned int t238;
    unsigned int t239;
    int t240;
    unsigned int t241;
    unsigned int t242;
    unsigned int t243;
    int t244;
    unsigned int t245;
    unsigned int t246;
    unsigned int t247;
    unsigned int t248;
    char *t249;
    unsigned int t250;
    unsigned int t251;
    unsigned int t252;
    unsigned int t253;
    unsigned int t254;
    char *t255;
    char *t256;
    char *t258;
    char *t259;
    char *t260;
    char *t261;

LAB0:    t1 = (t0 + 3096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 3432);
    *((int *)t2) = 1;
    t3 = (t0 + 3128);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(29, ng0);

LAB5:    xsi_set_current_line(30, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1008U);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t6, 32, t5, t8, 2, t9, 32, 1);
    t10 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t12 = (t6 + 4);
    t13 = (t10 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t12);
    t18 = *((unsigned int *)t13);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t12);
    t22 = *((unsigned int *)t13);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB9;

LAB6:    if (t23 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t11) = 1;

LAB9:    memset(t27, 0, 8);
    t28 = (t11 + 4);
    t29 = *((unsigned int *)t28);
    t30 = (~(t29));
    t31 = *((unsigned int *)t11);
    t32 = (t31 & t30);
    t33 = (t32 & 1U);
    if (t33 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t28) != 0)
        goto LAB12;

LAB13:    t35 = (t27 + 4);
    t36 = *((unsigned int *)t27);
    t37 = *((unsigned int *)t35);
    t38 = (t36 || t37);
    if (t38 > 0)
        goto LAB14;

LAB15:    memcpy(t70, t27, 8);

LAB16:    memset(t102, 0, 8);
    t103 = (t70 + 4);
    t104 = *((unsigned int *)t103);
    t105 = (~(t104));
    t106 = *((unsigned int *)t70);
    t107 = (t106 & t105);
    t108 = (t107 & 1U);
    if (t108 != 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t103) != 0)
        goto LAB30;

LAB31:    t110 = (t102 + 4);
    t111 = *((unsigned int *)t102);
    t112 = (!(t111));
    t113 = *((unsigned int *)t110);
    t114 = (t112 || t113);
    if (t114 > 0)
        goto LAB32;

LAB33:    memcpy(t221, t102, 8);

LAB34:    t249 = (t221 + 4);
    t250 = *((unsigned int *)t249);
    t251 = (~(t250));
    t252 = *((unsigned int *)t221);
    t253 = (t252 & t251);
    t254 = (t253 != 0);
    if (t254 > 0)
        goto LAB64;

LAB65:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1008U);
    t4 = (t2 + 72U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t6, 32, t3, t5, 2, t7, 32, 1);
    t8 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t9 = (t6 + 4);
    t10 = (t8 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t8);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t9);
    t18 = *((unsigned int *)t10);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t9);
    t22 = *((unsigned int *)t10);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB70;

LAB67:    if (t23 != 0)
        goto LAB69;

LAB68:    *((unsigned int *)t11) = 1;

LAB70:    memset(t27, 0, 8);
    t13 = (t11 + 4);
    t29 = *((unsigned int *)t13);
    t30 = (~(t29));
    t31 = *((unsigned int *)t11);
    t32 = (t31 & t30);
    t33 = (t32 & 1U);
    if (t33 != 0)
        goto LAB71;

LAB72:    if (*((unsigned int *)t13) != 0)
        goto LAB73;

LAB74:    t28 = (t27 + 4);
    t36 = *((unsigned int *)t27);
    t37 = *((unsigned int *)t28);
    t38 = (t36 || t37);
    if (t38 > 0)
        goto LAB75;

LAB76:    memcpy(t70, t27, 8);

LAB77:    t84 = (t70 + 4);
    t104 = *((unsigned int *)t84);
    t105 = (~(t104));
    t106 = *((unsigned int *)t70);
    t107 = (t106 & t105);
    t108 = (t107 != 0);
    if (t108 > 0)
        goto LAB89;

LAB90:    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB91:
LAB66:    goto LAB2;

LAB8:    t26 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB9;

LAB10:    *((unsigned int *)t27) = 1;
    goto LAB13;

LAB12:    t34 = (t27 + 4);
    *((unsigned int *)t27) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB13;

LAB14:    t39 = (t0 + 1208U);
    t40 = *((char **)t39);
    t39 = (t0 + 1168U);
    t42 = (t39 + 72U);
    t43 = *((char **)t42);
    t44 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t41, 32, t40, t43, 2, t44, 32, 1);
    t45 = ((char*)((ng2)));
    memset(t46, 0, 8);
    t47 = (t41 + 4);
    t48 = (t45 + 4);
    t49 = *((unsigned int *)t41);
    t50 = *((unsigned int *)t45);
    t51 = (t49 ^ t50);
    t52 = *((unsigned int *)t47);
    t53 = *((unsigned int *)t48);
    t54 = (t52 ^ t53);
    t55 = (t51 | t54);
    t56 = *((unsigned int *)t47);
    t57 = *((unsigned int *)t48);
    t58 = (t56 | t57);
    t59 = (~(t58));
    t60 = (t55 & t59);
    if (t60 != 0)
        goto LAB20;

LAB17:    if (t58 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t46) = 1;

LAB20:    memset(t62, 0, 8);
    t63 = (t46 + 4);
    t64 = *((unsigned int *)t63);
    t65 = (~(t64));
    t66 = *((unsigned int *)t46);
    t67 = (t66 & t65);
    t68 = (t67 & 1U);
    if (t68 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t63) != 0)
        goto LAB23;

LAB24:    t71 = *((unsigned int *)t27);
    t72 = *((unsigned int *)t62);
    t73 = (t71 & t72);
    *((unsigned int *)t70) = t73;
    t74 = (t27 + 4);
    t75 = (t62 + 4);
    t76 = (t70 + 4);
    t77 = *((unsigned int *)t74);
    t78 = *((unsigned int *)t75);
    t79 = (t77 | t78);
    *((unsigned int *)t76) = t79;
    t80 = *((unsigned int *)t76);
    t81 = (t80 != 0);
    if (t81 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB16;

LAB19:    t61 = (t46 + 4);
    *((unsigned int *)t46) = 1;
    *((unsigned int *)t61) = 1;
    goto LAB20;

LAB21:    *((unsigned int *)t62) = 1;
    goto LAB24;

LAB23:    t69 = (t62 + 4);
    *((unsigned int *)t62) = 1;
    *((unsigned int *)t69) = 1;
    goto LAB24;

LAB25:    t82 = *((unsigned int *)t70);
    t83 = *((unsigned int *)t76);
    *((unsigned int *)t70) = (t82 | t83);
    t84 = (t27 + 4);
    t85 = (t62 + 4);
    t86 = *((unsigned int *)t27);
    t87 = (~(t86));
    t88 = *((unsigned int *)t84);
    t89 = (~(t88));
    t90 = *((unsigned int *)t62);
    t91 = (~(t90));
    t92 = *((unsigned int *)t85);
    t93 = (~(t92));
    t94 = (t87 & t89);
    t95 = (t91 & t93);
    t96 = (~(t94));
    t97 = (~(t95));
    t98 = *((unsigned int *)t76);
    *((unsigned int *)t76) = (t98 & t96);
    t99 = *((unsigned int *)t76);
    *((unsigned int *)t76) = (t99 & t97);
    t100 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t100 & t96);
    t101 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t101 & t97);
    goto LAB27;

LAB28:    *((unsigned int *)t102) = 1;
    goto LAB31;

LAB30:    t109 = (t102 + 4);
    *((unsigned int *)t102) = 1;
    *((unsigned int *)t109) = 1;
    goto LAB31;

LAB32:    t115 = (t0 + 1048U);
    t116 = *((char **)t115);
    t115 = (t0 + 1008U);
    t118 = (t115 + 72U);
    t119 = *((char **)t118);
    t120 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t117, 32, t116, t119, 2, t120, 32, 1);
    t121 = ((char*)((ng3)));
    memset(t122, 0, 8);
    t123 = (t117 + 4);
    t124 = (t121 + 4);
    t125 = *((unsigned int *)t117);
    t126 = *((unsigned int *)t121);
    t127 = (t125 ^ t126);
    t128 = *((unsigned int *)t123);
    t129 = *((unsigned int *)t124);
    t130 = (t128 ^ t129);
    t131 = (t127 | t130);
    t132 = *((unsigned int *)t123);
    t133 = *((unsigned int *)t124);
    t134 = (t132 | t133);
    t135 = (~(t134));
    t136 = (t131 & t135);
    if (t136 != 0)
        goto LAB38;

LAB35:    if (t134 != 0)
        goto LAB37;

LAB36:    *((unsigned int *)t122) = 1;

LAB38:    memset(t138, 0, 8);
    t139 = (t122 + 4);
    t140 = *((unsigned int *)t139);
    t141 = (~(t140));
    t142 = *((unsigned int *)t122);
    t143 = (t142 & t141);
    t144 = (t143 & 1U);
    if (t144 != 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t139) != 0)
        goto LAB41;

LAB42:    t146 = (t138 + 4);
    t147 = *((unsigned int *)t138);
    t148 = *((unsigned int *)t146);
    t149 = (t147 || t148);
    if (t149 > 0)
        goto LAB43;

LAB44:    memcpy(t181, t138, 8);

LAB45:    memset(t213, 0, 8);
    t214 = (t181 + 4);
    t215 = *((unsigned int *)t214);
    t216 = (~(t215));
    t217 = *((unsigned int *)t181);
    t218 = (t217 & t216);
    t219 = (t218 & 1U);
    if (t219 != 0)
        goto LAB57;

LAB58:    if (*((unsigned int *)t214) != 0)
        goto LAB59;

LAB60:    t222 = *((unsigned int *)t102);
    t223 = *((unsigned int *)t213);
    t224 = (t222 | t223);
    *((unsigned int *)t221) = t224;
    t225 = (t102 + 4);
    t226 = (t213 + 4);
    t227 = (t221 + 4);
    t228 = *((unsigned int *)t225);
    t229 = *((unsigned int *)t226);
    t230 = (t228 | t229);
    *((unsigned int *)t227) = t230;
    t231 = *((unsigned int *)t227);
    t232 = (t231 != 0);
    if (t232 == 1)
        goto LAB61;

LAB62:
LAB63:    goto LAB34;

LAB37:    t137 = (t122 + 4);
    *((unsigned int *)t122) = 1;
    *((unsigned int *)t137) = 1;
    goto LAB38;

LAB39:    *((unsigned int *)t138) = 1;
    goto LAB42;

LAB41:    t145 = (t138 + 4);
    *((unsigned int *)t138) = 1;
    *((unsigned int *)t145) = 1;
    goto LAB42;

LAB43:    t150 = (t0 + 1208U);
    t151 = *((char **)t150);
    t150 = (t0 + 1168U);
    t153 = (t150 + 72U);
    t154 = *((char **)t153);
    t155 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t152, 32, t151, t154, 2, t155, 32, 1);
    t156 = ((char*)((ng3)));
    memset(t157, 0, 8);
    t158 = (t152 + 4);
    t159 = (t156 + 4);
    t160 = *((unsigned int *)t152);
    t161 = *((unsigned int *)t156);
    t162 = (t160 ^ t161);
    t163 = *((unsigned int *)t158);
    t164 = *((unsigned int *)t159);
    t165 = (t163 ^ t164);
    t166 = (t162 | t165);
    t167 = *((unsigned int *)t158);
    t168 = *((unsigned int *)t159);
    t169 = (t167 | t168);
    t170 = (~(t169));
    t171 = (t166 & t170);
    if (t171 != 0)
        goto LAB49;

LAB46:    if (t169 != 0)
        goto LAB48;

LAB47:    *((unsigned int *)t157) = 1;

LAB49:    memset(t173, 0, 8);
    t174 = (t157 + 4);
    t175 = *((unsigned int *)t174);
    t176 = (~(t175));
    t177 = *((unsigned int *)t157);
    t178 = (t177 & t176);
    t179 = (t178 & 1U);
    if (t179 != 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t174) != 0)
        goto LAB52;

LAB53:    t182 = *((unsigned int *)t138);
    t183 = *((unsigned int *)t173);
    t184 = (t182 & t183);
    *((unsigned int *)t181) = t184;
    t185 = (t138 + 4);
    t186 = (t173 + 4);
    t187 = (t181 + 4);
    t188 = *((unsigned int *)t185);
    t189 = *((unsigned int *)t186);
    t190 = (t188 | t189);
    *((unsigned int *)t187) = t190;
    t191 = *((unsigned int *)t187);
    t192 = (t191 != 0);
    if (t192 == 1)
        goto LAB54;

LAB55:
LAB56:    goto LAB45;

LAB48:    t172 = (t157 + 4);
    *((unsigned int *)t157) = 1;
    *((unsigned int *)t172) = 1;
    goto LAB49;

LAB50:    *((unsigned int *)t173) = 1;
    goto LAB53;

LAB52:    t180 = (t173 + 4);
    *((unsigned int *)t173) = 1;
    *((unsigned int *)t180) = 1;
    goto LAB53;

LAB54:    t193 = *((unsigned int *)t181);
    t194 = *((unsigned int *)t187);
    *((unsigned int *)t181) = (t193 | t194);
    t195 = (t138 + 4);
    t196 = (t173 + 4);
    t197 = *((unsigned int *)t138);
    t198 = (~(t197));
    t199 = *((unsigned int *)t195);
    t200 = (~(t199));
    t201 = *((unsigned int *)t173);
    t202 = (~(t201));
    t203 = *((unsigned int *)t196);
    t204 = (~(t203));
    t205 = (t198 & t200);
    t206 = (t202 & t204);
    t207 = (~(t205));
    t208 = (~(t206));
    t209 = *((unsigned int *)t187);
    *((unsigned int *)t187) = (t209 & t207);
    t210 = *((unsigned int *)t187);
    *((unsigned int *)t187) = (t210 & t208);
    t211 = *((unsigned int *)t181);
    *((unsigned int *)t181) = (t211 & t207);
    t212 = *((unsigned int *)t181);
    *((unsigned int *)t181) = (t212 & t208);
    goto LAB56;

LAB57:    *((unsigned int *)t213) = 1;
    goto LAB60;

LAB59:    t220 = (t213 + 4);
    *((unsigned int *)t213) = 1;
    *((unsigned int *)t220) = 1;
    goto LAB60;

LAB61:    t233 = *((unsigned int *)t221);
    t234 = *((unsigned int *)t227);
    *((unsigned int *)t221) = (t233 | t234);
    t235 = (t102 + 4);
    t236 = (t213 + 4);
    t237 = *((unsigned int *)t235);
    t238 = (~(t237));
    t239 = *((unsigned int *)t102);
    t240 = (t239 & t238);
    t241 = *((unsigned int *)t236);
    t242 = (~(t241));
    t243 = *((unsigned int *)t213);
    t244 = (t243 & t242);
    t245 = (~(t240));
    t246 = (~(t244));
    t247 = *((unsigned int *)t227);
    *((unsigned int *)t227) = (t247 & t245);
    t248 = *((unsigned int *)t227);
    *((unsigned int *)t227) = (t248 & t246);
    goto LAB63;

LAB64:    xsi_set_current_line(31, ng0);
    t255 = (t0 + 1368U);
    t256 = *((char **)t255);
    t255 = (t0 + 1328U);
    t258 = (t255 + 72U);
    t259 = *((char **)t258);
    t260 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t257, 32, t256, t259, 2, t260, 32, 1);
    t261 = (t0 + 1928);
    xsi_vlogvar_assign_value(t261, t257, 0, 0, 32);
    goto LAB66;

LAB69:    t12 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB70;

LAB71:    *((unsigned int *)t27) = 1;
    goto LAB74;

LAB73:    t26 = (t27 + 4);
    *((unsigned int *)t27) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB74;

LAB75:    t34 = (t0 + 1208U);
    t35 = *((char **)t34);
    t34 = (t0 + 1168U);
    t39 = (t34 + 72U);
    t40 = *((char **)t39);
    t42 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t41, 32, t35, t40, 2, t42, 32, 1);
    t43 = ((char*)((ng3)));
    memset(t46, 0, 8);
    t44 = (t41 + 4);
    t45 = (t43 + 4);
    t49 = *((unsigned int *)t41);
    t50 = *((unsigned int *)t43);
    t51 = (t49 ^ t50);
    t52 = *((unsigned int *)t44);
    t53 = *((unsigned int *)t45);
    t54 = (t52 ^ t53);
    t55 = (t51 | t54);
    t56 = *((unsigned int *)t44);
    t57 = *((unsigned int *)t45);
    t58 = (t56 | t57);
    t59 = (~(t58));
    t60 = (t55 & t59);
    if (t60 != 0)
        goto LAB81;

LAB78:    if (t58 != 0)
        goto LAB80;

LAB79:    *((unsigned int *)t46) = 1;

LAB81:    memset(t62, 0, 8);
    t48 = (t46 + 4);
    t64 = *((unsigned int *)t48);
    t65 = (~(t64));
    t66 = *((unsigned int *)t46);
    t67 = (t66 & t65);
    t68 = (t67 & 1U);
    if (t68 != 0)
        goto LAB82;

LAB83:    if (*((unsigned int *)t48) != 0)
        goto LAB84;

LAB85:    t71 = *((unsigned int *)t27);
    t72 = *((unsigned int *)t62);
    t73 = (t71 & t72);
    *((unsigned int *)t70) = t73;
    t63 = (t27 + 4);
    t69 = (t62 + 4);
    t74 = (t70 + 4);
    t77 = *((unsigned int *)t63);
    t78 = *((unsigned int *)t69);
    t79 = (t77 | t78);
    *((unsigned int *)t74) = t79;
    t80 = *((unsigned int *)t74);
    t81 = (t80 != 0);
    if (t81 == 1)
        goto LAB86;

LAB87:
LAB88:    goto LAB77;

LAB80:    t47 = (t46 + 4);
    *((unsigned int *)t46) = 1;
    *((unsigned int *)t47) = 1;
    goto LAB81;

LAB82:    *((unsigned int *)t62) = 1;
    goto LAB85;

LAB84:    t61 = (t62 + 4);
    *((unsigned int *)t62) = 1;
    *((unsigned int *)t61) = 1;
    goto LAB85;

LAB86:    t82 = *((unsigned int *)t70);
    t83 = *((unsigned int *)t74);
    *((unsigned int *)t70) = (t82 | t83);
    t75 = (t27 + 4);
    t76 = (t62 + 4);
    t86 = *((unsigned int *)t27);
    t87 = (~(t86));
    t88 = *((unsigned int *)t75);
    t89 = (~(t88));
    t90 = *((unsigned int *)t62);
    t91 = (~(t90));
    t92 = *((unsigned int *)t76);
    t93 = (~(t92));
    t94 = (t87 & t89);
    t95 = (t91 & t93);
    t96 = (~(t94));
    t97 = (~(t95));
    t98 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t98 & t96);
    t99 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t99 & t97);
    t100 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t100 & t96);
    t101 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t101 & t97);
    goto LAB88;

LAB89:    xsi_set_current_line(33, ng0);
    t85 = ((char*)((ng2)));
    t103 = (t0 + 1928);
    xsi_vlogvar_assign_value(t103, t85, 0, 0, 32);
    goto LAB91;

}


extern void work_m_00000000001554341031_1747364328_init()
{
	static char *pe[] = {(void *)Cont_28_0,(void *)Always_29_1};
	xsi_register_didat("work_m_00000000001554341031_1747364328", "isim/test_CPU_isim_beh.exe.sim/work/m_00000000001554341031_1747364328.didat");
	xsi_register_executes(pe);
}
