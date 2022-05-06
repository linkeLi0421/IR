; ModuleID = '/llk/IR/drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cxd2880_reg_value = type { i8, i8 }
%struct.cxd2880_tnrdmd_ts_clk_cfg = type { i8, i8, i8 }
%struct.cxd2880_tnrdmd = type { ptr, ptr, %struct.cxd2880_tnrdmd_create_param, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, i8, i32, i8, i8, [100 x %struct.cxd2880_tnrdmd_cfg_mem], i8, %struct.cxd2880_tnrdmd_pid_ftr_cfg, i8, ptr, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t }
%struct.cxd2880_tnrdmd_create_param = type { i32, i8, i32, i8, i8, i8, i8 }
%struct.cxd2880_tnrdmd_cfg_mem = type { i32, i8, i8, i8, i8 }
%struct.cxd2880_tnrdmd_pid_ftr_cfg = type { i8, [32 x %struct.cxd2880_tnrdmd_pid_cfg] }
%struct.cxd2880_tnrdmd_pid_cfg = type { i8, i16 }
%struct.atomic_t = type { i32 }
%struct.cxd2880_tnrdmd_diver_create_param = type { i32, i8, i8, i8, i8, i8, i8 }
%struct.cxd2880_io = type { ptr, ptr, ptr, ptr, i8, i8, i8, ptr }
%struct.cxd2880_tnrdmd_lna_thrs = type { i8, i8 }

@set_ts_pin_seq = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 80, i8 63 }, %struct.cxd2880_reg_value { i8 82, i8 31 }], align 1
@set_ts_output_seq1 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 82, i8 0 }], align 1
@set_ts_output_seq2 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 -61, i8 0 }], align 1
@set_ts_output_seq3 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 -61, i8 1 }], align 1
@set_ts_output_seq4 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 82, i8 31 }], align 1
@p_init1_seq = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 17, i8 22 }, %struct.cxd2880_reg_value { i8 0, i8 16 }], align 1
@rf_init1.rf_init1_cdata1 = internal constant [40 x i8] c"\05\05\05\05\05\05\05\05\05\04\04\04\03\03\03\04\04\05\05\05\02\02\02\02\02\02\02\02\02\03\02\01\01\01\02\02\03\04\04\04", align 1
@rf_init1.rf_init1_cdata2 = internal constant [5 x i8] c"\FF\00\00\00\00", align 1
@rf_init1.rf_init1_cdata3 = internal constant [80 x i8] c"\00\00\00\00\00\01\00\01\00\02\00c\00\00\00\03\00\04\00\04\00\06\00\06\00\08\00\09\00\0B\00\0B\00\0D\00\0D\00\0F\00\0F\00\0F\00\10\00y\00\00\00\02\00\00\00\03\00\01\00\03\00\03\00\03\00\04\00\04\00\06\00\05\00\07\00\07\00\08\00\0A\03\E0", align 1
@rf_init1.rf_init1_cdata4 = internal constant [8 x i8] c"  0AP_o\80", align 1
@rf_init1.rf_init1_cdata5 = internal constant [50 x i8] c"\00\09\00\08\00\07\00\06\00\05\00\03\00\02\00\00\00x\00\00\00\06\00\08\00\08\00\0C\00\0C\00\0D\00\0F\00\0E\00\0E\00\10\00\0F\00\0E\00\10\00\0F\00\0E", align 1
@rf_init1_seq1 = internal constant [9 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 79, i8 24 }, %struct.cxd2880_reg_value { i8 97, i8 0 }, %struct.cxd2880_reg_value { i8 113, i8 0 }, %struct.cxd2880_reg_value { i8 -99, i8 1 }, %struct.cxd2880_reg_value { i8 125, i8 2 }, %struct.cxd2880_reg_value { i8 -113, i8 1 }, %struct.cxd2880_reg_value { i8 -117, i8 -58 }, %struct.cxd2880_reg_value { i8 -102, i8 3 }, %struct.cxd2880_reg_value { i8 28, i8 0 }], align 1
@rf_init1_seq2 = internal constant [4 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 -71, i8 7 }, %struct.cxd2880_reg_value { i8 51, i8 1 }, %struct.cxd2880_reg_value { i8 -63, i8 1 }, %struct.cxd2880_reg_value { i8 -60, i8 30 }], align 1
@rf_init1_seq3 = internal constant [12 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 16 }, %struct.cxd2880_reg_value { i8 81, i8 1 }, %struct.cxd2880_reg_value { i8 -59, i8 7 }, %struct.cxd2880_reg_value { i8 0, i8 17 }, %struct.cxd2880_reg_value { i8 112, i8 -23 }, %struct.cxd2880_reg_value { i8 118, i8 10 }, %struct.cxd2880_reg_value { i8 120, i8 50 }, %struct.cxd2880_reg_value { i8 122, i8 70 }, %struct.cxd2880_reg_value { i8 124, i8 -122 }, %struct.cxd2880_reg_value { i8 126, i8 -92 }, %struct.cxd2880_reg_value { i8 0, i8 16 }, %struct.cxd2880_reg_value { i8 -31, i8 1 }], align 1
@rf_init1_seq4 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 21, i8 0 }, %struct.cxd2880_reg_value { i8 0, i8 22 }], align 1
@rf_init1_seq5 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 37, i8 0 }], align 1
@rf_init1_seq6 = internal constant [8 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 2, i8 0 }, %struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 33, i8 1 }, %struct.cxd2880_reg_value { i8 0, i8 -31 }, %struct.cxd2880_reg_value { i8 -113, i8 22 }, %struct.cxd2880_reg_value { i8 103, i8 96 }, %struct.cxd2880_reg_value { i8 106, i8 15 }, %struct.cxd2880_reg_value { i8 108, i8 23 }], align 1
@rf_init1_seq7 = internal constant [6 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 -30 }, %struct.cxd2880_reg_value { i8 65, i8 -96 }, %struct.cxd2880_reg_value { i8 75, i8 104 }, %struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 33, i8 0 }, %struct.cxd2880_reg_value { i8 16, i8 1 }], align 1
@rf_init1_seq8 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 16 }, %struct.cxd2880_reg_value { i8 37, i8 1 }], align 1
@rf_init1_seq9 = internal constant [4 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 16 }, %struct.cxd2880_reg_value { i8 20, i8 1 }, %struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 38, i8 0 }], align 1
@rf_init2_seq1 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 20 }, %struct.cxd2880_reg_value { i8 27, i8 1 }], align 1
@rf_init2_seq2 = internal constant [6 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 33, i8 1 }, %struct.cxd2880_reg_value { i8 0, i8 -31 }, %struct.cxd2880_reg_value { i8 -45, i8 0 }, %struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 33, i8 0 }], align 1
@t_power_x_seq1 = internal constant [4 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 16 }, %struct.cxd2880_reg_value { i8 41, i8 1 }, %struct.cxd2880_reg_value { i8 40, i8 1 }, %struct.cxd2880_reg_value { i8 39, i8 1 }], align 1
@t_power_x_seq2 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 16, i8 0 }], align 1
@t_power_x_seq3 = internal constant [3 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 39, i8 0 }, %struct.cxd2880_reg_value { i8 37, i8 1 }], align 1
@t_power_x_seq4 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 42, i8 0 }], align 1
@t_power_x_seq5 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 37, i8 0 }], align 1
@t_power_x_seq6 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 39, i8 1 }], align 1
@t_power_x_seq7 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 16, i8 1 }], align 1
@spll_reset_seq1 = internal constant [5 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 16 }, %struct.cxd2880_reg_value { i8 41, i8 1 }, %struct.cxd2880_reg_value { i8 40, i8 1 }, %struct.cxd2880_reg_value { i8 39, i8 1 }, %struct.cxd2880_reg_value { i8 38, i8 1 }], align 1
@spll_reset_seq2 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 16, i8 0 }], align 1
@spll_reset_seq3 = internal constant [3 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 39, i8 0 }, %struct.cxd2880_reg_value { i8 34, i8 1 }], align 1
@spll_reset_seq4 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 39, i8 1 }], align 1
@spll_reset_seq5 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 16, i8 1 }], align 1
@x_tune1_seq1 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 16, i8 1 }], align 1
@x_tune1_seq2 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 98, i8 0 }, %struct.cxd2880_reg_value { i8 0, i8 21 }], align 1
@x_tune2_seq1 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 26 }, %struct.cxd2880_reg_value { i8 41, i8 1 }], align 1
@x_tune2_seq2 = internal constant [4 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 98, i8 1 }, %struct.cxd2880_reg_value { i8 0, i8 17 }, %struct.cxd2880_reg_value { i8 45, i8 0 }, %struct.cxd2880_reg_value { i8 47, i8 0 }], align 1
@x_tune2_seq3 = internal constant [3 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 16, i8 0 }, %struct.cxd2880_reg_value { i8 33, i8 1 }], align 1
@x_tune2_seq4 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 -31 }, %struct.cxd2880_reg_value { i8 -118, i8 -121 }], align 1
@x_tune2_seq5 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 33, i8 0 }], align 1
@set_ts_clk_mode_and_freq.srl_ts_clk_stgs = internal unnamed_addr constant [2 x [2 x %struct.cxd2880_tnrdmd_ts_clk_cfg]] [[2 x %struct.cxd2880_tnrdmd_ts_clk_cfg] [%struct.cxd2880_tnrdmd_ts_clk_cfg { i8 3, i8 1, i8 8 }, %struct.cxd2880_tnrdmd_ts_clk_cfg { i8 0, i8 2, i8 16 }], [2 x %struct.cxd2880_tnrdmd_ts_clk_cfg] [%struct.cxd2880_tnrdmd_ts_clk_cfg { i8 1, i8 1, i8 8 }, %struct.cxd2880_tnrdmd_ts_clk_cfg { i8 2, i8 2, i8 16 }]], align 1
@x_tune3_seq = internal constant [7 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 33, i8 1 }, %struct.cxd2880_reg_value { i8 0, i8 -30 }, %struct.cxd2880_reg_value { i8 65, i8 -96 }, %struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 33, i8 0 }, %struct.cxd2880_reg_value { i8 -2, i8 1 }], align 1
@x_tune4_seq = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 -2, i8 1 }], align 1
@x_sleep1_seq = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 87, i8 3 }], align 1
@x_sleep2_seq1 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 45 }, %struct.cxd2880_reg_value { i8 -79, i8 1 }], align 1
@x_sleep2_seq2 = internal constant [7 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 16 }, %struct.cxd2880_reg_value { i8 -12, i8 0 }, %struct.cxd2880_reg_value { i8 -13, i8 0 }, %struct.cxd2880_reg_value { i8 -14, i8 0 }, %struct.cxd2880_reg_value { i8 -15, i8 0 }, %struct.cxd2880_reg_value { i8 -16, i8 0 }, %struct.cxd2880_reg_value { i8 -17, i8 0 }], align 1
@x_sleep3_seq = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 -3, i8 0 }], align 1
@x_sleep4_seq = internal constant [6 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 33, i8 1 }, %struct.cxd2880_reg_value { i8 0, i8 -30 }, %struct.cxd2880_reg_value { i8 65, i8 0 }, %struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 33, i8 0 }], align 1
@switch.table.x_tune1 = private unnamed_addr constant [8 x i8] c"\03\03\03\03\00\00\01\02", align 1

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_create(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %3
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(1032) %0, i8 0, i32 1032, i1 false)
  %10 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  store ptr %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 16, i1 false)
  store ptr null, ptr %0, align 4
  %12 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 12
  store i8 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 6
  store i8 1, ptr %13, align 1
  %14 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 7
  store i8 1, ptr %14, align 2
  %15 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 9
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 10
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 11
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 28
  store volatile i32 0, ptr %18, align 4
  br label %19

19:                                               ; preds = %9, %3
  %20 = phi i32 [ 0, %9 ], [ -22, %3 ]
  ret i32 %20
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_diver_create(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef readonly %4) local_unnamed_addr #3 {
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7
  %9 = icmp ne ptr %2, null
  %10 = and i1 %8, %9
  %11 = icmp ne ptr %3, null
  %12 = and i1 %10, %11
  %13 = icmp ne ptr %4, null
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %64

15:                                               ; preds = %5
  %16 = getelementptr inbounds i8, ptr %0, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(1032) %16, i8 0, i32 1024, i1 false)
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(1032) %2, i8 0, i32 1032, i1 false)
  %17 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 2
  %18 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %2, i32 0, i32 2
  %19 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  store i32 1, ptr %20, align 4
  store ptr %2, ptr %0, align 4
  %21 = getelementptr inbounds %struct.cxd2880_tnrdmd_diver_create_param, ptr %4, i32 0, i32 1
  %22 = load i8, ptr %21, align 4
  %23 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 2, i32 1
  store i8 %22, ptr %23, align 4
  %24 = load i32, ptr %4, align 4
  store i32 %24, ptr %17, align 4
  %25 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 2, i32 2
  store i32 2, ptr %25, align 4
  %26 = getelementptr inbounds %struct.cxd2880_tnrdmd_diver_create_param, ptr %4, i32 0, i32 2
  %27 = load i8, ptr %26, align 1
  %28 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 2, i32 3
  store i8 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.cxd2880_tnrdmd_diver_create_param, ptr %4, i32 0, i32 3
  %30 = load i8, ptr %29, align 2
  %31 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 2, i32 4
  store i8 %30, ptr %31, align 1
  %32 = getelementptr inbounds %struct.cxd2880_tnrdmd_diver_create_param, ptr %4, i32 0, i32 5
  %33 = load i8, ptr %32, align 4
  %34 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 2, i32 5
  store i8 %33, ptr %34, align 2
  %35 = getelementptr inbounds %struct.cxd2880_tnrdmd_diver_create_param, ptr %4, i32 0, i32 6
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 2, i32 6
  store i8 %36, ptr %37, align 1
  %38 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %2, i32 0, i32 1
  store ptr %3, ptr %38, align 4
  %39 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %2, i32 0, i32 3
  store i32 2, ptr %39, align 4
  store ptr null, ptr %2, align 4
  %40 = load i8, ptr %21, align 4
  %41 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %2, i32 0, i32 2, i32 1
  store i8 %40, ptr %41, align 4
  %42 = load i32, ptr %4, align 4
  store i32 %42, ptr %18, align 4
  %43 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %2, i32 0, i32 2, i32 2
  store i32 3, ptr %43, align 4
  %44 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %2, i32 0, i32 2, i32 3
  store i8 0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.cxd2880_tnrdmd_diver_create_param, ptr %4, i32 0, i32 4
  %46 = load i8, ptr %45, align 1
  %47 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %2, i32 0, i32 2, i32 4
  store i8 %46, ptr %47, align 1
  %48 = load i8, ptr %32, align 4
  %49 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %2, i32 0, i32 2, i32 5
  store i8 %48, ptr %49, align 2
  %50 = load i8, ptr %35, align 1
  %51 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %2, i32 0, i32 2, i32 6
  store i8 %50, ptr %51, align 1
  %52 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 12
  store i8 1, ptr %52, align 4
  %53 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 6
  store i8 1, ptr %53, align 1
  %54 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 7
  store i8 1, ptr %54, align 2
  %55 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 9
  store ptr null, ptr %55, align 4
  %56 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 10
  store ptr null, ptr %56, align 4
  %57 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 11
  store ptr null, ptr %57, align 4
  %58 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %2, i32 0, i32 12
  store i8 1, ptr %58, align 4
  %59 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %2, i32 0, i32 6
  store i8 1, ptr %59, align 1
  %60 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %2, i32 0, i32 7
  store i8 1, ptr %60, align 2
  %61 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %2, i32 0, i32 9
  store ptr null, ptr %61, align 4
  %62 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %2, i32 0, i32 10
  store ptr null, ptr %62, align 4
  %63 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %2, i32 0, i32 11
  store ptr null, ptr %63, align 4
  br label %64

64:                                               ; preds = %15, %5
  %65 = phi i32 [ 0, %15 ], [ -22, %5 ]
  ret i32 %65
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_init1(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = icmp eq ptr %0, null
  br i1 %4, label %117, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %117, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 21
  %11 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 28
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(25) %10, i8 0, i64 25, i1 false)
  store volatile i32 0, ptr %11, align 4
  %12 = icmp eq i32 %7, 1
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %14, i32 0, i32 21
  store i32 0, ptr %15, align 4
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %16, i32 0, i32 22
  store i32 0, ptr %17, align 4
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %18, i32 0, i32 23
  store i32 0, ptr %19, align 4
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %20, i32 0, i32 24
  store i32 0, ptr %21, align 4
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %22, i32 0, i32 25
  store i32 0, ptr %23, align 4
  %24 = load ptr, ptr %0, align 4
  %25 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %24, i32 0, i32 26
  store i32 0, ptr %25, align 4
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %26, i32 0, i32 27
  store i8 0, ptr %27, align 4
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %28, i32 0, i32 28
  store volatile i32 0, ptr %29, align 4
  br label %30

