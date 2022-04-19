VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL PC(31:0)
        SIGNAL New_PC(31:0)
        SIGNAL Clk
        SIGNAL PC(6:2)
        SIGNAL Instr(31:0)
        SIGNAL Instr(25:21)
        SIGNAL Instr(20:16)
        SIGNAL Instr(15:11)
        SIGNAL RegDest
        SIGNAL WrReg(4:0)
        SIGNAL RegWr
        SIGNAL RdData1(31:0)
        SIGNAL RdData2(31:0)
        SIGNAL Instr(15:0)
        SIGNAL ALUOP(1:0)
        SIGNAL ALUSrc
        SIGNAL ALU_Out(31:0)
        SIGNAL MemOut(31:0)
        SIGNAL ALU_Out(6:2)
        SIGNAL Mem2Reg
        SIGNAL WrData(31:0)
        SIGNAL INW0(31:0)
        SIGNAL INW1(31:0)
        SIGNAL OUTW0(31:0)
        SIGNAL MemWr
        SIGNAL Instr(31:26)
        SIGNAL Instr(5:0)
        PORT Input Clk
        PORT Input INW0(31:0)
        PORT Input INW1(31:0)
        PORT Output OUTW0(31:0)
        BEGIN BLOCKDEF ProgCnt
            TIMESTAMP 2021 3 28 11 37 14
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF PC_Update
            TIMESTAMP 2021 3 28 13 34 52
            RECTANGLE N 64 -152 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -124 384 -100 
            LINE N 320 -112 384 -112 
        END BLOCKDEF
        BEGIN BLOCKDEF ROM32x32
            TIMESTAMP 2021 3 28 14 7 29
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V5
            TIMESTAMP 2021 3 28 14 20 53
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -124 64 -100 
            LINE N 64 -112 0 -112 
            LINE N 64 -64 0 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF File_Regs
            TIMESTAMP 2021 4 11 10 41 33
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 416 -428 480 -404 
            LINE N 416 -416 480 -416 
            RECTANGLE N 0 -12 64 12 
            LINE N 64 0 0 0 
            RECTANGLE N 416 -364 480 -340 
            LINE N 416 -352 480 -352 
            RECTANGLE N 0 84 64 108 
            LINE N 64 96 0 96 
            RECTANGLE N 64 -448 416 132 
            LINE N 64 -352 0 -352 
        END BLOCKDEF
        BEGIN BLOCKDEF ALU
            TIMESTAMP 2021 4 11 20 7 51
            RECTANGLE N 64 -320 320 0 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            LINE N 64 -48 0 -48 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF DataMem
            TIMESTAMP 2021 4 11 19 16 20
            RECTANGLE N 0 68 64 92 
            LINE N 64 80 0 80 
            RECTANGLE N 0 132 64 156 
            LINE N 64 144 0 144 
            RECTANGLE N 384 132 448 156 
            LINE N 384 144 448 144 
            LINE N 64 16 0 16 
            RECTANGLE N 64 -240 384 188 
            LINE N 64 -208 0 -208 
            RECTANGLE N 0 -156 64 -132 
            LINE N 64 -144 0 -144 
            RECTANGLE N 384 -156 448 -132 
            LINE N 384 -144 448 -144 
            RECTANGLE N 0 -92 64 -68 
            LINE N 64 -80 0 -80 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V32
            TIMESTAMP 2021 4 11 19 21 2
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 0 -60 64 -36 
            LINE N 64 -48 0 -48 
            RECTANGLE N 0 -124 64 -100 
            LINE N 64 -112 0 -112 
        END BLOCKDEF
        BEGIN BLOCKDEF ctrl
            TIMESTAMP 2021 4 11 19 43 14
            RECTANGLE N 64 -384 320 0 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -352 384 -352 
            LINE N 320 -288 384 -288 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK U_PC ProgCnt
            PIN Clk Clk
            PIN New_PC(31:0) New_PC(31:0)
            PIN PC(31:0) PC(31:0)
        END BLOCK
        BEGIN BLOCK U_New_PC PC_Update
            PIN PC(31:0) PC(31:0)
            PIN New_PC(31:0) New_PC(31:0)
        END BLOCK
        BEGIN BLOCK U_ROM ROM32x32
            PIN Addr(4:0) PC(6:2)
            PIN Data(31:0) Instr(31:0)
        END BLOCK
        BEGIN BLOCK U_MUXRegD MUX2V5
            PIN Y(4:0) WrReg(4:0)
            PIN I0(4:0) Instr(20:16)
            PIN I1(4:0) Instr(15:11)
            PIN Sel RegDest
        END BLOCK
        BEGIN BLOCK U_Regs File_Regs
            PIN Clk Clk
            PIN RdReg1(4:0) Instr(25:21)
            PIN RdReg2(4:0) Instr(20:16)
            PIN WrReg(4:0) WrReg(4:0)
            PIN WRData(31:0) WrData(31:0)
            PIN RdData1(31:0) RdData1(31:0)
            PIN RdData2(31:0) RdData2(31:0)
            PIN WrEn RegWr
        END BLOCK
        BEGIN BLOCK U_ALU ALU
            PIN ALUSrc ALUSrc
            PIN RdData1(31:0) RdData1(31:0)
            PIN RdData2(31:0) RdData2(31:0)
            PIN FAddr(15:0) Instr(15:0)
            PIN ALUOP(1:0) ALUOP(1:0)
            PIN Y(31:0)
        END BLOCK
        BEGIN BLOCK U_DataMem DataMem
            PIN Wr MemWr
            PIN Addr(4:0) ALU_Out(6:2)
            PIN DataIn(31:0) RdData2(31:0)
            PIN DataOut(31:0) MemOut(31:0)
            PIN Clk Clk
            PIN INW0(31:0) INW0(31:0)
            PIN OUTW0(31:0) OUTW0(31:0)
            PIN INW1(31:0) INW1(31:0)
        END BLOCK
        BEGIN BLOCK U_MuxData MUX2V32
            PIN Sel Mem2Reg
            PIN Y(31:0) WrData(31:0)
            PIN I0(31:0) ALU_Out(31:0)
            PIN I1(31:0) MemOut(31:0)
        END BLOCK
        BEGIN BLOCK U_ctrl ctrl
            PIN OP(5:0) Instr(31:26)
            PIN Funct(5:0) Instr(5:0)
            PIN ALUSrc ALUSrc
            PIN MemWr MemWr
            PIN Mem2Reg Mem2Reg
            PIN RegWr RegWr
            PIN RegDest RegDest
            PIN ALUOP(1:0) ALUOP(1:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN INSTANCE U_PC 560 864 R0
            BEGIN DISPLAY 96 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE U_New_PC 944 480 M0
            BEGIN DISPLAY 368 -256 ATTR InstName
                ALIGNMENT RIGHT
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH PC(31:0)
            WIRE 944 448 1024 448
            WIRE 1024 448 1024 592
            WIRE 1024 592 1024 768
            WIRE 1024 768 1024 896
            WIRE 1024 896 1024 1040
            WIRE 944 768 1024 768
            BEGIN DISPLAY 1024 592 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH New_PC(31:0)
            WIRE 352 368 560 368
            WIRE 352 368 352 560
            WIRE 352 560 352 832
            WIRE 352 832 560 832
            BEGIN DISPLAY 352 560 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 528 768 560 768
        END BRANCH
        IOMARKER 528 768 Clk R180 28
        BUSTAP 1024 896 1120 896
        BEGIN BRANCH PC(6:2)
            WIRE 1120 896 1184 896
            WIRE 1184 896 1264 896
            BEGIN DISPLAY 1184 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ROM 1264 928 R0
            BEGIN DISPLAY 48 -168 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Instr(31:0)
            WIRE 1648 896 1744 896
            WIRE 1744 896 1744 960
            WIRE 1744 960 1744 1024
            WIRE 1744 1024 1744 1264
            WIRE 1744 1264 1744 1424
            WIRE 1744 1424 1744 1488
            WIRE 1744 1488 1744 1632
            WIRE 1744 1632 1744 1952
            WIRE 1744 1952 1744 2272
            BEGIN DISPLAY 1744 1424 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1744 960 1840 960
        BUSTAP 1744 1024 1840 1024
        BEGIN BRANCH Instr(25:21)
            WIRE 1840 960 2224 960
            WIRE 2224 960 2528 960
            BEGIN DISPLAY 2224 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(20:16)
            WIRE 1840 1024 1904 1024
            WIRE 1904 1024 2224 1024
            WIRE 2224 1024 2528 1024
            WIRE 1904 1024 1904 1184
            WIRE 1904 1184 1984 1184
            BEGIN DISPLAY 2224 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1744 1264 1840 1264
        BEGIN BRANCH Instr(15:11)
            WIRE 1840 1264 1888 1264
            WIRE 1888 1232 1984 1232
            WIRE 1888 1232 1888 1264
            BEGIN DISPLAY 1888 1264 ATTR Name
                ALIGNMENT SOFT-TCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 1840 1328 1936 1328
            WIRE 1936 1280 1984 1280
            WIRE 1936 1280 1936 1328
            BEGIN DISPLAY 1936 1328 ATTR Name
                ALIGNMENT SOFT-TCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WrReg(4:0)
            WIRE 2368 1184 2448 1184
            WIRE 2448 1184 2528 1184
            BEGIN DISPLAY 2448 1184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_MUXRegD 1984 1344 R0
            BEGIN DISPLAY 64 -280 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Clk
            WIRE 2448 768 2480 768
            WIRE 2480 768 2528 768
            BEGIN DISPLAY 2480 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2352 832 2432 832
            WIRE 2432 832 2528 832
            BEGIN DISPLAY 2432 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RdData1(31:0)
            WIRE 3008 768 3184 768
            WIRE 3184 768 3312 768
            BEGIN DISPLAY 3184 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RdData2(31:0)
            WIRE 3008 832 3088 832
            WIRE 3088 832 3168 832
            WIRE 3168 832 3312 832
            WIRE 3088 832 3088 1120
            WIRE 3088 1120 3952 1120
            WIRE 3952 1024 3968 1024
            WIRE 3952 1024 3952 1120
            BEGIN DISPLAY 3168 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1744 1488 1840 1488
        BEGIN BRANCH Instr(15:0)
            WIRE 1840 1488 2288 1488
            WIRE 2288 1488 3040 1488
            WIRE 3040 896 3040 1488
            WIRE 3040 896 3312 896
            BEGIN DISPLAY 2288 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(1:0)
            WIRE 3136 960 3280 960
            WIRE 3280 960 3312 960
            BEGIN DISPLAY 3280 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUSrc
            WIRE 3184 1008 3232 1008
            WIRE 3232 1008 3312 1008
            BEGIN DISPLAY 3232 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_Regs 2528 1184 R0
            BEGIN DISPLAY 96 -536 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE U_ALU 3312 1056 R0
            BEGIN DISPLAY 160 -408 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH MemOut(31:0)
            WIRE 4416 1024 4544 1024
            WIRE 4544 1024 4720 1024
            BEGIN DISPLAY 4544 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3712 1024 3808 1024
        BEGIN BRANCH ALU_Out(6:2)
            WIRE 3808 1024 3824 1024
            WIRE 3824 960 3824 1024
            WIRE 3824 960 3872 960
            WIRE 3872 960 3968 960
            BEGIN DISPLAY 3872 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_DataMem 3968 880 R0
            BEGIN DISPLAY 96 -316 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE U_MuxData 4720 1136 R0
            BEGIN DISPLAY 64 -280 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH ALU_Out(31:0)
            WIRE 3696 976 3712 976
            WIRE 3712 976 3712 1024
            WIRE 3712 1024 3712 1264
            WIRE 3712 1264 4096 1264
            WIRE 4096 1264 4624 1264
            WIRE 4624 1088 4624 1264
            WIRE 4624 1088 4720 1088
            BEGIN DISPLAY 4096 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 4512 976 4592 976
            WIRE 4592 976 4720 976
            BEGIN DISPLAY 4592 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WrData(31:0)
            WIRE 2464 1280 2528 1280
            WIRE 2464 1280 2464 1376
            WIRE 2464 1376 3472 1376
            WIRE 3472 1376 5184 1376
            WIRE 5104 976 5184 976
            WIRE 5184 976 5184 1376
            BEGIN DISPLAY 3472 1376 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INW0(31:0)
            WIRE 3936 736 3968 736
        END BRANCH
        IOMARKER 3936 736 INW0(31:0) R180 28
        BEGIN BRANCH INW1(31:0)
            WIRE 3936 800 3968 800
        END BRANCH
        IOMARKER 3936 800 INW1(31:0) R180 28
        BEGIN BRANCH OUTW0(31:0)
            WIRE 4416 736 4448 736
        END BRANCH
        IOMARKER 4448 736 OUTW0(31:0) R0 28
        BEGIN BRANCH MemWr
            WIRE 3808 896 3872 896
            WIRE 3872 896 3968 896
            BEGIN DISPLAY 3872 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 3856 672 3904 672
            WIRE 3904 672 3968 672
            BEGIN DISPLAY 3904 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1744 1632 1840 1632
        BUSTAP 1744 1952 1840 1952
        BEGIN BRANCH Instr(31:26)
            WIRE 1840 1632 1904 1632
            WIRE 1904 1632 2032 1632
            BEGIN DISPLAY 1904 1632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(5:0)
            WIRE 1840 1952 1904 1952
            WIRE 1904 1952 2032 1952
            BEGIN DISPLAY 1904 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ctrl 2032 1984 R0
            BEGIN DISPLAY 256 -408 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH ALUSrc
            WIRE 2416 1632 2480 1632
            WIRE 2480 1632 2592 1632
            BEGIN DISPLAY 2480 1632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 2416 1696 2464 1696
            WIRE 2464 1696 2592 1696
            BEGIN DISPLAY 2464 1696 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 2416 1760 2464 1760
            WIRE 2464 1760 2592 1760
            BEGIN DISPLAY 2464 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2416 1824 2464 1824
            WIRE 2464 1824 2592 1824
            BEGIN DISPLAY 2464 1824 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 2416 1888 2480 1888
            WIRE 2480 1888 2608 1888
            BEGIN DISPLAY 2480 1888 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(1:0)
            WIRE 2416 1952 2512 1952
            WIRE 2512 1952 2640 1952
            BEGIN DISPLAY 2512 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
