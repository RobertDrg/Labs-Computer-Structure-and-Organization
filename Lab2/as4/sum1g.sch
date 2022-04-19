VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL A
        SIGNAL B
        SIGNAL Ci
        SIGNAL S
        SIGNAL Co
        PORT Input A
        PORT Input B
        PORT Input Ci
        PORT Output S
        PORT Output Co
        BEGIN BLOCKDEF xor3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 208 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            ARC N -24 -184 88 -72 64 -80 64 -176 
            ARC N 44 -176 220 0 208 -128 128 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 128 -80 64 -80 
            LINE N 128 -176 64 -176 
            ARC N 44 -256 220 -80 128 -80 208 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF or3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 192 -128 
            ARC N 28 -256 204 -80 112 -80 192 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 112 -80 48 -80 
            ARC N 28 -176 204 0 192 -128 112 -176 
            LINE N 112 -176 48 -176 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 xor3
            PIN I0 Ci
            PIN I1 B
            PIN I2 A
            PIN O S
        END BLOCK
        BEGIN BLOCK XLXI_2 and2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 Ci
            PIN I1 A
            PIN O XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_4 and2
            PIN I0 Ci
            PIN I1 B
            PIN O XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_5 or3
            PIN I0 XLXN_3
            PIN I1 XLXN_2
            PIN I2 XLXN_1
            PIN O Co
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_2 480 736 R0
        INSTANCE XLXI_3 480 960 R0
        INSTANCE XLXI_4 480 1136 R0
        INSTANCE XLXI_5 1104 944 R0
        BEGIN BRANCH XLXN_1
            WIRE 736 640 1104 640
            WIRE 1104 640 1104 752
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 736 864 912 864
            WIRE 912 816 912 864
            WIRE 912 816 1104 816
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 736 1040 1104 1040
            WIRE 1104 880 1104 1040
        END BRANCH
        BEGIN BRANCH A
            WIRE 336 256 432 256
            WIRE 432 256 448 256
        END BRANCH
        BEGIN BRANCH B
            WIRE 336 320 432 320
            WIRE 432 320 448 320
        END BRANCH
        BEGIN BRANCH Ci
            WIRE 336 384 432 384
            WIRE 432 384 448 384
        END BRANCH
        BEGIN BRANCH S
            WIRE 704 320 720 320
            WIRE 720 320 1392 320
        END BRANCH
        BEGIN BRANCH Co
            WIRE 1360 816 1392 816
        END BRANCH
        IOMARKER 1392 816 Co R0 28
        BEGIN BRANCH A
            WIRE 320 608 352 608
            WIRE 352 608 480 608
            BEGIN DISPLAY 352 608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A
            WIRE 320 832 352 832
            WIRE 352 832 480 832
            BEGIN DISPLAY 352 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Ci
            WIRE 320 896 352 896
            WIRE 352 896 480 896
            BEGIN DISPLAY 352 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B
            WIRE 320 672 352 672
            WIRE 352 672 480 672
            BEGIN DISPLAY 352 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B
            WIRE 320 1008 352 1008
            WIRE 352 1008 480 1008
            BEGIN DISPLAY 352 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Ci
            WIRE 320 1072 352 1072
            WIRE 352 1072 480 1072
            BEGIN DISPLAY 352 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_1 448 448 R0
        IOMARKER 1392 320 S R0 28
        IOMARKER 336 320 B R180 28
        IOMARKER 336 256 A R180 28
        IOMARKER 336 384 Ci R180 28
    END SHEET
END SCHEMATIC