30:                                               ; preds = %13, %9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 0, ptr %3, align 1
  %31 = icmp eq ptr %10, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.cxd2880_io, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %34, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load ptr, ptr %33, align 4
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 %41(ptr noundef %40, i32 noundef 0, i8 noundef zeroext -3, ptr noundef nonnull %3, i32 noundef 1) #11
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39, %32, %30
  %45 = phi i32 [ %42, %39 ], [ %37, %32 ], [ -22, %30 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  br label %117

46:                                               ; preds = %39
  %47 = load i8, ptr %3, align 1
  %48 = zext i8 %47 to i32
  store i32 %48, ptr %10, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  switch i8 %47, label %117 [
    i8 98, label %49
    i8 106, label %49
  ]

49:                                               ; preds = %46, %46
  %50 = load i32, ptr %6, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %78

52:                                               ; preds = %49
  %53 = load ptr, ptr %0, align 4
  %54 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %53, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  store i8 0, ptr %2, align 1
  %55 = icmp ne ptr %53, null
  %56 = icmp ne ptr %54, null
  %57 = and i1 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %53, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.cxd2880_io, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = call i32 %62(ptr noundef %60, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load ptr, ptr %59, align 4
  %67 = load ptr, ptr %66, align 4
  %68 = call i32 %67(ptr noundef %66, i32 noundef 0, i8 noundef zeroext -3, ptr noundef nonnull %2, i32 noundef 1) #11
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65, %58, %52
  %71 = phi i32 [ %68, %65 ], [ %63, %58 ], [ -22, %52 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  br label %117

72:                                               ; preds = %65
  %73 = load i8, ptr %2, align 1
  %74 = zext i8 %73 to i32
  store i32 %74, ptr %54, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  %75 = load ptr, ptr %0, align 4
  %76 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %75, i32 0, i32 21
  %77 = load i32, ptr %76, align 4
  switch i32 %77, label %117 [
    i32 98, label %78
    i32 106, label %78
  ]

78:                                               ; preds = %72, %72, %49
  %79 = call fastcc i32 @p_init1(ptr noundef nonnull %0)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %117

81:                                               ; preds = %78
  %82 = load i32, ptr %6, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load ptr, ptr %0, align 4
  %86 = call fastcc i32 @p_init1(ptr noundef %85)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %117

88:                                               ; preds = %84, %81
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %89 = load i32, ptr %6, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load ptr, ptr %0, align 4
  %93 = call fastcc i32 @p_init2(ptr noundef %92)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %91, %88
  %96 = call fastcc i32 @p_init2(ptr noundef nonnull %0)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %117

98:                                               ; preds = %95
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #11
  %99 = call fastcc i32 @p_init3(ptr noundef nonnull %0)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %98
  %102 = load i32, ptr %6, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load ptr, ptr %0, align 4
  %106 = call fastcc i32 @p_init3(ptr noundef %105)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %104, %101
  %109 = call fastcc i32 @rf_init1(ptr noundef nonnull %0)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i32, ptr %6, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load ptr, ptr %0, align 4
  %116 = call fastcc i32 @rf_init1(ptr noundef %115)
  br label %117

117:                                              ; preds = %114, %111, %108, %104, %98, %95, %91, %84, %78, %72, %70, %46, %44, %5, %1
  %118 = phi i32 [ -22, %5 ], [ -22, %1 ], [ -25, %46 ], [ -25, %72 ], [ %79, %78 ], [ %86, %84 ], [ %93, %91 ], [ %96, %95 ], [ %99, %98 ], [ %106, %104 ], [ %109, %108 ], [ %116, %114 ], [ 0, %111 ], [ %45, %44 ], [ %71, %70 ]
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_chip_id(ptr noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #5 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 0, ptr %3, align 1
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.cxd2880_io, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %7
  %15 = load ptr, ptr %8, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 %16(ptr noundef %15, i32 noundef 0, i8 noundef zeroext -3, ptr noundef nonnull %3, i32 noundef 1) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8, ptr %3, align 1
  %21 = zext i8 %20 to i32
  store i32 %21, ptr %1, align 4
  br label %22

22:                                               ; preds = %19, %14, %7, %2
  %23 = phi i32 [ 0, %19 ], [ -22, %2 ], [ %12, %7 ], [ %17, %14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @p_init1(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %83, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cxd2880_io, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %83

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, 3
  br i1 %17, label %18, label %83

18:                                               ; preds = %14
  %19 = trunc i32 %16 to i8
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr inbounds %struct.cxd2880_io, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(ptr noundef %20, i32 noundef 0, i8 noundef zeroext 16, i8 noundef zeroext %19) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %83

25:                                               ; preds = %18, %10
  %26 = load ptr, ptr %4, align 4
  %27 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %26, i32 noundef 0, ptr noundef nonnull @p_init1_seq, i8 noundef zeroext 2) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %83

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 21
  %31 = load i32, ptr %30, align 4
  switch i32 %31, label %83 [
    i32 98, label %33
    i32 106, label %32
  ]

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi i8 [ 22, %32 ], [ 26, %29 ]
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr inbounds %struct.cxd2880_io, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 %37(ptr noundef %35, i32 noundef 0, i8 noundef zeroext 16, i8 noundef zeroext %34) #11
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %83

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 2, i32 1
  %42 = load i8, ptr %41, align 4
  %43 = icmp ne i8 %42, 0
  %44 = zext i1 %43 to i8
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr inbounds %struct.cxd2880_io, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 %47(ptr noundef %45, i32 noundef 0, i8 noundef zeroext 17, i8 noundef zeroext %44) #11
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %83

50:                                               ; preds = %40
  %51 = load ptr, ptr %4, align 4
  %52 = getelementptr inbounds %struct.cxd2880_io, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 %53(ptr noundef %51, i32 noundef 0, i8 noundef zeroext 19, i8 noundef zeroext %44) #11
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %83

56:                                               ; preds = %50
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr inbounds %struct.cxd2880_io, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 %59(ptr noundef %57, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %56
  %63 = load ptr, ptr %4, align 4
  %64 = getelementptr inbounds %struct.cxd2880_io, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = tail call i32 %65(ptr noundef %63, i32 noundef 0, i8 noundef zeroext 18, i8 noundef zeroext %44) #11
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %62
  %69 = load ptr, ptr %4, align 4
  %70 = getelementptr inbounds %struct.cxd2880_io, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = tail call i32 %71(ptr noundef %69, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 16) #11
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load i32, ptr %30, align 4
  switch i32 %75, label %83 [
    i32 98, label %77
    i32 106, label %76
  ]

76:                                               ; preds = %74
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i8 [ 0, %76 ], [ 1, %74 ]
  %79 = load ptr, ptr %4, align 4
  %80 = getelementptr inbounds %struct.cxd2880_io, ptr %79, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = tail call i32 %81(ptr noundef %79, i32 noundef 0, i8 noundef zeroext 105, i8 noundef zeroext %78) #11
  br label %83

83:                                               ; preds = %77, %74, %68, %62, %56, %50, %40, %33, %29, %25, %18, %14, %3, %1
  %84 = phi i32 [ %82, %77 ], [ -22, %1 ], [ %8, %3 ], [ -22, %14 ], [ %23, %18 ], [ %27, %25 ], [ -25, %29 ], [ %38, %33 ], [ %48, %40 ], [ %54, %50 ], [ %60, %56 ], [ %66, %62 ], [ %72, %68 ], [ -25, %74 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @p_init2(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #11
  %3 = getelementptr inbounds i8, ptr %2, i32 2
  store i16 0, ptr %3, align 1
  %4 = icmp eq ptr %0, null
  br i1 %4, label %36, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cxd2880_io, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 2, i32 3
  %14 = load i8, ptr %13, align 4
  store i8 %14, ptr %2, align 1
  %15 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 2, i32 4
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 %16, ptr %17, align 1
  %18 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 2, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, 4
  br i1 %20, label %21, label %36

21:                                               ; preds = %12
  %22 = shl i32 %19, 3
  %23 = lshr i32 65537, %22
  %24 = trunc i32 %23 to i8
  %25 = shl i32 %19, 3
  %26 = lshr i32 16842752, %25
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 %24, ptr %28, align 1
  %29 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 3
  store i8 %27, ptr %29, align 1
  %30 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 4
  store i8 6, ptr %30, align 1
  %31 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 5
  store i8 0, ptr %31, align 1
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr inbounds %struct.cxd2880_io, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 %34(ptr noundef %32, i32 noundef 0, i8 noundef zeroext 19, ptr noundef nonnull %2, i32 noundef 6) #11
  br label %36

36:                                               ; preds = %21, %12, %5, %1
  %37 = phi i32 [ %35, %21 ], [ -22, %1 ], [ %10, %5 ], [ -22, %12 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #11
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @p_init3(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #11
  store i16 256, ptr %2, align 2
  %3 = icmp eq ptr %0, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cxd2880_io, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %22 [
    i32 0, label %14
    i32 1, label %15
    i32 2, label %16
  ]

14:                                               ; preds = %11
  store i8 0, ptr %2, align 2
  br label %17

15:                                               ; preds = %11
  store i8 3, ptr %2, align 2
  br label %17

16:                                               ; preds = %11
  store i8 2, ptr %2, align 2
  br label %17

17:                                               ; preds = %16, %15, %14
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.cxd2880_io, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 %20(ptr noundef %18, i32 noundef 0, i8 noundef zeroext 31, ptr noundef nonnull %2, i32 noundef 2) #11
  br label %22

22:                                               ; preds = %17, %11, %4, %1
  %23 = phi i32 [ %21, %17 ], [ -22, %1 ], [ %9, %4 ], [ -22, %11 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rf_init1(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store i64 65537, ptr %2, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %362, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cxd2880_io, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %362

11:                                               ; preds = %4
  %12 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 1
  %13 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 2
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.cxd2880_io, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 %16(ptr noundef %14, i32 noundef 0, i8 noundef zeroext 33, ptr noundef nonnull %2, i32 noundef 3) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %362

19:                                               ; preds = %11
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr inbounds %struct.cxd2880_io, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 %22(ptr noundef %20, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 16) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %362

25:                                               ; preds = %19
  store i8 1, ptr %2, align 8
  store i8 1, ptr %12, align 1
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr inbounds %struct.cxd2880_io, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 %28(ptr noundef %26, i32 noundef 0, i8 noundef zeroext 23, ptr noundef nonnull %2, i32 noundef 2) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %362

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 2, i32 6
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %5, align 4
  %37 = getelementptr inbounds %struct.cxd2880_io, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 %38(ptr noundef %36, i32 noundef 0, i8 noundef zeroext 26, i8 noundef zeroext 6) #11
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %362

41:                                               ; preds = %35, %31
  %42 = load ptr, ptr %5, align 4
  %43 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %42, i32 noundef 0, ptr noundef nonnull @rf_init1_seq1, i8 noundef zeroext 9) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %362

45:                                               ; preds = %41
  store i8 0, ptr %2, align 8
  %46 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 2, i32 5
  %47 = load i8, ptr %46, align 2
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 2, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %54, label %53

53:                                               ; preds = %49, %45
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi i8 [ 31, %53 ], [ 0, %49 ]
  store i8 %55, ptr %12, align 1
  store i8 10, ptr %13, align 2
  %56 = load ptr, ptr %5, align 4
  %57 = getelementptr inbounds %struct.cxd2880_io, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = call i32 %58(ptr noundef %56, i32 noundef 0, i8 noundef zeroext -75, ptr noundef nonnull %2, i32 noundef 3) #11
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %362

61:                                               ; preds = %54
  %62 = load ptr, ptr %5, align 4
  %63 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %62, i32 noundef 0, ptr noundef nonnull @rf_init1_seq2, i8 noundef zeroext 4) #11
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %362

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 21
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 98
  %69 = select i1 %68, i8 52, i8 47
  %70 = select i1 %68, i8 44, i8 37
  store i8 %69, ptr %2, align 8
  store i8 %70, ptr %12, align 1
  store i8 21, ptr %13, align 2
  %71 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 3
  store i8 25, ptr %71, align 1
  %72 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 4
  store i8 27, ptr %72, align 4
  %73 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 5
  store i8 21, ptr %73, align 1
  %74 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 6
  store i8 25, ptr %74, align 2
  %75 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 7
  store i8 27, ptr %75, align 1
  %76 = load ptr, ptr %5, align 4
  %77 = getelementptr inbounds %struct.cxd2880_io, ptr %76, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = call i32 %78(ptr noundef %76, i32 noundef 0, i8 noundef zeroext -39, ptr noundef nonnull %2, i32 noundef 8) #11
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %362

81:                                               ; preds = %65
  %82 = load ptr, ptr %5, align 4
  %83 = getelementptr inbounds %struct.cxd2880_io, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = call i32 %84(ptr noundef %82, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 17) #11
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %362

87:                                               ; preds = %81
  store i8 108, ptr %2, align 8
  store i8 16, ptr %12, align 1
  store i8 -90, ptr %13, align 2
  %88 = load ptr, ptr %5, align 4
  %89 = getelementptr inbounds %struct.cxd2880_io, ptr %88, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = call i32 %90(ptr noundef %88, i32 noundef 0, i8 noundef zeroext 68, ptr noundef nonnull %2, i32 noundef 3) #11
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %362

93:                                               ; preds = %87
  store i8 22, ptr %2, align 8
  store i8 -88, ptr %12, align 1
  %94 = load ptr, ptr %5, align 4
  %95 = getelementptr inbounds %struct.cxd2880_io, ptr %94, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = call i32 %96(ptr noundef %94, i32 noundef 0, i8 noundef zeroext 80, ptr noundef nonnull %2, i32 noundef 2) #11
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %362

99:                                               ; preds = %93
  store i8 0, ptr %2, align 8
  store i8 34, ptr %12, align 1
  store i8 0, ptr %13, align 2
  store i8 -120, ptr %71, align 1
  %100 = load ptr, ptr %5, align 4
  %101 = getelementptr inbounds %struct.cxd2880_io, ptr %100, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = call i32 %102(ptr noundef %100, i32 noundef 0, i8 noundef zeroext 98, ptr noundef nonnull %2, i32 noundef 4) #11
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %362

105:                                              ; preds = %99
  %106 = load ptr, ptr %5, align 4
  %107 = getelementptr inbounds %struct.cxd2880_io, ptr %106, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  %109 = call i32 %108(ptr noundef %106, i32 noundef 0, i8 noundef zeroext 116, i8 noundef zeroext 117) #11
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %362

111:                                              ; preds = %105
  %112 = load ptr, ptr %5, align 4
  %113 = getelementptr inbounds %struct.cxd2880_io, ptr %112, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = call i32 %114(ptr noundef %112, i32 noundef 0, i8 noundef zeroext 127, ptr noundef nonnull @rf_init1.rf_init1_cdata1, i32 noundef 40) #11
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %362

117:                                              ; preds = %111
  %118 = load ptr, ptr %5, align 4
  %119 = getelementptr inbounds %struct.cxd2880_io, ptr %118, i32 0, i32 2
  %120 = load ptr, ptr %119, align 4
  %121 = call i32 %120(ptr noundef %118, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 22) #11
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %362

123:                                              ; preds = %117
  store i8 0, ptr %2, align 8
  store i8 113, ptr %12, align 1
  %124 = load ptr, ptr %5, align 4
  %125 = getelementptr inbounds %struct.cxd2880_io, ptr %124, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = call i32 %126(ptr noundef %124, i32 noundef 0, i8 noundef zeroext 16, ptr noundef nonnull %2, i32 noundef 2) #11
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %362

129:                                              ; preds = %123
  %130 = load ptr, ptr %5, align 4
  %131 = getelementptr inbounds %struct.cxd2880_io, ptr %130, i32 0, i32 2
  %132 = load ptr, ptr %131, align 4
  %133 = call i32 %132(ptr noundef %130, i32 noundef 0, i8 noundef zeroext 35, i8 noundef zeroext -119) #11
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %362

135:                                              ; preds = %129
  %136 = load ptr, ptr %5, align 4
  %137 = getelementptr inbounds %struct.cxd2880_io, ptr %136, i32 0, i32 1
  %138 = load ptr, ptr %137, align 4
  %139 = call i32 %138(ptr noundef %136, i32 noundef 0, i8 noundef zeroext 39, ptr noundef nonnull @rf_init1.rf_init1_cdata2, i32 noundef 5) #11
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %362

141:                                              ; preds = %135
  %142 = load ptr, ptr %5, align 4
  %143 = getelementptr inbounds %struct.cxd2880_io, ptr %142, i32 0, i32 1
  %144 = load ptr, ptr %143, align 4
  %145 = call i32 %144(ptr noundef %142, i32 noundef 0, i8 noundef zeroext 58, ptr noundef nonnull @rf_init1.rf_init1_cdata3, i32 noundef 80) #11
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %362

147:                                              ; preds = %141
  store i8 3, ptr %2, align 8
  store i8 -32, ptr %12, align 1
  %148 = load ptr, ptr %5, align 4
  %149 = getelementptr inbounds %struct.cxd2880_io, ptr %148, i32 0, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = call i32 %150(ptr noundef %148, i32 noundef 0, i8 noundef zeroext -68, ptr noundef nonnull %2, i32 noundef 2) #11
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %362

153:                                              ; preds = %147
  %154 = load ptr, ptr %5, align 4
  %155 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %154, i32 noundef 0, ptr noundef nonnull @rf_init1_seq3, i8 noundef zeroext 12) #11
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %362

157:                                              ; preds = %153
  %158 = load i8, ptr %32, align 1
  %159 = icmp eq i8 %158, 0
  %160 = select i1 %159, i8 0, i8 6
  %161 = select i1 %159, i8 8, i8 7
  %162 = select i1 %159, i8 25, i8 26
  store i8 %160, ptr %2, align 8
  store i8 %161, ptr %12, align 1
  store i8 %162, ptr %13, align 2
  store i8 14, ptr %71, align 1
  store i8 9, ptr %72, align 4
  store i8 14, ptr %73, align 1
  %163 = load ptr, ptr %5, align 4
  %164 = getelementptr inbounds %struct.cxd2880_io, ptr %163, i32 0, i32 2
  %165 = load ptr, ptr %164, align 4
  %166 = call i32 %165(ptr noundef %163, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 18) #11
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %362

168:                                              ; preds = %157
  %169 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 10
  br label %174

170:                                              ; preds = %186
  %171 = add nuw i8 %176, 6
  %172 = icmp ult i8 %176, -103
  %173 = add nuw nsw i32 %175, 6
  br i1 %172, label %174, label %192

174:                                              ; preds = %170, %168
  %175 = phi i32 [ 16, %168 ], [ %173, %170 ]
  %176 = phi i8 [ 16, %168 ], [ %171, %170 ]
  %177 = load ptr, ptr %169, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %186, label %179

179:                                              ; preds = %174
  %180 = add nsw i32 %175, -16
  %181 = udiv i32 %180, 6
  %182 = getelementptr [24 x %struct.cxd2880_tnrdmd_lna_thrs], ptr %177, i32 0, i32 %181
  %183 = load i8, ptr %182, align 1
  store i8 %183, ptr %2, align 8
  %184 = getelementptr [24 x %struct.cxd2880_tnrdmd_lna_thrs], ptr %177, i32 0, i32 %181, i32 1
  %185 = load i8, ptr %184, align 1
  store i8 %185, ptr %12, align 1
  br label %186

186:                                              ; preds = %179, %174
  %187 = load ptr, ptr %5, align 4
  %188 = getelementptr inbounds %struct.cxd2880_io, ptr %187, i32 0, i32 1
  %189 = load ptr, ptr %188, align 4
  %190 = call i32 %189(ptr noundef %187, i32 noundef 0, i8 noundef zeroext %176, ptr noundef nonnull %2, i32 noundef 6) #11
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %170, label %362

192:                                              ; preds = %170
  store i8 0, ptr %2, align 8
  store i8 8, ptr %12, align 1
  %193 = load i8, ptr %32, align 1
  %194 = icmp eq i8 %193, 0
  %195 = select i1 %194, i8 25, i8 26
  store i8 %195, ptr %13, align 2
  store i8 14, ptr %71, align 1
  store i8 9, ptr %72, align 4
  store i8 14, ptr %73, align 1
  %196 = load ptr, ptr %5, align 4
  %197 = getelementptr inbounds %struct.cxd2880_io, ptr %196, i32 0, i32 2
  %198 = load ptr, ptr %197, align 4
  %199 = call i32 %198(ptr noundef %196, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 19) #11
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %362

201:                                              ; preds = %192
  %202 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 11
  br label %207

203:                                              ; preds = %219
  %204 = add nuw i8 %209, 6
  %205 = icmp ult i8 %209, -55
  %206 = add nuw nsw i32 %208, 6
  br i1 %205, label %207, label %225

207:                                              ; preds = %203, %201
  %208 = phi i32 [ 16, %201 ], [ %206, %203 ]
  %209 = phi i8 [ 16, %201 ], [ %204, %203 ]
  %210 = load ptr, ptr %202, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %219, label %212

212:                                              ; preds = %207
  %213 = add nsw i32 %208, -16
  %214 = udiv i32 %213, 6
  %215 = getelementptr [32 x %struct.cxd2880_tnrdmd_lna_thrs], ptr %210, i32 0, i32 %214
  %216 = load i8, ptr %215, align 1
  store i8 %216, ptr %2, align 8
  %217 = getelementptr [32 x %struct.cxd2880_tnrdmd_lna_thrs], ptr %210, i32 0, i32 %214, i32 1
  %218 = load i8, ptr %217, align 1
  store i8 %218, ptr %12, align 1
  br label %219

219:                                              ; preds = %212, %207
  %220 = load ptr, ptr %5, align 4
  %221 = getelementptr inbounds %struct.cxd2880_io, ptr %220, i32 0, i32 1
  %222 = load ptr, ptr %221, align 4
  %223 = call i32 %222(ptr noundef %220, i32 noundef 0, i8 noundef zeroext %209, ptr noundef nonnull %2, i32 noundef 6) #11
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %203, label %362

225:                                              ; preds = %203
  %226 = load ptr, ptr %5, align 4
  %227 = getelementptr inbounds %struct.cxd2880_io, ptr %226, i32 0, i32 2
  %228 = load ptr, ptr %227, align 4
  %229 = call i32 %228(ptr noundef %226, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 17) #11
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %362

231:                                              ; preds = %225
  store i8 8, ptr %2, align 8
  store i8 9, ptr %12, align 1
  %232 = load ptr, ptr %5, align 4
  %233 = getelementptr inbounds %struct.cxd2880_io, ptr %232, i32 0, i32 1
  %234 = load ptr, ptr %233, align 4
  %235 = call i32 %234(ptr noundef %232, i32 noundef 0, i8 noundef zeroext -67, ptr noundef nonnull %2, i32 noundef 2) #11
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %362

237:                                              ; preds = %231
  store i8 8, ptr %2, align 8
  store i8 9, ptr %12, align 1
  %238 = load ptr, ptr %5, align 4
  %239 = getelementptr inbounds %struct.cxd2880_io, ptr %238, i32 0, i32 1
  %240 = load ptr, ptr %239, align 4
  %241 = call i32 %240(ptr noundef %238, i32 noundef 0, i8 noundef zeroext -60, ptr noundef nonnull %2, i32 noundef 2) #11
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %362

243:                                              ; preds = %237
  %244 = load ptr, ptr %5, align 4
  %245 = getelementptr inbounds %struct.cxd2880_io, ptr %244, i32 0, i32 1
  %246 = load ptr, ptr %245, align 4
  %247 = call i32 %246(ptr noundef %244, i32 noundef 0, i8 noundef zeroext -55, ptr noundef nonnull @rf_init1.rf_init1_cdata4, i32 noundef 8) #11
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %362

249:                                              ; preds = %243
  %250 = load ptr, ptr %5, align 4
  %251 = getelementptr inbounds %struct.cxd2880_io, ptr %250, i32 0, i32 2
  %252 = load ptr, ptr %251, align 4
  %253 = call i32 %252(ptr noundef %250, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 20) #11
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %362

255:                                              ; preds = %249
  store i8 21, ptr %2, align 8
  store i8 24, ptr %12, align 1
  store i8 0, ptr %13, align 2
  %256 = load ptr, ptr %5, align 4
  %257 = getelementptr inbounds %struct.cxd2880_io, ptr %256, i32 0, i32 1
  %258 = load ptr, ptr %257, align 4
  %259 = call i32 %258(ptr noundef %256, i32 noundef 0, i8 noundef zeroext 16, ptr noundef nonnull %2, i32 noundef 3) #11
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %362

261:                                              ; preds = %255
  %262 = load ptr, ptr %5, align 4
  %263 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %262, i32 noundef 0, ptr noundef nonnull @rf_init1_seq4, i8 noundef zeroext 2) #11
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %362

265:                                              ; preds = %261
  %266 = load ptr, ptr %5, align 4
  %267 = getelementptr inbounds %struct.cxd2880_io, ptr %266, i32 0, i32 1
  %268 = load ptr, ptr %267, align 4
  %269 = call i32 %268(ptr noundef %266, i32 noundef 0, i8 noundef zeroext 18, ptr noundef nonnull @rf_init1.rf_init1_cdata5, i32 noundef 50) #11
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %362

271:                                              ; preds = %265
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %272 = load ptr, ptr %5, align 4
  %273 = getelementptr inbounds %struct.cxd2880_io, ptr %272, i32 0, i32 2
  %274 = load ptr, ptr %273, align 4
  %275 = call i32 %274(ptr noundef %272, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 10) #11
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %362

277:                                              ; preds = %271
  %278 = load ptr, ptr %5, align 4
  %279 = load ptr, ptr %278, align 4
  %280 = call i32 %279(ptr noundef %278, i32 noundef 0, i8 noundef zeroext 16, ptr noundef nonnull %2, i32 noundef 1) #11
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %362

282:                                              ; preds = %277
  %283 = load i8, ptr %2, align 8
  %284 = and i8 %283, 1
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %362, label %286

286:                                              ; preds = %282
  %287 = load ptr, ptr %5, align 4
  %288 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %287, i32 noundef 0, ptr noundef nonnull @rf_init1_seq5, i8 noundef zeroext 2) #11
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %362

290:                                              ; preds = %286
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %291 = load ptr, ptr %5, align 4
  %292 = getelementptr inbounds %struct.cxd2880_io, ptr %291, i32 0, i32 2
  %293 = load ptr, ptr %292, align 4
  %294 = call i32 %293(ptr noundef %291, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 10) #11
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %362

296:                                              ; preds = %290
  %297 = load ptr, ptr %5, align 4
  %298 = load ptr, ptr %297, align 4
  %299 = call i32 %298(ptr noundef %297, i32 noundef 0, i8 noundef zeroext 17, ptr noundef nonnull %2, i32 noundef 1) #11
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %362

301:                                              ; preds = %296
  %302 = load i8, ptr %2, align 8
  %303 = and i8 %302, 1
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %362, label %305

305:                                              ; preds = %301
  %306 = load ptr, ptr %5, align 4
  %307 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %306, i32 noundef 1, ptr noundef nonnull @rf_init1_seq6, i8 noundef zeroext 8) #11
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %362

309:                                              ; preds = %305
  store i8 0, ptr %2, align 8
  store i8 -2, ptr %12, align 1
  store i8 -18, ptr %13, align 2
  %310 = load ptr, ptr %5, align 4
  %311 = getelementptr inbounds %struct.cxd2880_io, ptr %310, i32 0, i32 1
  %312 = load ptr, ptr %311, align 4
  %313 = call i32 %312(ptr noundef %310, i32 noundef 1, i8 noundef zeroext 110, ptr noundef nonnull %2, i32 noundef 3) #11
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %362

315:                                              ; preds = %309
  store i8 -95, ptr %2, align 8
  store i8 -117, ptr %12, align 1
  %316 = load ptr, ptr %5, align 4
  %317 = getelementptr inbounds %struct.cxd2880_io, ptr %316, i32 0, i32 1
  %318 = load ptr, ptr %317, align 4
  %319 = call i32 %318(ptr noundef %316, i32 noundef 1, i8 noundef zeroext -115, ptr noundef nonnull %2, i32 noundef 2) #11
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %362

321:                                              ; preds = %315
  store i8 8, ptr %2, align 8
  store i8 9, ptr %12, align 1
  %322 = load ptr, ptr %5, align 4
  %323 = getelementptr inbounds %struct.cxd2880_io, ptr %322, i32 0, i32 1
  %324 = load ptr, ptr %323, align 4
  %325 = call i32 %324(ptr noundef %322, i32 noundef 1, i8 noundef zeroext 119, ptr noundef nonnull %2, i32 noundef 2) #11
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %362

327:                                              ; preds = %321
  %328 = load i8, ptr %32, align 1
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %336, label %330

330:                                              ; preds = %327
  %331 = load ptr, ptr %5, align 4
  %332 = getelementptr inbounds %struct.cxd2880_io, ptr %331, i32 0, i32 2
  %333 = load ptr, ptr %332, align 4
  %334 = call i32 %333(ptr noundef %331, i32 noundef 1, i8 noundef zeroext -128, i8 noundef zeroext -86) #11
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %362

336:                                              ; preds = %330, %327
  %337 = load ptr, ptr %5, align 4
  %338 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %337, i32 noundef 1, ptr noundef nonnull @rf_init1_seq7, i8 noundef zeroext 6) #11
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %362

340:                                              ; preds = %336
  %341 = load ptr, ptr %5, align 4
  %342 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %341, i32 noundef 0, ptr noundef nonnull @rf_init1_seq8, i8 noundef zeroext 2) #11
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %362

344:                                              ; preds = %340
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %345 = load ptr, ptr %5, align 4
  %346 = getelementptr inbounds %struct.cxd2880_io, ptr %345, i32 0, i32 2
  %347 = load ptr, ptr %346, align 4
  %348 = call i32 %347(ptr noundef %345, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 26) #11
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %362

350:                                              ; preds = %344
  %351 = load ptr, ptr %5, align 4
  %352 = load ptr, ptr %351, align 4
  %353 = call i32 %352(ptr noundef %351, i32 noundef 0, i8 noundef zeroext 16, ptr noundef nonnull %2, i32 noundef 1) #11
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %362

355:                                              ; preds = %350
  %356 = load i8, ptr %2, align 8
  %357 = and i8 %356, 1
  %358 = icmp eq i8 %357, 0
  br i1 %358, label %362, label %359

359:                                              ; preds = %355
  %360 = load ptr, ptr %5, align 4
  %361 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %360, i32 noundef 0, ptr noundef nonnull @rf_init1_seq9, i8 noundef zeroext 4) #11
  br label %362

362:                                              ; preds = %359, %355, %350, %344, %340, %336, %330, %321, %315, %309, %305, %301, %296, %290, %286, %282, %277, %271, %265, %261, %255, %249, %243, %237, %231, %225, %219, %192, %186, %157, %153, %147, %141, %135, %129, %123, %117, %111, %105, %99, %93, %87, %81, %65, %61, %54, %41, %35, %25, %19, %11, %4, %1
  %363 = phi i32 [ %361, %359 ], [ -22, %1 ], [ %9, %4 ], [ %17, %11 ], [ %23, %19 ], [ %29, %25 ], [ %39, %35 ], [ %43, %41 ], [ %59, %54 ], [ %63, %61 ], [ %79, %65 ], [ %85, %81 ], [ %91, %87 ], [ %97, %93 ], [ %103, %99 ], [ %109, %105 ], [ %115, %111 ], [ %121, %117 ], [ %127, %123 ], [ %133, %129 ], [ %139, %135 ], [ %145, %141 ], [ %151, %147 ], [ %155, %153 ], [ %166, %157 ], [ %199, %192 ], [ %229, %225 ], [ %235, %231 ], [ %241, %237 ], [ %247, %243 ], [ %253, %249 ], [ %259, %255 ], [ %263, %261 ], [ %269, %265 ], [ %275, %271 ], [ %280, %277 ], [ -22, %282 ], [ %288, %286 ], [ %294, %290 ], [ %299, %296 ], [ -22, %301 ], [ %307, %305 ], [ %313, %309 ], [ %319, %315 ], [ %325, %321 ], [ %334, %330 ], [ %338, %336 ], [ %342, %340 ], [ %348, %344 ], [ %353, %350 ], [ -22, %355 ], [ %223, %219 ], [ %190, %186 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret i32 %363
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_init2(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca i16, align 2
  %3 = icmp eq ptr %0, null
  br i1 %3, label %56, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %56, label %8

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #11
  store i16 0, ptr %2, align 2
  %9 = call i32 @cxd2880_tnrdmd_mon_internal_cpu_status(ptr noundef nonnull %0, ptr noundef nonnull %2) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load i32, ptr %5, align 4
  %13 = icmp eq i32 %12, 0
  %14 = load i16, ptr %2, align 2
  %15 = icmp eq i16 %14, 0
  br i1 %13, label %26, label %16

16:                                               ; preds = %11
  br i1 %15, label %18, label %17

17:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  br label %56

18:                                               ; preds = %16
  %19 = call i32 @cxd2880_tnrdmd_mon_internal_cpu_status_sub(ptr noundef nonnull %0, ptr noundef nonnull %2) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i16, ptr %2, align 2
  %23 = icmp eq i16 %22, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  br i1 %23, label %27, label %56

24:                                               ; preds = %18, %8
  %25 = phi i32 [ %19, %18 ], [ %9, %8 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  br label %56

26:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  br i1 %15, label %27, label %56

27:                                               ; preds = %26, %21
  %28 = call fastcc i32 @rf_init2(ptr noundef nonnull %0)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %27
  %31 = load i32, ptr %5, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load ptr, ptr %0, align 4
  %35 = call fastcc i32 @rf_init2(ptr noundef %34)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %33, %30
  %38 = call fastcc i32 @load_cfg_mem(ptr noundef nonnull %0)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %37
  %41 = load i32, ptr %5, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  store i32 1, ptr %44, align 4
  br label %56

45:                                               ; preds = %40
  %46 = load ptr, ptr %0, align 4
  %47 = call fastcc i32 @load_cfg_mem(ptr noundef %46)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32, ptr %5, align 4
  %51 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  store i32 1, ptr %51, align 4
  %52 = icmp eq i32 %50, 1
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load ptr, ptr %0, align 4
  %55 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %54, i32 0, i32 22
  store i32 1, ptr %55, align 4
  br label %56

56:                                               ; preds = %53, %49, %45, %43, %37, %33, %27, %26, %24, %21, %17, %4, %1
  %57 = phi i32 [ -22, %1 ], [ -22, %4 ], [ -22, %26 ], [ %28, %27 ], [ %35, %33 ], [ %38, %37 ], [ %47, %45 ], [ 0, %53 ], [ 0, %49 ], [ %25, %24 ], [ -22, %17 ], [ 0, %43 ], [ -22, %21 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_check_internal_cpu_status(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #5 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  store i16 0, ptr %3, align 2
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %31

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %31, label %11

11:                                               ; preds = %7
  %12 = call i32 @cxd2880_tnrdmd_mon_internal_cpu_status(ptr noundef nonnull %0, ptr noundef nonnull %3) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %11
  %15 = load i32, ptr %8, align 4
  %16 = icmp eq i32 %15, 0
  %17 = load i16, ptr %3, align 2
  %18 = icmp eq i16 %17, 0
  %19 = xor i1 %18, true
  %20 = select i1 %16, i1 true, i1 %19
  %21 = select i1 %16, i1 %18, i1 false
  br i1 %20, label %28, label %22

22:                                               ; preds = %14
  %23 = call i32 @cxd2880_tnrdmd_mon_internal_cpu_status_sub(ptr noundef nonnull %0, ptr noundef nonnull %3) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i16, ptr %3, align 2
  %27 = icmp eq i16 %26, 0
  br label %28

28:                                               ; preds = %25, %14
  %29 = phi i1 [ %27, %25 ], [ %21, %14 ]
  %30 = zext i1 %29 to i8
  store i8 %30, ptr %1, align 1
  br label %31

31:                                               ; preds = %28, %22, %11, %7, %2
  %32 = phi i32 [ -22, %2 ], [ -22, %7 ], [ %12, %11 ], [ %23, %22 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rf_init2(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #11
  %3 = getelementptr inbounds i8, ptr %2, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %3, i8 0, i32 3, i1 false)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cxd2880_io, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 16) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %5
  store i8 64, ptr %2, align 1
  %13 = getelementptr inbounds [5 x i8], ptr %2, i32 0, i32 1
  store i8 64, ptr %13, align 1
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.cxd2880_io, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 %16(ptr noundef %14, i32 noundef 0, i8 noundef zeroext -22, ptr noundef nonnull %2, i32 noundef 2) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %12
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  store i8 0, ptr %2, align 1
  %20 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 21
  %21 = load i32, ptr %20, align 4
  %22 = icmp ne i32 %21, 98
  %23 = zext i1 %22 to i8
  store i8 %23, ptr %13, align 1
  %24 = getelementptr inbounds [5 x i8], ptr %2, i32 0, i32 2
  store i8 1, ptr %24, align 1
  %25 = getelementptr inbounds [5 x i8], ptr %2, i32 0, i32 3
  store i8 3, ptr %25, align 1
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr inbounds %struct.cxd2880_io, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 %28(ptr noundef %26, i32 noundef 0, i8 noundef zeroext 48, ptr noundef nonnull %2, i32 noundef 4) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %19
  %32 = load ptr, ptr %6, align 4
  %33 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %32, i32 noundef 0, ptr noundef nonnull @rf_init2_seq1, i8 noundef zeroext 2) #11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load ptr, ptr %6, align 4
  %37 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %36, i32 noundef 1, ptr noundef nonnull @rf_init2_seq2, i8 noundef zeroext 6) #11
  br label %38

38:                                               ; preds = %35, %31, %19, %12, %5, %1
  %39 = phi i32 [ %37, %35 ], [ -22, %1 ], [ %10, %5 ], [ %17, %12 ], [ %29, %19 ], [ %33, %31 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #11
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @load_cfg_mem(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 17
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %36, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  br label %14

9:                                                ; preds = %25
  %10 = add nuw nsw i32 %15, 1
  %11 = load i8, ptr %4, align 4
  %12 = zext i8 %11 to i32
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %9, %7
  %15 = phi i32 [ 0, %7 ], [ %10, %9 ]
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr inbounds %struct.cxd2880_io, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 16, i32 %15
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 16, i32 %15, i32 1
  %22 = load i8, ptr %21, align 4
  %23 = tail call i32 %18(ptr noundef %16, i32 noundef %20, i8 noundef zeroext 0, i8 noundef zeroext %22) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %14
  %26 = load ptr, ptr %8, align 4
  %27 = load i32, ptr %19, align 4
  %28 = getelementptr %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 16, i32 %15, i32 2
  %29 = load i8, ptr %28, align 1
  %30 = getelementptr %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 16, i32 %15, i32 3
  %31 = load i8, ptr %30, align 2
  %32 = getelementptr %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 16, i32 %15, i32 4
  %33 = load i8, ptr %32, align 1
  %34 = tail call i32 @cxd2880_io_set_reg_bits(ptr noundef %26, i32 noundef %27, i8 noundef zeroext %29, i8 noundef zeroext %31, i8 noundef zeroext %33) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %9, label %36

36:                                               ; preds = %25, %14, %9, %3, %1
  %37 = phi i32 [ -22, %1 ], [ 0, %3 ], [ %23, %14 ], [ %34, %25 ], [ 0, %9 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_mon_internal_cpu_status(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_mon_internal_cpu_status_sub(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_common_tune_setting1(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #5 {
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #11
  store i8 0, ptr %8, align 1, !annotation !8
  %9 = icmp eq ptr %0, null
  br i1 %9, label %156, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %156, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -3
  %18 = icmp ult i32 %17, -2
  %19 = icmp ult i32 %2, 4000
  %20 = or i1 %19, %18
  br i1 %20, label %156, label %21

21:                                               ; preds = %14
  %22 = tail call i32 @cxd2880_tnrdmd_sleep(ptr noundef nonnull %0)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %156

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.cxd2880_io, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %26, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %156

31:                                               ; preds = %24
  %32 = load ptr, ptr %25, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = call i32 %33(ptr noundef %32, i32 noundef 0, i8 noundef zeroext 43, ptr noundef nonnull %7, i32 noundef 1) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %156

36:                                               ; preds = %31
  switch i32 %1, label %156 [
    i32 1, label %37
    i32 2, label %50
  ]

37:                                               ; preds = %36
  %38 = load i8, ptr %7, align 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %37
  %41 = call fastcc i32 @t_power_x(ptr noundef nonnull %0, i8 noundef zeroext 1)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %156

43:                                               ; preds = %40
  %44 = load i32, ptr %11, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %63

46:                                               ; preds = %43
  %47 = load ptr, ptr %0, align 4
  %48 = call fastcc i32 @t_power_x(ptr noundef %47, i8 noundef zeroext 1)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %63, label %156

50:                                               ; preds = %36
  %51 = load i8, ptr %7, align 1
  %52 = icmp eq i8 %51, 1
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = call fastcc i32 @t_power_x(ptr noundef nonnull %0, i8 noundef zeroext 0)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %156

56:                                               ; preds = %53
  %57 = load i32, ptr %11, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load ptr, ptr %0, align 4
  %61 = call fastcc i32 @t_power_x(ptr noundef %60, i8 noundef zeroext 0)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %156

63:                                               ; preds = %59, %56, %50, %46, %43, %37
  %64 = call fastcc i32 @spll_reset(ptr noundef nonnull %0)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %156

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 23
  store i32 1, ptr %67, align 4
  %68 = load i32, ptr %11, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load ptr, ptr %0, align 4
  %72 = call fastcc i32 @spll_reset(ptr noundef %71)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %156

74:                                               ; preds = %70
  %75 = load ptr, ptr %0, align 4
  %76 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %75, i32 0, i32 23
  store i32 1, ptr %76, align 4
  br label %77

77:                                               ; preds = %74, %66
  %78 = call fastcc i32 @load_cfg_mem(ptr noundef nonnull %0)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %156

80:                                               ; preds = %77
  %81 = load i32, ptr %11, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load ptr, ptr %0, align 4
  %85 = call fastcc i32 @load_cfg_mem(ptr noundef %84)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %156

87:                                               ; preds = %83, %80
  %88 = icmp eq i8 %4, 0
  %89 = load i32, ptr %11, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %88, label %100, label %91

91:                                               ; preds = %87
  br i1 %90, label %108, label %92

92:                                               ; preds = %91
  %93 = icmp eq i8 %5, 0
  %94 = select i1 %93, i32 -350, i32 350
  %95 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 2, i32 2
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 3
  %98 = sub nsw i32 0, %94
  %99 = select i1 %97, i32 %98, i32 %94
  br label %108

100:                                              ; preds = %87
  br i1 %90, label %108, label %101

101:                                              ; preds = %100
  %102 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 2, i32 2
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 2
  %105 = select i1 %104, i32 150, i32 0
  %106 = icmp eq i32 %103, 3
  %107 = select i1 %106, i32 -150, i32 %105
  br label %108

108:                                              ; preds = %101, %100, %92, %91
  %109 = phi i32 [ 350, %91 ], [ 150, %100 ], [ %107, %101 ], [ %99, %92 ]
  %110 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 5
  %111 = load i8, ptr %110, align 4
  %112 = call fastcc i32 @x_tune1(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %111, i32 noundef %109)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %156

114:                                              ; preds = %108
  %115 = load i32, ptr %11, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load ptr, ptr %0, align 4
  %119 = load i8, ptr %110, align 4
  %120 = sub nsw i32 0, %109
  %121 = call fastcc i32 @x_tune1(ptr noundef %118, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %119, i32 noundef %120)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %156

123:                                              ; preds = %117, %114
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #11
  %124 = call i32 @cxd2880_tnrdmd_check_internal_cpu_status(ptr noundef nonnull %0, ptr noundef nonnull %8)
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %156

126:                                              ; preds = %123
  %127 = load i8, ptr %8, align 1
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %156, label %129

129:                                              ; preds = %126
  %130 = load i32, ptr %67, align 4
  %131 = call fastcc i32 @x_tune2(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %130, i32 noundef %109)
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %156

133:                                              ; preds = %129
  %134 = load i32, ptr %11, align 4
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %143

136:                                              ; preds = %133
  %137 = load ptr, ptr %0, align 4
  %138 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %137, i32 0, i32 23
  %139 = load i32, ptr %138, align 4
  %140 = sub nsw i32 0, %109
  %141 = call fastcc i32 @x_tune2(ptr noundef %137, i32 noundef %3, i32 noundef %139, i32 noundef %140)
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %136, %133
  %144 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 2
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = call fastcc i32 @set_ts_clk_mode_and_freq(ptr noundef nonnull %0, i32 noundef %1)
  br label %156

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 19
  %151 = load i8, ptr %150, align 4
  %152 = icmp eq i8 %151, 0
  %153 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 18
  %154 = select i1 %152, ptr null, ptr %153
  %155 = call fastcc i32 @pid_ftr_setting(ptr noundef nonnull %0, ptr noundef %154)
  br label %156

156:                                              ; preds = %149, %147, %136, %129, %126, %123, %117, %108, %83, %77, %70, %63, %59, %53, %46, %40, %36, %31, %24, %21, %14, %10, %6
  %157 = phi i32 [ -22, %6 ], [ -22, %10 ], [ -22, %14 ], [ %22, %21 ], [ %29, %24 ], [ %34, %31 ], [ %41, %40 ], [ %48, %46 ], [ %54, %53 ], [ %61, %59 ], [ -22, %36 ], [ %64, %63 ], [ %72, %70 ], [ %78, %77 ], [ %85, %83 ], [ %112, %108 ], [ %121, %117 ], [ %124, %123 ], [ -22, %126 ], [ %131, %129 ], [ %141, %136 ], [ %148, %147 ], [ %155, %149 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  ret i32 %157
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_sleep(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca i8, align 1
  %3 = icmp eq ptr %0, null
  br i1 %3, label %115, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %115, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %11 [
    i32 1, label %115
    i32 2, label %12
  ]

11:                                               ; preds = %8
  br label %115

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %115 [
    i32 0, label %15
    i32 1, label %26
    i32 2, label %26
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %17, i32 noundef 1, ptr noundef nonnull @set_ts_output_seq3, i8 noundef zeroext 2) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %115

20:                                               ; preds = %15
  %21 = load ptr, ptr %16, align 4
  %22 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %21, i32 noundef 0, ptr noundef nonnull @set_ts_output_seq4, i8 noundef zeroext 2) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %115

24:                                               ; preds = %20
  %25 = load i32, ptr %5, align 4
  br label %26

26:                                               ; preds = %24, %12, %12
  %27 = phi i32 [ %25, %24 ], [ %6, %12 ], [ %6, %12 ]
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = tail call fastcc i32 @x_sleep1(ptr noundef nonnull %0)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %115

32:                                               ; preds = %29, %26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  store i8 0, ptr %2, align 1
  %33 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %34, i32 noundef 1, ptr noundef nonnull @x_sleep2_seq1, i8 noundef zeroext 2) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %38 = load ptr, ptr %33, align 4
  %39 = load ptr, ptr %38, align 4
  %40 = call i32 %39(ptr noundef %38, i32 noundef 1, i8 noundef zeroext -78, ptr noundef nonnull %2, i32 noundef 1) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i8, ptr %2, align 1
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %37, %32
  %47 = phi i32 [ -22, %42 ], [ %40, %37 ], [ %35, %32 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  br label %115

48:                                               ; preds = %42
  %49 = load ptr, ptr %33, align 4
  %50 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %49, i32 noundef 0, ptr noundef nonnull @x_sleep2_seq2, i8 noundef zeroext 7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %115

52:                                               ; preds = %48
  %53 = load i32, ptr %5, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load ptr, ptr %0, align 4
  %57 = call fastcc i32 @x_sleep2(ptr noundef %56)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %115

59:                                               ; preds = %55, %52
  %60 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %61 = load i32, ptr %60, align 4
  switch i32 %61, label %115 [
    i32 1, label %62
    i32 2, label %65
  ]

62:                                               ; preds = %59
  %63 = call i32 @cxd2880_tnrdmd_dvbt_sleep_setting(ptr noundef nonnull %0) #11
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %115

65:                                               ; preds = %59
  %66 = call i32 @cxd2880_tnrdmd_dvbt2_sleep_setting(ptr noundef nonnull %0) #11
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %115

68:                                               ; preds = %65, %62
  %69 = load ptr, ptr %33, align 4
  %70 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %69, i32 noundef 1, ptr noundef nonnull @x_sleep3_seq, i8 noundef zeroext 2) #11
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %115

72:                                               ; preds = %68
  %73 = load i32, ptr %5, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load ptr, ptr %0, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %115, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %76, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %80, i32 noundef 1, ptr noundef nonnull @x_sleep3_seq, i8 noundef zeroext 2) #11
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %115

83:                                               ; preds = %78, %72
  %84 = load ptr, ptr %33, align 4
  %85 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %84, i32 noundef 1, ptr noundef nonnull @x_sleep4_seq, i8 noundef zeroext 6) #11
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %115

87:                                               ; preds = %83
  %88 = load i32, ptr %5, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  store i32 1, ptr %9, align 4
  %91 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 24
  store i32 0, ptr %91, align 4
  store i32 0, ptr %60, align 4
  %92 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 26
  store i32 0, ptr %92, align 4
  br label %115

93:                                               ; preds = %87
  %94 = load ptr, ptr %0, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %115, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %94, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %98, i32 noundef 1, ptr noundef nonnull @x_sleep4_seq, i8 noundef zeroext 6) #11
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %96
  %102 = load i32, ptr %5, align 4
  store i32 1, ptr %9, align 4
  %103 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 24
  store i32 0, ptr %103, align 4
  store i32 0, ptr %60, align 4
  %104 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 26
  store i32 0, ptr %104, align 4
  %105 = icmp eq i32 %102, 1
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load ptr, ptr %0, align 4
  %108 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %107, i32 0, i32 22
  store i32 1, ptr %108, align 4
  %109 = load ptr, ptr %0, align 4
  %110 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %109, i32 0, i32 24
  store i32 0, ptr %110, align 4
  %111 = load ptr, ptr %0, align 4
  %112 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %111, i32 0, i32 25
  store i32 0, ptr %112, align 4
  %113 = load ptr, ptr %0, align 4
  %114 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %113, i32 0, i32 26
  store i32 0, ptr %114, align 4
  br label %115

115:                                              ; preds = %106, %101, %96, %93, %90, %83, %78, %75, %68, %65, %62, %59, %55, %48, %46, %29, %20, %15, %12, %11, %8, %4, %1
  %116 = phi i32 [ -22, %11 ], [ -22, %1 ], [ -22, %4 ], [ 0, %8 ], [ %30, %29 ], [ %50, %48 ], [ %57, %55 ], [ %63, %62 ], [ %66, %65 ], [ -22, %59 ], [ %70, %68 ], [ %81, %78 ], [ %85, %83 ], [ %99, %96 ], [ 0, %106 ], [ 0, %101 ], [ %47, %46 ], [ 0, %90 ], [ -22, %12 ], [ %22, %20 ], [ %18, %15 ], [ -22, %75 ], [ -22, %93 ]
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @t_power_x(ptr noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #5 {
  %3 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %105, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %7, i32 noundef 0, ptr noundef nonnull @t_power_x_seq1, i8 noundef zeroext 4) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %105

10:                                               ; preds = %5
  %11 = load ptr, ptr %6, align 4
  %12 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %11, i32 noundef 1, ptr noundef nonnull @t_power_x_seq2, i8 noundef zeroext 2) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %105

14:                                               ; preds = %10
  %15 = load ptr, ptr %6, align 4
  %16 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %15, i32 noundef 0, ptr noundef nonnull @t_power_x_seq3, i8 noundef zeroext 3) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %105

18:                                               ; preds = %14
  %19 = icmp eq i8 %1, 0
  br i1 %19, label %45, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr inbounds %struct.cxd2880_io, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %21, i32 noundef 0, i8 noundef zeroext 43, i8 noundef zeroext 1) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %105

26:                                               ; preds = %20
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr inbounds %struct.cxd2880_io, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %27, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 10) #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %105

32:                                               ; preds = %26
  %33 = load ptr, ptr %6, align 4
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 %34(ptr noundef %33, i32 noundef 0, i8 noundef zeroext 18, ptr noundef nonnull %3, i32 noundef 1) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %105

37:                                               ; preds = %32
  %38 = load i8, ptr %3, align 1
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %105, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %6, align 4
  %43 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %42, i32 noundef 0, ptr noundef nonnull @t_power_x_seq4, i8 noundef zeroext 2) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %67, label %105

45:                                               ; preds = %18
  store i8 3, ptr %3, align 1
  %46 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %46, align 1
  %47 = load ptr, ptr %6, align 4
  %48 = getelementptr inbounds %struct.cxd2880_io, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = call i32 %49(ptr noundef %47, i32 noundef 0, i8 noundef zeroext 42, ptr noundef nonnull %3, i32 noundef 2) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %105

52:                                               ; preds = %45
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %53 = load ptr, ptr %6, align 4
  %54 = getelementptr inbounds %struct.cxd2880_io, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = call i32 %55(ptr noundef %53, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 10) #11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %105

58:                                               ; preds = %52
  %59 = load ptr, ptr %6, align 4
  %60 = load ptr, ptr %59, align 4
  %61 = call i32 %60(ptr noundef %59, i32 noundef 0, i8 noundef zeroext 19, ptr noundef nonnull %3, i32 noundef 1) #11
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %105

63:                                               ; preds = %58
  %64 = load i8, ptr %3, align 1
  %65 = and i8 %64, 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %105, label %67

67:                                               ; preds = %63, %41
  %68 = load ptr, ptr %6, align 4
  %69 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %68, i32 noundef 0, ptr noundef nonnull @t_power_x_seq5, i8 noundef zeroext 2) #11
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %105

71:                                               ; preds = %67
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %72 = load ptr, ptr %6, align 4
  %73 = getelementptr inbounds %struct.cxd2880_io, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = call i32 %74(ptr noundef %72, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 10) #11
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %105

77:                                               ; preds = %71
  %78 = load ptr, ptr %6, align 4
  %79 = load ptr, ptr %78, align 4
  %80 = call i32 %79(ptr noundef %78, i32 noundef 0, i8 noundef zeroext 17, ptr noundef nonnull %3, i32 noundef 1) #11
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %105

82:                                               ; preds = %77
  %83 = load i8, ptr %3, align 1
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %105, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %6, align 4
  %88 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %87, i32 noundef 0, ptr noundef nonnull @t_power_x_seq6, i8 noundef zeroext 2) #11
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %86
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %91 = load ptr, ptr %6, align 4
  %92 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %91, i32 noundef 1, ptr noundef nonnull @t_power_x_seq7, i8 noundef zeroext 2) #11
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %90
  %95 = load ptr, ptr %6, align 4
  %96 = getelementptr inbounds %struct.cxd2880_io, ptr %95, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = call i32 %97(ptr noundef %95, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 16) #11
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false)
  %101 = load ptr, ptr %6, align 4
  %102 = getelementptr inbounds %struct.cxd2880_io, ptr %101, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = call i32 %103(ptr noundef %101, i32 noundef 0, i8 noundef zeroext 39, ptr noundef nonnull %3, i32 noundef 3) #11
  br label %105

