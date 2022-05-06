; ModuleID = '/llk/IR/drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c_pt.bc'
source_filename = "../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sunxi_pinctrl_desc = type { ptr, i32, i32, i32, ptr, i8, i8, i32 }
%struct.sunxi_desc_pin = type { %struct.pinctrl_pin_desc, i32, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.sunxi_desc_function = type { i32, ptr, i8, i8, i8 }

@__initcall__kmod_pinctrl_sun9i_a80_r__202_178_sun9i_a80_r_pinctrl_driver_init6 = internal global ptr @sun9i_a80_r_pinctrl_driver_init, section ".initcall6.init", align 4
@sun9i_a80_r_pinctrl_driver = internal global %struct.platform_driver { ptr @sun9i_a80_r_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun9i_a80_r_pinctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [20 x i8] c"sun9i-a80-r-pinctrl\00", align 1
@sun9i_a80_r_pinctrl_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-r-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@sun9i_a80_r_pinctrl_data = internal constant %struct.sunxi_pinctrl_desc { ptr @sun9i_a80_r_pins, i32 25, i32 352, i32 2, ptr null, i8 0, i8 1, i32 1 }, align 4
@sun9i_a80_r_pins = internal constant [25 x %struct.sunxi_desc_pin] [%struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 352, ptr @.str.1, ptr null }, i32 0, ptr @.compoundliteral }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 353, ptr @.str.6, ptr null }, i32 0, ptr @.compoundliteral.7 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 354, ptr @.str.8, ptr null }, i32 0, ptr @.compoundliteral.10 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 355, ptr @.str.11, ptr null }, i32 0, ptr @.compoundliteral.12 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 356, ptr @.str.13, ptr null }, i32 0, ptr @.compoundliteral.14 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 357, ptr @.str.15, ptr null }, i32 0, ptr @.compoundliteral.16 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 358, ptr @.str.17, ptr null }, i32 0, ptr @.compoundliteral.19 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 359, ptr @.str.20, ptr null }, i32 0, ptr @.compoundliteral.22 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 360, ptr @.str.23, ptr null }, i32 0, ptr @.compoundliteral.25 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 361, ptr @.str.26, ptr null }, i32 0, ptr @.compoundliteral.27 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 384, ptr @.str.28, ptr null }, i32 0, ptr @.compoundliteral.29 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 385, ptr @.str.30, ptr null }, i32 0, ptr @.compoundliteral.31 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 386, ptr @.str.32, ptr null }, i32 0, ptr @.compoundliteral.33 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 387, ptr @.str.34, ptr null }, i32 0, ptr @.compoundliteral.35 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 388, ptr @.str.36, ptr null }, i32 0, ptr @.compoundliteral.38 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 392, ptr @.str.39, ptr null }, i32 0, ptr @.compoundliteral.41 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 393, ptr @.str.42, ptr null }, i32 0, ptr @.compoundliteral.43 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 394, ptr @.str.44, ptr null }, i32 0, ptr @.compoundliteral.46 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 395, ptr @.str.47, ptr null }, i32 0, ptr @.compoundliteral.48 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 396, ptr @.str.49, ptr null }, i32 0, ptr @.compoundliteral.50 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 397, ptr @.str.51, ptr null }, i32 0, ptr @.compoundliteral.52 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 398, ptr @.str.53, ptr null }, i32 0, ptr @.compoundliteral.54 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 399, ptr @.str.55, ptr null }, i32 0, ptr @.compoundliteral.56 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 416, ptr @.str.57, ptr null }, i32 0, ptr @.compoundliteral.60 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 417, ptr @.str.61, ptr null }, i32 0, ptr @.compoundliteral.62 }], align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"PL0\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"gpio_in\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"gpio_out\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"s_uart\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@.compoundliteral = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"PL1\00", align 1
@.compoundliteral.7 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 1 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"PL2\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"s_jtag\00", align 1
@.compoundliteral.10 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.9, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 2 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"PL3\00", align 1
@.compoundliteral.12 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.9, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 3 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.13 = private unnamed_addr constant [4 x i8] c"PL4\00", align 1
@.compoundliteral.14 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.9, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 4 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.15 = private unnamed_addr constant [4 x i8] c"PL5\00", align 1
@.compoundliteral.16 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.9, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 5 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.17 = private unnamed_addr constant [4 x i8] c"PL6\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"s_cir_rx\00", align 1
@.compoundliteral.19 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.18, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 6 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.20 = private unnamed_addr constant [4 x i8] c"PL7\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"1wire\00", align 1
@.compoundliteral.22 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.21, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 7 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.23 = private unnamed_addr constant [4 x i8] c"PL8\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"s_ps2\00", align 1
@.compoundliteral.25 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.24, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 8 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.26 = private unnamed_addr constant [4 x i8] c"PL9\00", align 1
@.compoundliteral.27 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.24, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 9 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.28 = private unnamed_addr constant [4 x i8] c"PM0\00", align 1
@.compoundliteral.29 = internal global [4 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 1, i8 0 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.30 = private unnamed_addr constant [4 x i8] c"PM1\00", align 1
@.compoundliteral.31 = internal global [4 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 1, i8 1 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.32 = private unnamed_addr constant [4 x i8] c"PM2\00", align 1
@.compoundliteral.33 = internal global [4 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 1, i8 2 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.34 = private unnamed_addr constant [4 x i8] c"PM3\00", align 1
@.compoundliteral.35 = internal global [4 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 1, i8 3 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.36 = private unnamed_addr constant [4 x i8] c"PM4\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"s_i2s1\00", align 1
@.compoundliteral.38 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.37, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 1, i8 4 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.39 = private unnamed_addr constant [4 x i8] c"PM8\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"s_i2c1\00", align 1
@.compoundliteral.41 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.40, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 1, i8 8 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.42 = private unnamed_addr constant [4 x i8] c"PM9\00", align 1
@.compoundliteral.43 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.40, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 1, i8 9 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.44 = private unnamed_addr constant [5 x i8] c"PM10\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"s_i2s0\00", align 1
@.compoundliteral.46 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.45, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.37, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.47 = private unnamed_addr constant [5 x i8] c"PM11\00", align 1
@.compoundliteral.48 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.45, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.37, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.49 = private unnamed_addr constant [5 x i8] c"PM12\00", align 1
@.compoundliteral.50 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.45, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.37, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.51 = private unnamed_addr constant [5 x i8] c"PM13\00", align 1
@.compoundliteral.52 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.45, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.37, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.53 = private unnamed_addr constant [5 x i8] c"PM14\00", align 1
@.compoundliteral.54 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.45, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.37, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.55 = private unnamed_addr constant [5 x i8] c"PM15\00", align 1
@.compoundliteral.56 = internal global [4 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 1, i8 15 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.57 = private unnamed_addr constant [4 x i8] c"PN0\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"s_i2c0\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"s_rsb\00", align 1
@.compoundliteral.60 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.58, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.59, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.61 = private unnamed_addr constant [4 x i8] c"PN1\00", align 1
@.compoundliteral.62 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.58, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.59, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pinctrl_sun9i_a80_r__202_178_sun9i_a80_r_pinctrl_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun9i_a80_r_pinctrl_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun9i_a80_r_pinctrl_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun9i_a80_r_pinctrl_probe(ptr noundef %0) #2 {
  %2 = tail call i32 @sunxi_pinctrl_init_with_variant(ptr noundef %0, ptr noundef nonnull @sun9i_a80_r_pinctrl_data, i32 noundef 0) #3
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunxi_pinctrl_init_with_variant(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
