VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL r(3:0)
        SIGNAL r(3)
        SIGNAL XLXN_30
        SIGNAL XLXN_31
        SIGNAL r(2)
        SIGNAL r(1)
        SIGNAL r(0)
        SIGNAL Co
        SIGNAL a(3:0)
        SIGNAL b(3:0)
        SIGNAL a(1)
        SIGNAL a(0)
        SIGNAL a(2)
        SIGNAL a(3)
        SIGNAL b(1)
        SIGNAL b(2)
        SIGNAL b(3)
        SIGNAL b(0)
        SIGNAL Ci
        PORT Output r(3:0)
        PORT Output Co
        PORT Input a(3:0)
        PORT Input b(3:0)
        PORT Input Ci
        BEGIN BLOCKDEF sum1g
            TIMESTAMP 2021 3 6 17 23 44
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -32 0 -32 
            LINE N 304 -144 368 -144 
            LINE N 304 -48 368 -48 
            LINE N 64 -144 0 -144 
            LINE N 64 -96 0 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 sum1g
            PIN Ci XLXN_1
            PIN Co Co
            PIN S r(3)
            PIN B b(3)
            PIN A a(3)
        END BLOCK
        BEGIN BLOCK XLXI_2 sum1g
            PIN Ci XLXN_30
            PIN Co XLXN_1
            PIN S r(2)
            PIN B b(2)
            PIN A a(2)
        END BLOCK
        BEGIN BLOCK XLXI_3 sum1g
            PIN Ci XLXN_31
            PIN Co XLXN_30
            PIN S r(1)
            PIN B b(1)
            PIN A a(1)
        END BLOCK
        BEGIN BLOCK XLXI_4 sum1g
            PIN Ci Ci
            PIN Co XLXN_31
            PIN S r(0)
            PIN B b(0)
            PIN A a(0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH r(3:0)
            WIRE 32 992 336 992
            WIRE 336 992 752 992
            WIRE 752 992 1184 992
            WIRE 1184 992 1648 992
            WIRE 1648 992 1920 992
        END BRANCH
        IOMARKER 1920 992 r(3:0) R0 28
        BEGIN INSTANCE XLXI_3 1232 464 M90
        END INSTANCE
        BUSTAP 336 992 336 896
        BEGIN BRANCH r(3)
            WIRE 336 816 336 880
            WIRE 336 880 336 896
            BEGIN DISPLAY 336 880 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_4 1696 464 M90
        END INSTANCE
        BEGIN INSTANCE XLXI_2 800 464 M90
        END INSTANCE
        BEGIN INSTANCE XLXI_1 384 448 M90
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 352 416 464 416
            WIRE 464 416 464 896
            WIRE 464 896 656 896
            WIRE 352 416 352 448
            WIRE 656 832 656 896
        END BRANCH
        BEGIN BRANCH XLXN_30
            WIRE 768 416 768 464
            WIRE 768 416 896 416
            WIRE 896 416 896 896
            WIRE 896 896 1088 896
            WIRE 1088 832 1088 896
        END BRANCH
        BEGIN BRANCH XLXN_31
            WIRE 1200 416 1200 464
            WIRE 1200 416 1360 416
            WIRE 1360 416 1360 896
            WIRE 1360 896 1552 896
            WIRE 1552 832 1552 896
        END BRANCH
        BUSTAP 752 992 752 896
        BEGIN BRANCH r(2)
            WIRE 752 832 752 880
            WIRE 752 880 752 896
            BEGIN DISPLAY 752 880 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1184 992 1184 896
        BEGIN BRANCH r(1)
            WIRE 1184 832 1184 864
            WIRE 1184 864 1184 896
            BEGIN DISPLAY 1184 864 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1648 992 1648 896
        BEGIN BRANCH r(0)
            WIRE 1648 832 1648 864
            WIRE 1648 864 1648 896
            BEGIN DISPLAY 1648 864 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Co
            WIRE 240 816 240 848
        END BRANCH
        IOMARKER 240 848 Co R90 28
        BEGIN BRANCH a(3:0)
            WIRE 112 256 288 256
            WIRE 288 256 704 256
            WIRE 704 256 1136 256
            WIRE 1136 256 1600 256
            WIRE 1600 256 1936 256
        END BRANCH
        BEGIN BRANCH b(3:0)
            WIRE 112 128 240 128
            WIRE 240 128 656 128
            WIRE 656 128 1088 128
            WIRE 1088 128 1552 128
            WIRE 1552 128 1936 128
        END BRANCH
        IOMARKER 1936 256 a(3:0) R0 28
        IOMARKER 1936 128 b(3:0) R0 28
        BUSTAP 1136 256 1136 352
        BEGIN BRANCH a(1)
            WIRE 1136 352 1136 368
            WIRE 1136 368 1136 464
            BEGIN DISPLAY 1136 368 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1600 256 1600 352
        BEGIN BRANCH a(0)
            WIRE 1600 352 1600 384
            WIRE 1600 384 1600 464
            BEGIN DISPLAY 1600 384 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 704 256 704 352
        BEGIN BRANCH a(2)
            WIRE 704 352 704 384
            WIRE 704 384 704 464
            BEGIN DISPLAY 704 384 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 288 256 288 352
        BEGIN BRANCH a(3)
            WIRE 288 352 288 384
            WIRE 288 384 288 448
            BEGIN DISPLAY 288 384 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1088 128 1088 224
        BEGIN BRANCH b(1)
            WIRE 1088 224 1088 368
            WIRE 1088 368 1088 464
            BEGIN DISPLAY 1088 368 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 656 128 656 224
        BEGIN BRANCH b(2)
            WIRE 656 224 656 384
            WIRE 656 384 656 464
            BEGIN DISPLAY 656 384 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 240 128 240 224
        BEGIN BRANCH b(3)
            WIRE 240 224 240 384
            WIRE 240 384 240 448
            BEGIN DISPLAY 240 384 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1552 128 1552 224
        BEGIN BRANCH b(0)
            WIRE 1552 224 1552 384
            WIRE 1552 384 1552 464
            BEGIN DISPLAY 1552 384 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Ci
            WIRE 1664 448 1664 464
            WIRE 1664 448 1872 448
            WIRE 1872 448 1872 560
        END BRANCH
        IOMARKER 1872 560 Ci R90 28
    END SHEET
END SCHEMATIC
