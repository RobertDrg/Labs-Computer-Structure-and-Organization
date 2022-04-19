VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL B(2)
        SIGNAL B(3)
        SIGNAL B(1)
        SIGNAL B(0)
        SIGNAL NB(3)
        SIGNAL NB(2)
        SIGNAL NB(1)
        SIGNAL NB(0)
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL S1A0
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL R(3:0)
        SIGNAL XLXN_28
        SIGNAL XLXN_29
        SIGNAL NB(3:0)
        SIGNAL XLXN_35
        SIGNAL B(3:0)
        SIGNAL BNB(3:0)
        SIGNAL BNB(3)
        SIGNAL BNB(2)
        SIGNAL BNB(1)
        SIGNAL BNB(0)
        SIGNAL Co
        SIGNAL A(3:0)
        PORT Input S1A0
        PORT Output R(3:0)
        PORT Input B(3:0)
        PORT Output Co
        PORT Input A(3:0)
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF m2_1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 96 -64 96 -192 
            LINE N 256 -96 96 -64 
            LINE N 256 -160 256 -96 
            LINE N 96 -192 256 -160 
            LINE N 176 -32 96 -32 
            LINE N 176 -80 176 -32 
            LINE N 0 -32 96 -32 
            LINE N 320 -128 256 -128 
            LINE N 0 -96 96 -96 
            LINE N 0 -160 96 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF as4
            TIMESTAMP 2021 3 14 16 5 3
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 inv
            PIN I B(3)
            PIN O NB(3)
        END BLOCK
        BEGIN BLOCK XLXI_2 inv
            PIN I B(2)
            PIN O NB(2)
        END BLOCK
        BEGIN BLOCK XLXI_3 inv
            PIN I B(1)
            PIN O NB(1)
        END BLOCK
        BEGIN BLOCK XLXI_4 inv
            PIN I B(0)
            PIN O NB(0)
        END BLOCK
        BEGIN BLOCK XLXI_14 m2_1
            PIN D0 B(3)
            PIN D1 NB(3)
            PIN S0 S1A0
            PIN O BNB(3)
        END BLOCK
        BEGIN BLOCK XLXI_15 m2_1
            PIN D0 B(2)
            PIN D1 NB(2)
            PIN S0 S1A0
            PIN O BNB(2)
        END BLOCK
        BEGIN BLOCK XLXI_16 m2_1
            PIN D0 B(1)
            PIN D1 NB(1)
            PIN S0 S1A0
            PIN O BNB(1)
        END BLOCK
        BEGIN BLOCK XLXI_17 m2_1
            PIN D0 B(0)
            PIN D1 NB(0)
            PIN S0 S1A0
            PIN O BNB(0)
        END BLOCK
        BEGIN BLOCK XLXI_18 as4
            PIN a(3:0) A(3:0)
            PIN b(3:0) BNB(3:0)
            PIN Ci S1A0
            PIN r(3:0) R(3:0)
            PIN Co Co
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH B(3)
            WIRE 656 256 656 320
            WIRE 656 320 656 368
            WIRE 656 368 656 384
            WIRE 656 368 720 368
            WIRE 720 368 720 704
            BEGIN DISPLAY 656 320 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(0)
            WIRE 1680 256 1680 320
            WIRE 1680 320 1680 352
            WIRE 1680 352 1680 384
            WIRE 1680 352 1744 352
            WIRE 1744 352 1744 704
            BEGIN DISPLAY 1680 320 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(1)
            WIRE 1328 256 1328 320
            WIRE 1328 320 1328 352
            WIRE 1328 352 1328 384
            WIRE 1328 352 1392 352
            WIRE 1392 352 1392 704
            BEGIN DISPLAY 1328 320 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(2)
            WIRE 976 256 976 320
            WIRE 976 320 976 352
            WIRE 976 352 976 384
            WIRE 976 352 1040 352
            WIRE 1040 352 1040 704
            BEGIN DISPLAY 976 320 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_17 1584 704 R90
        INSTANCE XLXI_16 1232 704 R90
        INSTANCE XLXI_15 880 704 R90
        INSTANCE XLXI_1 624 384 R90
        INSTANCE XLXI_2 944 384 R90
        INSTANCE XLXI_3 1296 384 R90
        INSTANCE XLXI_4 1648 384 R90
        BEGIN BRANCH NB(3)
            WIRE 656 608 656 640
            WIRE 656 640 656 704
            BEGIN DISPLAY 656 640 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH NB(2)
            WIRE 976 608 976 640
            WIRE 976 640 976 704
            BEGIN DISPLAY 976 640 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH NB(1)
            WIRE 1328 608 1328 640
            WIRE 1328 640 1328 704
            BEGIN DISPLAY 1328 640 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH NB(0)
            WIRE 1680 608 1680 640
            WIRE 1680 640 1680 704
            BEGIN DISPLAY 1680 640 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S1A0
            WIRE 464 656 512 656
            WIRE 512 656 592 656
            WIRE 592 656 912 656
            WIRE 912 656 912 704
            WIRE 912 656 1264 656
            WIRE 1264 656 1616 656
            WIRE 1616 656 1616 704
            WIRE 1264 656 1264 704
            WIRE 592 656 592 704
            WIRE 512 656 512 1440
            WIRE 512 1440 800 1440
        END BRANCH
        BEGIN BRANCH R(3:0)
            WIRE 928 1824 928 1888
        END BRANCH
        IOMARKER 928 1888 R(3:0) R90 28
        INSTANCE XLXI_14 560 704 R90
        BEGIN BRANCH NB(3:0)
            WIRE 352 496 432 496
            WIRE 432 496 496 496
            BEGIN DISPLAY 432 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3:0)
            WIRE 416 160 656 160
            WIRE 656 160 976 160
            WIRE 976 160 1152 160
            WIRE 1152 160 1328 160
            WIRE 1328 160 1680 160
            WIRE 1680 160 2048 160
            BEGIN DISPLAY 1152 160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2048 160 B(3:0) R0 28
        BUSTAP 976 160 976 256
        BUSTAP 656 160 656 256
        BUSTAP 1680 160 1680 256
        BUSTAP 1328 160 1328 256
        IOMARKER 464 656 S1A0 R180 28
        BEGIN BRANCH BNB(3:0)
            WIRE 608 1232 688 1232
            WIRE 688 1232 816 1232
            WIRE 816 1232 864 1232
            WIRE 864 1232 1008 1232
            WIRE 1008 1232 1360 1232
            WIRE 1360 1232 1712 1232
            WIRE 1712 1232 1872 1232
            WIRE 864 1232 864 1440
            BEGIN DISPLAY 816 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 688 1232 688 1136
        BEGIN BRANCH BNB(3)
            WIRE 688 1024 688 1088
            WIRE 688 1088 688 1136
            BEGIN DISPLAY 688 1088 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1008 1232 1008 1136
        BEGIN BRANCH BNB(2)
            WIRE 1008 1024 1008 1072
            WIRE 1008 1072 1008 1136
            BEGIN DISPLAY 1008 1072 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1360 1232 1360 1136
        BEGIN BRANCH BNB(1)
            WIRE 1360 1024 1360 1072
            WIRE 1360 1072 1360 1136
            BEGIN DISPLAY 1360 1072 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1712 1232 1712 1136
        BEGIN BRANCH BNB(0)
            WIRE 1712 1024 1712 1072
            WIRE 1712 1072 1712 1136
            BEGIN DISPLAY 1712 1072 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_18 768 1440 R90
        END INSTANCE
        BEGIN BRANCH Co
            WIRE 864 1824 864 1840
            WIRE 864 1840 864 1888
        END BRANCH
        IOMARKER 864 1888 Co R90 28
        BEGIN BRANCH A(3:0)
            WIRE 928 1376 1872 1376
            WIRE 928 1376 928 1440
        END BRANCH
        IOMARKER 1872 1376 A(3:0) R0 28
    END SHEET
END SCHEMATIC
