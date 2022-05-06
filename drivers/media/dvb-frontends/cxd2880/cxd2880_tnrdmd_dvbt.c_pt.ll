; ModuleID = '/llk/IR/drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cxd2880_reg_value = type { i8, i8 }
%struct.cxd2880_tnrdmd = type { ptr, ptr, %struct.cxd2880_tnrdmd_create_param, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, i8, i32, i8, i8, [100 x %struct.cxd2880_tnrdmd_cfg_mem], i8, %struct.cxd2880_tnrdmd_pid_ftr_cfg, i8, ptr, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t }
%struct.cxd2880_tnrdmd_create_param = type { i32, i8, i32, i8, i8, i8, i8 }
%struct.cxd2880_tnrdmd_cfg_mem = type { i32, i8, i8, i8, i8 }
%struct.cxd2880_tnrdmd_pid_ftr_cfg = type { i8, [32 x %struct.cxd2880_tnrdmd_pid_cfg] }
%struct.cxd2880_tnrdmd_pid_cfg = type { i8, i16 }
%struct.atomic_t = type { i32 }
%struct.cxd2880_dvbt_tune_param = type { i32, i32, i32 }
%struct.cxd2880_io = type { ptr, ptr, ptr, ptr, i8, i8, i8, ptr }

@x_tune_dvbt_demod_setting.clk_mode_ckffrq_a = internal constant [2 x i8] c"RI", align 1
@x_tune_dvbt_demod_setting.clk_mode_ckffrq_b = internal constant [2 x i8] c"]U", align 1
@x_tune_dvbt_demod_setting.clk_mode_ckffrq_c = internal constant [2 x i8] c"`\00", align 1
@x_tune_dvbt_demod_setting.ratectl_margin = internal constant [2 x i8] c"\01\F0", align 1
@x_tune_dvbt_demod_setting.maxclkcnt_a = internal constant [3 x i8] c"s\CAI", align 1
@x_tune_dvbt_demod_setting.maxclkcnt_b = internal constant [3 x i8] c"\C8\13\AA", align 1
@x_tune_dvbt_demod_setting.maxclkcnt_c = internal constant [3 x i8] c"\DCl\00", align 1
@x_tune_dvbt_demod_setting.bw8_nomi_ac = internal constant [5 x i8] c"\15\00\00\00\00", align 1
@x_tune_dvbt_demod_setting.bw8_nomi_b = internal constant [5 x i8] c"\14j\AA\AA\AA", align 1
@x_tune_dvbt_demod_setting.bw8_gtdofst_a = internal constant [2 x i8] c"\01(", align 1
@x_tune_dvbt_demod_setting.bw8_gtdofst_b = internal constant [2 x i8] c"\11D", align 1
@x_tune_dvbt_demod_setting.bw8_gtdofst_c = internal constant [2 x i8] c"\15(", align 1
@x_tune_dvbt_demod_setting.bw8_mrc_a = internal constant [5 x i8] c"0\00\00\90\00", align 1
@x_tune_dvbt_demod_setting.bw8_mrc_b = internal constant [5 x i8] c"6q\00\A3U", align 1
@x_tune_dvbt_demod_setting.bw8_mrc_c = internal constant [5 x i8] c"8\00\00\A8\00", align 1
@x_tune_dvbt_demod_setting.bw8_notch = internal constant [4 x i8] c"\B3\00\01\02", align 1
@x_tune_dvbt_demod_setting.bw7_nomi_ac = internal constant [5 x i8] c"\18\00\00\00\00", align 1
@x_tune_dvbt_demod_setting.bw7_nomi_b = internal constant [5 x i8] c"\17UUUU", align 1
@x_tune_dvbt_demod_setting.bw7_gtdofst_a = internal constant [2 x i8] c"\12L", align 1
@x_tune_dvbt_demod_setting.bw7_gtdofst_b = internal constant [2 x i8] c"\1F\15", align 1
@x_tune_dvbt_demod_setting.bw7_gtdofst_c = internal constant [2 x i8] c"\1F\F8", align 1
@x_tune_dvbt_demod_setting.bw7_mrc_a = internal constant [5 x i8] c"6\DB\00\A4\92", align 1
@x_tune_dvbt_demod_setting.bw7_mrc_b = internal constant [5 x i8] c">8\00\BA\AA", align 1
@x_tune_dvbt_demod_setting.bw7_mrc_c = internal constant [5 x i8] c"@\00\00\C0\00", align 1
@x_tune_dvbt_demod_setting.bw7_notch = internal constant [4 x i8] c"\B8\00\00\03", align 1
@x_tune_dvbt_demod_setting.bw6_nomi_ac = internal constant [5 x i8] c"\1C\00\00\00\00", align 1
@x_tune_dvbt_demod_setting.bw6_nomi_b = internal constant [5 x i8] c"\1B8\E3\8E8", align 1
@x_tune_dvbt_demod_setting.bw6_gtdofst_a = internal constant [2 x i8] c"\1F\F8", align 1
@x_tune_dvbt_demod_setting.bw6_gtdofst_b = internal constant [2 x i8] c"$C", align 1
@x_tune_dvbt_demod_setting.bw6_gtdofst_c = internal constant [2 x i8] c"%L", align 1
@x_tune_dvbt_demod_setting.bw6_mrc_a = internal constant [5 x i8] c"@\00\00\C0\00", align 1
@x_tune_dvbt_demod_setting.bw6_mrc_b = internal constant [5 x i8] c"H\97\00\D9\C7", align 1
@x_tune_dvbt_demod_setting.bw6_mrc_c = internal constant [5 x i8] c"J\AA\00\DF\FF", align 1
@x_tune_dvbt_demod_setting.bw6_notch = internal constant [4 x i8] c"\BE\AB\00\03", align 1
@x_tune_dvbt_demod_setting.bw5_nomi_ac = internal constant [5 x i8] c"!\99\99\99\99", align 1
@x_tune_dvbt_demod_setting.bw5_nomi_b = internal constant [5 x i8] c" \AA\AA\AA\AA", align 1
@x_tune_dvbt_demod_setting.bw5_gtdofst_a = internal constant [2 x i8] c"&]", align 1
@x_tune_dvbt_demod_setting.bw5_gtdofst_b = internal constant [2 x i8] c"+\84", align 1
@x_tune_dvbt_demod_setting.bw5_gtdofst_c = internal constant [2 x i8] c",\C2", align 1
@x_tune_dvbt_demod_setting.bw5_mrc_a = internal constant [5 x i8] c"L\CC\00\E6f", align 1
@x_tune_dvbt_demod_setting.bw5_mrc_b = internal constant [5 x i8] c"W\1C\01\05U", align 1
@x_tune_dvbt_demod_setting.bw5_mrc_c = internal constant [5 x i8] c"Y\99\01\0C\CC", align 1
@x_tune_dvbt_demod_setting.bw5_notch = internal constant [4 x i8] c"\C8\01\00\03", align 1
@tune_dmd_setting_seq1 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 49, i8 1 }], align 1
@tune_dmd_setting_seq2 = internal constant [7 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 4 }, %struct.cxd2880_reg_value { i8 92, i8 -5 }, %struct.cxd2880_reg_value { i8 0, i8 16 }, %struct.cxd2880_reg_value { i8 -92, i8 3 }, %struct.cxd2880_reg_value { i8 0, i8 20 }, %struct.cxd2880_reg_value { i8 -80, i8 0 }, %struct.cxd2880_reg_value { i8 0, i8 37 }], align 1
@tune_dmd_setting_seq3 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 18 }, %struct.cxd2880_reg_value { i8 68, i8 0 }], align 1
@tune_dmd_setting_seq4 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 17 }, %struct.cxd2880_reg_value { i8 -121, i8 -46 }], align 1
@tune_dmd_setting_seq5 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 -3, i8 1 }], align 1
@sleep_dmd_setting_seq1 = internal constant [4 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 4 }, %struct.cxd2880_reg_value { i8 92, i8 -40 }, %struct.cxd2880_reg_value { i8 0, i8 16 }, %struct.cxd2880_reg_value { i8 -92, i8 0 }], align 1
@sleep_dmd_setting_seq2 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 17 }, %struct.cxd2880_reg_value { i8 -121, i8 4 }], align 1
@switch.table.x_tune_dvbt_demod_setting = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt_demod_setting.clk_mode_ckffrq_a, ptr @x_tune_dvbt_demod_setting.clk_mode_ckffrq_b, ptr @x_tune_dvbt_demod_setting.clk_mode_ckffrq_c], align 4
@switch.table.x_tune_dvbt_demod_setting.1 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt_demod_setting.maxclkcnt_a, ptr @x_tune_dvbt_demod_setting.maxclkcnt_b, ptr @x_tune_dvbt_demod_setting.maxclkcnt_c], align 4
@switch.table.x_tune_dvbt_demod_setting.2 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt_demod_setting.bw8_nomi_ac, ptr @x_tune_dvbt_demod_setting.bw8_nomi_b, ptr @x_tune_dvbt_demod_setting.bw8_nomi_ac], align 4
@switch.table.x_tune_dvbt_demod_setting.3 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt_demod_setting.bw8_gtdofst_a, ptr @x_tune_dvbt_demod_setting.bw8_gtdofst_b, ptr @x_tune_dvbt_demod_setting.bw8_gtdofst_c], align 4
@switch.table.x_tune_dvbt_demod_setting.4 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt_demod_setting.bw8_mrc_a, ptr @x_tune_dvbt_demod_setting.bw8_mrc_b, ptr @x_tune_dvbt_demod_setting.bw8_mrc_c], align 4
@switch.table.x_tune_dvbt_demod_setting.5 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt_demod_setting.bw7_nomi_ac, ptr @x_tune_dvbt_demod_setting.bw7_nomi_b, ptr @x_tune_dvbt_demod_setting.bw7_nomi_ac], align 4
@switch.table.x_tune_dvbt_demod_setting.6 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt_demod_setting.bw7_gtdofst_a, ptr @x_tune_dvbt_demod_setting.bw7_gtdofst_b, ptr @x_tune_dvbt_demod_setting.bw7_gtdofst_c], align 4
@switch.table.x_tune_dvbt_demod_setting.7 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt_demod_setting.bw7_mrc_a, ptr @x_tune_dvbt_demod_setting.bw7_mrc_b, ptr @x_tune_dvbt_demod_setting.bw7_mrc_c], align 4
@switch.table.x_tune_dvbt_demod_setting.8 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt_demod_setting.bw6_nomi_ac, ptr @x_tune_dvbt_demod_setting.bw6_nomi_b, ptr @x_tune_dvbt_demod_setting.bw6_nomi_ac], align 4
@switch.table.x_tune_dvbt_demod_setting.9 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt_demod_setting.bw6_gtdofst_a, ptr @x_tune_dvbt_demod_setting.bw6_gtdofst_b, ptr @x_tune_dvbt_demod_setting.bw6_gtdofst_c], align 4
@switch.table.x_tune_dvbt_demod_setting.10 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt_demod_setting.bw6_mrc_a, ptr @x_tune_dvbt_demod_setting.bw6_mrc_b, ptr @x_tune_dvbt_demod_setting.bw6_mrc_c], align 4
@switch.table.x_tune_dvbt_demod_setting.11 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt_demod_setting.bw5_nomi_ac, ptr @x_tune_dvbt_demod_setting.bw5_nomi_b, ptr @x_tune_dvbt_demod_setting.bw5_nomi_ac], align 4
@switch.table.x_tune_dvbt_demod_setting.12 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt_demod_setting.bw5_gtdofst_a, ptr @x_tune_dvbt_demod_setting.bw5_gtdofst_b, ptr @x_tune_dvbt_demod_setting.bw5_gtdofst_c], align 4
@switch.table.x_tune_dvbt_demod_setting.13 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt_demod_setting.bw5_mrc_a, ptr @x_tune_dvbt_demod_setting.bw5_mrc_b, ptr @x_tune_dvbt_demod_setting.bw5_mrc_c], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_tune1(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %41

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %41

15:                                               ; preds = %10
  %16 = load i32, ptr %1, align 4
  %17 = getelementptr inbounds %struct.cxd2880_dvbt_tune_param, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @cxd2880_tnrdmd_common_tune_setting1(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %16, i32 noundef %18, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %15
  %22 = load i32, ptr %17, align 4
  %23 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 23
  %24 = load i32, ptr %23, align 4
  %25 = tail call fastcc i32 @x_tune_dvbt_demod_setting(ptr noundef nonnull %0, i32 noundef %22, i32 noundef %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load i32, ptr %7, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load ptr, ptr %0, align 4
  %32 = load i32, ptr %17, align 4
  %33 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %31, i32 0, i32 23
  %34 = load i32, ptr %33, align 4
  %35 = tail call fastcc i32 @x_tune_dvbt_demod_setting(ptr noundef %31, i32 noundef %32, i32 noundef %34)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30, %27
  %38 = getelementptr inbounds %struct.cxd2880_dvbt_tune_param, ptr %1, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = tail call fastcc i32 @dvbt_set_profile(ptr noundef nonnull %0, i32 noundef %39)
  br label %41

41:                                               ; preds = %37, %30, %21, %15, %10, %6, %2
  %42 = phi i32 [ %40, %37 ], [ -22, %2 ], [ -22, %6 ], [ -22, %10 ], [ %19, %15 ], [ %25, %21 ], [ %35, %30 ]
  ret i32 %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_common_tune_setting1(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @x_tune_dvbt_demod_setting(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = icmp eq ptr %0, null
  br i1 %5, label %402, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %8, i32 noundef 0, ptr noundef nonnull @tune_dmd_setting_seq1, i8 noundef zeroext 2) #3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %402

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr inbounds %struct.cxd2880_io, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %12, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 4) #3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %402

17:                                               ; preds = %11
  %18 = add i32 %2, -1
  %19 = icmp ult i32 %18, 3
  br i1 %19, label %20, label %402

20:                                               ; preds = %17
  %21 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting, i32 0, i32 %18
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr inbounds %struct.cxd2880_io, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef %23, i32 noundef 1, i8 noundef zeroext 101, ptr noundef nonnull %22, i32 noundef 2) #3
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %402

28:                                               ; preds = %20
  %29 = load ptr, ptr %7, align 4
  %30 = getelementptr inbounds %struct.cxd2880_io, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef %29, i32 noundef 1, i8 noundef zeroext 93, i8 noundef zeroext 7) #3
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %402

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %51, label %38

38:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #3
  store i16 257, ptr %4, align 2
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr inbounds %struct.cxd2880_io, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 %41(ptr noundef %39, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #3
  br label %402

45:                                               ; preds = %38
  %46 = load ptr, ptr %7, align 4
  %47 = getelementptr inbounds %struct.cxd2880_io, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = call i32 %48(ptr noundef %46, i32 noundef 1, i8 noundef zeroext -50, ptr noundef nonnull %4, i32 noundef 2) #3
  %50 = icmp eq i32 %49, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #3
  br i1 %50, label %51, label %402

51:                                               ; preds = %45, %34
  %52 = load ptr, ptr %7, align 4
  %53 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %52, i32 noundef 1, ptr noundef nonnull @tune_dmd_setting_seq2, i8 noundef zeroext 7) #3
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %402

55:                                               ; preds = %51
  %56 = load ptr, ptr %7, align 4
  %57 = getelementptr inbounds %struct.cxd2880_io, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = call i32 %58(ptr noundef %56, i32 noundef 1, i8 noundef zeroext -16, ptr noundef nonnull @x_tune_dvbt_demod_setting.ratectl_margin, i32 noundef 2) #3
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %402

61:                                               ; preds = %55
  %62 = load i32, ptr %35, align 4
  %63 = add i32 %62, -1
  %64 = icmp ult i32 %63, 2
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = load ptr, ptr %7, align 4
  %67 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %66, i32 noundef 1, ptr noundef nonnull @tune_dmd_setting_seq3, i8 noundef zeroext 2) #3
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %402

