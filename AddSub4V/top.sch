VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL R(3:0)
        SIGNAL S1A0
        SIGNAL A(3:0)
        SIGNAL B(3:0)
        SIGNAL XLXN_5
        SIGNAL XLXN_6(3:0)
        PORT Output R(3:0)
        PORT Input S1A0
        PORT Input A(3:0)
        PORT Input B(3:0)
        BEGIN BLOCKDEF as4v
            TIMESTAMP 2021 3 21 16 54 40
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_3 as4v
            PIN S1A0 S1A0
            PIN A(3:0) A(3:0)
            PIN B(3:0) B(3:0)
            PIN R(3:0) R(3:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH R(3:0)
            WIRE 1072 288 1088 288
            WIRE 1088 288 1296 288
        END BRANCH
        BEGIN BRANCH S1A0
            WIRE 464 288 672 288
            WIRE 672 288 688 288
        END BRANCH
        BEGIN BRANCH A(3:0)
            WIRE 464 352 672 352
            WIRE 672 352 688 352
        END BRANCH
        BEGIN BRANCH B(3:0)
            WIRE 464 416 672 416
            WIRE 672 416 688 416
        END BRANCH
        BEGIN INSTANCE XLXI_3 688 448 R0
        END INSTANCE
        IOMARKER 1296 288 R(3:0) R0 28
        IOMARKER 464 288 S1A0 R180 28
        IOMARKER 464 352 A(3:0) R180 28
        IOMARKER 464 416 B(3:0) R180 28
    END SHEET
END SCHEMATIC
