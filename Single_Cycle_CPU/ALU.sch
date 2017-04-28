<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A(31:0)" />
        <signal name="ALU_operation(2)" />
        <signal name="ALU_operation(2:0)" />
        <signal name="B(31:0)" />
        <signal name="XLXN_14(31:0)" />
        <signal name="S(31:0)" />
        <signal name="S(32:0)" />
        <signal name="XLXN_19(31:0)" />
        <signal name="XLXN_20(31:0)" />
        <signal name="XLXN_21(31:0)" />
        <signal name="res(31:0)" />
        <signal name="zero" />
        <signal name="overflow" />
        <signal name="N0" />
        <signal name="XLXN_40(31:0)" />
        <signal name="S(31)" />
        <signal name="B(31)" />
        <signal name="A(31)" />
        <signal name="XLXN_45(31:0)" />
        <port polarity="Input" name="A(31:0)" />
        <port polarity="Input" name="ALU_operation(2:0)" />
        <port polarity="Input" name="B(31:0)" />
        <port polarity="Output" name="res(31:0)" />
        <port polarity="Output" name="zero" />
        <port polarity="Output" name="overflow" />
        <blockdef name="ADC32">
            <timestamp>2016-2-24T16:0:0</timestamp>
            <line x2="48" y1="-256" y2="-256" style="linewidth:W" x1="64" />
            <line x2="48" y1="-128" y2="-128" style="linewidth:W" x1="64" />
            <line x2="64" y1="-224" y2="-300" x1="64" />
            <line x2="112" y1="-224" y2="-192" x1="64" />
            <line x2="112" y1="-160" y2="-192" x1="64" />
            <line x2="64" y1="-160" y2="-76" x1="64" />
            <line x2="224" y1="-76" y2="-140" x1="64" />
            <line x2="224" y1="-300" y2="-236" x1="64" />
            <line x2="224" y1="-140" y2="-236" x1="224" />
            <line x2="240" y1="-192" y2="-192" style="linewidth:W" x1="224" />
            <line x2="128" y1="-304" y2="-276" x1="128" />
        </blockdef>
        <blockdef name="and32">
            <timestamp>2016-2-24T16:0:0</timestamp>
            <line x2="32" y1="-96" y2="-96" style="linewidth:W" x1="64" />
            <line x2="28" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="64" y1="-16" y2="-16" x1="144" />
            <line x2="64" y1="-16" y2="-112" x1="64" />
            <line x2="144" y1="-112" y2="-112" x1="64" />
            <arc ex="144" ey="-112" sx="144" sy="-16" r="48" cx="144" cy="-64" />
            <line x2="224" y1="-64" y2="-64" style="linewidth:W" x1="192" />
        </blockdef>
        <blockdef name="xor32">
            <timestamp>2016-2-24T16:0:0</timestamp>
            <arc ex="80" ey="-112" sx="80" sy="-16" r="56" cx="48" cy="-64" />
            <line x2="80" y1="-112" y2="-112" x1="144" />
            <line x2="80" y1="-16" y2="-16" x1="144" />
            <arc ex="144" ey="-112" sx="224" sy="-64" r="88" cx="148" cy="-24" />
            <arc ex="60" ey="-112" sx="64" sy="-16" r="56" cx="32" cy="-64" />
            <arc ex="224" ey="-64" sx="144" sy="-16" r="88" cx="148" cy="-104" />
            <line x2="80" y1="-96" y2="-96" style="linewidth:W" x1="32" />
            <line x2="80" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="228" y1="-64" y2="-64" style="linewidth:W" x1="256" />
        </blockdef>
        <blockdef name="nor32">
            <timestamp>2016-2-24T16:0:0</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="128" />
            <arc ex="64" ey="-112" sx="64" sy="-16" r="56" cx="32" cy="-64" />
            <line x2="64" y1="-16" y2="-16" x1="128" />
            <arc ex="208" ey="-64" sx="128" sy="-16" r="88" cx="132" cy="-104" />
            <arc ex="128" ey="-112" sx="208" sy="-64" r="88" cx="132" cy="-24" />
            <line x2="224" y1="-64" y2="-64" style="linewidth:W" x1="256" />
            <circle style="linewidth:W" r="8" cx="216" cy="-64" />
            <line x2="48" y1="-96" y2="-96" style="linewidth:W" x1="80" />
            <line x2="48" y1="-32" y2="-32" style="linewidth:W" x1="80" />
        </blockdef>
        <blockdef name="srl32">
            <timestamp>2016-2-24T16:0:0</timestamp>
            <rect width="184" x="64" y="-128" height="128" />
            <line x2="32" y1="-96" y2="-96" style="linewidth:W" x1="64" />
            <line x2="32" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="288" y1="-64" y2="-64" style="linewidth:W" x1="248" />
        </blockdef>
        <blockdef name="MUX8T1_32">
            <timestamp>2016-2-24T16:0:0</timestamp>
            <rect width="68" x="12" y="-264" height="264" />
            <line x2="48" y1="-264" y2="-272" style="linewidth:W" x1="48" />
            <line x2="0" y1="-16" y2="-16" style="linewidth:W" x1="12" />
            <line x2="0" y1="-48" y2="-48" style="linewidth:W" x1="12" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="12" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="12" />
            <line x2="0" y1="-144" y2="-144" style="linewidth:W" x1="12" />
            <line x2="0" y1="-176" y2="-176" style="linewidth:W" x1="12" />
            <line x2="0" y1="-208" y2="-208" style="linewidth:W" x1="12" />
            <line x2="0" y1="-240" y2="-240" style="linewidth:W" x1="12" />
            <line x2="96" y1="-160" y2="-160" style="linewidth:W" x1="80" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="or_bit_32">
            <timestamp>2016-2-24T16:0:0</timestamp>
            <rect width="220" x="64" y="-104" height="112" />
            <line x2="32" y1="-48" y2="-48" style="linewidth:W" x1="64" />
            <arc ex="260" ey="-48" sx="180" sy="0" r="88" cx="184" cy="-88" />
            <line x2="116" y1="0" y2="0" x1="180" />
            <line x2="116" y1="-96" y2="-96" x1="180" />
            <arc ex="116" ey="-96" sx="116" sy="0" r="56" cx="84" cy="-48" />
            <arc ex="180" ey="-96" sx="260" sy="-48" r="88" cx="184" cy="-8" />
            <line x2="120" y1="-96" y2="-96" x1="184" />
            <line x2="88" y1="-80" y2="-80" x1="128" />
            <line x2="92" y1="-16" y2="-16" x1="132" />
            <line x2="304" y1="-48" y2="-48" x1="284" />
        </blockdef>
        <blockdef name="or32">
            <timestamp>2017-3-27T10:57:18</timestamp>
            <line x2="64" y1="-16" y2="-16" x1="128" />
            <arc ex="208" ey="-64" sx="128" sy="-16" r="88" cx="132" cy="-104" />
            <arc ex="128" ey="-112" sx="208" sy="-64" r="88" cx="132" cy="-24" />
            <line x2="240" y1="-64" y2="-64" style="linewidth:W" x1="208" />
            <line x2="64" y1="-112" y2="-112" x1="128" />
            <line x2="48" y1="-96" y2="-96" style="linewidth:W" x1="80" />
            <arc ex="64" ey="-112" sx="64" sy="-16" r="56" cx="32" cy="-64" />
            <line x2="48" y1="-32" y2="-32" style="linewidth:W" x1="80" />
        </blockdef>
        <blockdef name="overflow_32">
            <timestamp>2017-4-1T11:32:53</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="slt32">
            <timestamp>2017-4-1T11:54:7</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <block symbolname="ADC32" name="XLXI_1">
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="ALU_operation(2)" name="C0" />
            <blockpin signalname="S(32:0)" name="S(32:0)" />
        </block>
        <block symbolname="and32" name="XLXI_2">
            <blockpin signalname="XLXN_14(31:0)" name="res(31:0)" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
        </block>
        <block symbolname="xor32" name="XLXI_4">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_19(31:0)" name="res(31:0)" />
        </block>
        <block symbolname="nor32" name="XLXI_5">
            <blockpin signalname="XLXN_20(31:0)" name="res(31:0)" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
        </block>
        <block symbolname="srl32" name="XLXI_6">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_21(31:0)" name="res(31:0)" />
        </block>
        <block symbolname="MUX8T1_32" name="XLXI_9">
            <blockpin signalname="ALU_operation(2:0)" name="s(2:0)" />
            <blockpin signalname="XLXN_45(31:0)" name="I7(31:0)" />
            <blockpin signalname="S(31:0)" name="I6(31:0)" />
            <blockpin signalname="XLXN_21(31:0)" name="I5(31:0)" />
            <blockpin signalname="XLXN_20(31:0)" name="I4(31:0)" />
            <blockpin signalname="XLXN_19(31:0)" name="I3(31:0)" />
            <blockpin signalname="S(31:0)" name="I2(31:0)" />
            <blockpin signalname="XLXN_40(31:0)" name="I1(31:0)" />
            <blockpin signalname="XLXN_14(31:0)" name="I0(31:0)" />
            <blockpin signalname="res(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_11">
            <blockpin signalname="N0" name="G" />
        </block>
        <block symbolname="or_bit_32" name="XLXI_12">
            <blockpin signalname="zero" name="o" />
            <blockpin signalname="res(31:0)" name="A(31:0)" />
        </block>
        <block symbolname="or32" name="XLXI_15">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_40(31:0)" name="res(31:0)" />
        </block>
        <block symbolname="overflow_32" name="XLXI_18">
            <blockpin signalname="A(31)" name="A" />
            <blockpin signalname="B(31)" name="B" />
            <blockpin signalname="S(31)" name="S" />
            <blockpin signalname="ALU_operation(2:0)" name="operation(2:0)" />
            <blockpin signalname="overflow" name="overflow" />
        </block>
        <block symbolname="slt32" name="XLXI_20">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="S(31:0)" name="S(31:0)" />
            <blockpin signalname="XLXN_45(31:0)" name="slt(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1056" y="1168" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1088" y="624" name="XLXI_2" orien="R0">
        </instance>
        <iomarker fontsize="28" x="720" y="400" name="ALU_operation(2:0)" orien="R180" />
        <instance x="1088" y="1248" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1072" y="1376" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1088" y="1584" name="XLXI_6" orien="R0">
        </instance>
        <branch name="A(31:0)">
            <wire x2="1040" y1="528" y2="528" x1="640" />
            <wire x2="1120" y1="528" y2="528" x1="1040" />
            <wire x2="1040" y1="528" y2="688" x1="1040" />
            <wire x2="1040" y1="688" y2="912" x1="1040" />
            <wire x2="1104" y1="912" y2="912" x1="1040" />
            <wire x2="1040" y1="912" y2="1152" x1="1040" />
            <wire x2="1040" y1="1152" y2="1280" x1="1040" />
            <wire x2="1040" y1="1280" y2="1488" x1="1040" />
            <wire x2="1120" y1="1488" y2="1488" x1="1040" />
            <wire x2="1120" y1="1280" y2="1280" x1="1040" />
            <wire x2="1120" y1="1152" y2="1152" x1="1040" />
            <wire x2="1120" y1="688" y2="688" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="720" y="1552" name="B(31:0)" orien="R180" />
        <iomarker fontsize="28" x="640" y="528" name="A(31:0)" orien="R180" />
        <instance x="1776" y="1024" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_14(31:0)">
            <wire x2="1552" y1="560" y2="560" x1="1312" />
            <wire x2="1552" y1="560" y2="784" x1="1552" />
            <wire x2="1776" y1="784" y2="784" x1="1552" />
        </branch>
        <branch name="S(31:0)">
            <wire x2="1776" y1="848" y2="848" x1="1440" />
            <wire x2="1440" y1="848" y2="976" x1="1440" />
            <wire x2="1776" y1="976" y2="976" x1="1440" />
        </branch>
        <branch name="S(32:0)">
            <wire x2="1344" y1="976" y2="976" x1="1296" />
            <wire x2="1344" y1="960" y2="976" x1="1344" />
        </branch>
        <branch name="XLXN_19(31:0)">
            <wire x2="1520" y1="1184" y2="1184" x1="1344" />
            <wire x2="1520" y1="880" y2="1184" x1="1520" />
            <wire x2="1776" y1="880" y2="880" x1="1520" />
        </branch>
        <branch name="XLXN_20(31:0)">
            <wire x2="1552" y1="1312" y2="1312" x1="1328" />
            <wire x2="1776" y1="912" y2="912" x1="1552" />
            <wire x2="1552" y1="912" y2="1312" x1="1552" />
        </branch>
        <branch name="XLXN_21(31:0)">
            <wire x2="1584" y1="1520" y2="1520" x1="1376" />
            <wire x2="1776" y1="944" y2="944" x1="1584" />
            <wire x2="1584" y1="944" y2="1520" x1="1584" />
        </branch>
        <instance x="1696" y="1376" name="XLXI_11" orien="R0" />
        <branch name="ALU_operation(2:0)">
            <wire x2="800" y1="400" y2="400" x1="720" />
            <wire x2="1824" y1="400" y2="400" x1="800" />
            <wire x2="1824" y1="400" y2="752" x1="1824" />
        </branch>
        <bustap x2="800" y1="400" y2="496" x1="800" />
        <branch name="res(31:0)">
            <wire x2="2240" y1="864" y2="864" x1="1872" />
            <wire x2="2240" y1="864" y2="1120" x1="2240" />
            <wire x2="2320" y1="864" y2="864" x1="2240" />
            <wire x2="2240" y1="1120" y2="1120" x1="2032" />
            <wire x2="2032" y1="1120" y2="1232" x1="2032" />
            <wire x2="2128" y1="1232" y2="1232" x1="2032" />
        </branch>
        <instance x="2096" y="1280" name="XLXI_12" orien="R0">
        </instance>
        <branch name="zero">
            <wire x2="2416" y1="1232" y2="1232" x1="2400" />
        </branch>
        <iomarker fontsize="28" x="2416" y="1232" name="zero" orien="R0" />
        <branch name="overflow">
            <wire x2="2336" y1="1440" y2="1440" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2336" y="1440" name="overflow" orien="R0" />
        <bustap x2="1440" y1="976" y2="976" x1="1344" />
        <branch name="N0">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="1216" type="branch" />
            <wire x2="1760" y1="1216" y2="1248" x1="1760" />
        </branch>
        <branch name="XLXN_40(31:0)">
            <wire x2="1440" y1="720" y2="720" x1="1312" />
            <wire x2="1440" y1="720" y2="816" x1="1440" />
            <wire x2="1776" y1="816" y2="816" x1="1440" />
        </branch>
        <instance x="1072" y="784" name="XLXI_15" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2320" y="864" name="res(31:0)" orien="R0" />
        <branch name="B(31:0)">
            <wire x2="944" y1="1552" y2="1552" x1="720" />
            <wire x2="1120" y1="1552" y2="1552" x1="944" />
            <wire x2="1120" y1="592" y2="592" x1="944" />
            <wire x2="944" y1="592" y2="752" x1="944" />
            <wire x2="1120" y1="752" y2="752" x1="944" />
            <wire x2="944" y1="752" y2="1040" x1="944" />
            <wire x2="944" y1="1040" y2="1216" x1="944" />
            <wire x2="1120" y1="1216" y2="1216" x1="944" />
            <wire x2="944" y1="1216" y2="1344" x1="944" />
            <wire x2="944" y1="1344" y2="1552" x1="944" />
            <wire x2="1120" y1="1344" y2="1344" x1="944" />
            <wire x2="1104" y1="1040" y2="1040" x1="944" />
        </branch>
        <branch name="ALU_operation(2)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="800" y="528" type="branch" />
            <wire x2="800" y1="496" y2="528" x1="800" />
            <wire x2="800" y1="528" y2="800" x1="800" />
            <wire x2="1184" y1="800" y2="800" x1="800" />
            <wire x2="1184" y1="800" y2="864" x1="1184" />
        </branch>
        <instance x="1888" y="1664" name="XLXI_18" orien="R0">
        </instance>
        <branch name="ALU_operation(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1632" type="branch" />
            <wire x2="1888" y1="1632" y2="1632" x1="1840" />
        </branch>
        <branch name="S(31)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1568" type="branch" />
            <wire x2="1888" y1="1568" y2="1568" x1="1840" />
        </branch>
        <branch name="B(31)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1504" type="branch" />
            <wire x2="1888" y1="1504" y2="1504" x1="1840" />
        </branch>
        <branch name="A(31)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1440" type="branch" />
            <wire x2="1888" y1="1440" y2="1440" x1="1840" />
        </branch>
        <branch name="XLXN_45(31:0)">
            <wire x2="1408" y1="1888" y2="1888" x1="1392" />
            <wire x2="1632" y1="1600" y2="1600" x1="1408" />
            <wire x2="1408" y1="1600" y2="1888" x1="1408" />
            <wire x2="1776" y1="1008" y2="1008" x1="1632" />
            <wire x2="1632" y1="1008" y2="1600" x1="1632" />
        </branch>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1696" type="branch" />
            <wire x2="1008" y1="1696" y2="1696" x1="960" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1760" type="branch" />
            <wire x2="1008" y1="1760" y2="1760" x1="960" />
        </branch>
        <branch name="S(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1824" type="branch" />
            <wire x2="1008" y1="1824" y2="1824" x1="960" />
        </branch>
        <instance x="1008" y="1856" name="XLXI_20" orien="R0">
        </instance>
    </sheet>
</drawing>