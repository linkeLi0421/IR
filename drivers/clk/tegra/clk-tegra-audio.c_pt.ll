; ModuleID = '/llk/IR/drivers/clk/tegra/clk-tegra-audio.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-tegra-audio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_sync_source_initdata = type { ptr, i32, i32, i32 }
%struct.tegra_audio_clk_initdata = type { ptr, ptr, i32, i32, i32 }
%struct.tegra_audio2x_clk_initdata = type { ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.tegra_audio_clk_info = type { ptr, ptr, i32, ptr }

@.str = private unnamed_addr constant [48 x i8] c"\013No audio data passed to tegra_audio_clk_init\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"drivers/clk/tegra/clk-tegra-audio.c\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"pll_a_out0_div\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"pll_a\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"pll_a_out0\00", align 1
@sync_source_clks = internal unnamed_addr constant [7 x %struct.tegra_sync_source_initdata] [%struct.tegra_sync_source_initdata { ptr @.str.5, i32 0, i32 0, i32 232 }, %struct.tegra_sync_source_initdata { ptr @.str.6, i32 0, i32 0, i32 102 }, %struct.tegra_sync_source_initdata { ptr @.str.7, i32 0, i32 0, i32 104 }, %struct.tegra_sync_source_initdata { ptr @.str.8, i32 0, i32 0, i32 106 }, %struct.tegra_sync_source_initdata { ptr @.str.9, i32 0, i32 0, i32 108 }, %struct.tegra_sync_source_initdata { ptr @.str.10, i32 0, i32 0, i32 110 }, %struct.tegra_sync_source_initdata { ptr @.str.11, i32 0, i32 0, i32 271 }], section ".init.data", align 4
@audio_clks = internal global [6 x %struct.tegra_audio_clk_initdata] [%struct.tegra_audio_clk_initdata { ptr @.str.12, ptr @.str.13, i32 1184, i32 11, i32 13 }, %struct.tegra_audio_clk_initdata { ptr @.str.14, ptr @.str.15, i32 1188, i32 14, i32 16 }, %struct.tegra_audio_clk_initdata { ptr @.str.16, ptr @.str.17, i32 1192, i32 17, i32 19 }, %struct.tegra_audio_clk_initdata { ptr @.str.18, ptr @.str.19, i32 1196, i32 20, i32 22 }, %struct.tegra_audio_clk_initdata { ptr @.str.20, ptr @.str.21, i32 1200, i32 23, i32 25 }, %struct.tegra_audio_clk_initdata { ptr @.str.22, ptr @.str.23, i32 1204, i32 228, i32 233 }], align 4
@mux_audio_sync_clk = internal constant [8 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.4, ptr @.str.11], align 4
@dmic_clks = internal global [3 x %struct.tegra_audio_clk_initdata] [%struct.tegra_audio_clk_initdata { ptr @.str.24, ptr @.str.25, i32 1376, i32 301, i32 304 }, %struct.tegra_audio_clk_initdata { ptr @.str.26, ptr @.str.27, i32 1380, i32 302, i32 305 }, %struct.tegra_audio_clk_initdata { ptr @.str.28, ptr @.str.29, i32 1720, i32 303, i32 306 }], align 4
@mux_dmic_sync_clk = internal constant [8 x ptr] [ptr @.str.30, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.4, ptr @.str.11], align 4
@audio2x_clks = internal unnamed_addr constant [6 x %struct.tegra_audio2x_clk_initdata] [%struct.tegra_audio2x_clk_initdata { ptr @.str.12, ptr @.str.31, ptr @.str.32, ptr @.str.33, i32 12, i32 113, i8 24 }, %struct.tegra_audio2x_clk_initdata { ptr @.str.14, ptr @.str.34, ptr @.str.35, ptr @.str.36, i32 15, i32 114, i8 25 }, %struct.tegra_audio2x_clk_initdata { ptr @.str.16, ptr @.str.37, ptr @.str.38, ptr @.str.39, i32 18, i32 115, i8 26 }, %struct.tegra_audio2x_clk_initdata { ptr @.str.18, ptr @.str.40, ptr @.str.41, ptr @.str.42, i32 21, i32 116, i8 27 }, %struct.tegra_audio2x_clk_initdata { ptr @.str.20, ptr @.str.43, ptr @.str.44, ptr @.str.45, i32 24, i32 117, i8 28 }, %struct.tegra_audio2x_clk_initdata { ptr @.str.22, ptr @.str.46, ptr @.str.47, ptr @.str.48, i32 229, i32 118, i8 29 }], align 4
@clk_doubler_lock = internal global %struct.spinlock zeroinitializer, align 4
@periph_clk_enb_refcnt = external dso_local local_unnamed_addr global ptr, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"spdif_in_sync\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"i2s0_sync\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"i2s1_sync\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"i2s2_sync\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"i2s3_sync\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"i2s4_sync\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"vimclk_sync\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"audio0\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"audio0_mux\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"audio1\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"audio1_mux\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"audio2\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"audio2_mux\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"audio3\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"audio3_mux\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"audio4\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"audio4_mux\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"spdif_mux\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"dmic1_sync_clk\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"dmic1_sync_clk_mux\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"dmic2_sync_clk\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"dmic2_sync_clk_mux\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"dmic3_sync_clk\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"dmic3_sync_clk_mux\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"unused\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"audio0_2x\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"audio0_doubler\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"audio0_div\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"audio1_2x\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"audio1_doubler\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"audio1_div\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"audio2_2x\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"audio2_doubler\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"audio2_div\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"audio3_2x\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"audio3_doubler\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"audio3_div\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"audio4_2x\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"audio4_doubler\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"audio4_div\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"spdif_2x\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"spdif_doubler\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"spdif_div\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @tegra_audio_clk_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 section ".init.text" {
  %7 = icmp eq ptr %3, null
  %8 = icmp eq i32 %4, 0
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 174, i32 noundef 9, ptr noundef null) #4
  br label %86