69:                                               ; preds = %65
  %70 = load i32, ptr %35, align 4
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load ptr, ptr %7, align 4
  %74 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %73, i32 noundef 1, ptr noundef nonnull @tune_dmd_setting_seq4, i8 noundef zeroext 2) #3
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %402

76:                                               ; preds = %72
  %77 = load i32, ptr %35, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %96, label %79

79:                                               ; preds = %76, %69, %61
  %80 = load ptr, ptr %7, align 4
  %81 = getelementptr inbounds %struct.cxd2880_io, ptr %80, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = call i32 %82(ptr noundef %80, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 4) #3
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %402

85:                                               ; preds = %79
  %86 = add i32 %2, -1
  %87 = icmp ult i32 %86, 3
  br i1 %87, label %88, label %402

88:                                               ; preds = %85
  %89 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting.1, i32 0, i32 %86
  %90 = load ptr, ptr %89, align 4
  %91 = load ptr, ptr %7, align 4
  %92 = getelementptr inbounds %struct.cxd2880_io, ptr %91, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = call i32 %93(ptr noundef %91, i32 noundef 1, i8 noundef zeroext 104, ptr noundef nonnull %90, i32 noundef 3) #3
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %402

96:                                               ; preds = %88, %76
  %97 = load ptr, ptr %7, align 4
  %98 = getelementptr inbounds %struct.cxd2880_io, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = call i32 %99(ptr noundef %97, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 4) #3
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %402