105:                                              ; preds = %100, %94, %90, %86, %82, %77, %71, %67, %63, %58, %52, %45, %41, %37, %32, %26, %20, %14, %10, %5, %2
  %106 = phi i32 [ %104, %100 ], [ -22, %2 ], [ %8, %5 ], [ %12, %10 ], [ %16, %14 ], [ %24, %20 ], [ %30, %26 ], [ %35, %32 ], [ -22, %37 ], [ %43, %41 ], [ %50, %45 ], [ %56, %52 ], [ %61, %58 ], [ -22, %63 ], [ %69, %67 ], [ %75, %71 ], [ %80, %77 ], [ -22, %82 ], [ %88, %86 ], [ %92, %90 ], [ %98, %94 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #11
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @spll_reset(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %63, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %6, i32 noundef 0, ptr noundef nonnull @spll_reset_seq1, i8 noundef zeroext 5) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %63

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 4
  %11 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @spll_reset_seq2, i8 noundef zeroext 2) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %63

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 4
  %15 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %14, i32 noundef 0, ptr noundef nonnull @spll_reset_seq3, i8 noundef zeroext 3) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %63

17:                                               ; preds = %13
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.cxd2880_io, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %18, i32 noundef 0, i8 noundef zeroext 48, i8 noundef zeroext 0) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %63