12:                                               ; preds = %26, %6
  %13 = phi i32 [ %27, %26 ], [ 0, %6 ]
  %14 = getelementptr %struct.tegra_audio_clk_info, ptr %3, i32 %13, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = tail call ptr @tegra_lookup_dt_id(i32 noundef %15, ptr noundef %2) #4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  %19 = getelementptr %struct.tegra_audio_clk_info, ptr %3, i32 %13
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr %struct.tegra_audio_clk_info, ptr %3, i32 %13, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr %struct.tegra_audio_clk_info, ptr %3, i32 %13, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = tail call ptr @tegra_clk_register_pll(ptr noundef %20, ptr noundef %22, ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %24, ptr noundef null) #4
  store ptr %25, ptr %16, align 4
  br label %26

26:                                               ; preds = %18, %12
  %27 = add nuw i32 %13, 1
  %28 = icmp eq i32 %27, %4
  br i1 %28, label %29, label %12

29:                                               ; preds = %26
  %30 = tail call ptr @tegra_lookup_dt_id(i32 noundef 138, ptr noundef %2) #4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = getelementptr i8, ptr %0, i32 180
  %34 = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %33, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 8, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #4
  %35 = tail call ptr @tegra_clk_register_pll_out(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, ptr noundef %33, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 12, i8 noundef zeroext 0, ptr noundef null) #4
  store ptr %35, ptr %30, align 4
  br label %36

36:                                               ; preds = %32, %29
  br label %37

37:                                               ; preds = %47, %36
  %38 = phi i32 [ %48, %47 ], [ 0, %36 ]
  %39 = getelementptr [7 x %struct.tegra_sync_source_initdata], ptr @sync_source_clks, i32 0, i32 %38, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = tail call ptr @tegra_lookup_dt_id(i32 noundef %40, ptr noundef %2) #4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = getelementptr [7 x %struct.tegra_sync_source_initdata], ptr @sync_source_clks, i32 0, i32 %38
  %45 = load ptr, ptr %44, align 4
  %46 = tail call ptr @tegra_clk_register_sync_source(ptr noundef %45, i32 noundef %5) #4
  store ptr %46, ptr %41, align 4
  br label %47

47:                                               ; preds = %43, %37
  %48 = add nuw nsw i32 %38, 1
  %49 = icmp eq i32 %48, 7
  br i1 %49, label %50, label %37

50:                                               ; preds = %47
  tail call fastcc void @tegra_audio_sync_clk_init(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @audio_clks, i32 noundef 6, ptr noundef nonnull @mux_audio_sync_clk) #5
  br label %51

51:                                               ; preds = %51, %50
  %52 = phi i32 [ 0, %50 ], [ %56, %51 ]
  %53 = getelementptr [3 x %struct.tegra_audio_clk_initdata], ptr @dmic_clks, i32 0, i32 %52, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr i8, ptr %0, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 1) #4, !srcloc !8
  %56 = add nuw nsw i32 %52, 1
  %57 = icmp eq i32 %56, 3
  br i1 %57, label %58, label %51