102:                                              ; preds = %96
  switch i32 %1, label %402 [
    i32 8, label %103
    i32 7, label %177
    i32 6, label %251
    i32 5, label %325
  ]

103:                                              ; preds = %102
  %104 = add i32 %2, -1
  %105 = icmp ult i32 %104, 3
  br i1 %105, label %106, label %402

106:                                              ; preds = %103
  %107 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting.2, i32 0, i32 %104
  %108 = load ptr, ptr %107, align 4
  %109 = load ptr, ptr %7, align 4
  %110 = getelementptr inbounds %struct.cxd2880_io, ptr %109, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = call i32 %111(ptr noundef %109, i32 noundef 1, i8 noundef zeroext 96, ptr noundef nonnull %108, i32 noundef 5) #3
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %402

114:                                              ; preds = %106
  %115 = load ptr, ptr %7, align 4
  %116 = getelementptr inbounds %struct.cxd2880_io, ptr %115, i32 0, i32 2
  %117 = load ptr, ptr %116, align 4
  %118 = call i32 %117(ptr noundef %115, i32 noundef 1, i8 noundef zeroext 74, i8 noundef zeroext 0) #3
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %402

120:                                              ; preds = %114
  %121 = add i32 %2, -1
  %122 = icmp ult i32 %121, 3
  br i1 %122, label %123, label %402

