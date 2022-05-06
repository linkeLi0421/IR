; ModuleID = '/llk/IR/drivers/clk/clk-qoriq.c_pt.bc'
source_filename = "../drivers/clk/clk-qoriq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clockgen = type { ptr, ptr, %struct.clockgen_chipinfo, ptr, ptr, [6 x %struct.clockgen_pll], [8 x ptr], [5 x ptr], [2 x ptr], ptr }
%struct.clockgen_chipinfo = type { ptr, ptr, [2 x ptr], [5 x ptr], ptr, [9 x i32], i32, i32 }
%struct.clockgen_pll = type { [32 x %struct.clockgen_pll_div] }
%struct.clockgen_pll_div = type { ptr, [32 x i8] }
%struct.clockgen_muxinfo = type { [16 x %struct.clockgen_sourceinfo] }
%struct.clockgen_sourceinfo = type { i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.ccsr_guts = type { i32, i32, i32, i32, i32, i32, [8 x i8], i32, [12 x i8], i32, [12 x i8], i32, [12 x i8], i32, [12 x i8], i32, i32, i32, [4 x i8], i32, i32, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8], i32, [12 x i8], i32, [60 x i8], [16 x i32], [228 x i8], i32, i32, [984 x i8], i32, [504 x i8], i32, [252 x i8], i32, [4 x i8], i32, [8 x i8], i32, [520 x i8], i32, i32, i32, [724 x i8], i32, [12 x i8], i32, [12 x i8], i32, i32, [220 x i8], i32, i32, [32 x i8], i32, [16 x i8], i32, i32 }
%struct.mux_hwclock = type { %struct.clk_hw, ptr, ptr, ptr, [16 x i8], [16 x i8], i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_onecell_data = type { ptr, i32 }

@__initcall__kmod_clk_qoriq__167_1580_clockgen_cpufreq_init6 = internal global ptr @clockgen_cpufreq_init, section ".initcall6.init", align 4
@__of_table_qoriq_clockgen_1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qoriq-clockgen-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qoriq-clockgen-2.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_b4420 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,b4420-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_b4860 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,b4860-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_ls1012a = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1012a-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_ls1021a = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1021a-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_ls1028a = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1028a-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_ls1043a = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1043a-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_ls1046a = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1046a-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_ls1088a = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1088a-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_ls2080a = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls2080a-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_lx2160a = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,lx2160a-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_p2041 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,p2041-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_p3041 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,p3041-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_p4080 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,p4080-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_p5020 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,p5020-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_p5040 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,p5040-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_t1023 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,t1023-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_t1040 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,t1040-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_t2080 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,t2080-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_t4240 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,t4240-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_sysclk_1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qoriq-sysclk-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysclk_init }, section "__clk_of_table", align 4
@__of_table_qoriq_sysclk_2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qoriq-sysclk-2.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysclk_init }, section "__clk_of_table", align 4
@__of_table_qoriq_core_pll_1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qoriq-core-pll-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @core_pll_init }, section "__clk_of_table", align 4
@__of_table_qoriq_core_pll_2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qoriq-core-pll-2.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @core_pll_init }, section "__clk_of_table", align 4
@__of_table_qoriq_core_mux_1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qoriq-core-mux-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @core_mux_init }, section "__clk_of_table", align 4
@__of_table_qoriq_core_mux_2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qoriq-core-mux-2.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @core_mux_init }, section "__clk_of_table", align 4
@__of_table_qoriq_pltfrm_pll_1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qoriq-platform-pll-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pltfrm_pll_init }, section "__clk_of_table", align 4
@__of_table_qoriq_pltfrm_pll_2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qoriq-platform-pll-2.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pltfrm_pll_init }, section "__clk_of_table", align 4
@add_cpufreq_dev = internal unnamed_addr global i8 0, section ".init.data", align 1
@.str = private unnamed_addr constant [14 x i8] c"qoriq-cpufreq\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"\013clk_qoriq: Couldn't register qoriq-cpufreq err=%ld\0A\00", align 1
@clockgen = internal global %struct.clockgen zeroinitializer, align 4
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"fsl,ls1021a\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"\013clk_qoriq: %s(): %pOFn: of_iomap() failed\0A\00", align 1
@__func__._clockgen_init = private unnamed_addr constant [15 x i8] c"_clockgen_init\00", align 1
@chipinfo = internal unnamed_addr constant [20 x %struct.clockgen_chipinfo] [%struct.clockgen_chipinfo { ptr @.str.10, ptr @.str.11, [2 x ptr] [ptr @clockgen2_cmux_cga12, ptr @clockgen2_cmux_cgb], [5 x ptr] [ptr @t2080_hwa1, ptr null, ptr null, ptr null, ptr null], ptr @t2080_init_periph, [9 x i32] [i32 0, i32 1, i32 1, i32 1, i32 -1, i32 0, i32 0, i32 0, i32 0], i32 63, i32 2 }, %struct.clockgen_chipinfo { ptr @.str.12, ptr @.str.11, [2 x ptr] [ptr @clockgen2_cmux_cga12, ptr @clockgen2_cmux_cgb], [5 x ptr] [ptr @t2080_hwa1, ptr null, ptr null, ptr null, ptr null], ptr @t2080_init_periph, [9 x i32] [i32 0, i32 1, i32 1, i32 1, i32 -1, i32 0, i32 0, i32 0, i32 0], i32 63, i32 2 }, %struct.clockgen_chipinfo { ptr @.str.4, ptr null, [2 x ptr] [ptr @ls1021a_cmux, ptr null], [5 x ptr] zeroinitializer, ptr null, [9 x i32] [i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 7, i32 0 }, %struct.clockgen_chipinfo { ptr @.str.13, ptr null, [2 x ptr] [ptr @clockgen2_cmux_cga12, ptr null], [5 x ptr] [ptr @ls1028a_hwa1, ptr @ls1028a_hwa2, ptr @ls1028a_hwa3, ptr @ls1028a_hwa4, ptr null], ptr null, [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0], i32 7, i32 12 }, %struct.clockgen_chipinfo { ptr @.str.14, ptr null, [2 x ptr] [ptr @t1040_cmux, ptr null], [5 x ptr] [ptr @ls1043a_hwa1, ptr @ls1043a_hwa2, ptr null, ptr null, ptr null], ptr @t2080_init_periph, [9 x i32] [i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 7, i32 2 }, %struct.clockgen_chipinfo { ptr @.str.15, ptr null, [2 x ptr] [ptr @t1040_cmux, ptr null], [5 x ptr] [ptr @ls1046a_hwa1, ptr @ls1046a_hwa2, ptr null, ptr null, ptr null], ptr @t2080_init_periph, [9 x i32] [i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 7, i32 2 }, %struct.clockgen_chipinfo { ptr @.str.16, ptr null, [2 x ptr] [ptr @clockgen2_cmux_cga12, ptr null], [5 x ptr] [ptr @ls1088a_hwa1, ptr @ls1088a_hwa2, ptr null, ptr null, ptr null], ptr null, [9 x i32] [i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 7, i32 12 }, %struct.clockgen_chipinfo { ptr @.str.17, ptr null, [2 x ptr] [ptr @ls1012a_cmux, ptr null], [5 x ptr] zeroinitializer, ptr null, [9 x i32] [i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 3, i32 0 }, %struct.clockgen_chipinfo { ptr @.str.18, ptr null, [2 x ptr] [ptr @clockgen2_cmux_cga12, ptr @clockgen2_cmux_cgb], [5 x ptr] zeroinitializer, ptr null, [9 x i32] [i32 0, i32 0, i32 1, i32 1, i32 -1, i32 0, i32 0, i32 0, i32 0], i32 55, i32 12 }, %struct.clockgen_chipinfo { ptr @.str.19, ptr null, [2 x ptr] [ptr @clockgen2_cmux_cga12, ptr @clockgen2_cmux_cgb], [5 x ptr] zeroinitializer, ptr null, [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 -1], i32 55, i32 12 }, %struct.clockgen_chipinfo { ptr @.str.20, ptr @.str.21, [2 x ptr] [ptr @p2041_cmux_grp1, ptr @p2041_cmux_grp2], [5 x ptr] zeroinitializer, ptr @p2041_init_periph, [9 x i32] [i32 0, i32 0, i32 1, i32 1, i32 -1, i32 0, i32 0, i32 0, i32 0], i32 7, i32 0 }, %struct.clockgen_chipinfo { ptr @.str.22, ptr @.str.21, [2 x ptr] [ptr @p2041_cmux_grp1, ptr @p2041_cmux_grp2], [5 x ptr] zeroinitializer, ptr @p2041_init_periph, [9 x i32] [i32 0, i32 0, i32 1, i32 1, i32 -1, i32 0, i32 0, i32 0, i32 0], i32 7, i32 0 }, %struct.clockgen_chipinfo { ptr @.str.23, ptr @.str.21, [2 x ptr] [ptr @p4080_cmux_grp1, ptr @p4080_cmux_grp2], [5 x ptr] zeroinitializer, ptr @p4080_init_periph, [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 -1], i32 31, i32 0 }, %struct.clockgen_chipinfo { ptr @.str.24, ptr @.str.21, [2 x ptr] [ptr @p5020_cmux_grp1, ptr @p5020_cmux_grp2], [5 x ptr] zeroinitializer, ptr @p5020_init_periph, [9 x i32] [i32 0, i32 1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 7, i32 0 }, %struct.clockgen_chipinfo { ptr @.str.25, ptr @.str.26, [2 x ptr] [ptr @p5040_cmux_grp1, ptr @p5040_cmux_grp2], [5 x ptr] zeroinitializer, ptr @p5040_init_periph, [9 x i32] [i32 0, i32 0, i32 1, i32 1, i32 -1, i32 0, i32 0, i32 0, i32 0], i32 15, i32 0 }, %struct.clockgen_chipinfo { ptr @.str.27, ptr @.str.28, [2 x ptr] [ptr @t1023_cmux, ptr null], [5 x ptr] [ptr @t1023_hwa1, ptr @t1023_hwa2, ptr null, ptr null, ptr null], ptr @t1023_init_periph, [9 x i32] [i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 3, i32 2 }, %struct.clockgen_chipinfo { ptr @.str.29, ptr @.str.30, [2 x ptr] [ptr @t1040_cmux, ptr null], [5 x ptr] zeroinitializer, ptr @t1040_init_periph, [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0], i32 7, i32 2 }, %struct.clockgen_chipinfo { ptr @.str.31, ptr @.str.32, [2 x ptr] [ptr @clockgen2_cmux_cga12, ptr null], [5 x ptr] [ptr @t2080_hwa1, ptr @t2080_hwa2, ptr null, ptr null, ptr null], ptr @t2080_init_periph, [9 x i32] [i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 7, i32 2 }, %struct.clockgen_chipinfo { ptr @.str.33, ptr @.str.34, [2 x ptr] [ptr @clockgen2_cmux_cga, ptr @clockgen2_cmux_cgb], [5 x ptr] [ptr @t4240_hwa1, ptr null, ptr null, ptr @t4240_hwa4, ptr @t4240_hwa5], ptr @t4240_init_periph, [9 x i32] [i32 0, i32 0, i32 1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0], i32 63, i32 2 }, %struct.clockgen_chipinfo zeroinitializer], align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"fsl,ls1021a-clockgen\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"\013clk_qoriq: %s: unknown clockgen node %pOF\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"\013clk_qoriq: %s: Couldn't map %pOF regs\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"cg-sysclk\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"cg-coreclk\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"\013clk_qoriq: %s: Couldn't register clk provider for node %pOFn: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"fsl,b4420-clockgen\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"fsl,b4860-device-config\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"fsl,b4860-clockgen\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"fsl,ls1028a-clockgen\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"fsl,ls1043a-clockgen\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"fsl,ls1046a-clockgen\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"fsl,ls1088a-clockgen\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"fsl,ls1012a-clockgen\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"fsl,ls2080a-clockgen\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"fsl,lx2160a-clockgen\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"fsl,p2041-clockgen\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"fsl,qoriq-device-config-1.0\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"fsl,p3041-clockgen\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"fsl,p4080-clockgen\00", align 1
@p4080_cmux_grp1 = internal constant %struct.clockgen_muxinfo { [16 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 3, i32 3, i32 0 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer] }, align 4
@p4080_cmux_grp2 = internal constant %struct.clockgen_muxinfo { [16 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo { i32 3, i32 1, i32 0 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 3, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 3, i32 1 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 4, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 4, i32 1 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer] }, align 4
@.str.24 = private unnamed_addr constant [19 x i8] c"fsl,p5020-clockgen\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"fsl,p5040-clockgen\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"fsl,p5040-device-config\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"fsl,t1023-clockgen\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"fsl,t1023-device-config\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"fsl,t1040-clockgen\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"fsl,t1040-device-config\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"fsl,t2080-clockgen\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"fsl,t2080-device-config\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"fsl,t4240-clockgen\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"fsl,t4240-device-config\00", align 1
@clockgen2_cmux_cga = internal constant %struct.clockgen_muxinfo { [16 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 3 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 3 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 3, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 3, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 3, i32 3 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer] }, align 4
@clockgen2_cmux_cga12 = internal constant { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [9 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [9 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 3 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 3 }, [9 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@clockgen2_cmux_cgb = internal constant { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [9 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [9 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo { i32 1, i32 4, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 4, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 4, i32 3 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 5, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 5, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 5, i32 3 }, [9 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@t2080_hwa1 = internal constant { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> } { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> <{ [8 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 2 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 3 }, %struct.clockgen_sourceinfo { i32 1, i32 0, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 2 }], [8 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@ls1021a_cmux = internal constant { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [13 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [13 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 3 }, [13 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@ls1028a_hwa1 = internal constant { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> } { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> <{ [8 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo { i32 1, i32 0, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 2 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 3 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 2 }], [8 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@ls1028a_hwa2 = internal constant { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> } { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> <{ [8 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo { i32 1, i32 0, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 2 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 3 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 2 }], [8 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@ls1028a_hwa3 = internal constant { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> } { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> <{ [8 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo { i32 1, i32 0, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 2 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 3 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 2 }], [8 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@ls1028a_hwa4 = internal constant { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> } { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> <{ [8 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo { i32 1, i32 0, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 2 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 3 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 2 }], [8 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@t1040_cmux = internal constant { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [10 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [10 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, [10 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@ls1043a_hwa1 = internal constant { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> } { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> <{ [8 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 2 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 2 }], [8 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@ls1043a_hwa2 = internal constant { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [12 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [12 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 2 }, [12 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@ls1046a_hwa1 = internal constant { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> } { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> <{ [8 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 2 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 3 }, %struct.clockgen_sourceinfo { i32 1, i32 0, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 2 }], [8 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@ls1046a_hwa2 = internal constant { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [9 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [9 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 2 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, [9 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@ls1088a_hwa1 = internal constant { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> } { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> <{ [8 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 2 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 3 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 2 }], [8 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@ls1088a_hwa2 = internal constant { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> } { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> <{ [8 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 2 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 3 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 2 }], [8 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@ls1012a_cmux = internal constant { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [13 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [13 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, [13 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@p2041_cmux_grp1 = internal constant { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [11 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [11 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, [11 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@p2041_cmux_grp2 = internal constant { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [10 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [10 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, [10 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@p5020_cmux_grp1 = internal constant { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [11 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [11 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 3, i32 2, i32 0 }, [11 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@p5020_cmux_grp2 = internal constant { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [10 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [10 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo { i32 3, i32 1, i32 0 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, [10 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@p5040_cmux_grp1 = internal constant { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [10 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [10 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 3, i32 2, i32 0 }, %struct.clockgen_sourceinfo { i32 3, i32 2, i32 1 }, [10 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@p5040_cmux_grp2 = internal constant { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [10 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [10 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo { i32 3, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 3, i32 1, i32 1 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, [10 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@t1023_cmux = internal constant { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [14 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [14 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, [14 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@t1023_hwa1 = internal constant { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [12 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [12 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 2 }, [12 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@t1023_hwa2 = internal constant { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [9 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [9 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, [9 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@t2080_hwa2 = internal constant { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> } { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> <{ [8 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 2 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 3 }, %struct.clockgen_sourceinfo { i32 1, i32 0, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 2 }], [8 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@t4240_hwa1 = internal constant { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> } { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> <{ [8 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo { i32 1, i32 0, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 2 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 3 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 2 }], [8 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@t4240_hwa4 = internal constant { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [9 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [9 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 4, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 4, i32 2 }, %struct.clockgen_sourceinfo { i32 1, i32 4, i32 3 }, %struct.clockgen_sourceinfo { i32 1, i32 0, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 5, i32 1 }, [9 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@t4240_hwa5 = internal constant { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> } { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> <{ [8 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 5, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 5, i32 2 }, %struct.clockgen_sourceinfo { i32 1, i32 5, i32 3 }, %struct.clockgen_sourceinfo { i32 1, i32 0, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 4, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 4, i32 2 }], [8 x %struct.clockgen_sourceinfo] zeroinitializer }> }, align 4
@.str.64 = private unnamed_addr constant [7 x i8] c"sysclk\00", align 1
@.str.65 = private unnamed_addr constant [34 x i8] c"\013clk_qoriq: %s: No input sysclk\0A\00", align 1
@__func__.create_sysclk = private unnamed_addr constant [14 x i8] c"create_sysclk\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.67 = private unnamed_addr constant [44 x i8] c"\013clk_qoriq: %s: Couldn't register %s: %ld\0A\00", align 1
@__func__.input_clock = private unnamed_addr constant [12 x i8] c"input_clock\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"coreclk\00", align 1
@.str.69 = private unnamed_addr constant [24 x i8] c"drivers/clk/clk-qoriq.c\00", align 1
@create_one_pll.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"index %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"cg-pll%d-div%d\00", align 1
@.str.72 = private unnamed_addr constant [42 x i8] c"\013clk_qoriq: %s: %s: register failed %ld\0A\00", align 1
@__func__.create_one_pll = private unnamed_addr constant [15 x i8] c"create_one_pll\00", align 1
@.str.73 = private unnamed_addr constant [57 x i8] c"\013clk_qoriq: %s: %s: register to lookup table failed %d\0A\00", align 1
@create_muxes.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cmux_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mux_set_parent, ptr @mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.74 = private unnamed_addr constant [10 x i8] c"cg-cmux%d\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.create_mux_common = private unnamed_addr constant [18 x i8] c"create_mux_common\00", align 1
@.str.75 = private unnamed_addr constant [43 x i8] c"\013clk_qoriq: %s: mux at %p has bad clksel\0A\00", align 1
@__func__.mux_get_parent = private unnamed_addr constant [15 x i8] c"mux_get_parent\00", align 1
@hwaccel_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.76 = private unnamed_addr constant [13 x i8] c"cg-hwaccel%d\00", align 1
@.str.77 = private unnamed_addr constant [44 x i8] c"\013clk_qoriq: %s: insufficient phandle args\0A\00", align 1
@__func__.clockgen_clk_get = private unnamed_addr constant [17 x i8] c"clockgen_clk_get\00", align 1
@.str.78 = private unnamed_addr constant [41 x i8] c"\013clk_qoriq: %s: Bad phandle args %u %u\0A\00", align 1
@.str.79 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@__func__.legacy_pll_init = private unnamed_addr constant [16 x i8] c"legacy_pll_init\00", align 1
@__func__.core_mux_init = private unnamed_addr constant [14 x i8] c"core_mux_init\00", align 1
@llvm.compiler.used = appending global [30 x ptr] [ptr @__initcall__kmod_clk_qoriq__167_1580_clockgen_cpufreq_init6, ptr @__of_table_qoriq_clockgen_1, ptr @__of_table_qoriq_clockgen_2, ptr @__of_table_qoriq_clockgen_b4420, ptr @__of_table_qoriq_clockgen_b4860, ptr @__of_table_qoriq_clockgen_ls1012a, ptr @__of_table_qoriq_clockgen_ls1021a, ptr @__of_table_qoriq_clockgen_ls1028a, ptr @__of_table_qoriq_clockgen_ls1043a, ptr @__of_table_qoriq_clockgen_ls1046a, ptr @__of_table_qoriq_clockgen_ls1088a, ptr @__of_table_qoriq_clockgen_ls2080a, ptr @__of_table_qoriq_clockgen_lx2160a, ptr @__of_table_qoriq_clockgen_p2041, ptr @__of_table_qoriq_clockgen_p3041, ptr @__of_table_qoriq_clockgen_p4080, ptr @__of_table_qoriq_clockgen_p5020, ptr @__of_table_qoriq_clockgen_p5040, ptr @__of_table_qoriq_clockgen_t1023, ptr @__of_table_qoriq_clockgen_t1040, ptr @__of_table_qoriq_clockgen_t2080, ptr @__of_table_qoriq_clockgen_t4240, ptr @__of_table_qoriq_core_mux_1, ptr @__of_table_qoriq_core_mux_2, ptr @__of_table_qoriq_core_pll_1, ptr @__of_table_qoriq_core_pll_2, ptr @__of_table_qoriq_pltfrm_pll_1, ptr @__of_table_qoriq_pltfrm_pll_2, ptr @__of_table_qoriq_sysclk_1, ptr @__of_table_qoriq_sysclk_2], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @clockgen_cpufreq_init() #0 section ".init.text" {
  %1 = alloca %struct.platform_device_info, align 8
  %2 = load i8, ptr @add_cpufreq_dev, align 1, !range !8
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #12
  %5 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false) #12
  store ptr @.str, ptr %5, align 4
  %6 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 4
  store i32 -1, ptr %6, align 8
  %7 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false) #12
  %8 = call ptr @platform_device_register_full(ptr noundef nonnull %1) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #12
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = ptrtoint ptr %8 to i32
  %12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %11) #13
  br label %13

13:                                               ; preds = %10, %4, %0
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @clockgen_init(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @_clockgen_init(ptr noundef %0, i1 noundef zeroext false) #14
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sysclk_init(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @legacy_init_clockgen(ptr noundef %0) #14
  %2 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 3), align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef nonnull %2) #12
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @core_pll_init(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !9
  %3 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4
  %7 = and i32 %6, 4095
  %8 = icmp eq i32 %7, 3072
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  call fastcc void @legacy_pll_init(ptr noundef %0, i32 noundef 0) #13
  br label %14

10:                                               ; preds = %5
  %11 = lshr i32 %6, 5
  %12 = and i32 %11, 7
  %13 = add nuw nsw i32 %12, 1
  call fastcc void @legacy_pll_init(ptr noundef %0, i32 noundef %13) #14
  br label %14

14:                                               ; preds = %10, %9, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @core_mux_init(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !9
  tail call fastcc void @legacy_init_clockgen(ptr noundef %0) #14
  %3 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4
  %7 = lshr i32 %6, 5
  %8 = and i32 %7, 7
  %9 = getelementptr %struct.clockgen, ptr @clockgen, i32 0, i32 6, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %10) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %5
  %14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.core_mux_init, ptr noundef %0, i32 noundef %11) #13
  br label %15

15:                                               ; preds = %13, %5, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pltfrm_pll_init(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @legacy_pll_init(ptr noundef %0, i32 noundef 0) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @_clockgen_init(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 section ".init.text" {
  %3 = load ptr, ptr @clockgen, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %71

5:                                                ; preds = %2
  store ptr %0, ptr @clockgen, align 4
  %6 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #12
  store ptr %6, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 1), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = load ptr, ptr @of_root, align 4
  %10 = tail call i32 @of_device_is_compatible(ptr noundef %9, ptr noundef nonnull @.str.2) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @ioremap(i32 noundef 32378880, i32 noundef 4096) #12
  store ptr %13, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 1), align 4
  br label %16

14:                                               ; preds = %8
  %15 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 1), align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %15, %14 ], [ %13, %12 ]
  %18 = xor i1 %11, true
  %19 = icmp eq ptr %17, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16, %5
  %21 = phi i1 [ %18, %16 ], [ false, %5 ]
  br label %24

22:                                               ; preds = %16
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._clockgen_init, ptr noundef %0) #13
  br label %71

24:                                               ; preds = %34, %20
  %25 = phi i32 [ %35, %34 ], [ 0, %20 ]
  %26 = getelementptr [20 x %struct.clockgen_chipinfo], ptr @chipinfo, i32 0, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef %27) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  br i1 %21, label %31, label %34

31:                                               ; preds = %30
  %32 = tail call i32 @strcmp(ptr noundef %27, ptr noundef nonnull dereferenceable(21) @.str.4)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31, %30
  %35 = add nuw nsw i32 %25, 1
  %36 = icmp eq i32 %35, 20
  br i1 %36, label %37, label %24

37:                                               ; preds = %34
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__._clockgen_init, ptr noundef %0) #13
  %39 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 1), align 4
  tail call void @iounmap(ptr noundef %39) #12
  store ptr null, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 1), align 4
  br label %71

40:                                               ; preds = %31, %24
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(84) getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 2), ptr noundef align 4 dereferenceable(84) %26, i32 84, i1 false)
  %41 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 2, i32 1), align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %40
  %44 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull %41) #12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = tail call ptr @of_iomap(ptr noundef nonnull %44, i32 noundef 0) #12
  store ptr %47, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 9), align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__._clockgen_init, ptr noundef nonnull %44) #13
  br label %51

51:                                               ; preds = %49, %46
  tail call void @of_node_put(ptr noundef nonnull %44) #12
  br label %52

52:                                               ; preds = %51, %43, %40
  %53 = tail call fastcc ptr @create_sysclk() #14
  store ptr %53, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 3), align 4
  %54 = tail call fastcc ptr @create_coreclk() #14
  store ptr %54, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 4), align 4
  br label %55

55:                                               ; preds = %55, %52
  %56 = phi i32 [ 0, %52 ], [ %57, %55 ]
  tail call fastcc void @create_one_pll(i32 noundef %56) #13
  %57 = add nuw nsw i32 %56, 1
  %58 = icmp eq i32 %57, 6
  br i1 %58, label %59, label %55

59:                                               ; preds = %55
  tail call fastcc void @create_muxes() #14
  %60 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 2, i32 4), align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  tail call void %60(ptr noundef nonnull @clockgen) #12
  br label %63

63:                                               ; preds = %62, %59
  %64 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @clockgen_clk_get, ptr noundef nonnull @clockgen) #12
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__._clockgen_init, ptr noundef %0, i32 noundef %64) #13
  br label %68

68:                                               ; preds = %66, %63
  %69 = xor i1 %1, true
  %70 = zext i1 %69 to i8
  store i8 %70, ptr @add_cpufreq_dev, align 1
  br label %71

71:                                               ; preds = %68, %37, %22, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @create_sysclk() unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr @clockgen, align 4
  %2 = tail call fastcc ptr @sysclk_from_fixed(ptr noundef %1) #14
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %19

4:                                                ; preds = %0
  %5 = tail call fastcc ptr @input_clock_by_name(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.64) #14
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @input_clock_by_index() #14
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load ptr, ptr @clockgen, align 4
  %12 = tail call ptr @of_get_child_by_name(ptr noundef %11, ptr noundef nonnull @.str.64) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = tail call fastcc ptr @sysclk_from_fixed(ptr noundef nonnull %12) #14
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %10
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.create_sysclk) #13
  br label %19

19:                                               ; preds = %17, %14, %7, %4, %0
  %20 = phi ptr [ null, %17 ], [ %2, %0 ], [ %5, %4 ], [ %8, %7 ], [ %15, %14 ]
  ret ptr %20
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @create_coreclk() unnamed_addr #0 section ".init.text" {
  %1 = tail call fastcc ptr @input_clock_by_name(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.68) #14
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = icmp eq ptr %1, inttoptr (i32 -517 to ptr)
  br i1 %4, label %5, label %6, !prof !10

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.69, i32 noundef 1184, i32 noundef 9, ptr noundef null) #12
  br label %6

6:                                                ; preds = %5, %3, %0
  %7 = phi ptr [ %1, %0 ], [ inttoptr (i32 -517 to ptr), %5 ], [ null, %3 ]
  ret ptr %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @create_muxes() unnamed_addr #0 section ".init.text" {
  br label %1

1:                                                ; preds = %14, %0
  %2 = phi i32 [ 0, %0 ], [ %15, %14 ]
  %3 = getelementptr %struct.clockgen, ptr @clockgen, i32 0, i32 2, i32 5, i32 %2
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = icmp ugt i32 %4, 1
  br i1 %7, label %8, label %11

8:                                                ; preds = %6
  %9 = load i1, ptr @create_muxes.__already_done, align 1
  br i1 %9, label %14, label %10, !prof !11

10:                                               ; preds = %8
  store i1 true, ptr @create_muxes.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.69, i32 noundef 1041, i32 noundef 9, ptr noundef null) #12
  br label %14

11:                                               ; preds = %6
  %12 = tail call fastcc ptr @create_one_cmux(i32 noundef %2) #14
  %13 = getelementptr %struct.clockgen, ptr @clockgen, i32 0, i32 6, i32 %2
  store ptr %12, ptr %13, align 4
  br label %14

14:                                               ; preds = %11, %10, %8
  %15 = add nuw nsw i32 %2, 1
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %17, label %1

17:                                               ; preds = %14, %1
  br label %18

18:                                               ; preds = %26, %17
  %19 = phi i32 [ %27, %26 ], [ 0, %17 ]
  %20 = getelementptr %struct.clockgen, ptr @clockgen, i32 0, i32 2, i32 3, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = tail call fastcc ptr @create_one_hwaccel(i32 noundef %19) #14
  %25 = getelementptr %struct.clockgen, ptr @clockgen, i32 0, i32 7, i32 %19
  store ptr %24, ptr %25, align 4
  br label %26

26:                                               ; preds = %23, %18
  %27 = add nuw nsw i32 %19, 1
  %28 = icmp eq i32 %27, 5
  br i1 %28, label %29, label %18

29:                                               ; preds = %26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @clockgen_clk_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 2
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.clockgen_clk_get) #13
  br label %49

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 1
  %12 = load i32, ptr %11, align 4
  switch i32 %10, label %47 [
    i32 0, label %13
    i32 1, label %17
    i32 2, label %21
    i32 3, label %25
    i32 4, label %29
    i32 5, label %34
  ]

13:                                               ; preds = %8
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.clockgen, ptr %1, i32 0, i32 3
  br label %40

17:                                               ; preds = %8
  %18 = icmp ugt i32 %12, 7
  br i1 %18, label %47, label %19

19:                                               ; preds = %17
  %20 = getelementptr %struct.clockgen, ptr %1, i32 0, i32 6, i32 %12
  br label %40

21:                                               ; preds = %8
  %22 = icmp ugt i32 %12, 4
  br i1 %22, label %47, label %23

23:                                               ; preds = %21
  %24 = getelementptr %struct.clockgen, ptr %1, i32 0, i32 7, i32 %12
  br label %40

25:                                               ; preds = %8
  %26 = icmp ugt i32 %12, 1
  br i1 %26, label %47, label %27

27:                                               ; preds = %25
  %28 = getelementptr %struct.clockgen, ptr %1, i32 0, i32 8, i32 %12
  br label %40

29:                                               ; preds = %8
  %30 = icmp ugt i32 %12, 31
  br i1 %30, label %47, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.clockgen, ptr %1, i32 0, i32 5
  %33 = getelementptr [32 x %struct.clockgen_pll_div], ptr %32, i32 0, i32 %12
  br label %40

34:                                               ; preds = %8
  %35 = icmp eq i32 %12, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.clockgen, ptr %1, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %46, label %43

40:                                               ; preds = %31, %27, %23, %19, %15
  %41 = phi ptr [ %33, %31 ], [ %28, %27 ], [ %24, %23 ], [ %20, %19 ], [ %16, %15 ]
  %42 = load ptr, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi ptr [ %38, %36 ], [ %42, %40 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43, %36
  br label %49

47:                                               ; preds = %34, %29, %25, %21, %17, %13, %8
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.clockgen_clk_get, i32 noundef %10, i32 noundef %12) #13
  br label %49

49:                                               ; preds = %47, %46, %43, %6
  %50 = phi ptr [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -22 to ptr), %47 ], [ inttoptr (i32 -2 to ptr), %46 ], [ %44, %43 ]
  ret ptr %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal void @t2080_init_periph(ptr nocapture noundef %0) #8 section ".init.text" {
  %2 = getelementptr inbounds %struct.clockgen, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clockgen, ptr %0, i32 0, i32 8
  store ptr %3, ptr %4, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @p2041_init_periph(ptr nocapture noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.clockgen, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.ccsr_guts, ptr %3, i32 0, i32 38, i32 7
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #12, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !13
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr %struct.clockgen, ptr %0, i32 0, i32 5, i32 0, i32 0, i32 1
  %9 = getelementptr %struct.clockgen, ptr %0, i32 0, i32 5, i32 2, i32 0, i32 1
  %10 = select i1 %7, ptr %8, ptr %9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.clockgen, ptr %0, i32 0, i32 8
  store ptr %11, ptr %12, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @p4080_init_periph(ptr nocapture noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.clockgen, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.ccsr_guts, ptr %3, i32 0, i32 38, i32 7
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #12, !srcloc !12
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !14
  %7 = and i32 %6, 1073741824
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr %struct.clockgen, ptr %0, i32 0, i32 5, i32 0, i32 0, i32 1
  %10 = getelementptr %struct.clockgen, ptr %0, i32 0, i32 5, i32 3, i32 0, i32 1
  %11 = select i1 %8, ptr %9, ptr %10
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.clockgen, ptr %0, i32 0, i32 8
  store ptr %12, ptr %13, align 4
  %14 = and i32 %6, 536870912
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr %struct.clockgen, ptr %0, i32 0, i32 5, i32 0, i32 0, i32 1
  %17 = getelementptr %struct.clockgen, ptr %0, i32 0, i32 5, i32 3, i32 0, i32 1
  %18 = select i1 %15, ptr %16, ptr %17
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.clockgen, ptr %0, i32 0, i32 8, i32 1
  store ptr %19, ptr %20, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @p5020_init_periph(ptr nocapture noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.clockgen, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.ccsr_guts, ptr %3, i32 0, i32 38, i32 7
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #12, !srcloc !12
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !15
  %7 = and i32 %6, 1073741824
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = and i32 %6, 67108864
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 1, i32 3
  %13 = getelementptr %struct.clockgen, ptr %0, i32 0, i32 5, i32 2
  %14 = getelementptr [32 x %struct.clockgen_pll_div], ptr %13, i32 0, i32 %12
  br label %17

15:                                               ; preds = %1
  %16 = getelementptr %struct.clockgen, ptr %0, i32 0, i32 5, i32 0, i32 0, i32 1
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi ptr [ %16, %15 ], [ %14, %9 ]
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.clockgen, ptr %0, i32 0, i32 8
  store ptr %19, ptr %20, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @p5040_init_periph(ptr nocapture noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.clockgen, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.ccsr_guts, ptr %3, i32 0, i32 38, i32 7
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #12, !srcloc !12
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !16
  %7 = and i32 %6, 67108864
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 1, i32 3
  %10 = and i32 %6, 1073741824
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr %struct.clockgen, ptr %0, i32 0, i32 5, i32 0, i32 0, i32 1
  %13 = getelementptr %struct.clockgen, ptr %0, i32 0, i32 5, i32 3
  %14 = getelementptr [32 x %struct.clockgen_pll_div], ptr %13, i32 0, i32 %9
  %15 = select i1 %11, ptr %12, ptr %14
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.clockgen, ptr %0, i32 0, i32 8
  store ptr %16, ptr %17, align 4
  %18 = and i32 %6, 536870912
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr %struct.clockgen, ptr %0, i32 0, i32 5, i32 0, i32 0, i32 1
  %21 = getelementptr %struct.clockgen, ptr %0, i32 0, i32 5, i32 3
  %22 = getelementptr [32 x %struct.clockgen_pll_div], ptr %21, i32 0, i32 %9
  %23 = select i1 %19, ptr %20, ptr %22
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr %struct.clockgen, ptr %0, i32 0, i32 8, i32 1
  store ptr %24, ptr %25, align 4
  ret void
}

; Function Attrs: argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal void @t1023_init_periph(ptr nocapture noundef %0) #8 section ".init.text" {
  %2 = getelementptr %struct.clockgen, ptr %0, i32 0, i32 7, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clockgen, ptr %0, i32 0, i32 8
  store ptr %3, ptr %4, align 4
  ret void
}

; Function Attrs: argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal void @t1040_init_periph(ptr nocapture noundef %0) #8 section ".init.text" {
  %2 = getelementptr inbounds %struct.clockgen, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clockgen, ptr %0, i32 0, i32 8
  store ptr %3, ptr %4, align 4
  ret void
}

; Function Attrs: argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal void @t4240_init_periph(ptr nocapture noundef %0) #8 section ".init.text" {
  %2 = getelementptr %struct.clockgen, ptr %0, i32 0, i32 7, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clockgen, ptr %0, i32 0, i32 8
  store ptr %3, ptr %4, align 4
  %5 = getelementptr %struct.clockgen, ptr %0, i32 0, i32 7, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.clockgen, ptr %0, i32 0, i32 8, i32 1
  store ptr %6, ptr %7, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @sysclk_from_fixed(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.66, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #12
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4
  %7 = call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef %6) #12
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ inttoptr (i32 -19 to ptr), %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret ptr %9
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @input_clock_by_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = load ptr, ptr @clockgen, align 4
  %4 = tail call ptr @of_clk_get_by_name(ptr noundef %3, ptr noundef %1) #12
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @input_clock(ptr noundef %0, ptr noundef %4) #14
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ %4, %2 ]
  ret ptr %9
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @input_clock_by_index() unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr @clockgen, align 4
  %2 = tail call ptr @of_clk_get(ptr noundef %1, i32 noundef 0) #12
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = tail call fastcc ptr @input_clock(ptr noundef nonnull @.str.7, ptr noundef %2) #14
  br label %6

6:                                                ; preds = %4, %0
  %7 = phi ptr [ %5, %4 ], [ %2, %0 ]
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @input_clock(ptr noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = tail call ptr @__clk_get_name(ptr noundef %1) #12
  %4 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %0, ptr noundef %3, i32 noundef 0, i32 noundef 1, i32 noundef 1) #12
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = ptrtoint ptr %4 to i32
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__.input_clock, ptr noundef %0, i32 noundef %7) #13
  br label %9

9:                                                ; preds = %6, %2
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @create_one_pll(i32 noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = getelementptr %struct.clockgen, ptr @clockgen, i32 0, i32 5, i32 %0
  %3 = load i32, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 2, i32 6), align 4
  %4 = shl nuw i32 1, %0
  %5 = and i32 %3, %4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %90, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 4), align 4
  %9 = icmp ne ptr %8, null
  %10 = icmp ne i32 %0, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %90, label %14

14:                                               ; preds = %12, %7
  %15 = phi ptr [ @.str.7, %7 ], [ @.str.8, %12 ]
  %16 = load i32, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 2, i32 7), align 4
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %14
  switch i32 %0, label %35 [
    i32 0, label %20
    i32 1, label %23
    i32 2, label %26
    i32 4, label %29
    i32 5, label %32
  ]

20:                                               ; preds = %19
  %21 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 1), align 4
  %22 = getelementptr i8, ptr %21, i32 393344
  br label %48

23:                                               ; preds = %19
  %24 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 1), align 4
  %25 = getelementptr i8, ptr %24, i32 128
  br label %48

26:                                               ; preds = %19
  %27 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 1), align 4
  %28 = getelementptr i8, ptr %27, i32 160
  br label %48

29:                                               ; preds = %19
  %30 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 1), align 4
  %31 = getelementptr i8, ptr %30, i32 65664
  br label %48

32:                                               ; preds = %19
  %33 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 1), align 4
  %34 = getelementptr i8, ptr %33, i32 65696
  br label %48

35:                                               ; preds = %19
  %36 = load i1, ptr @create_one_pll.__already_done, align 1
  br i1 %36, label %90, label %37, !prof !11

37:                                               ; preds = %35
  store i1 true, ptr @create_one_pll.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.69, i32 noundef 1240, i32 noundef 9, ptr noundef nonnull @.str.70, i32 noundef %0) #12
  br label %90

38:                                               ; preds = %14
  %39 = icmp eq i32 %0, 0
  %40 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 1), align 4
  br i1 %39, label %41, label %43

41:                                               ; preds = %38
  %42 = getelementptr i8, ptr %40, i32 3072
  br label %48

43:                                               ; preds = %38
  %44 = getelementptr i8, ptr %40, i32 2048
  %45 = shl i32 %0, 5
  %46 = add i32 %45, -32
  %47 = getelementptr i8, ptr %44, i32 %46
  br label %48

48:                                               ; preds = %43, %41, %32, %29, %26, %23, %20
  %49 = phi ptr [ %34, %32 ], [ %31, %29 ], [ %28, %26 ], [ %25, %23 ], [ %22, %20 ], [ %42, %41 ], [ %47, %43 ]
  %50 = and i32 %16, 8
  %51 = icmp eq i32 %50, 0
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #12
  br i1 %51, label %54, label %53

53:                                               ; preds = %48
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  br label %56

54:                                               ; preds = %48
  %55 = tail call i32 @llvm.bswap.i32(i32 %52) #12
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !18
  br label %56

56:                                               ; preds = %54, %53
  %57 = phi i32 [ %52, %53 ], [ %55, %54 ]
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %59, label %90

59:                                               ; preds = %56
  %60 = load i32, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 2, i32 7), align 4
  %61 = and i32 %60, 4
  %62 = icmp eq i32 %61, 0
  %63 = and i32 %60, 2
  %64 = icmp ne i32 %63, 0
  %65 = and i1 %10, %64
  %66 = select i1 %65, i32 255, i32 63
  %67 = select i1 %62, i32 %66, i32 255
  %68 = lshr i32 %57, 1
  %69 = and i32 %68, %67
  br label %70

70:                                               ; preds = %86, %59
  %71 = phi i32 [ 0, %59 ], [ %73, %86 ]
  %72 = getelementptr [32 x %struct.clockgen_pll_div], ptr %2, i32 0, i32 %71, i32 1
  %73 = add nuw nsw i32 %71, 1
  %74 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %72, i32 noundef 32, ptr noundef nonnull @.str.71, i32 noundef %0, i32 noundef %73)
  %75 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %72, ptr noundef nonnull %15, i32 noundef 0, i32 noundef %69, i32 noundef %73) #12
  %76 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = ptrtoint ptr %75 to i32
  %79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__.create_one_pll, ptr noundef %72, i32 noundef %78) #13
  br label %86

80:                                               ; preds = %70
  %81 = getelementptr [32 x %struct.clockgen_pll_div], ptr %2, i32 0, i32 %71
  store ptr %75, ptr %81, align 4
  %82 = tail call i32 @clk_register_clkdev(ptr noundef %75, ptr noundef %72, ptr noundef null) #12
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @__func__.create_one_pll, ptr noundef %72, i32 noundef %82) #13
  br label %86

86:                                               ; preds = %84, %80, %77
  %87 = icmp ugt i32 %71, 30
  %88 = icmp ugt i32 %71, 2
  %89 = select i1 %10, i1 %88, i1 %87
  br i1 %89, label %90, label %70

90:                                               ; preds = %86, %56, %37, %35, %12, %1
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @create_one_cmux(i32 noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 60) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %58, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 2, i32 7), align 4
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 1), align 4
  %10 = select i1 %8, i32 0, i32 458752
  %11 = getelementptr i8, ptr %9, i32 %10
  %12 = shl i32 %0, 5
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = getelementptr inbounds %struct.mux_hwclock, ptr %3, i32 0, i32 3
  store ptr %13, ptr %14, align 4
  %15 = getelementptr %struct.clockgen, ptr @clockgen, i32 0, i32 2, i32 5, i32 %0
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.clockgen, ptr @clockgen, i32 0, i32 2, i32 2, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mux_hwclock, ptr %3, i32 0, i32 2
  store ptr %18, ptr %19, align 8
  %20 = and i32 %6, 8
  %21 = icmp eq i32 %20, 0
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #12
  br i1 %21, label %24, label %23

23:                                               ; preds = %5
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  br label %26

24:                                               ; preds = %5
  %25 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !18
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi i32 [ %22, %23 ], [ %25, %24 ]
  %28 = lshr i32 %27, 27
  %29 = and i32 %28, 15
  %30 = getelementptr [16 x %struct.clockgen_sourceinfo], ptr %18, i32 0, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %26
  %35 = getelementptr [16 x %struct.clockgen_sourceinfo], ptr %18, i32 0, i32 %29, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr [16 x %struct.clockgen_sourceinfo], ptr %18, i32 0, i32 %29, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr %struct.clockgen, ptr @clockgen, i32 0, i32 5, i32 %36
  %40 = getelementptr [32 x %struct.clockgen_pll_div], ptr %39, i32 0, i32 %38
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %34, %26
  tail call void @kfree(ptr noundef nonnull %3) #12
  br label %58

43:                                               ; preds = %34
  %44 = load ptr, ptr %40, align 4
  %45 = tail call i32 @clk_get_rate(ptr noundef %44) #12
  %46 = zext i32 %45 to i64
  %47 = shl nuw nsw i64 %46, 2
  %48 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %47, i64 3689348814741910323) #16, !srcloc !19
  %49 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %47, i64 %48) #16, !srcloc !20
  %50 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 5), align 4
  %51 = tail call i32 @clk_get_rate(ptr noundef %50) #12
  %52 = load i32, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 2, i32 7), align 4
  %53 = and i32 %52, 1
  %54 = xor i32 %53, 1
  %55 = lshr i32 %51, %54
  %56 = trunc i64 %49 to i32
  %57 = tail call fastcc ptr @create_mux_common(ptr noundef nonnull %3, ptr noundef nonnull @cmux_ops, i32 noundef %55, i32 noundef %45, i32 noundef %56, ptr noundef nonnull @.str.74, i32 noundef %0) #14
  br label %58

58:                                               ; preds = %43, %42, %1
  %59 = phi ptr [ %57, %43 ], [ null, %42 ], [ null, %1 ]
  ret ptr %59
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @create_one_hwaccel(i32 noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 60) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 1), align 4
  %7 = shl i32 %0, 5
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = getelementptr i8, ptr %8, i32 16
  %10 = getelementptr inbounds %struct.mux_hwclock, ptr %3, i32 0, i32 3
  store ptr %9, ptr %10, align 4
  %11 = getelementptr %struct.clockgen, ptr @clockgen, i32 0, i32 2, i32 3, i32 %0
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mux_hwclock, ptr %3, i32 0, i32 2
  store ptr %12, ptr %13, align 8
  %14 = tail call fastcc ptr @create_mux_common(ptr noundef nonnull %3, ptr noundef nonnull @hwaccel_ops, i32 noundef 0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull @.str.76, i32 noundef %0) #14
  br label %15

15:                                               ; preds = %5, %1
  %16 = phi ptr [ %14, %5 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @create_mux_common(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6) unnamed_addr #0 section ".init.text" {
  %8 = alloca %struct.clk_init_data, align 4
  %9 = alloca [16 x ptr], align 4
  %10 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, i8 0, i32 28, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %9, i8 0, i32 64, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %10, i8 0, i32 32, i1 false), !annotation !9
  %11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %10, i32 noundef 32, ptr noundef %5, i32 noundef %6)
  %12 = getelementptr inbounds %struct.mux_hwclock, ptr %0, i32 0, i32 2
  br label %13

13:                                               ; preds = %51, %7
  %14 = phi i32 [ 0, %7 ], [ %52, %51 ]
  %15 = phi i32 [ 0, %7 ], [ %53, %51 ]
  %16 = getelementptr %struct.mux_hwclock, ptr %0, i32 0, i32 5, i32 %15
  store i8 -1, ptr %16, align 1
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr [16 x %struct.clockgen_sourceinfo], ptr %17, i32 0, i32 %15
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %13
  %23 = getelementptr [16 x %struct.clockgen_sourceinfo], ptr %17, i32 0, i32 %15, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr [16 x %struct.clockgen_sourceinfo], ptr %17, i32 0, i32 %15, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.clockgen, ptr @clockgen, i32 0, i32 5, i32 %24
  %28 = getelementptr [32 x %struct.clockgen_pll_div], ptr %27, i32 0, i32 %26
  %29 = icmp eq ptr %28, null
  br i1 %29, label %51, label %30

30:                                               ; preds = %22
  %31 = load ptr, ptr %28, align 4
  %32 = tail call i32 @clk_get_rate(ptr noundef %31) #12
  %33 = load ptr, ptr %12, align 4
  %34 = getelementptr [16 x %struct.clockgen_sourceinfo], ptr %33, i32 0, i32 %15
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 2
  %37 = icmp ne i32 %36, 0
  %38 = icmp ugt i32 %32, %4
  %39 = select i1 %37, i1 %38, i1 false
  %40 = icmp ult i32 %32, %2
  %41 = select i1 %39, i1 true, i1 %40
  %42 = icmp ugt i32 %32, %3
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %30
  %45 = getelementptr [32 x %struct.clockgen_pll_div], ptr %27, i32 0, i32 %26, i32 1
  %46 = getelementptr [16 x ptr], ptr %9, i32 0, i32 %14
  store ptr %45, ptr %46, align 4
  %47 = trunc i32 %15 to i8
  %48 = getelementptr %struct.mux_hwclock, ptr %0, i32 0, i32 4, i32 %14
  store i8 %47, ptr %48, align 1
  %49 = trunc i32 %14 to i8
  store i8 %49, ptr %16, align 1
  %50 = add i32 %14, 1
  br label %51

51:                                               ; preds = %44, %30, %22, %13
  %52 = phi i32 [ %50, %44 ], [ %14, %22 ], [ %14, %30 ], [ %14, %13 ]
  %53 = add nuw nsw i32 %15, 1
  %54 = icmp eq i32 %53, 16
  br i1 %54, label %55, label %13

55:                                               ; preds = %51
  store ptr %10, ptr %8, align 4
  %56 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr %1, ptr %56, align 4
  %57 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 2
  store ptr %9, ptr %57, align 4
  %58 = getelementptr inbounds %struct.mux_hwclock, ptr %0, i32 0, i32 6
  store i32 %52, ptr %58, align 4
  %59 = trunc i32 %52 to i8
  %60 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 0, ptr %61, align 4
  %62 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 2
  store ptr %8, ptr %62, align 4
  %63 = getelementptr inbounds %struct.mux_hwclock, ptr %0, i32 0, i32 1
  store ptr @clockgen, ptr %63, align 4
  %64 = call ptr @clk_register(ptr noundef null, ptr noundef %0) #12
  %65 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %69

66:                                               ; preds = %55
  %67 = ptrtoint ptr %64 to i32
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__.create_mux_common, ptr noundef nonnull %10, i32 noundef %67) #13
  call void @kfree(ptr noundef %0) #12
  br label %69

69:                                               ; preds = %66, %55
  %70 = phi ptr [ null, %66 ], [ %64, %55 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #12
  ret ptr %70
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mux_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #7 {
  %3 = zext i8 %1 to i32
  %4 = getelementptr inbounds %struct.mux_hwclock, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, %3
  br i1 %6, label %7, label %24

7:                                                ; preds = %2
  %8 = getelementptr %struct.mux_hwclock, ptr %0, i32 0, i32 4, i32 %3
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.mux_hwclock, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = shl i32 %10, 27
  %14 = and i32 %13, 2013265920
  %15 = getelementptr inbounds %struct.mux_hwclock, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.clockgen, ptr %12, i32 0, i32 2, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #12
  tail call void @arm_heavy_mb() #12
  br i1 %20, label %22, label %21

21:                                               ; preds = %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #12, !srcloc !21
  br label %24

22:                                               ; preds = %7
  %23 = lshr exact i32 %14, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %23) #12, !srcloc !21
  br label %24

24:                                               ; preds = %22, %21, %2
  %25 = phi i32 [ -22, %2 ], [ 0, %21 ], [ 0, %22 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @mux_get_parent(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.mux_hwclock, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mux_hwclock, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clockgen, ptr %3, i32 0, i32 2, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12
  br i1 %9, label %12, label %11

11:                                               ; preds = %1
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  br label %14

12:                                               ; preds = %1
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !18
  br label %14

14:                                               ; preds = %12, %11
  %15 = phi i32 [ %10, %11 ], [ %13, %12 ]
  %16 = lshr i32 %15, 27
  %17 = and i32 %16, 15
  %18 = getelementptr %struct.mux_hwclock, ptr %0, i32 0, i32 5, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = icmp slt i8 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load ptr, ptr %4, align 4
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.mux_get_parent, ptr noundef %22) #13
  br label %24

24:                                               ; preds = %21, %14
  %25 = phi i8 [ 0, %21 ], [ %19, %14 ]
  ret i8 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @legacy_init_clockgen(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = load ptr, ptr @clockgen, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call ptr @of_get_parent(ptr noundef %0) #12
  tail call fastcc void @_clockgen_init(ptr noundef %5, i1 noundef zeroext true) #14
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @legacy_pll_init(ptr noundef %0, i32 noundef %1) unnamed_addr #0 section ".init.text" {
  tail call fastcc void @legacy_init_clockgen(ptr noundef %0) #14
  %3 = getelementptr %struct.clockgen, ptr @clockgen, i32 0, i32 5, i32 %1
  %4 = tail call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.79, ptr noundef null, i32 noundef 0, i32 noundef 0) #12
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 16) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 8) #15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %8
  %13 = icmp slt i32 %4, 4
  %14 = load ptr, ptr %3, align 4
  store ptr %14, ptr %6, align 8
  %15 = getelementptr [32 x %struct.clockgen_pll_div], ptr %3, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  br i1 %13, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr [32 x %struct.clockgen_pll_div], ptr %3, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  br label %26

20:                                               ; preds = %12
  %21 = getelementptr [32 x %struct.clockgen_pll_div], ptr %3, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr [32 x %struct.clockgen_pll_div], ptr %3, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr ptr, ptr %6, i32 3
  store ptr %24, ptr %25, align 4
  br label %26

26:                                               ; preds = %20, %17
  %27 = phi ptr [ %19, %17 ], [ %22, %20 ]
  %28 = getelementptr ptr, ptr %6, i32 1
  store ptr %16, ptr %28, align 4
  %29 = getelementptr ptr, ptr %6, i32 2
  store ptr %27, ptr %29, align 8
  store ptr %6, ptr %10, align 8
  %30 = getelementptr inbounds %struct.clk_onecell_data, ptr %10, i32 0, i32 1
  store i32 %4, ptr %30, align 4
  %31 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %10) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.legacy_pll_init, ptr noundef %0, i32 noundef %31) #13
  tail call void @kfree(ptr noundef nonnull %10) #12
  br label %35

35:                                               ; preds = %33, %8
  tail call void @kfree(ptr noundef nonnull %6) #12
  br label %36

36:                                               ; preds = %35, %26, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { cold }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 3070626}
!13 = !{i64 2151593230}
!14 = !{i64 2151593841}
!15 = !{i64 2151594473}
!16 = !{i64 2151595097}
!17 = !{i64 2150602589}
!18 = !{i64 2151591698}
!19 = !{i64 907125, i64 907152}
!20 = !{i64 907465, i64 907492, i64 907526, i64 907547}
!21 = !{i64 3070208}