58:                                               ; preds = %51
  tail call fastcc void @tegra_audio_sync_clk_init(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @dmic_clks, i32 noundef 3, ptr noundef nonnull @mux_dmic_sync_clk) #5
  %59 = getelementptr i8, ptr %0, i32 1180
  br label %60

60:                                               ; preds = %83, %58
  %61 = phi i32 [ 0, %58 ], [ %84, %83 ]
  %62 = getelementptr [6 x %struct.tegra_audio2x_clk_initdata], ptr @audio2x_clks, i32 0, i32 %61, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = tail call ptr @tegra_lookup_dt_id(i32 noundef %63, ptr noundef %2) #4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %83, label %66

66:                                               ; preds = %60
  %67 = getelementptr [6 x %struct.tegra_audio2x_clk_initdata], ptr @audio2x_clks, i32 0, i32 %61
  %68 = getelementptr [6 x %struct.tegra_audio2x_clk_initdata], ptr @audio2x_clks, i32 0, i32 %61, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr %67, align 4
  %71 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %69, ptr noundef %70, i32 noundef 4, i32 noundef 2, i32 noundef 1) #4
  %72 = getelementptr [6 x %struct.tegra_audio2x_clk_initdata], ptr @audio2x_clks, i32 0, i32 %61, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr [6 x %struct.tegra_audio2x_clk_initdata], ptr @audio2x_clks, i32 0, i32 %61, i32 6
  %75 = load i8, ptr %74, align 4
  %76 = tail call ptr @tegra_clk_register_divider(ptr noundef %73, ptr noundef %69, ptr noundef %59, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext %75, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull @clk_doubler_lock) #4
  %77 = getelementptr [6 x %struct.tegra_audio2x_clk_initdata], ptr @audio2x_clks, i32 0, i32 %61, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr [6 x %struct.tegra_audio2x_clk_initdata], ptr @audio2x_clks, i32 0, i32 %61, i32 5
  %80 = load i32, ptr %79, align 4
  %81 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %82 = tail call ptr @tegra_clk_register_periph_gate(ptr noundef %78, ptr noundef %73, i8 noundef zeroext 1, ptr noundef %0, i32 noundef 4, i32 noundef %80, ptr noundef %81) #4
  store ptr %82, ptr %64, align 4
  br label %83

83:                                               ; preds = %66, %60
  %84 = add nuw nsw i32 %61, 1
  %85 = icmp eq i32 %84, 6
  br i1 %85, label %86, label %60

86:                                               ; preds = %83, %10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_lookup_dt_id(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pll(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_divider(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pll_out(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_sync_source(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @tegra_audio_sync_clk_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 section ".init.text" {
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %31, %5
  %8 = phi i32 [ %32, %31 ], [ 0, %5 ]
  %9 = phi ptr [ %33, %31 ], [ %2, %5 ]
  %10 = getelementptr inbounds %struct.tegra_audio_clk_initdata, ptr %9, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = tail call ptr @tegra_lookup_dt_id(i32 noundef %11, ptr noundef %1) #4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.tegra_audio_clk_initdata, ptr %9, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.tegra_audio_clk_initdata, ptr %9, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %0, i32 %18
  %20 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef %16, ptr noundef %4, i8 noundef zeroext 8, i32 noundef 128, ptr noundef %19, i8 noundef zeroext 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #4
  store ptr %20, ptr %12, align 4
  %21 = getelementptr inbounds %struct.tegra_audio_clk_initdata, ptr %9, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = tail call ptr @tegra_lookup_dt_id(i32 noundef %22, ptr noundef %1) #4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %14
  %26 = load ptr, ptr %9, align 4
  %27 = load ptr, ptr %15, align 4
  %28 = load i32, ptr %17, align 4
  %29 = getelementptr i8, ptr %0, i32 %28
  %30 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef %26, ptr noundef %27, i32 noundef 0, ptr noundef %29, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef null) #4
  store ptr %30, ptr %23, align 4
  br label %31

31:                                               ; preds = %25, %14, %7
  %32 = add nuw nsw i32 %8, 1
  %33 = getelementptr %struct.tegra_audio_clk_initdata, ptr %9, i32 1
  %34 = icmp eq i32 %32, %3
  br i1 %34, label %35, label %7

35:                                               ; preds = %31, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_periph_gate(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind }
attributes #4 = { nounwind }
attributes #5 = { cold }

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
!8 = !{i64 365427}