123:                                              ; preds = %120
  %124 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting.3, i32 0, i32 %121
  %125 = load ptr, ptr %124, align 4
  %126 = load ptr, ptr %7, align 4
  %127 = getelementptr inbounds %struct.cxd2880_io, ptr %126, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = call i32 %128(ptr noundef %126, i32 noundef 1, i8 noundef zeroext 125, ptr noundef nonnull %125, i32 noundef 2) #3
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %402

131:                                              ; preds = %123
  %132 = add i32 %2, -1
  %133 = icmp ult i32 %132, 3
  br i1 %133, label %134, label %402

134:                                              ; preds = %131
  %135 = trunc i32 %132 to i24
  %136 = shl i24 %135, 3
  %137 = lshr i24 3421493, %136
  %138 = trunc i24 %137 to i8
  %139 = load ptr, ptr %7, align 4
  %140 = getelementptr inbounds %struct.cxd2880_io, ptr %139, i32 0, i32 2
  %141 = load ptr, ptr %140, align 4
  %142 = call i32 %141(ptr noundef %139, i32 noundef 1, i8 noundef zeroext 113, i8 noundef zeroext %138) #3
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %402

144:                                              ; preds = %134
  %145 = load i32, ptr %35, align 4
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %165

147:                                              ; preds = %144
  %148 = add i32 %2, -1
  %149 = icmp ult i32 %148, 3
  br i1 %149, label %150, label %402

150:                                              ; preds = %147
  %151 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting.4, i32 0, i32 %148
  %152 = load ptr, ptr %151, align 4
  %153 = load ptr, ptr %7, align 4
  %154 = getelementptr inbounds %struct.cxd2880_io, ptr %153, i32 0, i32 1
  %155 = load ptr, ptr %154, align 4
  %156 = call i32 %155(ptr noundef %153, i32 noundef 1, i8 noundef zeroext 75, ptr noundef nonnull %152, i32 noundef 2) #3
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %402

158:                                              ; preds = %150
  %159 = load ptr, ptr %7, align 4
  %160 = getelementptr inbounds %struct.cxd2880_io, ptr %159, i32 0, i32 1
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr i8, ptr %152, i32 2
  %163 = call i32 %161(ptr noundef %159, i32 noundef 1, i8 noundef zeroext 81, ptr noundef %162, i32 noundef 3) #3
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %402

165:                                              ; preds = %158, %144
  %166 = load ptr, ptr %7, align 4
  %167 = getelementptr inbounds %struct.cxd2880_io, ptr %166, i32 0, i32 1
  %168 = load ptr, ptr %167, align 4
  %169 = call i32 %168(ptr noundef %166, i32 noundef 1, i8 noundef zeroext 114, ptr noundef nonnull @x_tune_dvbt_demod_setting.bw8_notch, i32 noundef 2) #3
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %402

171:                                              ; preds = %165
  %172 = load ptr, ptr %7, align 4
  %173 = getelementptr inbounds %struct.cxd2880_io, ptr %172, i32 0, i32 1
  %174 = load ptr, ptr %173, align 4
  %175 = call i32 %174(ptr noundef %172, i32 noundef 1, i8 noundef zeroext 107, ptr noundef getelementptr inbounds ([4 x i8], ptr @x_tune_dvbt_demod_setting.bw8_notch, i32 0, i32 2), i32 noundef 2) #3
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %399, label %402

177:                                              ; preds = %102
  %178 = add i32 %2, -1
  %179 = icmp ult i32 %178, 3
  br i1 %179, label %180, label %402

180:                                              ; preds = %177
  %181 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting.5, i32 0, i32 %178
  %182 = load ptr, ptr %181, align 4
  %183 = load ptr, ptr %7, align 4
  %184 = getelementptr inbounds %struct.cxd2880_io, ptr %183, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  %186 = call i32 %185(ptr noundef %183, i32 noundef 1, i8 noundef zeroext 96, ptr noundef nonnull %182, i32 noundef 5) #3
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %402

