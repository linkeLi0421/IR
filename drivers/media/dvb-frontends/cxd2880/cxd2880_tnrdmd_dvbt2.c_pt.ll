; ModuleID = '/llk/IR/drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.c"
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
%struct.cxd2880_dvbt2_tune_param = type { i32, i32, i16, i32, i32 }
%struct.cxd2880_io = type { ptr, ptr, ptr, ptr, i8, i8, i8, ptr }
%struct.cxd2880_dvbt2_ofdm = type { i8, i8, i32, i32, i32, i8, i32, i16 }

@cxd2880_tnrdmd_dvbt2_diver_fef_setting.data = internal constant [12 x i8] c"\00\08\00\10\00 \00@\00\80\01\00", align 1
@x_tune_dvbt2_demod_setting.tsif_settings = internal constant [2 x i8] c"\01\01", align 1
@x_tune_dvbt2_demod_setting.init_settings = internal constant [14 x i8] c"\07\06\01\F0\00\00\04\B0\00\00\09\9C\0EL", align 1
@x_tune_dvbt2_demod_setting.clk_mode_settings_a1 = internal constant [9 x i8] c"RI,QQ=\15)\0C", align 1
@x_tune_dvbt2_demod_setting.clk_mode_settings_b1 = internal constant [9 x i8] c"]U2\\\\E\17.\0D", align 1
@x_tune_dvbt2_demod_setting.clk_mode_settings_c1 = internal constant [9 x i8] c"`\004^^G\18/\0E", align 1
@x_tune_dvbt2_demod_setting.clk_mode_settings_a2 = internal constant [13 x i8] c"\04\E7\94\92\09\CF~\D0I\CD\CD\1F[", align 1
@x_tune_dvbt2_demod_setting.clk_mode_settings_b2 = internal constant [13 x i8] c"\05\90'U\0B \8F\D6\EA\C8\C8#\91", align 1
@x_tune_dvbt2_demod_setting.clk_mode_settings_c2 = internal constant [13 x i8] c"\05\B8\D8\00\0Br\93\F3\00\CD\CD$\95", align 1
@x_tune_dvbt2_demod_setting.clk_mode_settings_a3 = internal constant [5 x i8] c"\0Bj\C9\033", align 1
@x_tune_dvbt2_demod_setting.clk_mode_settings_b3 = internal constant [5 x i8] c"\01\02\E4\039", align 1
@x_tune_dvbt2_demod_setting.clk_mode_settings_c3 = internal constant [5 x i8] c"\01\02\EB\03;", align 1
@x_tune_dvbt2_demod_setting.gtdofst = internal constant [2 x i8] c"?\FF", align 1
@x_tune_dvbt2_demod_setting.bw8_gtdofst_a = internal constant [2 x i8] c"\19\D2", align 1
@x_tune_dvbt2_demod_setting.bw8_nomi_ac = internal constant [6 x i8] c"\15\00\00\00\00\00", align 1
@x_tune_dvbt2_demod_setting.bw8_nomi_b = internal constant [6 x i8] c"\14j\AA\AA\AB\00", align 1
@x_tune_dvbt2_demod_setting.bw8_sst_a = internal constant [2 x i8] c"\06*", align 1
@x_tune_dvbt2_demod_setting.bw8_sst_b = internal constant [2 x i8] c"\06)", align 1
@x_tune_dvbt2_demod_setting.bw8_sst_c = internal constant [2 x i8] c"\06(", align 1
@x_tune_dvbt2_demod_setting.bw8_mrc_a = internal constant [9 x i8] c"(\00P\00`\00\00\90\00", align 1
@x_tune_dvbt2_demod_setting.bw8_mrc_b = internal constant [9 x i8] c"-^Z\BDl\E3\00\A3U", align 1
@x_tune_dvbt2_demod_setting.bw8_mrc_c = internal constant [9 x i8] c".\AA]Up\00\00\A8\00", align 1
@x_tune_dvbt2_demod_setting.bw7_nomi_ac = internal constant [6 x i8] c"\18\00\00\00\00\00", align 1
@x_tune_dvbt2_demod_setting.bw7_nomi_b = internal constant [6 x i8] c"\17UUUU\00", align 1
@x_tune_dvbt2_demod_setting.bw7_sst_a = internal constant [2 x i8] c"\06#", align 1
@x_tune_dvbt2_demod_setting.bw7_sst_b = internal constant [2 x i8] c"\06\22", align 1
@x_tune_dvbt2_demod_setting.bw7_sst_c = internal constant [2 x i8] c"\06!", align 1
@x_tune_dvbt2_demod_setting.bw7_mrc_a = internal constant [9 x i8] c"-\B6[mm\B6\00\A4\92", align 1
@x_tune_dvbt2_demod_setting.bw7_mrc_b = internal constant [9 x i8] c"3\DAg\B4|q\00\BA\AA", align 1
@x_tune_dvbt2_demod_setting.bw7_mrc_c = internal constant [9 x i8] c"5Uj\AA\80\00\00\C0\00", align 1
@x_tune_dvbt2_demod_setting.bw6_nomi_ac = internal constant [6 x i8] c"\1C\00\00\00\00\00", align 1
@x_tune_dvbt2_demod_setting.bw6_nomi_b = internal constant [6 x i8] c"\1B8\E3\8E9\00", align 1
@x_tune_dvbt2_demod_setting.bw6_sst_a = internal constant [2 x i8] c"\06\1C", align 1
@x_tune_dvbt2_demod_setting.bw6_sst_b = internal constant [2 x i8] c"\06\1B", align 1
@x_tune_dvbt2_demod_setting.bw6_sst_c = internal constant [2 x i8] c"\06\1A", align 1
@x_tune_dvbt2_demod_setting.bw6_mrc_a = internal constant [9 x i8] c"5Uj\AA\80\00\00\C0\00", align 1
@x_tune_dvbt2_demod_setting.bw6_mrc_b = internal constant [9 x i8] c"<~x\FC\91/\00\D9\C7", align 1
@x_tune_dvbt2_demod_setting.bw6_mrc_c = internal constant [9 x i8] c">8|q\95U\00\DF\FF", align 1
@x_tune_dvbt2_demod_setting.bw5_nomi_ac = internal constant [6 x i8] c"!\99\99\99\9A\00", align 1
@x_tune_dvbt2_demod_setting.bw5_nomi_b = internal constant [6 x i8] c" \AA\AA\AA\AB\00", align 1
@x_tune_dvbt2_demod_setting.bw5_sst_a = internal constant [2 x i8] c"\06\15", align 1
@x_tune_dvbt2_demod_setting.bw5_sst_b = internal constant [2 x i8] c"\06\15", align 1
@x_tune_dvbt2_demod_setting.bw5_sst_c = internal constant [2 x i8] c"\06\14", align 1
@x_tune_dvbt2_demod_setting.bw5_mrc_a = internal constant [9 x i8] c"@\00j\AA\80\00\00\E6f", align 1
@x_tune_dvbt2_demod_setting.bw5_mrc_b = internal constant [9 x i8] c"H\97x\FC\91/\01\05U", align 1
@x_tune_dvbt2_demod_setting.bw5_mrc_c = internal constant [9 x i8] c"J\AA|q\95U\01\0C\CC", align 1
@x_tune_dvbt2_demod_setting.bw1_7_nomi_a = internal constant [6 x i8] c"h\0F\A22\CF\03", align 1
@x_tune_dvbt2_demod_setting.bw1_7_nomi_c = internal constant [6 x i8] c"h\0F\A22\CF\03", align 1
@x_tune_dvbt2_demod_setting.bw1_7_nomi_b = internal constant [6 x i8] c"e+\A4\CD\D8\03", align 1
@x_tune_dvbt2_demod_setting.bw1_7_sst_a = internal constant [2 x i8] c"\06\0C", align 1
@x_tune_dvbt2_demod_setting.bw1_7_sst_b = internal constant [2 x i8] c"\06\0C", align 1
@x_tune_dvbt2_demod_setting.bw1_7_sst_c = internal constant [2 x i8] c"\06\0B", align 1
@x_tune_dvbt2_demod_setting.bw1_7_mrc_a = internal constant [9 x i8] c"@\00j\AA\80\00\02\C9\8F", align 1
@x_tune_dvbt2_demod_setting.bw1_7_mrc_b = internal constant [9 x i8] c"H\97x\FC\91/\03)]", align 1
@x_tune_dvbt2_demod_setting.bw1_7_mrc_c = internal constant [9 x i8] c"J\AA|q\95U\03@}", align 1
@tune_dmd_setting_seq1 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value zeroinitializer, %struct.cxd2880_reg_value { i8 49, i8 2 }], align 1
@tune_dmd_setting_seq2 = internal constant [2 x %struct.cxd2880_reg_value] [%struct.cxd2880_reg_value { i8 0, i8 4 }, %struct.cxd2880_reg_value { i8 93, i8 11 }], align 1
@x_sleep_dvbt2_demod_setting.difint_clip = internal constant [12 x i8] c"\00\01\00\02\00\04\00\08\00\10\00 ", align 1
@switch.table.x_tune_dvbt2_demod_setting = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_a1, ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_b1, ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_c1], align 4
@switch.table.x_tune_dvbt2_demod_setting.1 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_a2, ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_b2, ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_c2], align 4
@switch.table.x_tune_dvbt2_demod_setting.2 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_a3, ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_b3, ptr @x_tune_dvbt2_demod_setting.clk_mode_settings_c3], align 4
@switch.table.x_tune_dvbt2_demod_setting.3 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw8_nomi_ac, ptr @x_tune_dvbt2_demod_setting.bw8_nomi_b, ptr @x_tune_dvbt2_demod_setting.bw8_nomi_ac], align 4
@switch.table.x_tune_dvbt2_demod_setting.4 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw8_gtdofst_a, ptr @x_tune_dvbt2_demod_setting.gtdofst, ptr @x_tune_dvbt2_demod_setting.gtdofst], align 4
@switch.table.x_tune_dvbt2_demod_setting.5 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw8_sst_a, ptr @x_tune_dvbt2_demod_setting.bw8_sst_b, ptr @x_tune_dvbt2_demod_setting.bw8_sst_c], align 4
@switch.table.x_tune_dvbt2_demod_setting.6 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw8_mrc_a, ptr @x_tune_dvbt2_demod_setting.bw8_mrc_b, ptr @x_tune_dvbt2_demod_setting.bw8_mrc_c], align 4
@switch.table.x_tune_dvbt2_demod_setting.7 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw7_nomi_ac, ptr @x_tune_dvbt2_demod_setting.bw7_nomi_b, ptr @x_tune_dvbt2_demod_setting.bw7_nomi_ac], align 4
@switch.table.x_tune_dvbt2_demod_setting.8 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw7_sst_a, ptr @x_tune_dvbt2_demod_setting.bw7_sst_b, ptr @x_tune_dvbt2_demod_setting.bw7_sst_c], align 4
@switch.table.x_tune_dvbt2_demod_setting.9 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw7_mrc_a, ptr @x_tune_dvbt2_demod_setting.bw7_mrc_b, ptr @x_tune_dvbt2_demod_setting.bw7_mrc_c], align 4
@switch.table.x_tune_dvbt2_demod_setting.10 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw6_nomi_ac, ptr @x_tune_dvbt2_demod_setting.bw6_nomi_b, ptr @x_tune_dvbt2_demod_setting.bw6_nomi_ac], align 4
@switch.table.x_tune_dvbt2_demod_setting.11 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw6_sst_a, ptr @x_tune_dvbt2_demod_setting.bw6_sst_b, ptr @x_tune_dvbt2_demod_setting.bw6_sst_c], align 4
@switch.table.x_tune_dvbt2_demod_setting.12 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw6_mrc_a, ptr @x_tune_dvbt2_demod_setting.bw6_mrc_b, ptr @x_tune_dvbt2_demod_setting.bw6_mrc_c], align 4
@switch.table.x_tune_dvbt2_demod_setting.13 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw5_nomi_ac, ptr @x_tune_dvbt2_demod_setting.bw5_nomi_b, ptr @x_tune_dvbt2_demod_setting.bw5_nomi_ac], align 4
@switch.table.x_tune_dvbt2_demod_setting.14 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw5_sst_a, ptr @x_tune_dvbt2_demod_setting.bw5_sst_b, ptr @x_tune_dvbt2_demod_setting.bw5_sst_c], align 4
@switch.table.x_tune_dvbt2_demod_setting.15 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw5_mrc_a, ptr @x_tune_dvbt2_demod_setting.bw5_mrc_b, ptr @x_tune_dvbt2_demod_setting.bw5_mrc_c], align 4
@switch.table.x_tune_dvbt2_demod_setting.16 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw1_7_nomi_a, ptr @x_tune_dvbt2_demod_setting.bw1_7_nomi_b, ptr @x_tune_dvbt2_demod_setting.bw1_7_nomi_c], align 4
@switch.table.x_tune_dvbt2_demod_setting.17 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw1_7_sst_a, ptr @x_tune_dvbt2_demod_setting.bw1_7_sst_b, ptr @x_tune_dvbt2_demod_setting.bw1_7_sst_c], align 4
@switch.table.x_tune_dvbt2_demod_setting.18 = private unnamed_addr constant [3 x ptr] [ptr @x_tune_dvbt2_demod_setting.bw1_7_mrc_a, ptr @x_tune_dvbt2_demod_setting.bw1_7_mrc_b, ptr @x_tune_dvbt2_demod_setting.bw1_7_mrc_c], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_tune1(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %65

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %65, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %65

15:                                               ; preds = %10
  %16 = icmp eq i32 %8, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, ptr %1, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %65, label %21

21:                                               ; preds = %17, %15
  %22 = load i32, ptr %1, align 4
  %23 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, ptr %1, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @cxd2880_tnrdmd_common_tune_setting1(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %22, i32 noundef %24, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %65

27:                                               ; preds = %21
  %28 = load i32, ptr %23, align 4
  %29 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 23
  %30 = load i32, ptr %29, align 4
  %31 = tail call fastcc i32 @x_tune_dvbt2_demod_setting(ptr noundef nonnull %0, i32 noundef %28, i32 noundef %30)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %27
  %34 = load i32, ptr %7, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load ptr, ptr %0, align 4
  %38 = load i32, ptr %23, align 4
  %39 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %37, i32 0, i32 23
  %40 = load i32, ptr %39, align 4
  %41 = tail call fastcc i32 @x_tune_dvbt2_demod_setting(ptr noundef %37, i32 noundef %38, i32 noundef %40)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %36, %33
  %44 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, ptr %1, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = tail call fastcc i32 @dvbt2_set_profile(ptr noundef nonnull %0, i32 noundef %45)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %43
  %49 = load i32, ptr %7, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load ptr, ptr %0, align 4
  %53 = load i32, ptr %44, align 4
  %54 = tail call fastcc i32 @dvbt2_set_profile(ptr noundef %52, i32 noundef %53)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51, %48
  %57 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, ptr %1, i32 0, i32 2
  %58 = load i16, ptr %57, align 4
  %59 = icmp eq i16 %58, -1
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = tail call i32 @cxd2880_tnrdmd_dvbt2_set_plp_cfg(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 0)
  br label %65

62:                                               ; preds = %56
  %63 = trunc i16 %58 to i8
  %64 = tail call i32 @cxd2880_tnrdmd_dvbt2_set_plp_cfg(ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext %63)
  br label %65

65:                                               ; preds = %62, %60, %51, %43, %36, %27, %21, %17, %10, %6, %2
  %66 = phi i32 [ -22, %2 ], [ -22, %6 ], [ -22, %10 ], [ -25, %17 ], [ %25, %21 ], [ %31, %27 ], [ %41, %36 ], [ %46, %43 ], [ %54, %51 ], [ %61, %60 ], [ %64, %62 ]
  ret i32 %66
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_common_tune_setting1(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @x_tune_dvbt2_demod_setting(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %442, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %7, i32 noundef 0, ptr noundef nonnull @tune_dmd_setting_seq1, i8 noundef zeroext 2) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %442

10:                                               ; preds = %5
  %11 = load ptr, ptr %6, align 4
  %12 = tail call i32 @cxd2880_io_write_multi_regs(ptr noundef %11, i32 noundef 1, ptr noundef nonnull @tune_dmd_setting_seq2, i8 noundef zeroext 2) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %442

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr inbounds %struct.cxd2880_io, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %19, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %442

24:                                               ; preds = %18
  %25 = load ptr, ptr %6, align 4
  %26 = getelementptr inbounds %struct.cxd2880_io, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef %25, i32 noundef 1, i8 noundef zeroext -50, ptr noundef nonnull @x_tune_dvbt2_demod_setting.tsif_settings, i32 noundef 2) #4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %442

30:                                               ; preds = %24, %14
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr inbounds %struct.cxd2880_io, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef %31, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 32) #4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %442

36:                                               ; preds = %30
  %37 = load ptr, ptr %6, align 4
  %38 = getelementptr inbounds %struct.cxd2880_io, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 %39(ptr noundef %37, i32 noundef 1, i8 noundef zeroext -118, i8 noundef zeroext 7) #4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %442

42:                                               ; preds = %36
  %43 = load ptr, ptr %6, align 4
  %44 = getelementptr inbounds %struct.cxd2880_io, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 %45(ptr noundef %43, i32 noundef 1, i8 noundef zeroext -112, i8 noundef zeroext 6) #4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %442

48:                                               ; preds = %42
  %49 = load ptr, ptr %6, align 4
  %50 = getelementptr inbounds %struct.cxd2880_io, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 %51(ptr noundef %49, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 37) #4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %442

54:                                               ; preds = %48
  %55 = load ptr, ptr %6, align 4
  %56 = getelementptr inbounds %struct.cxd2880_io, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 %57(ptr noundef %55, i32 noundef 1, i8 noundef zeroext -16, ptr noundef getelementptr inbounds ([14 x i8], ptr @x_tune_dvbt2_demod_setting.init_settings, i32 0, i32 2), i32 noundef 2) #4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %442

60:                                               ; preds = %54
  %61 = load ptr, ptr %6, align 4
  %62 = getelementptr inbounds %struct.cxd2880_io, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 %63(ptr noundef %61, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 42) #4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %442

66:                                               ; preds = %60
  %67 = load ptr, ptr %6, align 4
  %68 = getelementptr inbounds %struct.cxd2880_io, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = tail call i32 %69(ptr noundef %67, i32 noundef 1, i8 noundef zeroext -36, i8 noundef zeroext 0) #4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %442

72:                                               ; preds = %66
  %73 = load ptr, ptr %6, align 4
  %74 = getelementptr inbounds %struct.cxd2880_io, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = tail call i32 %75(ptr noundef %73, i32 noundef 1, i8 noundef zeroext -34, i8 noundef zeroext 0) #4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %442

78:                                               ; preds = %72
  %79 = load ptr, ptr %6, align 4
  %80 = getelementptr inbounds %struct.cxd2880_io, ptr %79, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = tail call i32 %81(ptr noundef %79, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 45) #4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %442

84:                                               ; preds = %78
  %85 = load ptr, ptr %6, align 4
  %86 = getelementptr inbounds %struct.cxd2880_io, ptr %85, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = tail call i32 %87(ptr noundef %85, i32 noundef 1, i8 noundef zeroext 115, ptr noundef getelementptr inbounds ([14 x i8], ptr @x_tune_dvbt2_demod_setting.init_settings, i32 0, i32 6), i32 noundef 4) #4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %442

90:                                               ; preds = %84
  %91 = load ptr, ptr %6, align 4
  %92 = getelementptr inbounds %struct.cxd2880_io, ptr %91, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = tail call i32 %93(ptr noundef %91, i32 noundef 1, i8 noundef zeroext -113, ptr noundef getelementptr inbounds ([14 x i8], ptr @x_tune_dvbt2_demod_setting.init_settings, i32 0, i32 10), i32 noundef 4) #4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %442

96:                                               ; preds = %90
  %97 = add i32 %2, -1
  %98 = icmp ult i32 %97, 3
  br i1 %98, label %99, label %442

99:                                               ; preds = %96
  %100 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting, i32 0, i32 %97
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.1, i32 0, i32 %97
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.2, i32 0, i32 %97
  %105 = load ptr, ptr %104, align 4
  %106 = load ptr, ptr %6, align 4
  %107 = getelementptr inbounds %struct.cxd2880_io, ptr %106, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  %109 = tail call i32 %108(ptr noundef %106, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 4) #4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %442

111:                                              ; preds = %99
  %112 = load ptr, ptr %6, align 4
  %113 = getelementptr inbounds %struct.cxd2880_io, ptr %112, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = tail call i32 %114(ptr noundef %112, i32 noundef 1, i8 noundef zeroext 29, ptr noundef nonnull %101, i32 noundef 3) #4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %442

117:                                              ; preds = %111
  %118 = load ptr, ptr %6, align 4
  %119 = getelementptr inbounds %struct.cxd2880_io, ptr %118, i32 0, i32 2
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr i8, ptr %101, i32 3
  %122 = load i8, ptr %121, align 1
  %123 = tail call i32 %120(ptr noundef %118, i32 noundef 1, i8 noundef zeroext 34, i8 noundef zeroext %122) #4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %442

125:                                              ; preds = %117
  %126 = load ptr, ptr %6, align 4
  %127 = getelementptr inbounds %struct.cxd2880_io, ptr %126, i32 0, i32 2
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr i8, ptr %101, i32 4
  %130 = load i8, ptr %129, align 1
  %131 = tail call i32 %128(ptr noundef %126, i32 noundef 1, i8 noundef zeroext 36, i8 noundef zeroext %130) #4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %442

133:                                              ; preds = %125
  %134 = load ptr, ptr %6, align 4
  %135 = getelementptr inbounds %struct.cxd2880_io, ptr %134, i32 0, i32 2
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr i8, ptr %101, i32 5
  %138 = load i8, ptr %137, align 1
  %139 = tail call i32 %136(ptr noundef %134, i32 noundef 1, i8 noundef zeroext 38, i8 noundef zeroext %138) #4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %442

141:                                              ; preds = %133
  %142 = load ptr, ptr %6, align 4
  %143 = getelementptr inbounds %struct.cxd2880_io, ptr %142, i32 0, i32 1
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr i8, ptr %101, i32 6
  %146 = tail call i32 %144(ptr noundef %142, i32 noundef 1, i8 noundef zeroext 41, ptr noundef %145, i32 noundef 2) #4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %442

148:                                              ; preds = %141
  %149 = load ptr, ptr %6, align 4
  %150 = getelementptr inbounds %struct.cxd2880_io, ptr %149, i32 0, i32 2
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr i8, ptr %101, i32 8
  %153 = load i8, ptr %152, align 1
  %154 = tail call i32 %151(ptr noundef %149, i32 noundef 1, i8 noundef zeroext 45, i8 noundef zeroext %153) #4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %442

156:                                              ; preds = %148
  %157 = load i32, ptr %15, align 4
  %158 = icmp eq i32 %157, 2
  br i1 %158, label %172, label %159

159:                                              ; preds = %156
  %160 = load ptr, ptr %6, align 4
  %161 = getelementptr inbounds %struct.cxd2880_io, ptr %160, i32 0, i32 1
  %162 = load ptr, ptr %161, align 4
  %163 = tail call i32 %162(ptr noundef %160, i32 noundef 1, i8 noundef zeroext 46, ptr noundef nonnull %103, i32 noundef 6) #4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %442

165:                                              ; preds = %159
  %166 = load ptr, ptr %6, align 4
  %167 = getelementptr inbounds %struct.cxd2880_io, ptr %166, i32 0, i32 1
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr i8, ptr %103, i32 6
  %170 = tail call i32 %168(ptr noundef %166, i32 noundef 1, i8 noundef zeroext 53, ptr noundef %169, i32 noundef 7) #4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %442

172:                                              ; preds = %165, %156
  %173 = load ptr, ptr %6, align 4
  %174 = getelementptr inbounds %struct.cxd2880_io, ptr %173, i32 0, i32 1
  %175 = load ptr, ptr %174, align 4
  %176 = tail call i32 %175(ptr noundef %173, i32 noundef 1, i8 noundef zeroext 60, ptr noundef nonnull %105, i32 noundef 2) #4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %442

178:                                              ; preds = %172
  %179 = load ptr, ptr %6, align 4
  %180 = getelementptr inbounds %struct.cxd2880_io, ptr %179, i32 0, i32 1
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr i8, ptr %105, i32 2
  %183 = tail call i32 %181(ptr noundef %179, i32 noundef 1, i8 noundef zeroext 86, ptr noundef %182, i32 noundef 3) #4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %442

185:                                              ; preds = %178
  switch i32 %1, label %442 [
    i32 8, label %186
    i32 7, label %239
    i32 6, label %287
    i32 5, label %335
    i32 1, label %383
  ]

186:                                              ; preds = %185
  %187 = add i32 %2, -1
  %188 = icmp ult i32 %187, 3
  br i1 %188, label %189, label %442

189:                                              ; preds = %186
  %190 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.3, i32 0, i32 %187
  %191 = load ptr, ptr %190, align 4
  %192 = load ptr, ptr %6, align 4
  %193 = getelementptr inbounds %struct.cxd2880_io, ptr %192, i32 0, i32 1
  %194 = load ptr, ptr %193, align 4
  %195 = tail call i32 %194(ptr noundef %192, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %191, i32 noundef 6) #4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %442

197:                                              ; preds = %189
  %198 = load ptr, ptr %6, align 4
  %199 = getelementptr inbounds %struct.cxd2880_io, ptr %198, i32 0, i32 2
  %200 = load ptr, ptr %199, align 4
  %201 = tail call i32 %200(ptr noundef %198, i32 noundef 1, i8 noundef zeroext 74, i8 noundef zeroext 0) #4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %442

203:                                              ; preds = %197
  %204 = add i32 %2, -1
  %205 = icmp ult i32 %204, 3
  br i1 %205, label %206, label %442

206:                                              ; preds = %203
  %207 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.4, i32 0, i32 %204
  %208 = load ptr, ptr %207, align 4
  %209 = load ptr, ptr %6, align 4
  %210 = getelementptr inbounds %struct.cxd2880_io, ptr %209, i32 0, i32 1
  %211 = load ptr, ptr %210, align 4
  %212 = tail call i32 %211(ptr noundef %209, i32 noundef 1, i8 noundef zeroext 25, ptr noundef nonnull %208, i32 noundef 2) #4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %442

214:                                              ; preds = %206
  %215 = add i32 %2, -1
  %216 = icmp ult i32 %215, 3
  br i1 %216, label %217, label %442

217:                                              ; preds = %214
  %218 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.5, i32 0, i32 %215
  %219 = load ptr, ptr %218, align 4
  %220 = load ptr, ptr %6, align 4
  %221 = getelementptr inbounds %struct.cxd2880_io, ptr %220, i32 0, i32 1
  %222 = load ptr, ptr %221, align 4
  %223 = tail call i32 %222(ptr noundef %220, i32 noundef 1, i8 noundef zeroext 27, ptr noundef nonnull %219, i32 noundef 2) #4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %442

225:                                              ; preds = %217
  %226 = load i32, ptr %15, align 4
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %228, label %431

228:                                              ; preds = %225
  %229 = add i32 %2, -1
  %230 = icmp ult i32 %229, 3
  br i1 %230, label %231, label %442

231:                                              ; preds = %228
  %232 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.6, i32 0, i32 %229
  %233 = load ptr, ptr %232, align 4
  %234 = load ptr, ptr %6, align 4
  %235 = getelementptr inbounds %struct.cxd2880_io, ptr %234, i32 0, i32 1
  %236 = load ptr, ptr %235, align 4
  %237 = tail call i32 %236(ptr noundef %234, i32 noundef 1, i8 noundef zeroext 75, ptr noundef nonnull %233, i32 noundef 9) #4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %431, label %442

239:                                              ; preds = %185
  %240 = add i32 %2, -1
  %241 = icmp ult i32 %240, 3
  br i1 %241, label %242, label %442

242:                                              ; preds = %239
  %243 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.7, i32 0, i32 %240
  %244 = load ptr, ptr %243, align 4
  %245 = load ptr, ptr %6, align 4
  %246 = getelementptr inbounds %struct.cxd2880_io, ptr %245, i32 0, i32 1
  %247 = load ptr, ptr %246, align 4
  %248 = tail call i32 %247(ptr noundef %245, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %244, i32 noundef 6) #4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %442

250:                                              ; preds = %242
  %251 = load ptr, ptr %6, align 4
  %252 = getelementptr inbounds %struct.cxd2880_io, ptr %251, i32 0, i32 2
  %253 = load ptr, ptr %252, align 4
  %254 = tail call i32 %253(ptr noundef %251, i32 noundef 1, i8 noundef zeroext 74, i8 noundef zeroext 2) #4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %442

256:                                              ; preds = %250
  %257 = load ptr, ptr %6, align 4
  %258 = getelementptr inbounds %struct.cxd2880_io, ptr %257, i32 0, i32 1
  %259 = load ptr, ptr %258, align 4
  %260 = tail call i32 %259(ptr noundef %257, i32 noundef 1, i8 noundef zeroext 25, ptr noundef nonnull @x_tune_dvbt2_demod_setting.gtdofst, i32 noundef 2) #4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %442

262:                                              ; preds = %256
  %263 = add i32 %2, -1
  %264 = icmp ult i32 %263, 3
  br i1 %264, label %265, label %442

265:                                              ; preds = %262
  %266 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.8, i32 0, i32 %263
  %267 = load ptr, ptr %266, align 4
  %268 = load ptr, ptr %6, align 4
  %269 = getelementptr inbounds %struct.cxd2880_io, ptr %268, i32 0, i32 1
  %270 = load ptr, ptr %269, align 4
  %271 = tail call i32 %270(ptr noundef %268, i32 noundef 1, i8 noundef zeroext 27, ptr noundef nonnull %267, i32 noundef 2) #4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %442

273:                                              ; preds = %265
  %274 = load i32, ptr %15, align 4
  %275 = icmp eq i32 %274, 1
  br i1 %275, label %276, label %431

276:                                              ; preds = %273
  %277 = add i32 %2, -1
  %278 = icmp ult i32 %277, 3
  br i1 %278, label %279, label %442

279:                                              ; preds = %276
  %280 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.9, i32 0, i32 %277
  %281 = load ptr, ptr %280, align 4
  %282 = load ptr, ptr %6, align 4
  %283 = getelementptr inbounds %struct.cxd2880_io, ptr %282, i32 0, i32 1
  %284 = load ptr, ptr %283, align 4
  %285 = tail call i32 %284(ptr noundef %282, i32 noundef 1, i8 noundef zeroext 75, ptr noundef nonnull %281, i32 noundef 9) #4
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %431, label %442

287:                                              ; preds = %185
  %288 = add i32 %2, -1
  %289 = icmp ult i32 %288, 3
  br i1 %289, label %290, label %442

290:                                              ; preds = %287
  %291 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.10, i32 0, i32 %288
  %292 = load ptr, ptr %291, align 4
  %293 = load ptr, ptr %6, align 4
  %294 = getelementptr inbounds %struct.cxd2880_io, ptr %293, i32 0, i32 1
  %295 = load ptr, ptr %294, align 4
  %296 = tail call i32 %295(ptr noundef %293, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %292, i32 noundef 6) #4
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %442

298:                                              ; preds = %290
  %299 = load ptr, ptr %6, align 4
  %300 = getelementptr inbounds %struct.cxd2880_io, ptr %299, i32 0, i32 2
  %301 = load ptr, ptr %300, align 4
  %302 = tail call i32 %301(ptr noundef %299, i32 noundef 1, i8 noundef zeroext 74, i8 noundef zeroext 4) #4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %442

304:                                              ; preds = %298
  %305 = load ptr, ptr %6, align 4
  %306 = getelementptr inbounds %struct.cxd2880_io, ptr %305, i32 0, i32 1
  %307 = load ptr, ptr %306, align 4
  %308 = tail call i32 %307(ptr noundef %305, i32 noundef 1, i8 noundef zeroext 25, ptr noundef nonnull @x_tune_dvbt2_demod_setting.gtdofst, i32 noundef 2) #4
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %442

310:                                              ; preds = %304
  %311 = add i32 %2, -1
  %312 = icmp ult i32 %311, 3
  br i1 %312, label %313, label %442

313:                                              ; preds = %310
  %314 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.11, i32 0, i32 %311
  %315 = load ptr, ptr %314, align 4
  %316 = load ptr, ptr %6, align 4
  %317 = getelementptr inbounds %struct.cxd2880_io, ptr %316, i32 0, i32 1
  %318 = load ptr, ptr %317, align 4
  %319 = tail call i32 %318(ptr noundef %316, i32 noundef 1, i8 noundef zeroext 27, ptr noundef nonnull %315, i32 noundef 2) #4
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %442

321:                                              ; preds = %313
  %322 = load i32, ptr %15, align 4
  %323 = icmp eq i32 %322, 1
  br i1 %323, label %324, label %431

324:                                              ; preds = %321
  %325 = add i32 %2, -1
  %326 = icmp ult i32 %325, 3
  br i1 %326, label %327, label %442

327:                                              ; preds = %324
  %328 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.12, i32 0, i32 %325
  %329 = load ptr, ptr %328, align 4
  %330 = load ptr, ptr %6, align 4
  %331 = getelementptr inbounds %struct.cxd2880_io, ptr %330, i32 0, i32 1
  %332 = load ptr, ptr %331, align 4
  %333 = tail call i32 %332(ptr noundef %330, i32 noundef 1, i8 noundef zeroext 75, ptr noundef nonnull %329, i32 noundef 9) #4
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %431, label %442

335:                                              ; preds = %185
  %336 = add i32 %2, -1
  %337 = icmp ult i32 %336, 3
  br i1 %337, label %338, label %442

338:                                              ; preds = %335
  %339 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.13, i32 0, i32 %336
  %340 = load ptr, ptr %339, align 4
  %341 = load ptr, ptr %6, align 4
  %342 = getelementptr inbounds %struct.cxd2880_io, ptr %341, i32 0, i32 1
  %343 = load ptr, ptr %342, align 4
  %344 = tail call i32 %343(ptr noundef %341, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %340, i32 noundef 6) #4
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %442

346:                                              ; preds = %338
  %347 = load ptr, ptr %6, align 4
  %348 = getelementptr inbounds %struct.cxd2880_io, ptr %347, i32 0, i32 2
  %349 = load ptr, ptr %348, align 4
  %350 = tail call i32 %349(ptr noundef %347, i32 noundef 1, i8 noundef zeroext 74, i8 noundef zeroext 6) #4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %442

352:                                              ; preds = %346
  %353 = load ptr, ptr %6, align 4
  %354 = getelementptr inbounds %struct.cxd2880_io, ptr %353, i32 0, i32 1
  %355 = load ptr, ptr %354, align 4
  %356 = tail call i32 %355(ptr noundef %353, i32 noundef 1, i8 noundef zeroext 25, ptr noundef nonnull @x_tune_dvbt2_demod_setting.gtdofst, i32 noundef 2) #4
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %442

358:                                              ; preds = %352
  %359 = add i32 %2, -1
  %360 = icmp ult i32 %359, 3
  br i1 %360, label %361, label %442

361:                                              ; preds = %358
  %362 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.14, i32 0, i32 %359
  %363 = load ptr, ptr %362, align 4
  %364 = load ptr, ptr %6, align 4
  %365 = getelementptr inbounds %struct.cxd2880_io, ptr %364, i32 0, i32 1
  %366 = load ptr, ptr %365, align 4
  %367 = tail call i32 %366(ptr noundef %364, i32 noundef 1, i8 noundef zeroext 27, ptr noundef nonnull %363, i32 noundef 2) #4
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %442

369:                                              ; preds = %361
  %370 = load i32, ptr %15, align 4
  %371 = icmp eq i32 %370, 1
  br i1 %371, label %372, label %431

372:                                              ; preds = %369
  %373 = add i32 %2, -1
  %374 = icmp ult i32 %373, 3
  br i1 %374, label %375, label %442

375:                                              ; preds = %372
  %376 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.15, i32 0, i32 %373
  %377 = load ptr, ptr %376, align 4
  %378 = load ptr, ptr %6, align 4
  %379 = getelementptr inbounds %struct.cxd2880_io, ptr %378, i32 0, i32 1
  %380 = load ptr, ptr %379, align 4
  %381 = tail call i32 %380(ptr noundef %378, i32 noundef 1, i8 noundef zeroext 75, ptr noundef nonnull %377, i32 noundef 9) #4
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %431, label %442

383:                                              ; preds = %185
  %384 = add i32 %2, -1
  %385 = icmp ult i32 %384, 3
  br i1 %385, label %386, label %442

386:                                              ; preds = %383
  %387 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.16, i32 0, i32 %384
  %388 = load ptr, ptr %387, align 4
  %389 = load ptr, ptr %6, align 4
  %390 = getelementptr inbounds %struct.cxd2880_io, ptr %389, i32 0, i32 1
  %391 = load ptr, ptr %390, align 4
  %392 = tail call i32 %391(ptr noundef %389, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %388, i32 noundef 6) #4
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %442

394:                                              ; preds = %386
  %395 = load ptr, ptr %6, align 4
  %396 = getelementptr inbounds %struct.cxd2880_io, ptr %395, i32 0, i32 2
  %397 = load ptr, ptr %396, align 4
  %398 = tail call i32 %397(ptr noundef %395, i32 noundef 1, i8 noundef zeroext 74, i8 noundef zeroext 3) #4
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %442

400:                                              ; preds = %394
  %401 = load ptr, ptr %6, align 4
  %402 = getelementptr inbounds %struct.cxd2880_io, ptr %401, i32 0, i32 1
  %403 = load ptr, ptr %402, align 4
  %404 = tail call i32 %403(ptr noundef %401, i32 noundef 1, i8 noundef zeroext 25, ptr noundef nonnull @x_tune_dvbt2_demod_setting.gtdofst, i32 noundef 2) #4
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %442

406:                                              ; preds = %400
  %407 = add i32 %2, -1
  %408 = icmp ult i32 %407, 3
  br i1 %408, label %409, label %442

409:                                              ; preds = %406
  %410 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.17, i32 0, i32 %407
  %411 = load ptr, ptr %410, align 4
  %412 = load ptr, ptr %6, align 4
  %413 = getelementptr inbounds %struct.cxd2880_io, ptr %412, i32 0, i32 1
  %414 = load ptr, ptr %413, align 4
  %415 = tail call i32 %414(ptr noundef %412, i32 noundef 1, i8 noundef zeroext 27, ptr noundef nonnull %411, i32 noundef 2) #4
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %442

417:                                              ; preds = %409
  %418 = load i32, ptr %15, align 4
  %419 = icmp eq i32 %418, 1
  br i1 %419, label %420, label %431

420:                                              ; preds = %417
  %421 = add i32 %2, -1
  %422 = icmp ult i32 %421, 3
  br i1 %422, label %423, label %442

423:                                              ; preds = %420
  %424 = getelementptr inbounds [3 x ptr], ptr @switch.table.x_tune_dvbt2_demod_setting.18, i32 0, i32 %421
  %425 = load ptr, ptr %424, align 4
  %426 = load ptr, ptr %6, align 4
  %427 = getelementptr inbounds %struct.cxd2880_io, ptr %426, i32 0, i32 1
  %428 = load ptr, ptr %427, align 4
  %429 = tail call i32 %428(ptr noundef %426, i32 noundef 1, i8 noundef zeroext 75, ptr noundef nonnull %425, i32 noundef 9) #4
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %442

431:                                              ; preds = %423, %417, %375, %369, %327, %321, %279, %273, %231, %225
  %432 = load ptr, ptr %6, align 4
  %433 = getelementptr inbounds %struct.cxd2880_io, ptr %432, i32 0, i32 2
  %434 = load ptr, ptr %433, align 4
  %435 = tail call i32 %434(ptr noundef %432, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %442

437:                                              ; preds = %431
  %438 = load ptr, ptr %6, align 4
  %439 = getelementptr inbounds %struct.cxd2880_io, ptr %438, i32 0, i32 2
  %440 = load ptr, ptr %439, align 4
  %441 = tail call i32 %440(ptr noundef %438, i32 noundef 1, i8 noundef zeroext -3, i8 noundef zeroext 1) #4
  br label %442

442:                                              ; preds = %437, %431, %423, %420, %409, %406, %400, %394, %386, %383, %375, %372, %361, %358, %352, %346, %338, %335, %327, %324, %313, %310, %304, %298, %290, %287, %279, %276, %265, %262, %256, %250, %242, %239, %231, %228, %217, %214, %206, %203, %197, %189, %186, %185, %178, %172, %165, %159, %148, %141, %133, %125, %117, %111, %99, %96, %90, %84, %78, %72, %66, %60, %54, %48, %42, %36, %30, %24, %18, %10, %5, %3
  %443 = phi i32 [ %441, %437 ], [ -22, %3 ], [ %8, %5 ], [ %12, %10 ], [ %22, %18 ], [ %28, %24 ], [ %34, %30 ], [ %40, %36 ], [ %46, %42 ], [ %52, %48 ], [ %58, %54 ], [ %64, %60 ], [ %70, %66 ], [ %76, %72 ], [ %82, %78 ], [ %88, %84 ], [ %94, %90 ], [ -22, %96 ], [ %109, %99 ], [ %115, %111 ], [ %123, %117 ], [ %131, %125 ], [ %139, %133 ], [ %146, %141 ], [ %154, %148 ], [ %163, %159 ], [ %170, %165 ], [ %176, %172 ], [ %183, %178 ], [ -22, %186 ], [ %195, %189 ], [ %201, %197 ], [ -22, %203 ], [ %212, %206 ], [ -22, %214 ], [ %223, %217 ], [ -22, %228 ], [ %237, %231 ], [ -22, %239 ], [ %248, %242 ], [ %254, %250 ], [ %260, %256 ], [ -22, %262 ], [ %271, %265 ], [ -22, %276 ], [ %285, %279 ], [ -22, %287 ], [ %296, %290 ], [ %302, %298 ], [ %308, %304 ], [ -22, %310 ], [ %319, %313 ], [ -22, %324 ], [ %333, %327 ], [ -22, %335 ], [ %344, %338 ], [ %350, %346 ], [ %356, %352 ], [ -22, %358 ], [ %367, %361 ], [ -22, %372 ], [ %381, %375 ], [ -22, %383 ], [ %392, %386 ], [ %398, %394 ], [ %404, %400 ], [ -22, %406 ], [ %415, %409 ], [ -22, %420 ], [ %429, %423 ], [ -22, %185 ], [ %435, %431 ]
  ret i32 %443
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvbt2_set_profile(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %44, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 23
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %9, label %44

9:                                                ; preds = %4
  %10 = trunc i32 %7 to i24
  %11 = shl i24 %10, 3
  %12 = lshr i24 3025959, %11
  %13 = trunc i24 %12 to i8
  %14 = trunc i32 %7 to i8
  %15 = add i8 %14, 12
  switch i32 %1, label %44 [
    i32 0, label %18
    i32 1, label %16
    i32 2, label %17
  ]

16:                                               ; preds = %9
  br label %18

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17, %16, %9
  %19 = phi i8 [ 0, %17 ], [ 5, %16 ], [ 1, %9 ]
  %20 = phi i8 [ %13, %17 ], [ %13, %16 ], [ %15, %9 ]
  %21 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.cxd2880_io, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %22, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 46) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %18
  %28 = load ptr, ptr %21, align 4
  %29 = getelementptr inbounds %struct.cxd2880_io, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 %30(ptr noundef %28, i32 noundef 1, i8 noundef zeroext 16, i8 noundef zeroext %19) #4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load ptr, ptr %21, align 4
  %35 = getelementptr inbounds %struct.cxd2880_io, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %34, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 4) #4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load ptr, ptr %21, align 4
  %41 = getelementptr inbounds %struct.cxd2880_io, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 %42(ptr noundef %40, i32 noundef 1, i8 noundef zeroext 44, i8 noundef zeroext %20) #4
  br label %44

44:                                               ; preds = %39, %33, %27, %18, %9, %4, %2
  %45 = phi i32 [ %43, %39 ], [ -22, %2 ], [ -22, %4 ], [ -22, %9 ], [ %25, %18 ], [ %31, %27 ], [ %37, %33 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_set_plp_cfg(ptr noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %35, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %35

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.cxd2880_io, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %16, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 35) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = icmp eq i8 %1, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = load ptr, ptr %15, align 4
  %25 = getelementptr inbounds %struct.cxd2880_io, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %24, i32 noundef 1, i8 noundef zeroext -81, i8 noundef zeroext %2) #4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23, %21
  %30 = load ptr, ptr %15, align 4
  %31 = getelementptr inbounds %struct.cxd2880_io, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = zext i1 %22 to i8
  %34 = tail call i32 %32(ptr noundef %30, i32 noundef 1, i8 noundef zeroext -83, i8 noundef zeroext %33) #4
  br label %35

35:                                               ; preds = %29, %23, %14, %9, %5, %3
  %36 = phi i32 [ %34, %29 ], [ -22, %3 ], [ -22, %5 ], [ -22, %9 ], [ %19, %14 ], [ %27, %23 ]
  ret i32 %36
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_tune2(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %57

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %57, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %57

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, ptr %1, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  switch i32 %17, label %57 [
    i32 0, label %18
    i32 1, label %21
    i32 2, label %24
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 6
  %20 = load i8, ptr %19, align 1
  br label %33

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 7
  %23 = load i8, ptr %22, align 2
  br label %33

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 6
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 7
  %30 = load i8, ptr %29, align 2
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %24
  br label %33

33:                                               ; preds = %32, %28, %21, %18
  %34 = phi i8 [ 0, %32 ], [ %23, %21 ], [ %20, %18 ], [ 1, %28 ]
  %35 = tail call i32 @cxd2880_tnrdmd_common_tune_setting2(ptr noundef nonnull %0, i32 noundef 2, i8 noundef zeroext %34) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %33
  store i32 2, ptr %11, align 4
  %38 = load i32, ptr %1, align 4
  %39 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 24
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  store i32 2, ptr %40, align 4
  %41 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, ptr %1, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 26
  store i32 %42, ptr %43, align 4
  %44 = load i32, ptr %7, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %57

46:                                               ; preds = %37
  %47 = load ptr, ptr %0, align 4
  %48 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %47, i32 0, i32 22
  store i32 2, ptr %48, align 4
  %49 = load i32, ptr %1, align 4
  %50 = load ptr, ptr %0, align 4
  %51 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %50, i32 0, i32 24
  store i32 %49, ptr %51, align 4
  %52 = load ptr, ptr %0, align 4
  %53 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %52, i32 0, i32 25
  store i32 2, ptr %53, align 4
  %54 = load i32, ptr %41, align 4
  %55 = load ptr, ptr %0, align 4
  %56 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %55, i32 0, i32 26
  store i32 %54, ptr %56, align 4
  br label %57

57:                                               ; preds = %46, %37, %33, %15, %10, %6, %2
  %58 = phi i32 [ -22, %2 ], [ -22, %6 ], [ -22, %10 ], [ -22, %15 ], [ %35, %33 ], [ 0, %46 ], [ 0, %37 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_common_tune_setting2(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_sleep_setting(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %49, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %49, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %49

12:                                               ; preds = %7
  %13 = icmp eq i32 %5, 1
  br i1 %13, label %14, label %49

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.cxd2880_io, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %16, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 29) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %14
  %22 = load ptr, ptr %15, align 4
  %23 = getelementptr inbounds %struct.cxd2880_io, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %22, i32 noundef 1, i8 noundef zeroext 71, ptr noundef nonnull @x_sleep_dvbt2_demod_setting.difint_clip, i32 noundef 12) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %21
  %28 = load i32, ptr %4, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = load ptr, ptr %0, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %49, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %31, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %31, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.cxd2880_io, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 %41(ptr noundef %39, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 29) #4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load ptr, ptr %38, align 4
  %46 = getelementptr inbounds %struct.cxd2880_io, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 %47(ptr noundef %45, i32 noundef 1, i8 noundef zeroext 71, ptr noundef nonnull @x_sleep_dvbt2_demod_setting.difint_clip, i32 noundef 12) #4
  br label %49

49:                                               ; preds = %44, %37, %33, %30, %27, %21, %14, %12, %7, %3, %1
  %50 = phi i32 [ -22, %1 ], [ -22, %3 ], [ -22, %7 ], [ %25, %21 ], [ 0, %27 ], [ -22, %30 ], [ %42, %37 ], [ %48, %44 ], [ 0, %33 ], [ %19, %14 ], [ 0, %12 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_check_demod_lock(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #4
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #4
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #4
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #4
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
  %19 = call i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #4
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
  %33 = call i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat_sub(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %6) #4
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
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #4
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat_sub(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_check_ts_lock(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #4
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #4
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #4
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #4
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
  %19 = call i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #4
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
  %36 = call i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat_sub(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %6) #4
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
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #4
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_diver_fef_setting(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.cxd2880_dvbt2_ofdm, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false), !annotation !8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %12
  %15 = call i32 @cxd2880_tnrdmd_dvbt2_mon_ofdm(ptr noundef nonnull %0, ptr noundef nonnull %2) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load i8, ptr %2, align 4
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.cxd2880_io, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 %24(ptr noundef %22, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 29) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load ptr, ptr %21, align 4
  %29 = getelementptr inbounds %struct.cxd2880_io, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 %30(ptr noundef %28, i32 noundef 1, i8 noundef zeroext 71, ptr noundef nonnull @cxd2880_tnrdmd_dvbt2_diver_fef_setting.data, i32 noundef 12) #4
  br label %32

32:                                               ; preds = %27, %20, %17, %14, %12, %8, %4, %1
  %33 = phi i32 [ %31, %27 ], [ -22, %1 ], [ -22, %4 ], [ -22, %8 ], [ 0, %12 ], [ %15, %14 ], [ 0, %17 ], [ %25, %20 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #4
  ret i32 %33
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_ofdm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_check_l1post_valid(ptr noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #4
  store i8 0, ptr %3, align 1, !annotation !8
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
  %12 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.cxd2880_io, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %18, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load ptr, ptr %17, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 %25(ptr noundef %24, i32 noundef 1, i8 noundef zeroext -122, ptr noundef nonnull %3, i32 noundef 1) #4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i8, ptr %3, align 1
  %30 = and i8 %29, 1
  store i8 %30, ptr %1, align 1
  br label %31

31:                                               ; preds = %28, %23, %16, %11, %7, %2
  %32 = phi i32 [ 0, %28 ], [ -22, %2 ], [ -22, %7 ], [ -22, %11 ], [ %21, %16 ], [ %26, %23 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #4
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_io_write_multi_regs(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }

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