23:                                               ; preds = %17
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr inbounds %struct.cxd2880_io, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %24, i32 noundef 0, i8 noundef zeroext 34, i8 noundef zeroext 0) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %23
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #11
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr inbounds %struct.cxd2880_io, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef %30, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 10) #11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %29
  %36 = load ptr, ptr %5, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 %37(ptr noundef %36, i32 noundef 0, i8 noundef zeroext 16, ptr noundef nonnull %2, i32 noundef 1) #11
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %35
  %41 = load i8, ptr %2, align 4
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %63, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %5, align 4
  %46 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %45, i32 noundef 0, ptr noundef nonnull @spll_reset_seq4, i8 noundef zeroext 2) #11
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %49 = load ptr, ptr %5, align 4
  %50 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %49, i32 noundef 1, ptr noundef nonnull @spll_reset_seq5, i8 noundef zeroext 2) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load ptr, ptr %5, align 4
  %54 = getelementptr inbounds %struct.cxd2880_io, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = call i32 %55(ptr noundef %53, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 16) #11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  store i32 0, ptr %2, align 4
  %59 = load ptr, ptr %5, align 4
  %60 = getelementptr inbounds %struct.cxd2880_io, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = call i32 %61(ptr noundef %59, i32 noundef 0, i8 noundef zeroext 38, ptr noundef nonnull %2, i32 noundef 4) #11
  br label %63