188:                                              ; preds = %180
  %189 = load ptr, ptr %7, align 4
  %190 = getelementptr inbounds %struct.cxd2880_io, ptr %189, i32 0, i32 2
  %191 = load ptr, ptr %190, align 4
  %192 = call i32 %191(ptr noundef %189, i32 noundef 1, i8 noundef zeroext 74, i8 noundef zeroext 2) #3
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %402

194:                                              ; preds = %188
  %195 = add i32 %2, -1
  %196 = icmp ult i32 %195, 3
  br i1 %196, label %197, label %402

197:                                              ; preds = %194
  %198 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting.6, i32 0, i32 %195
  %199 = load ptr, ptr %198, align 4
  %200 = load ptr, ptr %7, align 4
  %201 = getelementptr inbounds %struct.cxd2880_io, ptr %200, i32 0, i32 1
  %202 = load ptr, ptr %201, align 4
  %203 = call i32 %202(ptr noundef %200, i32 noundef 1, i8 noundef zeroext 125, ptr noundef nonnull %199, i32 noundef 2) #3
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %402

205:                                              ; preds = %197
  %206 = add i32 %2, -1
  %207 = icmp ult i32 %206, 3
  br i1 %207, label %208, label %402

208:                                              ; preds = %205
  %209 = trunc i32 %206 to i24
  %210 = shl i24 %209, 3
  %211 = lshr i24 3026735, %210
  %212 = trunc i24 %211 to i8
  %213 = load ptr, ptr %7, align 4
  %214 = getelementptr inbounds %struct.cxd2880_io, ptr %213, i32 0, i32 2
  %215 = load ptr, ptr %214, align 4
  %216 = call i32 %215(ptr noundef %213, i32 noundef 1, i8 noundef zeroext 113, i8 noundef zeroext %212) #3
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %402

218:                                              ; preds = %208
  %219 = load i32, ptr %35, align 4
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %221, label %239

221:                                              ; preds = %218
  %222 = add i32 %2, -1
  %223 = icmp ult i32 %222, 3
  br i1 %223, label %224, label %402

224:                                              ; preds = %221
  %225 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting.7, i32 0, i32 %222
  %226 = load ptr, ptr %225, align 4
  %227 = load ptr, ptr %7, align 4
  %228 = getelementptr inbounds %struct.cxd2880_io, ptr %227, i32 0, i32 1
  %229 = load ptr, ptr %228, align 4
  %230 = call i32 %229(ptr noundef %227, i32 noundef 1, i8 noundef zeroext 75, ptr noundef nonnull %226, i32 noundef 2) #3
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %402

232:                                              ; preds = %224
  %233 = load ptr, ptr %7, align 4
  %234 = getelementptr inbounds %struct.cxd2880_io, ptr %233, i32 0, i32 1
  %235 = load ptr, ptr %234, align 4
  %236 = getelementptr i8, ptr %226, i32 2
  %237 = call i32 %235(ptr noundef %233, i32 noundef 1, i8 noundef zeroext 81, ptr noundef %236, i32 noundef 3) #3
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %402

239:                                              ; preds = %232, %218
  %240 = load ptr, ptr %7, align 4
  %241 = getelementptr inbounds %struct.cxd2880_io, ptr %240, i32 0, i32 1
  %242 = load ptr, ptr %241, align 4
  %243 = call i32 %242(ptr noundef %240, i32 noundef 1, i8 noundef zeroext 114, ptr noundef nonnull @x_tune_dvbt_demod_setting.bw7_notch, i32 noundef 2) #3
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %402

245:                                              ; preds = %239
  %246 = load ptr, ptr %7, align 4
  %247 = getelementptr inbounds %struct.cxd2880_io, ptr %246, i32 0, i32 1
  %248 = load ptr, ptr %247, align 4
  %249 = call i32 %248(ptr noundef %246, i32 noundef 1, i8 noundef zeroext 107, ptr noundef getelementptr inbounds ([4 x i8], ptr @x_tune_dvbt_demod_setting.bw7_notch, i32 0, i32 2), i32 noundef 2) #3
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %399, label %402

251:                                              ; preds = %102
  %252 = add i32 %2, -1
  %253 = icmp ult i32 %252, 3
  br i1 %253, label %254, label %402

254:                                              ; preds = %251
  %255 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting.8, i32 0, i32 %252
  %256 = load ptr, ptr %255, align 4
  %257 = load ptr, ptr %7, align 4
  %258 = getelementptr inbounds %struct.cxd2880_io, ptr %257, i32 0, i32 1
  %259 = load ptr, ptr %258, align 4
  %260 = call i32 %259(ptr noundef %257, i32 noundef 1, i8 noundef zeroext 96, ptr noundef nonnull %256, i32 noundef 5) #3
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %402

262:                                              ; preds = %254
  %263 = load ptr, ptr %7, align 4
  %264 = getelementptr inbounds %struct.cxd2880_io, ptr %263, i32 0, i32 2
  %265 = load ptr, ptr %264, align 4
  %266 = call i32 %265(ptr noundef %263, i32 noundef 1, i8 noundef zeroext 74, i8 noundef zeroext 4) #3
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %402

268:                                              ; preds = %262
  %269 = add i32 %2, -1
  %270 = icmp ult i32 %269, 3
  br i1 %270, label %271, label %402

271:                                              ; preds = %268
  %272 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting.9, i32 0, i32 %269
  %273 = load ptr, ptr %272, align 4
  %274 = load ptr, ptr %7, align 4
  %275 = getelementptr inbounds %struct.cxd2880_io, ptr %274, i32 0, i32 1
  %276 = load ptr, ptr %275, align 4
  %277 = call i32 %276(ptr noundef %274, i32 noundef 1, i8 noundef zeroext 125, ptr noundef nonnull %273, i32 noundef 2) #3
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %402

279:                                              ; preds = %271
  %280 = add i32 %2, -1
  %281 = icmp ult i32 %280, 3
  br i1 %281, label %282, label %402

282:                                              ; preds = %279
  %283 = trunc i32 %280 to i24
  %284 = shl i24 %283, 3
  %285 = lshr i24 2697769, %284
  %286 = trunc i24 %285 to i8
  %287 = load ptr, ptr %7, align 4
  %288 = getelementptr inbounds %struct.cxd2880_io, ptr %287, i32 0, i32 2
  %289 = load ptr, ptr %288, align 4
  %290 = call i32 %289(ptr noundef %287, i32 noundef 1, i8 noundef zeroext 113, i8 noundef zeroext %286) #3
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %402

292:                                              ; preds = %282
  %293 = load i32, ptr %35, align 4
  %294 = icmp eq i32 %293, 1
  br i1 %294, label %295, label %313

295:                                              ; preds = %292
  %296 = add i32 %2, -1
  %297 = icmp ult i32 %296, 3
  br i1 %297, label %298, label %402

298:                                              ; preds = %295
  %299 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting.10, i32 0, i32 %296
  %300 = load ptr, ptr %299, align 4
  %301 = load ptr, ptr %7, align 4
  %302 = getelementptr inbounds %struct.cxd2880_io, ptr %301, i32 0, i32 1
  %303 = load ptr, ptr %302, align 4
  %304 = call i32 %303(ptr noundef %301, i32 noundef 1, i8 noundef zeroext 75, ptr noundef nonnull %300, i32 noundef 2) #3
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %402

306:                                              ; preds = %298
  %307 = load ptr, ptr %7, align 4
  %308 = getelementptr inbounds %struct.cxd2880_io, ptr %307, i32 0, i32 1
  %309 = load ptr, ptr %308, align 4
  %310 = getelementptr i8, ptr %300, i32 2
  %311 = call i32 %309(ptr noundef %307, i32 noundef 1, i8 noundef zeroext 81, ptr noundef %310, i32 noundef 3) #3
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %402

313:                                              ; preds = %306, %292
  %314 = load ptr, ptr %7, align 4
  %315 = getelementptr inbounds %struct.cxd2880_io, ptr %314, i32 0, i32 1
  %316 = load ptr, ptr %315, align 4
  %317 = call i32 %316(ptr noundef %314, i32 noundef 1, i8 noundef zeroext 114, ptr noundef nonnull @x_tune_dvbt_demod_setting.bw6_notch, i32 noundef 2) #3
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %402

319:                                              ; preds = %313
  %320 = load ptr, ptr %7, align 4
  %321 = getelementptr inbounds %struct.cxd2880_io, ptr %320, i32 0, i32 1
  %322 = load ptr, ptr %321, align 4
  %323 = call i32 %322(ptr noundef %320, i32 noundef 1, i8 noundef zeroext 107, ptr noundef getelementptr inbounds ([4 x i8], ptr @x_tune_dvbt_demod_setting.bw6_notch, i32 0, i32 2), i32 noundef 2) #3
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %399, label %402

325:                                              ; preds = %102
  %326 = add i32 %2, -1
  %327 = icmp ult i32 %326, 3
  br i1 %327, label %328, label %402

328:                                              ; preds = %325
  %329 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting.11, i32 0, i32 %326
  %330 = load ptr, ptr %329, align 4
  %331 = load ptr, ptr %7, align 4
  %332 = getelementptr inbounds %struct.cxd2880_io, ptr %331, i32 0, i32 1
  %333 = load ptr, ptr %332, align 4
  %334 = call i32 %333(ptr noundef %331, i32 noundef 1, i8 noundef zeroext 96, ptr noundef nonnull %330, i32 noundef 5) #3
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %402

336:                                              ; preds = %328
  %337 = load ptr, ptr %7, align 4
  %338 = getelementptr inbounds %struct.cxd2880_io, ptr %337, i32 0, i32 2
  %339 = load ptr, ptr %338, align 4
  %340 = call i32 %339(ptr noundef %337, i32 noundef 1, i8 noundef zeroext 74, i8 noundef zeroext 6) #3
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %402

342:                                              ; preds = %336
  %343 = add i32 %2, -1
  %344 = icmp ult i32 %343, 3
  br i1 %344, label %345, label %402

345:                                              ; preds = %342
  %346 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting.12, i32 0, i32 %343
  %347 = load ptr, ptr %346, align 4
  %348 = load ptr, ptr %7, align 4
  %349 = getelementptr inbounds %struct.cxd2880_io, ptr %348, i32 0, i32 1
  %350 = load ptr, ptr %349, align 4
  %351 = call i32 %350(ptr noundef %348, i32 noundef 1, i8 noundef zeroext 125, ptr noundef nonnull %347, i32 noundef 2) #3
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %402

353:                                              ; preds = %345
  %354 = add i32 %2, -1
  %355 = icmp ult i32 %354, 3
  br i1 %355, label %356, label %402

356:                                              ; preds = %353
  %357 = trunc i32 %354 to i24
  %358 = shl i24 %357, 3
  %359 = lshr i24 2303012, %358
  %360 = trunc i24 %359 to i8
  %361 = load ptr, ptr %7, align 4
  %362 = getelementptr inbounds %struct.cxd2880_io, ptr %361, i32 0, i32 2
  %363 = load ptr, ptr %362, align 4
  %364 = call i32 %363(ptr noundef %361, i32 noundef 1, i8 noundef zeroext 113, i8 noundef zeroext %360) #3
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %402

366:                                              ; preds = %356
  %367 = load i32, ptr %35, align 4
  %368 = icmp eq i32 %367, 1
  br i1 %368, label %369, label %387

369:                                              ; preds = %366
  %370 = add i32 %2, -1
  %371 = icmp ult i32 %370, 3
  br i1 %371, label %372, label %402