63:                                               ; preds = %58, %52, %48, %44, %40, %35, %29, %23, %17, %13, %9, %4, %1
  %64 = phi i32 [ %62, %58 ], [ -22, %1 ], [ %7, %4 ], [ %11, %9 ], [ %15, %13 ], [ %21, %17 ], [ %27, %23 ], [ %33, %29 ], [ %38, %35 ], [ -22, %40 ], [ %46, %44 ], [ %50, %48 ], [ %56, %52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @x_tune1(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %5) unnamed_addr #5 {
  %7 = alloca [11 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %7) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %7, i8 0, i32 11, i1 false)
  %8 = icmp eq ptr %0, null
  br i1 %8, label %93, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %11, i32 noundef 1, ptr noundef nonnull @x_tune1_seq1, i8 noundef zeroext 2) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %93

14:                                               ; preds = %9
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr inbounds %struct.cxd2880_io, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %15, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 16) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %93

20:                                               ; preds = %14
  %21 = getelementptr inbounds [11 x i8], ptr %7, i32 0, i32 2
  store i8 14, ptr %21, align 1
  %22 = getelementptr inbounds [11 x i8], ptr %7, i32 0, i32 4
  store i8 3, ptr %22, align 1
  %23 = load ptr, ptr %10, align 4
  %24 = getelementptr inbounds %struct.cxd2880_io, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 %25(ptr noundef %23, i32 noundef 0, i8 noundef zeroext -25, ptr noundef nonnull %7, i32 noundef 5) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %93

28:                                               ; preds = %20
  store i8 31, ptr %7, align 1
  %29 = getelementptr inbounds [11 x i8], ptr %7, i32 0, i32 1
  store i8 -128, ptr %29, align 1
  store i8 24, ptr %21, align 1
  %30 = getelementptr inbounds [11 x i8], ptr %7, i32 0, i32 3
  store i8 0, ptr %30, align 1
  store i8 7, ptr %22, align 1
  %31 = load ptr, ptr %10, align 4
  %32 = getelementptr inbounds %struct.cxd2880_io, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = call i32 %33(ptr noundef %31, i32 noundef 0, i8 noundef zeroext -25, ptr noundef nonnull %7, i32 noundef 5) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %93

36:                                               ; preds = %28
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  store i8 114, ptr %7, align 1
  store i8 -127, ptr %29, align 1
  store i8 29, ptr %30, align 1
  store i8 111, ptr %22, align 1
  %37 = getelementptr inbounds [11 x i8], ptr %7, i32 0, i32 5
  store i8 126, ptr %37, align 1
  %38 = getelementptr inbounds [11 x i8], ptr %7, i32 0, i32 7
  store i8 28, ptr %38, align 1
  switch i32 %1, label %93 [
    i32 1, label %40
    i32 2, label %39
  ]

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi i8 [ -106, %39 ], [ -108, %36 ]
  %42 = phi i8 [ -109, %39 ], [ -111, %36 ]
  store i8 %41, ptr %21, align 1
  %43 = getelementptr inbounds [11 x i8], ptr %7, i32 0, i32 6
  store i8 %42, ptr %43, align 1
  %44 = load ptr, ptr %10, align 4
  %45 = getelementptr inbounds %struct.cxd2880_io, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 %46(ptr noundef %44, i32 noundef 0, i8 noundef zeroext 68, ptr noundef nonnull %7, i32 noundef 8) #11
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %93

49:                                               ; preds = %40
  %50 = load ptr, ptr %10, align 4
  %51 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %50, i32 noundef 0, ptr noundef nonnull @x_tune1_seq2, i8 noundef zeroext 2) #11
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %93

53:                                               ; preds = %49
  store i8 3, ptr %7, align 1
  store i8 -30, ptr %29, align 1
  %54 = load ptr, ptr %10, align 4
  %55 = getelementptr inbounds %struct.cxd2880_io, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = call i32 %56(ptr noundef %54, i32 noundef 0, i8 noundef zeroext 30, ptr noundef nonnull %7, i32 noundef 2) #11
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %93

59:                                               ; preds = %53
  %60 = load ptr, ptr %10, align 4
  %61 = getelementptr inbounds %struct.cxd2880_io, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = call i32 %62(ptr noundef %60, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 16) #11
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %93

65:                                               ; preds = %59
  %66 = icmp ne i8 %4, 0
  %67 = zext i1 %66 to i8
  store i8 %67, ptr %7, align 1
  store i8 0, ptr %29, align 1
  store i8 107, ptr %21, align 1
  store i8 77, ptr %30, align 1
  %68 = add i32 %3, -1
  %69 = icmp ult i32 %68, 8
  br i1 %69, label %70, label %93

70:                                               ; preds = %65
  %71 = trunc i32 %68 to i8
  %72 = lshr i8 -15, %71
  %73 = and i8 %72, 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %93, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds [8 x i8], ptr @switch.table.x_tune1, i32 0, i32 %68
  %77 = load i8, ptr %76, align 1
  store i8 %77, ptr %22, align 1
  store i8 0, ptr %37, align 1
  %78 = add i32 %5, %2
  %79 = lshr i32 %78, 16
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 15
  %82 = getelementptr inbounds [11 x i8], ptr %7, i32 0, i32 6
  store i8 %81, ptr %82, align 1
  %83 = lshr i32 %78, 8
  %84 = trunc i32 %83 to i8
  store i8 %84, ptr %38, align 1
  %85 = trunc i32 %78 to i8
  %86 = getelementptr inbounds [11 x i8], ptr %7, i32 0, i32 8
  store i8 %85, ptr %86, align 1
  %87 = getelementptr inbounds [11 x i8], ptr %7, i32 0, i32 9
  store i8 -1, ptr %87, align 1
  %88 = getelementptr inbounds [11 x i8], ptr %7, i32 0, i32 10
  store i8 -2, ptr %88, align 1
  %89 = load ptr, ptr %10, align 4
  %90 = getelementptr inbounds %struct.cxd2880_io, ptr %89, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = call i32 %91(ptr noundef %89, i32 noundef 0, i8 noundef zeroext 82, ptr noundef nonnull %7, i32 noundef 11) #11
  br label %93

93:                                               ; preds = %75, %70, %65, %59, %53, %49, %40, %36, %28, %20, %14, %9, %6
  %94 = phi i32 [ %92, %75 ], [ -22, %6 ], [ %12, %9 ], [ %18, %14 ], [ %26, %20 ], [ %34, %28 ], [ -22, %36 ], [ %47, %40 ], [ %51, %49 ], [ %57, %53 ], [ %63, %59 ], [ -22, %65 ], [ -22, %70 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %7) #11
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @x_tune2(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 {
  %5 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #11
  %6 = icmp eq ptr %0, null
  br i1 %6, label %141, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.cxd2880_io, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 17) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %141

14:                                               ; preds = %7
  store i8 1, ptr %5, align 1
  %15 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  store i8 14, ptr %15, align 1
  %16 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  store i8 1, ptr %16, align 1
  %17 = load ptr, ptr %8, align 4
  %18 = getelementptr inbounds %struct.cxd2880_io, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 %19(ptr noundef %17, i32 noundef 0, i8 noundef zeroext 45, ptr noundef nonnull %5, i32 noundef 3) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %141

22:                                               ; preds = %14
  %23 = load ptr, ptr %8, align 4
  %24 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %23, i32 noundef 0, ptr noundef nonnull @x_tune2_seq1, i8 noundef zeroext 2) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %141

26:                                               ; preds = %22
  %27 = load ptr, ptr %8, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 %28(ptr noundef %27, i32 noundef 0, i8 noundef zeroext 44, ptr noundef nonnull %5, i32 noundef 1) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %141

31:                                               ; preds = %26
  %32 = load ptr, ptr %8, align 4
  %33 = getelementptr inbounds %struct.cxd2880_io, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 %34(ptr noundef %32, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 16) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %141

37:                                               ; preds = %31
  %38 = load ptr, ptr %8, align 4
  %39 = getelementptr inbounds %struct.cxd2880_io, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = load i8, ptr %5, align 1
  %42 = call i32 %40(ptr noundef %38, i32 noundef 0, i8 noundef zeroext 96, i8 noundef zeroext %41) #11
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %141

44:                                               ; preds = %37
  %45 = load ptr, ptr %8, align 4
  %46 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %45, i32 noundef 0, ptr noundef nonnull @x_tune2_seq2, i8 noundef zeroext 4) #11
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %141

48:                                               ; preds = %44
  %49 = load ptr, ptr %8, align 4
  %50 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %49, i32 noundef 1, ptr noundef nonnull @x_tune2_seq3, i8 noundef zeroext 3) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %141

52:                                               ; preds = %48
  %53 = icmp eq i32 %3, 0
  br i1 %53, label %130, label %54

54:                                               ; preds = %52
  %55 = load ptr, ptr %8, align 4
  %56 = getelementptr inbounds %struct.cxd2880_io, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 %57(ptr noundef %55, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -31) #11
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %141

60:                                               ; preds = %54
  %61 = load ptr, ptr %8, align 4
  %62 = load ptr, ptr %61, align 4
  %63 = call i32 %62(ptr noundef %61, i32 noundef 1, i8 noundef zeroext 96, ptr noundef nonnull %5, i32 noundef 2) #11
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %141

65:                                               ; preds = %60
  %66 = mul i32 %3, 1000
  %67 = icmp eq i32 %2, 2
  %68 = icmp sgt i32 %66, -1
  %69 = select i1 %68, i32 91, i32 -91
  %70 = select i1 %68, i32 89, i32 -89
  %71 = select i1 %67, i32 %70, i32 %69
  %72 = select i1 %67, i32 178, i32 183
  %73 = add i32 %66, %71
  %74 = sdiv i32 %73, %72
  %75 = load i8, ptr %5, align 1
  %76 = zext i8 %75 to i32
  %77 = shl nuw nsw i32 %76, 8
  %78 = load i8, ptr %15, align 1
  %79 = zext i8 %78 to i32
  %80 = or i32 %77, %79
  %81 = call i32 @cxd2880_convert2s_complement(i32 noundef %80, i32 noundef 16) #11
  %82 = add i32 %81, %74
  %83 = call i32 @llvm.smax.i32(i32 %82, i32 -32768)
  %84 = call i32 @llvm.smin.i32(i32 %83, i32 32767)
  %85 = lshr i32 %84, 8
  %86 = trunc i32 %85 to i8
  store i8 %86, ptr %5, align 1
  %87 = trunc i32 %84 to i8
  store i8 %87, ptr %15, align 1
  %88 = load ptr, ptr %8, align 4
  %89 = getelementptr inbounds %struct.cxd2880_io, ptr %88, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = call i32 %90(ptr noundef %88, i32 noundef 1, i8 noundef zeroext 96, ptr noundef nonnull %5, i32 noundef 2) #11
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %141

93:                                               ; preds = %65
  %94 = load ptr, ptr %8, align 4
  %95 = load ptr, ptr %94, align 4
  %96 = call i32 %95(ptr noundef %94, i32 noundef 1, i8 noundef zeroext 105, ptr noundef nonnull %5, i32 noundef 1) #11
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %141

98:                                               ; preds = %93
  %99 = icmp eq i32 %1, 1
  %100 = add i32 %3, -1
  %101 = icmp slt i32 %100, 0
  %102 = mul i32 %3, -1000
  br i1 %99, label %103, label %108

103:                                              ; preds = %98
  br i1 %67, label %106, label %104

104:                                              ; preds = %103
  %105 = select i1 %101, i32 8789, i32 -8789
  br label %113

106:                                              ; preds = %103
  %107 = select i1 %101, i32 8545, i32 -8545
  br label %113

108:                                              ; preds = %98
  br i1 %67, label %111, label %109

109:                                              ; preds = %108
  %110 = select i1 %101, i32 17578, i32 -17578
  br label %113

111:                                              ; preds = %108
  %112 = select i1 %101, i32 17090, i32 -17090
  br label %113