372:                                              ; preds = %369
  %373 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt_demod_setting.13, i32 0, i32 %370
  %374 = load ptr, ptr %373, align 4
  %375 = load ptr, ptr %7, align 4
  %376 = getelementptr inbounds %struct.cxd2880_io, ptr %375, i32 0, i32 1
  %377 = load ptr, ptr %376, align 4
  %378 = call i32 %377(ptr noundef %375, i32 noundef 1, i8 noundef zeroext 75, ptr noundef nonnull %374, i32 noundef 2) #3
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %402

380:                                              ; preds = %372
  %381 = load ptr, ptr %7, align 4
  %382 = getelementptr inbounds %struct.cxd2880_io, ptr %381, i32 0, i32 1
  %383 = load ptr, ptr %382, align 4
  %384 = getelementptr i8, ptr %374, i32 2
  %385 = call i32 %383(ptr noundef %381, i32 noundef 1, i8 noundef zeroext 81, ptr noundef %384, i32 noundef 3) #3
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %402

387:                                              ; preds = %380, %366
  %388 = load ptr, ptr %7, align 4
  %389 = getelementptr inbounds %struct.cxd2880_io, ptr %388, i32 0, i32 1
  %390 = load ptr, ptr %389, align 4
  %391 = call i32 %390(ptr noundef %388, i32 noundef 1, i8 noundef zeroext 114, ptr noundef nonnull @x_tune_dvbt_demod_setting.bw5_notch, i32 noundef 2) #3
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %402

393:                                              ; preds = %387
  %394 = load ptr, ptr %7, align 4
  %395 = getelementptr inbounds %struct.cxd2880_io, ptr %394, i32 0, i32 1
  %396 = load ptr, ptr %395, align 4
  %397 = call i32 %396(ptr noundef %394, i32 noundef 1, i8 noundef zeroext 107, ptr noundef getelementptr inbounds ([4 x i8], ptr @x_tune_dvbt_demod_setting.bw5_notch, i32 0, i32 2), i32 noundef 2) #3
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %402

399:                                              ; preds = %393, %319, %245, %171
  %400 = load ptr, ptr %7, align 4
  %401 = call i32 @cxd2880_io_write_multi_regs(ptr noundef %400, i32 noundef 1, ptr noundef nonnull @tune_dmd_setting_seq5, i8 noundef zeroext 2) #3
  br label %402

402:                                              ; preds = %399, %393, %387, %380, %372, %369, %356, %353, %345, %342, %336, %328, %325, %319, %313, %306, %298, %295, %282, %279, %271, %268, %262, %254, %251, %245, %239, %232, %224, %221, %208, %205, %197, %194, %188, %180, %177, %171, %165, %158, %150, %147, %134, %131, %123, %120, %114, %106, %103, %102, %96, %88, %85, %79, %72, %65, %55, %51, %45, %44, %28, %20, %17, %11, %6, %3
  %403 = phi i32 [ %401, %399 ], [ %49, %45 ], [ -22, %3 ], [ %9, %6 ], [ %15, %11 ], [ -22, %17 ], [ %26, %20 ], [ %32, %28 ], [ %53, %51 ], [ %59, %55 ], [ %67, %65 ], [ %74, %72 ], [ %83, %79 ], [ -22, %85 ], [ %94, %88 ], [ %100, %96 ], [ -22, %103 ], [ %112, %106 ], [ %118, %114 ], [ -22, %120 ], [ %129, %123 ], [ -22, %131 ], [ %142, %134 ], [ -22, %147 ], [ %156, %150 ], [ %163, %158 ], [ %169, %165 ], [ %175, %171 ], [ -22, %177 ], [ %186, %180 ], [ %192, %188 ], [ -22, %194 ], [ %203, %197 ], [ -22, %205 ], [ %216, %208 ], [ -22, %221 ], [ %230, %224 ], [ %237, %232 ], [ %243, %239 ], [ %249, %245 ], [ -22, %251 ], [ %260, %254 ], [ %266, %262 ], [ -22, %268 ], [ %277, %271 ], [ -22, %279 ], [ %290, %282 ], [ -22, %295 ], [ %304, %298 ], [ %311, %306 ], [ %317, %313 ], [ %323, %319 ], [ -22, %325 ], [ %334, %328 ], [ %340, %336 ], [ -22, %342 ], [ %351, %345 ], [ -22, %353 ], [ %364, %356 ], [ -22, %369 ], [ %378, %372 ], [ %385, %380 ], [ %391, %387 ], [ %397, %393 ], [ -22, %102 ], [ %42, %44 ]
  ret i32 %403
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvbt_set_profile(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cxd2880_io, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %6, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 16) #3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr inbounds %struct.cxd2880_io, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp ne i32 %1, 0
  %16 = zext i1 %15 to i8
  %17 = tail call i32 %14(ptr noundef %12, i32 noundef 1, i8 noundef zeroext 103, i8 noundef zeroext %16) #3
  br label %18