113:                                              ; preds = %111, %109, %106, %104
  %114 = phi i32 [ %105, %104 ], [ %107, %106 ], [ %110, %109 ], [ %112, %111 ]
  %115 = phi i32 [ 17578, %104 ], [ 17090, %106 ], [ 35156, %109 ], [ 34180, %111 ]
  %116 = add i32 %102, %114
  %117 = sdiv i32 %116, %115
  %118 = load i8, ptr %5, align 1
  %119 = zext i8 %118 to i32
  %120 = call i32 @cxd2880_convert2s_complement(i32 noundef %119, i32 noundef 8) #11
  %121 = add i32 %120, %117
  %122 = call i32 @llvm.smax.i32(i32 %121, i32 -128)
  %123 = call i32 @llvm.smin.i32(i32 %122, i32 127)
  %124 = trunc i32 %123 to i8
  store i8 %124, ptr %5, align 1
  %125 = load ptr, ptr %8, align 4
  %126 = getelementptr inbounds %struct.cxd2880_io, ptr %125, i32 0, i32 2
  %127 = load ptr, ptr %126, align 4
  %128 = call i32 %127(ptr noundef %125, i32 noundef 1, i8 noundef zeroext 105, i8 noundef zeroext %124) #11
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %113, %52
  %131 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 2, i32 6
  %132 = load i8, ptr %131, align 1
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load ptr, ptr %8, align 4
  %136 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %135, i32 noundef 1, ptr noundef nonnull @x_tune2_seq4, i8 noundef zeroext 2) #11
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %134, %130
  %139 = load ptr, ptr %8, align 4
  %140 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %139, i32 noundef 1, ptr noundef nonnull @x_tune2_seq5, i8 noundef zeroext 2) #11
  br label %141

141:                                              ; preds = %138, %134, %113, %93, %65, %60, %54, %48, %44, %37, %31, %26, %22, %14, %7, %4
  %142 = phi i32 [ %140, %138 ], [ %128, %113 ], [ -22, %4 ], [ %12, %7 ], [ %20, %14 ], [ %24, %22 ], [ %29, %26 ], [ %35, %31 ], [ %42, %37 ], [ %46, %44 ], [ %50, %48 ], [ %136, %134 ], [ %96, %93 ], [ %91, %65 ], [ %63, %60 ], [ %58, %54 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #11
  ret i32 %142
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_ts_clk_mode_and_freq(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %74, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cxd2880_io, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %6, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %74

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 15
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 14
  %18 = load i8, ptr %17, align 4
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, i8 %16, i8 0
  %21 = xor i1 %19, true
  %22 = zext i1 %21 to i8
  %23 = load ptr, ptr %5, align 4
  %24 = tail call i32 @cxd2880_io_set_reg_bits(ptr noundef %23, i32 noundef 1, i8 noundef zeroext -45, i8 noundef zeroext %20, i8 noundef zeroext 1) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %74

26:                                               ; preds = %11
  %27 = load ptr, ptr %5, align 4
  %28 = tail call i32 @cxd2880_io_set_reg_bits(ptr noundef %27, i32 noundef 1, i8 noundef zeroext -34, i8 noundef zeroext %16, i8 noundef zeroext 1) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %74

30:                                               ; preds = %26
  %31 = load ptr, ptr %5, align 4
  %32 = tail call i32 @cxd2880_io_set_reg_bits(ptr noundef %31, i32 noundef 1, i8 noundef zeroext -38, i8 noundef zeroext %22, i8 noundef zeroext 1) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %74

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 12
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 13
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr [2 x [2 x %struct.cxd2880_tnrdmd_ts_clk_cfg]], ptr @set_ts_clk_mode_and_freq.srl_ts_clk_stgs, i32 0, i32 %37, i32 %39
  %41 = load i8, ptr %40, align 1
  %42 = getelementptr inbounds i8, ptr %40, i32 1
  %43 = load i8, ptr %42, align 1
  %44 = getelementptr inbounds i8, ptr %40, i32 2
  %45 = load i8, ptr %44, align 1
  %46 = load i8, ptr %17, align 4
  %47 = icmp eq i8 %46, 0
  %48 = select i1 %47, i8 %45, i8 %46
  %49 = load ptr, ptr %5, align 4
  %50 = tail call i32 @cxd2880_io_set_reg_bits(ptr noundef %49, i32 noundef 1, i8 noundef zeroext -60, i8 noundef zeroext %41, i8 noundef zeroext 3) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %34
  %53 = load ptr, ptr %5, align 4
  %54 = tail call i32 @cxd2880_io_set_reg_bits(ptr noundef %53, i32 noundef 1, i8 noundef zeroext -47, i8 noundef zeroext %43, i8 noundef zeroext 3) #11
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %52
  %57 = load ptr, ptr %5, align 4
  %58 = getelementptr inbounds %struct.cxd2880_io, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 %59(ptr noundef %57, i32 noundef 1, i8 noundef zeroext -39, i8 noundef zeroext %48) #11
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = zext i1 %14 to i8
  %64 = icmp eq i32 %1, 1
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load ptr, ptr %5, align 4
  %67 = getelementptr inbounds %struct.cxd2880_io, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = tail call i32 %68(ptr noundef %66, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 16) #11
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load ptr, ptr %5, align 4
  %73 = tail call i32 @cxd2880_io_set_reg_bits(ptr noundef %72, i32 noundef 1, i8 noundef zeroext 102, i8 noundef zeroext %63, i8 noundef zeroext 1) #11
  br label %74

74:                                               ; preds = %71, %65, %62, %56, %52, %34, %30, %26, %11, %4, %2
  %75 = phi i32 [ -22, %2 ], [ %9, %4 ], [ %24, %11 ], [ %28, %26 ], [ %32, %30 ], [ %50, %34 ], [ %54, %52 ], [ %60, %56 ], [ %69, %65 ], [ %73, %71 ], [ 0, %62 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pid_ftr_setting(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #5 {
  %3 = alloca [65 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %3) #11
  %4 = getelementptr inbounds i8, ptr %3, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(65) %4, i8 0, i32 64, i1 false), !annotation !8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %55, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.cxd2880_io, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %8, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %55

13:                                               ; preds = %6
  %14 = icmp eq ptr %1, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %13
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr inbounds %struct.cxd2880_io, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %16, i32 noundef 1, i8 noundef zeroext 80, i8 noundef zeroext 2) #11
  br label %55

20:                                               ; preds = %13
  %21 = load i8, ptr %1, align 2
  %22 = icmp ne i8 %21, 0
  %23 = zext i1 %22 to i8
  store i8 %23, ptr %3, align 1
  br label %24

24:                                               ; preds = %43, %20
  %25 = phi i32 [ 0, %20 ], [ %48, %43 ]
  %26 = getelementptr %struct.cxd2880_tnrdmd_pid_ftr_cfg, ptr %1, i32 0, i32 1, i32 %25
  %27 = load i8, ptr %26, align 2
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = getelementptr %struct.cxd2880_tnrdmd_pid_ftr_cfg, ptr %1, i32 0, i32 1, i32 %25, i32 1
  %31 = load i16, ptr %30, align 2
  %32 = lshr i16 %31, 8
  %33 = trunc i16 %32 to i8
  %34 = or i8 %33, 32
  %35 = shl nuw i32 %25, 1
  %36 = or i32 %35, 1
  %37 = getelementptr [65 x i8], ptr %3, i32 0, i32 %36
  store i8 %34, ptr %37, align 1
  %38 = trunc i16 %31 to i8
  br label %43

39:                                               ; preds = %24
  %40 = shl nuw i32 %25, 1
  %41 = or i32 %40, 1
  %42 = getelementptr [65 x i8], ptr %3, i32 0, i32 %41
  store i8 0, ptr %42, align 1
  br label %43

43:                                               ; preds = %39, %29
  %44 = phi i32 [ %35, %29 ], [ %40, %39 ]
  %45 = phi i8 [ %38, %29 ], [ 0, %39 ]
  %46 = add nuw nsw i32 %44, 2
  %47 = getelementptr [65 x i8], ptr %3, i32 0, i32 %46
  store i8 %45, ptr %47, align 1
  %48 = add nuw nsw i32 %25, 1
  %49 = icmp eq i32 %48, 32
  br i1 %49, label %50, label %24

50:                                               ; preds = %43
  %51 = load ptr, ptr %7, align 4
  %52 = getelementptr inbounds %struct.cxd2880_io, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = call i32 %53(ptr noundef %51, i32 noundef 1, i8 noundef zeroext 80, ptr noundef nonnull %3, i32 noundef 65) #11
  br label %55

55:                                               ; preds = %50, %15, %6, %2
  %56 = phi i32 [ %54, %50 ], [ %19, %15 ], [ -22, %2 ], [ %11, %6 ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %3) #11
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_common_tune_setting2(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %49, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %49, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %49

14:                                               ; preds = %9
  %15 = tail call fastcc i32 @x_tune3(ptr noundef nonnull %0, i32 noundef %1, i8 noundef zeroext %2)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %14
  %18 = load i32, ptr %6, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load ptr, ptr %0, align 4
  %22 = tail call fastcc i32 @x_tune3(ptr noundef %21, i32 noundef %1, i8 noundef zeroext %2)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %20
  %25 = tail call fastcc i32 @x_tune4(ptr noundef nonnull %0)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load i32, ptr %6, align 4
  br label %29

29:                                               ; preds = %27, %17
  %30 = phi i32 [ %28, %27 ], [ %18, %17 ]
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %49, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr %10, align 4
  %34 = add i32 %33, -1
  %35 = icmp ult i32 %34, 2
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  switch i32 %38, label %49 [
    i32 0, label %39
    i32 1, label %48
    i32 2, label %48
  ]

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %41, i32 noundef 0, ptr noundef nonnull @set_ts_output_seq1, i8 noundef zeroext 2) #11
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load ptr, ptr %40, align 4
  %46 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %45, i32 noundef 1, ptr noundef nonnull @set_ts_output_seq2, i8 noundef zeroext 2) #11
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %36, %36
  br label %49

49:                                               ; preds = %48, %44, %39, %36, %32, %29, %24, %20, %14, %9, %5, %3
  %50 = phi i32 [ -22, %3 ], [ -22, %5 ], [ -22, %9 ], [ %15, %14 ], [ %22, %20 ], [ %25, %24 ], [ 0, %48 ], [ -22, %29 ], [ -22, %32 ], [ %42, %39 ], [ %46, %44 ], [ -22, %36 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @x_tune3(ptr noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #5 {
  %4 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #11
  %5 = icmp eq ptr %0, null
  br i1 %5, label %43, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %8, i32 noundef 1, ptr noundef nonnull @x_tune3_seq, i8 noundef zeroext 7) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr inbounds %struct.cxd2880_io, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 16) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %11
  %18 = icmp eq i32 %1, 2
  %19 = icmp ne i8 %2, 0
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 1, i32 6, i1 false)
  br label %23

22:                                               ; preds = %17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false)
  br label %23

23:                                               ; preds = %22, %21
  %24 = load ptr, ptr %7, align 4
  %25 = getelementptr inbounds %struct.cxd2880_io, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 %26(ptr noundef %24, i32 noundef 0, i8 noundef zeroext -17, ptr noundef nonnull %4, i32 noundef 6) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr inbounds %struct.cxd2880_io, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 %32(ptr noundef %30, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 45) #11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = and i1 %18, %19
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i8
  store i8 %38, ptr %4, align 1
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr inbounds %struct.cxd2880_io, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 %41(ptr noundef %39, i32 noundef 1, i8 noundef zeroext -79, i8 noundef zeroext %38) #11
  br label %43

43:                                               ; preds = %35, %29, %23, %11, %6, %3
  %44 = phi i32 [ %42, %35 ], [ -22, %3 ], [ %9, %6 ], [ %15, %11 ], [ %27, %23 ], [ %33, %29 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #11
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @x_tune4(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #11
  store i16 20, ptr %2, align 2
  %3 = icmp eq ptr %0, null
  br i1 %3, label %83, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %83

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.cxd2880_io, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %83

16:                                               ; preds = %8
  %17 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.cxd2880_io, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 %22(ptr noundef %20, i32 noundef 0, i8 noundef zeroext 85, ptr noundef nonnull %2, i32 noundef 2) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %83

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.cxd2880_io, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 %29(ptr noundef %27, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %83

32:                                               ; preds = %25
  store i8 11, ptr %2, align 2
  store i8 -1, ptr %17, align 1
  %33 = load ptr, ptr %26, align 4
  %34 = getelementptr inbounds %struct.cxd2880_io, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 %35(ptr noundef %33, i32 noundef 0, i8 noundef zeroext 83, ptr noundef nonnull %2, i32 noundef 2) #11
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %83

38:                                               ; preds = %32
  %39 = load ptr, ptr %26, align 4
  %40 = getelementptr inbounds %struct.cxd2880_io, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 %41(ptr noundef %39, i32 noundef 0, i8 noundef zeroext 87, i8 noundef zeroext 1) #11
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %83

44:                                               ; preds = %38
  store i8 11, ptr %2, align 2
  store i8 -1, ptr %17, align 1
  %45 = load ptr, ptr %26, align 4
  %46 = getelementptr inbounds %struct.cxd2880_io, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = call i32 %47(ptr noundef %45, i32 noundef 0, i8 noundef zeroext 85, ptr noundef nonnull %2, i32 noundef 2) #11
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %83

50:                                               ; preds = %44
  %51 = load ptr, ptr %0, align 4
  %52 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.cxd2880_io, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = call i32 %55(ptr noundef %53, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %50
  store i8 20, ptr %2, align 2
  store i8 0, ptr %17, align 1
  %59 = load ptr, ptr %0, align 4
  %60 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.cxd2880_io, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = call i32 %63(ptr noundef %61, i32 noundef 0, i8 noundef zeroext 83, ptr noundef nonnull %2, i32 noundef 2) #11
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %58
  %67 = load ptr, ptr %0, align 4
  %68 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %67, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.cxd2880_io, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = call i32 %71(ptr noundef %69, i32 noundef 0, i8 noundef zeroext 87, i8 noundef zeroext 2) #11
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %66
  %75 = load ptr, ptr %26, align 4
  %76 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %75, i32 noundef 1, ptr noundef nonnull @x_tune4_seq, i8 noundef zeroext 2) #11
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load ptr, ptr %0, align 4
  %80 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %79, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %81, i32 noundef 1, ptr noundef nonnull @x_tune4_seq, i8 noundef zeroext 2) #11
  br label %83

83:                                               ; preds = %78, %74, %66, %58, %50, %44, %38, %32, %25, %16, %8, %4, %1
  %84 = phi i32 [ %82, %78 ], [ -22, %1 ], [ -22, %4 ], [ %14, %8 ], [ %23, %16 ], [ %30, %25 ], [ %36, %32 ], [ %42, %38 ], [ %48, %44 ], [ %56, %50 ], [ %64, %58 ], [ %72, %66 ], [ %76, %74 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_set_ts_output(ptr noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %35, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %13, label %35

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %35 [
    i32 0, label %16
    i32 1, label %34
    i32 2, label %34
  ]

16:                                               ; preds = %13
  %17 = icmp eq i8 %1, 0
  %18 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  br i1 %17, label %27, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %19, i32 noundef 0, ptr noundef nonnull @set_ts_output_seq1, i8 noundef zeroext 2) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load ptr, ptr %18, align 4
  %25 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %24, i32 noundef 1, ptr noundef nonnull @set_ts_output_seq2, i8 noundef zeroext 2) #11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %35

27:                                               ; preds = %16
  %28 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @set_ts_output_seq3, i8 noundef zeroext 2) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load ptr, ptr %18, align 4
  %32 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %31, i32 noundef 0, ptr noundef nonnull @set_ts_output_seq4, i8 noundef zeroext 2) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %23, %13, %13
  br label %35

35:                                               ; preds = %34, %30, %27, %23, %20, %13, %8, %4, %2
  %36 = phi i32 [ 0, %34 ], [ -22, %2 ], [ -22, %4 ], [ -22, %8 ], [ %21, %20 ], [ %25, %23 ], [ %28, %27 ], [ %32, %30 ], [ -22, %13 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @x_sleep1(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #11
  %3 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 0, ptr %3, align 1
  %4 = icmp eq ptr %0, null
  br i1 %4, label %57, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %57

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %11, i32 noundef 0, ptr noundef nonnull @x_sleep1_seq, i8 noundef zeroext 2) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %57

14:                                               ; preds = %9
  store i8 0, ptr %2, align 1
  %15 = getelementptr inbounds [3 x i8], ptr %2, i32 0, i32 1
  store i8 0, ptr %15, align 1
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr inbounds %struct.cxd2880_io, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 %18(ptr noundef %16, i32 noundef 0, i8 noundef zeroext 83, ptr noundef nonnull %2, i32 noundef 2) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %14
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.cxd2880_io, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 %26(ptr noundef %24, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %21
  store i8 31, ptr %2, align 1
  store i8 -1, ptr %15, align 1
  %30 = getelementptr inbounds [3 x i8], ptr %2, i32 0, i32 2
  store i8 3, ptr %30, align 1
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.cxd2880_io, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 %35(ptr noundef %33, i32 noundef 0, i8 noundef zeroext 85, ptr noundef nonnull %2, i32 noundef 3) #11
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %29
  store i8 0, ptr %2, align 1
  store i8 0, ptr %15, align 1
  %39 = load ptr, ptr %0, align 4
  %40 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.cxd2880_io, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 %43(ptr noundef %41, i32 noundef 0, i8 noundef zeroext 83, ptr noundef nonnull %2, i32 noundef 2) #11
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %38
  %47 = load ptr, ptr %10, align 4
  %48 = getelementptr inbounds %struct.cxd2880_io, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = call i32 %49(ptr noundef %47, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  store i8 31, ptr %2, align 1
  store i8 -1, ptr %15, align 1
  %53 = load ptr, ptr %10, align 4
  %54 = getelementptr inbounds %struct.cxd2880_io, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = call i32 %55(ptr noundef %53, i32 noundef 0, i8 noundef zeroext 85, ptr noundef nonnull %2, i32 noundef 2) #11
  br label %57

57:                                               ; preds = %52, %46, %38, %29, %21, %14, %9, %5, %1
  %58 = phi i32 [ %56, %52 ], [ -22, %1 ], [ -22, %5 ], [ %12, %9 ], [ %19, %14 ], [ %27, %21 ], [ %36, %29 ], [ %44, %38 ], [ %50, %46 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #11
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @x_sleep2(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  store i8 0, ptr %2, align 1
  %3 = icmp eq ptr %0, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @x_sleep2_seq1, i8 noundef zeroext 2) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %10 = load ptr, ptr %5, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 %11(ptr noundef %10, i32 noundef 1, i8 noundef zeroext -78, ptr noundef nonnull %2, i32 noundef 1) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load i8, ptr %2, align 1
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %5, align 4
  %20 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %19, i32 noundef 0, ptr noundef nonnull @x_sleep2_seq2, i8 noundef zeroext 7) #11
  br label %21

21:                                               ; preds = %18, %14, %9, %4, %1
  %22 = phi i32 [ %20, %18 ], [ -22, %1 ], [ %7, %4 ], [ %12, %9 ], [ -22, %14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt_sleep_setting(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_sleep_setting(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_set_cfg(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %252, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -1
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %252

10:                                               ; preds = %5
  switch i32 %1, label %252 [
    i32 0, label %11
    i32 1, label %18
    i32 2, label %25
    i32 3, label %32
    i32 4, label %39
    i32 5, label %46
    i32 6, label %52
    i32 7, label %60
    i32 8, label %68
    i32 9, label %76
    i32 10, label %83
    i32 11, label %89
    i32 12, label %96
    i32 13, label %102
    i32 14, label %108
    i32 15, label %115
    i32 16, label %123
    i32 17, label %129
    i32 18, label %145
    i32 19, label %154
    i32 20, label %159
    i32 24, label %165
    i32 25, label %169
    i32 26, label %173
    i32 27, label %177
    i32 21, label %181
    i32 22, label %191
    i32 23, label %201
    i32 28, label %211
    i32 29, label %215
    i32 30, label %221
    i32 32, label %227
    i32 33, label %233
    i32 31, label %239
    i32 34, label %245
  ]

11:                                               ; preds = %10
  %12 = icmp eq i32 %7, 1
  br i1 %12, label %13, label %252

13:                                               ; preds = %11
  %14 = icmp eq i32 %2, 0
  %15 = select i1 %14, i8 16, i8 0
  %16 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -60, i8 noundef zeroext %15, i8 noundef zeroext 16)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %251, label %252

18:                                               ; preds = %10
  %19 = icmp eq i32 %7, 1
  br i1 %19, label %20, label %252

20:                                               ; preds = %18
  %21 = icmp eq i32 %2, 0
  %22 = select i1 %21, i8 2, i8 0
  %23 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -59, i8 noundef zeroext %22, i8 noundef zeroext 2)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %251, label %252

25:                                               ; preds = %10
  %26 = icmp eq i32 %7, 1
  br i1 %26, label %27, label %252

27:                                               ; preds = %25
  %28 = icmp eq i32 %2, 0
  %29 = select i1 %28, i8 4, i8 0
  %30 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -59, i8 noundef zeroext %29, i8 noundef zeroext 4)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %251, label %252

32:                                               ; preds = %10
  %33 = icmp eq i32 %7, 1
  br i1 %33, label %34, label %252

34:                                               ; preds = %32
  %35 = icmp eq i32 %2, 0
  %36 = zext i1 %35 to i8
  %37 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -53, i8 noundef zeroext %36, i8 noundef zeroext 1)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %251, label %252

39:                                               ; preds = %10
  %40 = icmp eq i32 %7, 1
  br i1 %40, label %41, label %252

41:                                               ; preds = %39
  %42 = icmp ne i32 %2, 0
  %43 = zext i1 %42 to i8
  %44 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -59, i8 noundef zeroext %43, i8 noundef zeroext 1)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %251, label %252

46:                                               ; preds = %10
  %47 = icmp eq i32 %7, 1
  br i1 %47, label %48, label %252

48:                                               ; preds = %46
  %49 = icmp ne i32 %2, 0
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 12
  store i8 %50, ptr %51, align 4
  br label %251

52:                                               ; preds = %10
  %53 = icmp ne i32 %7, 1
  %54 = icmp ugt i32 %2, 31
  %55 = or i1 %54, %53
  br i1 %55, label %252, label %56

56:                                               ; preds = %52
  %57 = trunc i32 %2 to i8
  %58 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -58, i8 noundef zeroext %57, i8 noundef zeroext 31)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %251, label %252

60:                                               ; preds = %10
  %61 = icmp ne i32 %7, 1
  %62 = icmp ugt i32 %2, 31
  %63 = or i1 %62, %61
  br i1 %63, label %252, label %64

64:                                               ; preds = %60
  %65 = trunc i32 %2 to i8
  %66 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -56, i8 noundef zeroext %65, i8 noundef zeroext 31)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %251, label %252

68:                                               ; preds = %10
  %69 = icmp ne i32 %7, 1
  %70 = icmp ugt i32 %2, 31
  %71 = or i1 %70, %69
  br i1 %71, label %252, label %72

72:                                               ; preds = %68
  %73 = trunc i32 %2 to i8
  %74 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -55, i8 noundef zeroext %73, i8 noundef zeroext 31)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %251, label %252

76:                                               ; preds = %10
  %77 = icmp eq i32 %7, 1
  br i1 %77, label %78, label %252

78:                                               ; preds = %76
  %79 = icmp ne i32 %2, 0
  %80 = zext i1 %79 to i8
  %81 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -111, i8 noundef zeroext %80, i8 noundef zeroext 1)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %251, label %252

83:                                               ; preds = %10
  %84 = icmp eq i32 %7, 1
  br i1 %84, label %85, label %252

85:                                               ; preds = %83
  %86 = trunc i32 %2 to i8
  %87 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 81, i8 noundef zeroext %86, i8 noundef zeroext 63)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %251, label %252

89:                                               ; preds = %10
  %90 = icmp eq i32 %7, 1
  br i1 %90, label %91, label %252

91:                                               ; preds = %89
  %92 = icmp eq i32 %2, 0
  %93 = select i1 %92, i8 0, i8 -128
  %94 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 80, i8 noundef zeroext %93, i8 noundef zeroext -128)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %251, label %252

96:                                               ; preds = %10
  %97 = icmp eq i32 %7, 1
  br i1 %97, label %98, label %252

98:                                               ; preds = %96
  %99 = trunc i32 %2 to i8
  %100 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 80, i8 noundef zeroext %99, i8 noundef zeroext 63)
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %251, label %252

102:                                              ; preds = %10
  %103 = icmp ne i32 %7, 1
  %104 = icmp ugt i32 %2, 1
  %105 = or i1 %104, %103
  br i1 %105, label %252, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 13
  store i32 %2, ptr %107, align 4
  br label %251

108:                                              ; preds = %10
  %109 = icmp ne i32 %7, 1
  %110 = icmp ugt i32 %2, 255
  %111 = or i1 %110, %109
  br i1 %111, label %252, label %112

112:                                              ; preds = %108
  %113 = trunc i32 %2 to i8
  %114 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 14
  store i8 %113, ptr %114, align 4
  br label %251

115:                                              ; preds = %10
  %116 = icmp ne i32 %7, 1
  %117 = icmp ugt i32 %2, 7
  %118 = or i1 %117, %116
  br i1 %118, label %252, label %119

119:                                              ; preds = %115
  %120 = trunc i32 %2 to i8
  %121 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -42, i8 noundef zeroext %120, i8 noundef zeroext 7)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %251, label %252

123:                                              ; preds = %10
  %124 = icmp eq i32 %7, 1
  br i1 %124, label %125, label %252

125:                                              ; preds = %123
  %126 = icmp ne i32 %2, 0
  %127 = zext i1 %126 to i8
  %128 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 15
  store i8 %127, ptr %128, align 1
  br label %251

129:                                              ; preds = %10
  %130 = icmp ugt i32 %2, 4096
  br i1 %130, label %252, label %131

131:                                              ; preds = %129
  %132 = icmp ne i32 %2, 0
  %133 = zext i1 %132 to i8
  %134 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 34, i8 noundef zeroext %133, i8 noundef zeroext 1)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %252

136:                                              ; preds = %131
  %137 = lshr i32 %2, 8
  %138 = trunc i32 %137 to i8
  %139 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 35, i8 noundef zeroext %138, i8 noundef zeroext 31)
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %252

141:                                              ; preds = %136
  %142 = trunc i32 %2 to i8
  %143 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 36, i8 noundef zeroext %142, i8 noundef zeroext -1)
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %251, label %252

145:                                              ; preds = %10
  %146 = lshr i32 %2, 8
  %147 = trunc i32 %146 to i8
  %148 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 72, i8 noundef zeroext %147, i8 noundef zeroext -1)
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %252

150:                                              ; preds = %145
  %151 = trunc i32 %2 to i8
  %152 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 73, i8 noundef zeroext %151, i8 noundef zeroext -1)
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %251, label %252

154:                                              ; preds = %10
  %155 = trunc i32 %2 to i8
  %156 = and i8 %155, 7
  %157 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 74, i8 noundef zeroext %156, i8 noundef zeroext 7)
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %251, label %252

159:                                              ; preds = %10
  %160 = trunc i32 %2 to i8
  %161 = shl i8 %160, 3
  %162 = and i8 %161, 56
  %163 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 74, i8 noundef zeroext %162, i8 noundef zeroext 56)
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %251, label %252

165:                                              ; preds = %10
  %166 = icmp ugt i32 %2, 3
  br i1 %166, label %252, label %167

167:                                              ; preds = %165
  %168 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 4
  store i32 %2, ptr %168, align 4
  br label %251

169:                                              ; preds = %10
  %170 = icmp ne i32 %2, 0
  %171 = zext i1 %170 to i8
  %172 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 5
  store i8 %171, ptr %172, align 4
  br label %251

173:                                              ; preds = %10
  %174 = icmp ne i32 %2, 0
  %175 = zext i1 %174 to i8
  %176 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 6
  store i8 %175, ptr %176, align 1
  br label %251

177:                                              ; preds = %10
  %178 = icmp ne i32 %2, 0
  %179 = zext i1 %178 to i8
  %180 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 7
  store i8 %179, ptr %180, align 2
  br label %251

181:                                              ; preds = %10
  %182 = lshr i32 %2, 8
  %183 = trunc i32 %182 to i8
  %184 = and i8 %183, 7
  %185 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -103, i8 noundef zeroext %184, i8 noundef zeroext 7)
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %252

187:                                              ; preds = %181
  %188 = trunc i32 %2 to i8
  %189 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -102, i8 noundef zeroext %188, i8 noundef zeroext -1)
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %251, label %252

191:                                              ; preds = %10
  %192 = lshr i32 %2, 8
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 7
  %195 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -101, i8 noundef zeroext %194, i8 noundef zeroext 7)
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %252

197:                                              ; preds = %191
  %198 = trunc i32 %2 to i8
  %199 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -100, i8 noundef zeroext %198, i8 noundef zeroext -1)
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %251, label %252

201:                                              ; preds = %10
  %202 = lshr i32 %2, 8
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 7
  %205 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -99, i8 noundef zeroext %204, i8 noundef zeroext 7)
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %252

207:                                              ; preds = %201
  %208 = trunc i32 %2 to i8
  %209 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext -98, i8 noundef zeroext %208, i8 noundef zeroext -1)
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %251, label %252

211:                                              ; preds = %10
  %212 = icmp ne i32 %2, 0
  %213 = zext i1 %212 to i8
  %214 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 8
  store i8 %213, ptr %214, align 1
  br label %251

215:                                              ; preds = %10
  %216 = icmp ugt i32 %2, 31
  br i1 %216, label %252, label %217

217:                                              ; preds = %215
  %218 = trunc i32 %2 to i8
  %219 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 16, i8 noundef zeroext 96, i8 noundef zeroext %218, i8 noundef zeroext 31)
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %251, label %252

221:                                              ; preds = %10
  %222 = icmp ugt i32 %2, 7
  br i1 %222, label %252, label %223

223:                                              ; preds = %221
  %224 = trunc i32 %2 to i8
  %225 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 16, i8 noundef zeroext 111, i8 noundef zeroext %224, i8 noundef zeroext 7)
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %251, label %252

227:                                              ; preds = %10
  %228 = icmp ugt i32 %2, 15
  br i1 %228, label %252, label %229

229:                                              ; preds = %227
  %230 = trunc i32 %2 to i8
  %231 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 32, i8 noundef zeroext 114, i8 noundef zeroext %230, i8 noundef zeroext 15)
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %251, label %252

233:                                              ; preds = %10
  %234 = icmp ugt i32 %2, 15
  br i1 %234, label %252, label %235

235:                                              ; preds = %233
  %236 = trunc i32 %2 to i8
  %237 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 32, i8 noundef zeroext 111, i8 noundef zeroext %236, i8 noundef zeroext 15)
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %251, label %252

239:                                              ; preds = %10
  %240 = icmp ugt i32 %2, 15
  br i1 %240, label %252, label %241

241:                                              ; preds = %239
  %242 = trunc i32 %2 to i8
  %243 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 16, i8 noundef zeroext 92, i8 noundef zeroext %242, i8 noundef zeroext 15)
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %251, label %252

245:                                              ; preds = %10
  %246 = icmp ugt i32 %2, 15
  br i1 %246, label %252, label %247

247:                                              ; preds = %245
  %248 = trunc i32 %2 to i8
  %249 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 36, i8 noundef zeroext -36, i8 noundef zeroext %248, i8 noundef zeroext 15)
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %247, %241, %235, %229, %223, %217, %211, %207, %197, %187, %177, %173, %169, %167, %159, %154, %150, %141, %125, %119, %112, %106, %98, %91, %85, %78, %72, %64, %56, %48, %41, %34, %27, %20, %13
  br label %252

252:                                              ; preds = %251, %247, %245, %241, %239, %235, %233, %229, %227, %223, %221, %217, %215, %207, %201, %197, %191, %187, %181, %165, %159, %154, %150, %145, %141, %136, %131, %129, %123, %119, %115, %108, %102, %98, %96, %91, %89, %85, %83, %78, %76, %72, %68, %64, %60, %56, %52, %46, %41, %39, %34, %32, %27, %25, %20, %18, %13, %11, %10, %5, %3
  %253 = phi i32 [ 0, %251 ], [ -22, %3 ], [ -22, %5 ], [ -22, %11 ], [ %16, %13 ], [ -22, %18 ], [ %23, %20 ], [ -22, %25 ], [ %30, %27 ], [ -22, %32 ], [ %37, %34 ], [ -22, %39 ], [ %44, %41 ], [ -22, %46 ], [ -22, %52 ], [ %58, %56 ], [ -22, %60 ], [ %66, %64 ], [ -22, %68 ], [ %74, %72 ], [ -22, %76 ], [ %81, %78 ], [ -22, %83 ], [ %87, %85 ], [ -22, %89 ], [ %94, %91 ], [ -22, %96 ], [ %100, %98 ], [ -22, %102 ], [ -22, %108 ], [ -22, %115 ], [ %121, %119 ], [ -22, %123 ], [ -22, %129 ], [ %134, %131 ], [ %139, %136 ], [ %143, %141 ], [ %148, %145 ], [ %152, %150 ], [ %157, %154 ], [ %163, %159 ], [ -22, %165 ], [ %185, %181 ], [ %189, %187 ], [ %195, %191 ], [ %199, %197 ], [ %205, %201 ], [ %209, %207 ], [ -22, %215 ], [ %219, %217 ], [ -22, %221 ], [ %225, %223 ], [ -22, %227 ], [ %231, %229 ], [ -22, %233 ], [ %237, %235 ], [ -22, %239 ], [ %243, %241 ], [ -22, %245 ], [ %249, %247 ], [ -22, %10 ]
  ret i32 %253
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #5 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %82, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %13, label %82

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.cxd2880_io, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %15, i32 noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %2) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %82