18:                                               ; preds = %11, %4, %2
  %19 = phi i32 [ %17, %11 ], [ -22, %2 ], [ %9, %4 ]
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_tune2(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %38

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %38, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %38

15:                                               ; preds = %10
  %16 = tail call i32 @cxd2880_tnrdmd_common_tune_setting2(ptr noundef nonnull %0, i32 noundef 1, i8 noundef zeroext 0) #3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %15
  store i32 2, ptr %11, align 4
  %19 = load i32, ptr %1, align 4
  %20 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 24
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  store i32 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.cxd2880_dvbt_tune_param, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 26
  store i32 %23, ptr %24, align 4
  %25 = load i32, ptr %7, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %38

27:                                               ; preds = %18
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %28, i32 0, i32 22
  store i32 2, ptr %29, align 4
  %30 = load i32, ptr %1, align 4
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %31, i32 0, i32 24
  store i32 %30, ptr %32, align 4
  %33 = load ptr, ptr %0, align 4
  %34 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %33, i32 0, i32 25
  store i32 1, ptr %34, align 4
  %35 = load i32, ptr %22, align 4
  %36 = load ptr, ptr %0, align 4
  %37 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %36, i32 0, i32 26
  store i32 %35, ptr %37, align 4
  br label %38

38:                                               ; preds = %27, %18, %15, %10, %6, %2
  %39 = phi i32 [ -22, %2 ], [ -22, %6 ], [ -22, %10 ], [ %16, %15 ], [ 0, %27 ], [ 0, %18 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_common_tune_setting2(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_sleep_setting(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %44, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %44

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %14, i32 noundef 1, ptr noundef nonnull @sleep_dmd_setting_seq1, i8 noundef zeroext 4) #3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %12
  %18 = load i32, ptr %4, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load ptr, ptr %13, align 4
  %22 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %21, i32 noundef 1, ptr noundef nonnull @sleep_dmd_setting_seq2, i8 noundef zeroext 2) #3
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = load i32, ptr %4, align 4
  br label %26

26:                                               ; preds = %24, %17
  %27 = phi i32 [ %25, %24 ], [ %18, %17 ]
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load ptr, ptr %0, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %30, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %34, i32 noundef 1, ptr noundef nonnull @sleep_dmd_setting_seq1, i8 noundef zeroext 4) #3
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %30, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load ptr, ptr %33, align 4
  %43 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %42, i32 noundef 1, ptr noundef nonnull @sleep_dmd_setting_seq2, i8 noundef zeroext 2) #3
  br label %44

44:                                               ; preds = %41, %37, %32, %29, %26, %20, %12, %7, %3, %1
  %45 = phi i32 [ -22, %1 ], [ -22, %3 ], [ -22, %7 ], [ %22, %20 ], [ 0, %26 ], [ -22, %29 ], [ %35, %32 ], [ %43, %41 ], [ 0, %37 ], [ %15, %12 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_check_demod_lock(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #3
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #3
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #3
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #3
  store i8 0, ptr %6, align 1
  %7 = icmp ne ptr %0, null
  %8 = icmp ne ptr %1, null
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %47

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %47, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %47

18:                                               ; preds = %14
  %19 = call i32 @cxd2880_tnrdmd_dvbt_mon_sync_stat(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %18
  %22 = load i32, ptr %11, align 4
  %23 = icmp eq i32 %22, 0
  %24 = load i8, ptr %3, align 1
  %25 = icmp eq i8 %24, 6
  br i1 %23, label %26, label %31

26:                                               ; preds = %21
  br i1 %25, label %45, label %27

27:                                               ; preds = %26
  %28 = load i8, ptr %5, align 1
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, i32 0, i32 2
  br label %45

31:                                               ; preds = %21
  br i1 %25, label %45, label %32

32:                                               ; preds = %31
  %33 = call i32 @cxd2880_tnrdmd_dvbt_mon_sync_stat_sub(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %6) #3
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load i8, ptr %3, align 1
  %37 = icmp eq i8 %36, 6
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load i8, ptr %5, align 1
  %40 = icmp ne i8 %39, 0
  %41 = load i8, ptr %6, align 1
  %42 = icmp ne i8 %41, 0
  %43 = select i1 %40, i1 %42, i1 false
  %44 = select i1 %43, i32 2, i32 0
  br label %45

45:                                               ; preds = %38, %35, %31, %27, %26
  %46 = phi i32 [ 1, %26 ], [ %30, %27 ], [ 1, %31 ], [ 1, %35 ], [ %44, %38 ]
  store i32 %46, ptr %1, align 4
  br label %47

47:                                               ; preds = %45, %32, %18, %14, %10, %2
  %48 = phi i32 [ -22, %2 ], [ -22, %10 ], [ -22, %14 ], [ %19, %18 ], [ %33, %32 ], [ 0, %45 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #3
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt_mon_sync_stat(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt_mon_sync_stat_sub(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_check_ts_lock(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #3
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #3
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #3
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #3
  store i8 0, ptr %6, align 1
  %7 = icmp ne ptr %0, null
  %8 = icmp ne ptr %1, null
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %47

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %47, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %47

18:                                               ; preds = %14
  %19 = call i32 @cxd2880_tnrdmd_dvbt_mon_sync_stat(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %18
  %22 = load i32, ptr %11, align 4
  %23 = icmp eq i32 %22, 0
  %24 = load i8, ptr %4, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %23, label %26, label %31

26:                                               ; preds = %21
  br i1 %25, label %27, label %45

27:                                               ; preds = %26
  %28 = load i8, ptr %5, align 1
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, i32 0, i32 2
  br label %45

31:                                               ; preds = %21
  br i1 %25, label %32, label %45

32:                                               ; preds = %31
  %33 = load i8, ptr %5, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = call i32 @cxd2880_tnrdmd_dvbt_mon_sync_stat_sub(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %6) #3
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i8, ptr %5, align 1
  %40 = icmp ne i8 %39, 0
  %41 = load i8, ptr %6, align 1
  %42 = icmp ne i8 %41, 0
  %43 = select i1 %40, i1 %42, i1 false
  %44 = select i1 %43, i32 2, i32 0
  br label %45

45:                                               ; preds = %38, %32, %31, %27, %26
  %46 = phi i32 [ %44, %38 ], [ 1, %26 ], [ %30, %27 ], [ 1, %31 ], [ 0, %32 ]
  store i32 %46, ptr %1, align 4
  br label %47

47:                                               ; preds = %45, %35, %18, %14, %10, %2
  %48 = phi i32 [ -22, %2 ], [ -22, %10 ], [ -22, %14 ], [ %19, %18 ], [ %36, %35 ], [ 0, %45 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #3
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_io_write_multi_regs(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