20:                                               ; preds = %13
  %21 = load ptr, ptr %14, align 4
  %22 = tail call i32 @cxd2880_io_set_reg_bits(ptr noundef %21, i32 noundef %1, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %82

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 17
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = and i8 %5, %4
  br label %71

30:                                               ; preds = %24
  %31 = xor i8 %5, -1
  %32 = and i8 %5, %4
  %33 = zext i8 %26 to i32
  br label %34

34:                                               ; preds = %59, %30
  %35 = phi i32 [ %67, %59 ], [ 0, %30 ]
  %36 = phi i1 [ false, %59 ], [ true, %30 ]
  br label %37

37:                                               ; preds = %54, %34
  %38 = phi i32 [ %35, %34 ], [ %55, %54 ]
  br i1 %36, label %39, label %56

39:                                               ; preds = %37
  %40 = getelementptr %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 16, i32 %38
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, %1
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = getelementptr %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 16, i32 %38, i32 1
  %45 = load i8, ptr %44, align 4
  %46 = icmp eq i8 %45, %2
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = getelementptr %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 16, i32 %38, i32 2
  %49 = load i8, ptr %48, align 1
  %50 = icmp eq i8 %49, %3
  br i1 %50, label %59, label %51

51:                                               ; preds = %47, %43, %39
  %52 = add nuw nsw i32 %38, 1
  %53 = icmp eq i32 %52, %33
  br i1 %53, label %69, label %54

54:                                               ; preds = %56, %51
  %55 = phi i32 [ %52, %51 ], [ %57, %56 ]
  br label %37

56:                                               ; preds = %37
  %57 = add nuw nsw i32 %38, 1
  %58 = icmp eq i32 %57, %33
  br i1 %58, label %82, label %54

59:                                               ; preds = %47
  %60 = getelementptr %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 16, i32 %38, i32 3
  %61 = load i8, ptr %60, align 2
  %62 = and i8 %61, %31
  %63 = or i8 %62, %32
  store i8 %63, ptr %60, align 2
  %64 = getelementptr %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 16, i32 %38, i32 4
  %65 = load i8, ptr %64, align 1
  %66 = or i8 %65, %5
  store i8 %66, ptr %64, align 1
  %67 = add nuw nsw i32 %38, 1
  %68 = icmp eq i32 %67, %33
  br i1 %68, label %82, label %34

69:                                               ; preds = %51
  %70 = icmp ult i8 %26, 100
  br i1 %70, label %71, label %82

71:                                               ; preds = %69, %28
  %72 = phi i8 [ %29, %28 ], [ %32, %69 ]
  %73 = phi i32 [ 0, %28 ], [ %33, %69 ]
  %74 = getelementptr %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 16, i32 %73
  store i32 %1, ptr %74, align 4
  %75 = load i8, ptr %25, align 4
  %76 = zext i8 %75 to i32
  %77 = getelementptr %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 16, i32 %76, i32 1
  store i8 %2, ptr %77, align 4
  %78 = getelementptr %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 16, i32 %76, i32 2
  store i8 %3, ptr %78, align 1
  %79 = getelementptr %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 16, i32 %76, i32 3
  store i8 %72, ptr %79, align 2
  %80 = getelementptr %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 16, i32 %76, i32 4
  store i8 %5, ptr %80, align 1
  %81 = add i8 %75, 1
  store i8 %81, ptr %25, align 4
  br label %82

82:                                               ; preds = %71, %69, %59, %56, %20, %13, %8, %6
  %83 = phi i32 [ -22, %6 ], [ -22, %8 ], [ %18, %13 ], [ %22, %20 ], [ 0, %71 ], [ -12, %69 ], [ 0, %56 ], [ 0, %59 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_gpio_set_cfg(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #5 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %39, label %8

8:                                                ; preds = %6
  %9 = zext i8 %1 to i32
  %10 = icmp ugt i8 %1, 2
  %11 = icmp ugt i32 %3, 6
  %12 = or i1 %10, %11
  br i1 %12, label %39, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -1
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %18, label %39

18:                                               ; preds = %13
  %19 = add nuw nsw i8 %1, 64
  %20 = trunc i32 %3 to i8
  %21 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext %19, i8 noundef zeroext %20, i8 noundef zeroext 15)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = icmp eq i8 %4, 0
  %25 = shl nuw i32 1, %9
  %26 = trunc i32 %25 to i8
  %27 = select i1 %24, i8 0, i8 %26
  %28 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 67, i8 noundef zeroext %27, i8 noundef zeroext %26)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = icmp eq i8 %5, 0
  %32 = select i1 %31, i8 0, i8 %26
  %33 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 68, i8 noundef zeroext %32, i8 noundef zeroext %26)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = icmp eq i8 %2, 0
  %37 = select i1 %36, i8 %26, i8 0
  %38 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 69, i8 noundef zeroext %37, i8 noundef zeroext %26)
  br label %39

39:                                               ; preds = %35, %30, %23, %18, %13, %8, %6
  %40 = phi i32 [ %38, %35 ], [ -22, %6 ], [ -22, %8 ], [ -22, %13 ], [ %21, %18 ], [ %28, %23 ], [ %33, %30 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_gpio_set_cfg_sub(ptr noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #5 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 4
  %14 = tail call i32 @cxd2880_tnrdmd_gpio_set_cfg(ptr noundef %13, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5)
  br label %15

15:                                               ; preds = %12, %8, %6
  %16 = phi i32 [ %14, %12 ], [ -22, %6 ], [ -22, %8 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_gpio_read(ptr noundef readonly %0, i8 noundef zeroext %1, ptr noundef writeonly %2) local_unnamed_addr #5 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %2, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %34

8:                                                ; preds = %3
  %9 = zext i8 %1 to i32
  %10 = icmp ugt i8 %1, 2
  br i1 %10, label %34, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %16, label %34

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.cxd2880_io, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %18, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 10) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %16
  %24 = load ptr, ptr %17, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 %25(ptr noundef %24, i32 noundef 0, i8 noundef zeroext 32, ptr noundef nonnull %4, i32 noundef 1) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i8, ptr %4, align 1
  %30 = zext i8 %29 to i32
  %31 = lshr i32 %30, %9
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  store i8 %33, ptr %2, align 1
  br label %34

34:                                               ; preds = %28, %23, %16, %11, %8, %3
  %35 = phi i32 [ 0, %28 ], [ -22, %3 ], [ -22, %8 ], [ -22, %11 ], [ %21, %16 ], [ %26, %23 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_gpio_read_sub(ptr noundef readonly %0, i8 noundef zeroext %1, ptr noundef writeonly %2) local_unnamed_addr #5 {
  %4 = alloca i8, align 1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %43, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %43

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1
  %12 = icmp ne ptr %11, null
  %13 = icmp ne ptr %2, null
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %41

15:                                               ; preds = %10
  %16 = zext i8 %1 to i32
  %17 = icmp ugt i8 %1, 2
  br i1 %17, label %41, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %11, i32 0, i32 22
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -1
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %11, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.cxd2880_io, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef %25, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 10) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load ptr, ptr %24, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 %32(ptr noundef %31, i32 noundef 0, i8 noundef zeroext 32, ptr noundef nonnull %4, i32 noundef 1) #11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i8, ptr %4, align 1
  %37 = zext i8 %36 to i32
  %38 = lshr i32 %37, %16
  %39 = trunc i32 %38 to i8
  %40 = and i8 %39, 1
  store i8 %40, ptr %2, align 1
  br label %41

41:                                               ; preds = %35, %30, %23, %18, %15, %10
  %42 = phi i32 [ 0, %35 ], [ -22, %10 ], [ -22, %15 ], [ -22, %18 ], [ %28, %23 ], [ %33, %30 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  br label %43

43:                                               ; preds = %41, %6, %3
  %44 = phi i32 [ %42, %41 ], [ -22, %3 ], [ -22, %6 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_gpio_write(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = zext i8 %1 to i32
  %7 = icmp ugt i8 %1, 2
  br i1 %7, label %19, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = icmp eq i8 %2, 0
  %15 = shl nuw i32 1, %6
  %16 = trunc i32 %15 to i8
  %17 = select i1 %14, i8 0, i8 %16
  %18 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 70, i8 noundef zeroext %17, i8 noundef zeroext %16)
  br label %19

19:                                               ; preds = %13, %8, %5, %3
  %20 = phi i32 [ %18, %13 ], [ -22, %3 ], [ -22, %5 ], [ -22, %8 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_gpio_write_sub(ptr noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %9
  %13 = zext i8 %1 to i32
  %14 = icmp ugt i8 %1, 2
  br i1 %14, label %26, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %10, i32 0, i32 22
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, -1
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = icmp eq i8 %2, 0
  %22 = shl nuw i32 1, %13
  %23 = trunc i32 %22 to i8
  %24 = select i1 %21, i8 0, i8 %23
  %25 = tail call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(ptr noundef nonnull %10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 70, i8 noundef zeroext %24, i8 noundef zeroext %23) #11
  br label %26

26:                                               ; preds = %20, %15, %12, %9, %5, %3
  %27 = phi i32 [ -22, %3 ], [ -22, %5 ], [ %25, %20 ], [ -22, %9 ], [ -22, %12 ], [ -22, %15 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_interrupt_read(ptr noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #5 {
  %3 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  store i16 0, ptr %3, align 2
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %32

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %32

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.cxd2880_io, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %14, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 10) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %12
  %20 = load ptr, ptr %13, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 %21(ptr noundef %20, i32 noundef 0, i8 noundef zeroext 21, ptr noundef nonnull %3, i32 noundef 2) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i8, ptr %3, align 2
  %26 = zext i8 %25 to i16
  %27 = shl nuw i16 %26, 8
  %28 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i16
  %31 = or i16 %27, %30
  store i16 %31, ptr %1, align 2
  br label %32

32:                                               ; preds = %24, %19, %12, %7, %2
  %33 = phi i32 [ 0, %24 ], [ -22, %2 ], [ -22, %7 ], [ %17, %12 ], [ %22, %19 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_interrupt_clear(ptr noundef readonly %0, i16 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  %4 = icmp eq ptr %0, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -1
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %26

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.cxd2880_io, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %10
  %18 = lshr i16 %1, 8
  %19 = trunc i16 %18 to i8
  store i8 %19, ptr %3, align 2
  %20 = trunc i16 %1 to i8
  %21 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 %20, ptr %21, align 1
  %22 = load ptr, ptr %11, align 4
  %23 = getelementptr inbounds %struct.cxd2880_io, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 %24(ptr noundef %22, i32 noundef 0, i8 noundef zeroext 60, ptr noundef nonnull %3, i32 noundef 2) #11
  br label %26

26:                                               ; preds = %17, %10, %5, %2
  %27 = phi i32 [ %25, %17 ], [ -22, %2 ], [ -22, %5 ], [ %15, %10 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_ts_buf_clear(ptr noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #5 {
  %5 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  %6 = icmp eq ptr %0, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %36, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %16, label %36

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.cxd2880_io, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %18, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %16
  %24 = icmp eq i8 %1, 0
  %25 = select i1 %24, i8 0, i8 2
  %26 = icmp ne i8 %2, 0
  %27 = zext i1 %26 to i8
  %28 = or i8 %25, %27
  store i8 %28, ptr %5, align 2
  %29 = icmp ne i8 %3, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 %30, ptr %31, align 1
  %32 = load ptr, ptr %17, align 4
  %33 = getelementptr inbounds %struct.cxd2880_io, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 %34(ptr noundef %32, i32 noundef 1, i8 noundef zeroext -97, ptr noundef nonnull %5, i32 noundef 2) #11
  br label %36

36:                                               ; preds = %23, %16, %11, %7, %4
  %37 = phi i32 [ %35, %23 ], [ -22, %4 ], [ -22, %7 ], [ -22, %11 ], [ %21, %16 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_io_set_reg_bits(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_set_scan_mode(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #7 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %16, %3
  %6 = phi ptr [ %17, %16 ], [ %0, %3 ]
  %7 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %6, i32 0, i32 22
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %19

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %6, i32 0, i32 27
  store i8 %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %6, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load ptr, ptr %6, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %5

19:                                               ; preds = %16, %11, %5, %3
  %20 = phi i32 [ -22, %3 ], [ -22, %5 ], [ 0, %11 ], [ -22, %16 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_set_pid_ftr(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #5 {
  %3 = alloca [65 x i8], align 1
  %4 = icmp eq ptr %0, null
  br i1 %4, label %77, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %77, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %77

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %77, label %18

18:                                               ; preds = %14
  %19 = icmp eq ptr %1, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 18
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(130) %21, ptr noundef nonnull align 2 dereferenceable(130) %1, i32 130, i1 false)
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i8 [ 1, %20 ], [ 0, %18 ]
  %24 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 19
  store i8 %23, ptr %24, align 4
  %25 = icmp eq i32 %11, 2
  br i1 %25, label %26, label %77

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %3) #11
  %27 = getelementptr inbounds i8, ptr %3, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(65) %27, i8 0, i32 64, i1 false) #11, !annotation !8
  %28 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.cxd2880_io, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef %29, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %75

34:                                               ; preds = %26
  br i1 %19, label %35, label %40

35:                                               ; preds = %34
  %36 = load ptr, ptr %28, align 4
  %37 = getelementptr inbounds %struct.cxd2880_io, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 %38(ptr noundef %36, i32 noundef 1, i8 noundef zeroext 80, i8 noundef zeroext 2) #11
  br label %75

40:                                               ; preds = %34
  %41 = load i8, ptr %1, align 2
  %42 = icmp ne i8 %41, 0
  %43 = zext i1 %42 to i8
  store i8 %43, ptr %3, align 1
  br label %44

44:                                               ; preds = %63, %40
  %45 = phi i32 [ 0, %40 ], [ %68, %63 ]
  %46 = getelementptr %struct.cxd2880_tnrdmd_pid_ftr_cfg, ptr %1, i32 0, i32 1, i32 %45
  %47 = load i8, ptr %46, align 2
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr %struct.cxd2880_tnrdmd_pid_ftr_cfg, ptr %1, i32 0, i32 1, i32 %45, i32 1
  %51 = load i16, ptr %50, align 2
  %52 = lshr i16 %51, 8
  %53 = trunc i16 %52 to i8
  %54 = or i8 %53, 32
  %55 = shl nuw i32 %45, 1
  %56 = or i32 %55, 1
  %57 = getelementptr [65 x i8], ptr %3, i32 0, i32 %56
  store i8 %54, ptr %57, align 1
  %58 = trunc i16 %51 to i8
  br label %63

59:                                               ; preds = %44
  %60 = shl nuw i32 %45, 1
  %61 = or i32 %60, 1
  %62 = getelementptr [65 x i8], ptr %3, i32 0, i32 %61
  store i8 0, ptr %62, align 1
  br label %63

63:                                               ; preds = %59, %49
  %64 = phi i32 [ %55, %49 ], [ %60, %59 ]
  %65 = phi i8 [ %58, %49 ], [ 0, %59 ]
  %66 = add nuw nsw i32 %64, 2
  %67 = getelementptr [65 x i8], ptr %3, i32 0, i32 %66
  store i8 %65, ptr %67, align 1
  %68 = add nuw nsw i32 %45, 1
  %69 = icmp eq i32 %68, 32
  br i1 %69, label %70, label %44

70:                                               ; preds = %63
  %71 = load ptr, ptr %28, align 4
  %72 = getelementptr inbounds %struct.cxd2880_io, ptr %71, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = call i32 %73(ptr noundef %71, i32 noundef 1, i8 noundef zeroext 80, ptr noundef nonnull %3, i32 noundef 65) #11
  br label %75

75:                                               ; preds = %70, %35, %26
  %76 = phi i32 [ %74, %70 ], [ %39, %35 ], [ %32, %26 ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %3) #11
  br label %77

77:                                               ; preds = %75, %22, %14, %9, %5, %2
  %78 = phi i32 [ %76, %75 ], [ -22, %2 ], [ -22, %5 ], [ -22, %9 ], [ -25, %14 ], [ 0, %22 ]
  ret i32 %78
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_set_rf_lvl_cmpstn(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 9
  store ptr %1, ptr %5, align 4
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i32 [ 0, %4 ], [ -22, %2 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_set_rf_lvl_cmpstn_sub(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %9, i32 0, i32 9
  store ptr %1, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %8, %4, %2
  %14 = phi i32 [ -22, %2 ], [ -22, %4 ], [ 0, %11 ], [ -22, %8 ]
  ret i32 %14
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_set_lna_thrs(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 10
  store ptr %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 11
  store ptr %2, ptr %7, align 4
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i32 [ 0, %5 ], [ -22, %3 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_set_lna_thrs_sub(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %10, i32 0, i32 10
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %10, i32 0, i32 11
  store ptr %2, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %5, %3
  %16 = phi i32 [ -22, %3 ], [ -22, %5 ], [ 0, %12 ], [ -22, %9 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_set_ts_pin_high_low(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %44, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %44, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %44

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.cxd2880_io, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %19, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %17
  %25 = icmp eq i8 %1, 0
  %26 = load ptr, ptr %18, align 4
  br i1 %25, label %39, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.cxd2880_io, ptr %26, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = and i8 %2, 31
  %31 = or i8 %30, -128
  %32 = tail call i32 %29(ptr noundef %26, i32 noundef 0, i8 noundef zeroext 80, i8 noundef zeroext %31) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = load ptr, ptr %18, align 4
  %36 = getelementptr inbounds %struct.cxd2880_io, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 %37(ptr noundef %35, i32 noundef 0, i8 noundef zeroext 82, i8 noundef zeroext %30) #11
  br label %44

39:                                               ; preds = %24
  %40 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %26, i32 noundef 0, ptr noundef nonnull @set_ts_pin_seq, i8 noundef zeroext 2) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = tail call fastcc i32 @load_cfg_mem(ptr noundef nonnull %0)
  br label %44

44:                                               ; preds = %42, %39, %34, %27, %17, %13, %9, %5, %3
  %45 = phi i32 [ -22, %3 ], [ -22, %5 ], [ -22, %9 ], [ -25, %13 ], [ %22, %17 ], [ %32, %27 ], [ %40, %39 ], [ %38, %34 ], [ %43, %42 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_io_write_multi_regs(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @slvt_freeze_reg(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  store i8 0, ptr %2, align 1, !annotation !8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 %12(ptr noundef %11, i32 noundef 1, i8 noundef zeroext 0, ptr noundef nonnull %2, i32 noundef 1) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %9, %4
  %16 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.cxd2880_io, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 %19(ptr noundef %17, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %21

21:                                               ; preds = %15, %9, %1
  %22 = phi i32 [ %20, %15 ], [ -22, %1 ], [ %13, %9 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_convert2s_complement(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { argmemonly nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }

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
!8 = !{!"auto-init"}
