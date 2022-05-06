; ModuleID = '/llk/IR/sound/soc/sh/rcar/adg.c_pt.bc'
source_filename = "../sound/soc/sh/rcar/adg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rsnd_mod_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rsnd_mod = type { i32, i32, ptr, ptr, ptr, i32 }
%struct.rsnd_priv = type { ptr, %struct.spinlock, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rsnd_adg = type { [4 x ptr], [4 x ptr], ptr, %struct.clk_onecell_data, %struct.rsnd_mod, [4 x i32], i32, i32, i32, i32, i32, i32 }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.rsnd_dai_stream = type { [16 x i8], ptr, [13 x ptr], ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.__va_list = type { ptr }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }

@__const.rsnd_adg_clk_query.sel_table = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 3, i32 0], align 4
@.str = private unnamed_addr constant [19 x i8] c"%s    : %pa : %ld\0A\00", align 1
@clk_name = internal unnamed_addr constant [4 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"BRGCKR = 0x%08x, BRRA/BRRB = 0x%x/0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"BRGA (for 44100 base) = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"BRGB (for 48000 base) = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"clkout %d : %pa : %ld\0A\00", align 1
@adg_ops = internal global %struct.rsnd_mod_ops { ptr @.str.10, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"no Input clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"clk_a\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"clk_b\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"clk_c\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"clk_i\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"adg\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"adg clock IN get failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"rsnd_adg_null\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"create null clk error\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"audio_clkout\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"audio_clkout1\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"audio_clkout2\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"audio_clkout3\00", align 1
@__const.rsnd_adg_get_clkout.brg_table = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 4, i32 2], align 4
@.str.18 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"too many clock-frequency\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"clkout-lr-asynchronous\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"adg clock OUT get failed\0A\00", align 1
@switch.table.rsnd_adg_get_timesel_ratio = private unnamed_addr constant [9 x i32] [i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0, i32 7, i32 0], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_adg_set_cmd_timsel_gen2(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rsnd_priv, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rsnd_adg, ptr %7, i32 0, i32 4
  %9 = tail call i32 @rsnd_mod_id(ptr noundef %0) #9
  %10 = shl i32 %9, 4
  %11 = and i32 %10, 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %12 = tail call i32 @rsnd_src_get_rate(ptr noundef %5, ptr noundef %1, i32 noundef 1) #9
  %13 = tail call i32 @rsnd_src_get_rate(ptr noundef %5, ptr noundef %1, i32 noundef 0) #9
  call fastcc void @rsnd_adg_get_timesel_ratio(ptr noundef %5, ptr noundef %1, i32 noundef %12, i32 noundef %13, ptr noundef null, ptr noundef nonnull %3, ptr noundef null)
  %14 = load i32, ptr %3, align 4
  %15 = shl i32 %14, %11
  store i32 %15, ptr %3, align 4
  %16 = shl nuw nsw i32 3871, %11
  call void @rsnd_mod_bset(ptr noundef %8, i32 noundef 32, i32 noundef %16, i32 noundef %15) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rsnd_adg_get_timesel_ratio(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef writeonly %4, ptr noundef writeonly %5, ptr noundef writeonly %6) unnamed_addr #0 {
  %8 = alloca [5 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.snd_pcm_substream, ptr %12, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %7
  %18 = phi ptr [ %16, %14 ], [ null, %7 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10)
  %19 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @rsnd_mod_id(ptr noundef %20) #9
  %22 = load ptr, ptr %19, align 4
  %23 = tail call i32 @__rsnd_ssi_is_pin_sharing(ptr noundef %22) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %17
  %26 = add i32 %21, -1
  %27 = icmp ult i32 %26, 9
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = trunc i32 %26 to i16
  %30 = lshr i16 395, %29
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds [9 x i32], ptr @switch.table.rsnd_adg_get_timesel_ratio, i32 0, i32 %26
  %35 = load i32, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %28, %25, %17
  %37 = phi i32 [ %21, %25 ], [ %21, %17 ], [ %21, %28 ], [ %35, %33 ]
  %38 = shl i32 %37, 8
  %39 = add i32 %38, 1536
  store i32 %39, ptr %10, align 4
  store i32 %39, ptr %9, align 4
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %18, i32 0, i32 14
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, %2
  %43 = icmp eq i32 %41, %3
  %44 = select i1 %43, i32 0, i32 %2
  %45 = select i1 %43, ptr null, ptr %9
  %46 = select i1 %42, i32 %44, i32 %3
  %47 = select i1 %42, ptr %45, ptr %10
  %48 = icmp eq i32 %46, 0
  br i1 %48, label %122, label %49

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 4
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #9
  %53 = getelementptr inbounds %struct.rsnd_adg, ptr %51, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  store i32 %54, ptr %8, align 4
  %55 = getelementptr inbounds i32, ptr %8, i32 1
  %56 = getelementptr %struct.rsnd_adg, ptr %51, i32 0, i32 5, i32 1
  %57 = load i32, ptr %56, align 4
  store i32 %57, ptr %55, align 4
  %58 = getelementptr inbounds i32, ptr %8, i32 2
  %59 = getelementptr %struct.rsnd_adg, ptr %51, i32 0, i32 5, i32 2
  %60 = load i32, ptr %59, align 4
  store i32 %60, ptr %58, align 4
  %61 = getelementptr inbounds i32, ptr %8, i32 3
  %62 = getelementptr inbounds %struct.rsnd_adg, ptr %51, i32 0, i32 10
  %63 = load i32, ptr %62, align 4
  store i32 %63, ptr %61, align 4
  %64 = getelementptr inbounds i32, ptr %8, i32 4
  %65 = getelementptr inbounds %struct.rsnd_adg, ptr %51, i32 0, i32 11
  %66 = load i32, ptr %65, align 4
  store i32 %66, ptr %64, align 4
  br label %67

67:                                               ; preds = %112, %49
  %68 = phi i32 [ %54, %49 ], [ %114, %112 ]
  %69 = phi i32 [ 0, %49 ], [ %110, %112 ]
  %70 = phi i32 [ -1, %49 ], [ %109, %112 ]
  %71 = phi i32 [ 0, %49 ], [ %108, %112 ]
  %72 = phi i32 [ 0, %49 ], [ %107, %112 ]
  %73 = icmp eq i32 %68, 0
  br i1 %73, label %106, label %74

74:                                               ; preds = %67
  %75 = shl i32 %69, 8
  %76 = shl i32 2, %69
  br label %77

77:                                               ; preds = %77, %74
  %78 = phi i32 [ 2, %74 ], [ %104, %77 ]
  %79 = phi i32 [ 2, %74 ], [ %100, %77 ]
  %80 = phi i32 [ 0, %74 ], [ %103, %77 ]
  %81 = phi i32 [ %70, %74 ], [ %91, %77 ]
  %82 = phi i32 [ %71, %74 ], [ %90, %77 ]
  %83 = phi i32 [ %72, %74 ], [ %89, %77 ]
  %84 = udiv i32 %68, %78
  %85 = sub i32 %46, %84
  %86 = tail call i32 @llvm.abs.i32(i32 %85, i1 false) #9
  %87 = icmp ugt i32 %81, %86
  %88 = or i32 %80, %75
  %89 = select i1 %87, i32 %88, i32 %83
  %90 = select i1 %87, i32 %76, i32 %82
  %91 = tail call i32 @llvm.umin.i32(i32 %81, i32 %86) #9
  %92 = icmp sgt i32 %80, 2
  %93 = and i32 %80, 1
  %94 = icmp ne i32 %93, 0
  %95 = and i1 %92, %94
  %96 = zext i1 %95 to i32
  %97 = shl i32 %79, %96
  %98 = icmp eq i32 %80, 28
  %99 = zext i1 %98 to i32
  %100 = shl i32 %97, %99
  %101 = select i1 %98, i32 %97, i32 0
  %102 = add i32 %101, %78
  %103 = add i32 %80, 1
  %104 = add i32 %102, %100
  %105 = icmp slt i32 %104, 98305
  br i1 %105, label %77, label %106

106:                                              ; preds = %77, %67
  %107 = phi i32 [ %72, %67 ], [ %89, %77 ]
  %108 = phi i32 [ %71, %67 ], [ %90, %77 ]
  %109 = phi i32 [ %70, %67 ], [ %91, %77 ]
  %110 = add nuw nsw i32 %69, 1
  %111 = icmp eq i32 %110, 5
  br i1 %111, label %115, label %112

112:                                              ; preds = %106
  %113 = getelementptr [5 x i32], ptr %8, i32 0, i32 %110
  %114 = load i32, ptr %113, align 4
  br label %67

115:                                              ; preds = %106
  %116 = icmp eq i32 %109, -1
  br i1 %116, label %117, label %119

117:                                              ; preds = %115
  %118 = getelementptr inbounds %struct.platform_device, ptr %52, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.5) #10
  br label %120

119:                                              ; preds = %115
  store i32 %107, ptr %47, align 4
  br label %120

120:                                              ; preds = %119, %117
  %121 = phi i32 [ 0, %117 ], [ %108, %119 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #9
  br label %122

122:                                              ; preds = %120, %36
  %123 = phi i32 [ 0, %36 ], [ %121, %120 ]
  %124 = icmp eq ptr %4, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %122
  %126 = load i32, ptr %9, align 4
  store i32 %126, ptr %4, align 4
  br label %127

127:                                              ; preds = %125, %122
  %128 = icmp eq ptr %5, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %127
  %130 = load i32, ptr %10, align 4
  store i32 %130, ptr %5, align 4
  br label %131

131:                                              ; preds = %129, %127
  %132 = icmp eq ptr %6, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %131
  store i32 %123, ptr %6, align 4
  br label %134

134:                                              ; preds = %133, %131
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_src_get_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_bset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_adg_set_src_timesel_gen2(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rsnd_priv, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rsnd_adg, ptr %11, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !8
  %13 = tail call i32 @rsnd_mod_id(ptr noundef %0) #9
  %14 = shl i32 %13, 4
  %15 = and i32 %14, 16
  call fastcc void @rsnd_adg_get_timesel_ratio(ptr noundef %9, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %16 = load i32, ptr %5, align 4
  %17 = shl i32 %16, %15
  store i32 %17, ptr %5, align 4
  %18 = load i32, ptr %6, align 4
  %19 = shl i32 %18, %15
  store i32 %19, ptr %6, align 4
  %20 = shl nuw nsw i32 3871, %15
  %21 = sdiv i32 %13, 2
  %22 = add nsw i32 %21, 14
  call void @rsnd_mod_bset(ptr noundef %12, i32 noundef %22, i32 noundef %20, i32 noundef %17) #9
  %23 = add nsw i32 %21, 19
  %24 = load i32, ptr %6, align 4
  call void @rsnd_mod_bset(ptr noundef %12, i32 noundef %23, i32 noundef %20, i32 noundef %24) #9
  %25 = load i32, ptr %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  call void @rsnd_mod_bset(ptr noundef %12, i32 noundef 100, i32 noundef %25, i32 noundef %25) #9
  br label %28

28:                                               ; preds = %27, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @rsnd_adg_clk_query(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.rsnd_adg, ptr %4, i32 0, i32 5, i32 0
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %20, %16, %12, %2
  %9 = phi i32 [ 0, %2 ], [ 1, %12 ], [ 2, %16 ], [ 3, %20 ]
  %10 = getelementptr [4 x i32], ptr @__const.rsnd_adg_clk_query.sel_table, i32 0, i32 %9
  %11 = load i32, ptr %10, align 4
  br label %33

12:                                               ; preds = %2
  %13 = getelementptr %struct.rsnd_adg, ptr %4, i32 0, i32 5, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %8, label %16

16:                                               ; preds = %12
  %17 = getelementptr %struct.rsnd_adg, ptr %4, i32 0, i32 5, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %8, label %20

20:                                               ; preds = %16
  %21 = getelementptr %struct.rsnd_adg, ptr %4, i32 0, i32 5, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %8, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.rsnd_adg, ptr %4, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.rsnd_adg, ptr %4, i32 0, i32 11
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %1
  %32 = select i1 %31, i32 32, i32 -5
  br label %33

33:                                               ; preds = %28, %24, %8
  %34 = phi i32 [ %11, %8 ], [ 16, %24 ], [ %32, %28 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_adg_ssi_clk_stop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @rsnd_mod_id(ptr noundef %0) #9
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = freeze i32 %6
  %10 = sdiv i32 %9, 4
  %11 = mul i32 %10, 4
  %12 = sub i32 %9, %11
  %13 = shl nsw i32 %12, 3
  %14 = shl i32 255, %13
  %15 = getelementptr inbounds %struct.rsnd_adg, ptr %5, i32 0, i32 4
  %16 = add nsw i32 %10, 101
  tail call void @rsnd_mod_bset(ptr noundef %15, i32 noundef %16, i32 noundef %14, i32 noundef 0) #9
  br label %17

17:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_adg_ssi_clk_try_start(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rsnd_priv, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rsnd_adg, ptr %6, i32 0, i32 4
  %8 = getelementptr %struct.rsnd_adg, ptr %6, i32 0, i32 5, i32 0
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %31, label %11

11:                                               ; preds = %2
  %12 = getelementptr %struct.rsnd_adg, ptr %6, i32 0, i32 5, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = getelementptr %struct.rsnd_adg, ptr %6, i32 0, i32 5, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = getelementptr %struct.rsnd_adg, ptr %6, i32 0, i32 5, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rsnd_adg, ptr %6, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %1
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.rsnd_adg, ptr %6, i32 0, i32 11
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, %1
  br i1 %30, label %35, label %66

31:                                               ; preds = %19, %15, %11, %2
  %32 = phi i32 [ 0, %2 ], [ 1, %11 ], [ 2, %15 ], [ 3, %19 ]
  %33 = getelementptr [4 x i32], ptr @__const.rsnd_adg_clk_query.sel_table, i32 0, i32 %32
  %34 = load i32, ptr %33, align 4
  br label %35

35:                                               ; preds = %31, %27, %23
  %36 = phi i32 [ %34, %31 ], [ 16, %23 ], [ 32, %27 ]
  %37 = tail call i32 @rsnd_mod_id(ptr noundef %0) #9
  %38 = icmp eq i32 %37, 8
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = freeze i32 %37
  %41 = sdiv i32 %40, 4
  %42 = mul i32 %41, 4
  %43 = sub i32 %40, %42
  %44 = shl nsw i32 %43, 3
  %45 = shl i32 %36, %44
  %46 = shl i32 255, %44
  %47 = add nsw i32 %41, 101
  tail call void @rsnd_mod_bset(ptr noundef %7, i32 noundef %47, i32 noundef %46, i32 noundef %45) #9
  br label %48

48:                                               ; preds = %39, %35
  %49 = getelementptr inbounds %struct.rsnd_adg, ptr %6, i32 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  %53 = shl i32 %50, 30
  %54 = and i32 %53, -2147483648
  %55 = urem i32 %1, 8000
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i32 -2147483648, i32 0
  %58 = select i1 %52, i32 %57, i32 %54
  %59 = getelementptr inbounds %struct.rsnd_adg, ptr %6, i32 0, i32 7
  %60 = load i32, ptr %59, align 4
  %61 = or i32 %58, %60
  tail call void @rsnd_mod_bset(ptr noundef %7, i32 noundef 99, i32 noundef -2139684864, i32 noundef %61) #9
  %62 = getelementptr inbounds %struct.rsnd_adg, ptr %6, i32 0, i32 8
  %63 = load i32, ptr %62, align 4
  tail call void @rsnd_mod_write(ptr noundef %7, i32 noundef 97, i32 noundef %63) #9
  %64 = getelementptr inbounds %struct.rsnd_adg, ptr %6, i32 0, i32 9
  %65 = load i32, ptr %64, align 4
  tail call void @rsnd_mod_write(ptr noundef %7, i32 noundef 98, i32 noundef %65) #9
  br label %66

66:                                               ; preds = %48, %27
  %67 = phi i32 [ 0, %48 ], [ -5, %27 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rsnd_adg_clk_control(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %71, label %7

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %7
  %10 = tail call i32 @clk_prepare(ptr noundef nonnull %5) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = tail call i32 @clk_enable(ptr noundef nonnull %5) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  tail call void @clk_unprepare(ptr noundef nonnull %5) #9
  br label %20

16:                                               ; preds = %7
  tail call void @clk_disable(ptr noundef nonnull %5) #9
  tail call void @clk_unprepare(ptr noundef nonnull %5) #9
  %17 = getelementptr [4 x ptr], ptr %4, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %71, label %33

20:                                               ; preds = %15, %12, %9
  %21 = tail call i32 @clk_get_rate(ptr noundef nonnull %5) #9
  %22 = getelementptr %struct.rsnd_adg, ptr %4, i32 0, i32 5, i32 0
  store i32 %21, ptr %22, align 4
  %23 = getelementptr [4 x ptr], ptr %4, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %71, label %26

26:                                               ; preds = %20
  %27 = tail call i32 @clk_prepare(ptr noundef nonnull %24) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = tail call i32 @clk_enable(ptr noundef nonnull %24) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  tail call void @clk_unprepare(ptr noundef nonnull %24) #9
  br label %37

33:                                               ; preds = %16
  tail call void @clk_disable(ptr noundef nonnull %18) #9
  tail call void @clk_unprepare(ptr noundef nonnull %18) #9
  %34 = getelementptr [4 x ptr], ptr %4, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %71, label %50

37:                                               ; preds = %32, %29, %26
  %38 = tail call i32 @clk_get_rate(ptr noundef nonnull %24) #9
  %39 = getelementptr %struct.rsnd_adg, ptr %4, i32 0, i32 5, i32 1
  store i32 %38, ptr %39, align 4
  %40 = getelementptr [4 x ptr], ptr %4, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %71, label %43

43:                                               ; preds = %37
  %44 = tail call i32 @clk_prepare(ptr noundef nonnull %41) #9
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = tail call i32 @clk_enable(ptr noundef nonnull %41) #9
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  tail call void @clk_unprepare(ptr noundef nonnull %41) #9
  br label %54

50:                                               ; preds = %33
  tail call void @clk_disable(ptr noundef nonnull %35) #9
  tail call void @clk_unprepare(ptr noundef nonnull %35) #9
  %51 = getelementptr [4 x ptr], ptr %4, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %71, label %70

54:                                               ; preds = %49, %46, %43
  %55 = tail call i32 @clk_get_rate(ptr noundef nonnull %41) #9
  %56 = getelementptr %struct.rsnd_adg, ptr %4, i32 0, i32 5, i32 2
  store i32 %55, ptr %56, align 4
  %57 = getelementptr [4 x ptr], ptr %4, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %71, label %60

60:                                               ; preds = %54
  %61 = tail call i32 @clk_prepare(ptr noundef nonnull %58) #9
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = tail call i32 @clk_enable(ptr noundef nonnull %58) #9
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call void @clk_unprepare(ptr noundef nonnull %58) #9
  br label %67

67:                                               ; preds = %66, %63, %60
  %68 = tail call i32 @clk_get_rate(ptr noundef nonnull %58) #9
  %69 = getelementptr %struct.rsnd_adg, ptr %4, i32 0, i32 5, i32 3
  store i32 %68, ptr %69, align 4
  br label %71

70:                                               ; preds = %50
  tail call void @clk_disable(ptr noundef nonnull %52) #9
  tail call void @clk_unprepare(ptr noundef nonnull %52) #9
  br label %71

71:                                               ; preds = %70, %67, %54, %50, %37, %33, %20, %16, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rsnd_adg_clk_dbg_info(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @clk_get_rate(ptr noundef nonnull %5) #9
  tail call void (ptr, ptr, ptr, ...) @dbg_msg(ptr undef, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef nonnull %5, i32 noundef %8)
  %9 = getelementptr [4 x ptr], ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @clk_get_rate(ptr noundef nonnull %10) #9
  tail call void (ptr, ptr, ptr, ...) @dbg_msg(ptr undef, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull %10, i32 noundef %13)
  %14 = getelementptr [4 x ptr], ptr %4, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = tail call i32 @clk_get_rate(ptr noundef nonnull %15) #9
  tail call void (ptr, ptr, ptr, ...) @dbg_msg(ptr undef, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, ptr noundef nonnull %15, i32 noundef %18)
  %19 = getelementptr [4 x ptr], ptr %4, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = tail call i32 @clk_get_rate(ptr noundef nonnull %20) #9
  tail call void (ptr, ptr, ptr, ...) @dbg_msg(ptr undef, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, ptr noundef nonnull %20, i32 noundef %23)
  br label %24

24:                                               ; preds = %22, %17, %12, %7, %2
  %25 = getelementptr inbounds %struct.rsnd_adg, ptr %4, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.rsnd_adg, ptr %4, i32 0, i32 8
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.rsnd_adg, ptr %4, i32 0, i32 9
  %30 = load i32, ptr %29, align 4
  tail call void (ptr, ptr, ptr, ...) @dbg_msg(ptr undef, ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %26, i32 noundef %28, i32 noundef %30)
  %31 = getelementptr inbounds %struct.rsnd_adg, ptr %4, i32 0, i32 10
  %32 = load i32, ptr %31, align 4
  tail call void (ptr, ptr, ptr, ...) @dbg_msg(ptr undef, ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %32)
  %33 = getelementptr inbounds %struct.rsnd_adg, ptr %4, i32 0, i32 11
  %34 = load i32, ptr %33, align 4
  tail call void (ptr, ptr, ptr, ...) @dbg_msg(ptr undef, ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %34)
  %35 = getelementptr %struct.rsnd_adg, ptr %4, i32 0, i32 1, i32 0
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %55, label %38

38:                                               ; preds = %24
  %39 = tail call i32 @clk_get_rate(ptr noundef nonnull %36) #9
  tail call void (ptr, ptr, ptr, ...) @dbg_msg(ptr undef, ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef nonnull %36, i32 noundef %39)
  %40 = getelementptr %struct.rsnd_adg, ptr %4, i32 0, i32 1, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %38
  %44 = tail call i32 @clk_get_rate(ptr noundef nonnull %41) #9
  tail call void (ptr, ptr, ptr, ...) @dbg_msg(ptr undef, ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef 1, ptr noundef nonnull %41, i32 noundef %44)
  %45 = getelementptr %struct.rsnd_adg, ptr %4, i32 0, i32 1, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %43
  %49 = tail call i32 @clk_get_rate(ptr noundef nonnull %46) #9
  tail call void (ptr, ptr, ptr, ...) @dbg_msg(ptr undef, ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef 2, ptr noundef nonnull %46, i32 noundef %49)
  %50 = getelementptr %struct.rsnd_adg, ptr %4, i32 0, i32 1, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = tail call i32 @clk_get_rate(ptr noundef nonnull %51) #9
  tail call void (ptr, ptr, ptr, ...) @dbg_msg(ptr undef, ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef 3, ptr noundef nonnull %51, i32 noundef %54)
  br label %55

55:                                               ; preds = %53, %48, %43, %38, %24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dbg_msg(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ...) unnamed_addr #0 {
  %4 = alloca [128 x i8], align 1
  %5 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %4, i8 0, i32 128, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %5)
  %6 = load i32, ptr %5, align 4
  %7 = insertvalue [1 x i32] poison, i32 %6, 0
  %8 = call i32 @vsnprintf(ptr noundef nonnull %4, i32 noundef 128, ptr noundef %2, [1 x i32] %7)
  call void @llvm.va_end(ptr nonnull %5)
  %9 = icmp eq ptr %1, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  call void @seq_puts(ptr noundef nonnull %1, ptr noundef nonnull %4) #9
  br label %11

11:                                               ; preds = %10, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_adg_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [2 x i32], align 8
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 108, i32 noundef 3520) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %304, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rsnd_adg, ptr %6, i32 0, i32 4
  %10 = tail call i32 @rsnd_mod_init(ptr noundef %0, ptr noundef %9, ptr noundef nonnull @adg_ops, ptr noundef null, i32 noundef 0, i32 noundef 0) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %304

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 4
  store ptr %6, ptr %13, align 4
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  br label %16

16:                                               ; preds = %43, %12
  %17 = phi i32 [ 0, %12 ], [ %45, %43 ]
  %18 = getelementptr [4 x ptr], ptr @clk_name, i32 0, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = tail call ptr @devm_clk_get(ptr noundef %15, ptr noundef %19) #9
  %21 = icmp eq ptr %20, null
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %23 = or i1 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %16
  %25 = load ptr, ptr %13, align 4
  %26 = getelementptr inbounds %struct.rsnd_adg, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 4
  %31 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  %32 = tail call ptr @clk_register_fixed_rate(ptr noundef %31, ptr noundef nonnull @.str.12, ptr noundef null, i32 noundef 0, i32 noundef 0) #9
  %33 = icmp eq ptr %32, null
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  %35 = or i1 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.13) #10
  br label %37

37:                                               ; preds = %36, %29
  store ptr %32, ptr %26, align 4
  br label %38

38:                                               ; preds = %37, %24, %16
  %39 = phi ptr [ %20, %16 ], [ %32, %37 ], [ %27, %24 ]
  %40 = icmp eq ptr %39, null
  %41 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  %42 = or i1 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = getelementptr [4 x ptr], ptr %6, i32 0, i32 %17
  store ptr %39, ptr %44, align 4
  %45 = add nuw nsw i32 %17, 1
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %53, label %16

47:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.11) #10
  %48 = load ptr, ptr %13, align 4
  %49 = getelementptr inbounds %struct.rsnd_adg, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %304, label %52

52:                                               ; preds = %47
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %50) #9
  br label %304

53:                                               ; preds = %43
  %54 = load ptr, ptr %13, align 4
  %55 = load ptr, ptr %0, align 4
  %56 = getelementptr inbounds %struct.platform_device, ptr %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.platform_device, ptr %55, i32 0, i32 3, i32 25
  %58 = load ptr, ptr %57, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  store i64 0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4
  %59 = tail call ptr @of_find_property(ptr noundef %58, ptr noundef nonnull @.str.18, ptr noundef null) #9
  %60 = icmp eq ptr %59, null
  br i1 %60, label %297, label %61

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.property, ptr %59, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp ugt i32 %63, 11
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.19) #10
  br label %295

66:                                               ; preds = %61
  %67 = lshr i32 %63, 2
  %68 = call i32 @of_property_read_variable_u32_array(ptr noundef %58, ptr noundef nonnull @.str.18, ptr noundef nonnull %2, i32 noundef %67, i32 noundef 0) #9
  %69 = icmp ult i32 %63, 4
  br i1 %69, label %88, label %70

70:                                               ; preds = %66
  %71 = load i32, ptr %2, align 8
  %72 = urem i32 %71, 44100
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i32 %71, i32 0
  %75 = urem i32 %71, 48000
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %76, i32 %71, i32 0
  %78 = icmp ult i32 %63, 8
  br i1 %78, label %88, label %79

79:                                               ; preds = %70
  %80 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = urem i32 %81, 44100
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 %81, i32 %74
  %85 = urem i32 %81, 48000
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, i32 %81, i32 %77
  br label %88

88:                                               ; preds = %79, %70, %66
  %89 = phi i32 [ 0, %66 ], [ %77, %70 ], [ %87, %79 ]
  %90 = phi i32 [ 0, %66 ], [ %74, %70 ], [ %84, %79 ]
  %91 = load i32, ptr %2, align 8
  %92 = urem i32 %91, 48000
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.rsnd_adg, ptr %54, i32 0, i32 6
  %96 = load i32, ptr %95, align 4
  %97 = or i32 %96, 2
  store i32 %97, ptr %95, align 4
  br label %98

98:                                               ; preds = %94, %88
  %99 = call ptr @of_get_property(ptr noundef %58, ptr noundef nonnull @.str.20, ptr noundef null) #9
  %100 = icmp eq ptr %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.rsnd_adg, ptr %54, i32 0, i32 6
  %103 = load i32, ptr %102, align 4
  %104 = or i32 %103, 1
  store i32 %104, ptr %102, align 4
  br label %105

105:                                              ; preds = %101, %98
  %106 = getelementptr inbounds %struct.rsnd_adg, ptr %54, i32 0, i32 10
  store i32 0, ptr %106, align 4
  %107 = getelementptr inbounds %struct.rsnd_adg, ptr %54, i32 0, i32 11
  store i32 0, ptr %107, align 4
  %108 = icmp eq i32 %90, 0
  %109 = getelementptr inbounds %struct.rsnd_adg, ptr %54, i32 0, i32 6
  %110 = icmp eq i32 %89, 0
  br label %111

111:                                              ; preds = %226, %105
  %112 = phi ptr [ null, %105 ], [ %230, %226 ]
  %113 = phi i32 [ 0, %105 ], [ %231, %226 ]
  %114 = phi i32 [ 2, %105 ], [ %229, %226 ]
  %115 = phi i32 [ 2, %105 ], [ %228, %226 ]
  %116 = phi i32 [ 0, %105 ], [ %227, %226 ]
  %117 = getelementptr [4 x ptr], ptr %54, i32 0, i32 %113
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %233, label %120

120:                                              ; preds = %111
  %121 = call i32 @clk_get_rate(ptr noundef nonnull %118) #9
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %226, label %123

123:                                              ; preds = %120
  %124 = load i32, ptr %106, align 4
  %125 = icmp eq i32 %124, 0
  %126 = urem i32 %121, 44100
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %125, i1 %127, i1 false
  br i1 %128, label %129, label %173

129:                                              ; preds = %123
  br i1 %108, label %151, label %130

130:                                              ; preds = %129
  %131 = udiv i32 %121, %90
  %132 = icmp ugt i32 %90, %121
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = udiv i32 %121, %131
  store i32 %134, ptr %106, align 4
  %135 = getelementptr [4 x i32], ptr @__const.rsnd_adg_get_clkout.brg_table, i32 0, i32 %113
  %136 = load i32, ptr %135, align 4
  %137 = shl i32 %136, 20
  %138 = or i32 %137, %116
  br label %165

139:                                              ; preds = %130
  %140 = and i32 %131, 127
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %151, label %142

142:                                              ; preds = %139
  %143 = and i32 %131, 31
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %142
  %146 = and i32 %131, 7
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = and i32 %131, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %173

151:                                              ; preds = %148, %145, %142, %139, %129
  %152 = phi i32 [ %131, %139 ], [ %131, %142 ], [ %131, %145 ], [ %131, %148 ], [ 6, %129 ]
  %153 = phi i32 [ 768, %139 ], [ 512, %142 ], [ 256, %145 ], [ 0, %148 ], [ 0, %129 ]
  %154 = phi i32 [ 7, %139 ], [ 5, %142 ], [ 3, %145 ], [ 1, %148 ], [ 1, %129 ]
  %155 = lshr i32 %152, %154
  %156 = add nsw i32 %155, -1
  %157 = or i32 %156, %153
  %158 = icmp ult i32 %157, 1024
  br i1 %158, label %159, label %173

159:                                              ; preds = %151
  %160 = udiv i32 %121, %152
  store i32 %160, ptr %106, align 4
  %161 = getelementptr [4 x i32], ptr @__const.rsnd_adg_get_clkout.brg_table, i32 0, i32 %113
  %162 = load i32, ptr %161, align 4
  %163 = shl i32 %162, 20
  %164 = or i32 %163, %116
  br i1 %108, label %173, label %165

165:                                              ; preds = %159, %133
  %166 = phi i32 [ %138, %133 ], [ %164, %159 ]
  %167 = phi i32 [ 0, %133 ], [ %157, %159 ]
  %168 = load i32, ptr %109, align 4
  %169 = and i32 %168, 2
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %165
  %172 = call ptr @__clk_get_name(ptr noundef nonnull %118) #9
  br label %173

173:                                              ; preds = %171, %165, %159, %151, %148, %123
  %174 = phi i32 [ %116, %123 ], [ %166, %165 ], [ %166, %171 ], [ %164, %159 ], [ %116, %151 ], [ %116, %148 ]
  %175 = phi i32 [ %115, %123 ], [ %167, %165 ], [ %167, %171 ], [ %157, %159 ], [ %115, %151 ], [ %115, %148 ]
  %176 = phi ptr [ %112, %123 ], [ %112, %165 ], [ %172, %171 ], [ %112, %159 ], [ %112, %151 ], [ %112, %148 ]
  %177 = load i32, ptr %107, align 4
  %178 = icmp eq i32 %177, 0
  %179 = urem i32 %121, 48000
  %180 = icmp eq i32 %179, 0
  %181 = select i1 %178, i1 %180, i1 false
  br i1 %181, label %182, label %226

182:                                              ; preds = %173
  br i1 %110, label %204, label %183

183:                                              ; preds = %182
  %184 = udiv i32 %121, %89
  %185 = icmp ugt i32 %89, %121
  br i1 %185, label %186, label %192

186:                                              ; preds = %183
  %187 = udiv i32 %121, %184
  store i32 %187, ptr %107, align 4
  %188 = getelementptr [4 x i32], ptr @__const.rsnd_adg_get_clkout.brg_table, i32 0, i32 %113
  %189 = load i32, ptr %188, align 4
  %190 = shl i32 %189, 16
  %191 = or i32 %190, %174
  br label %218

192:                                              ; preds = %183
  %193 = and i32 %184, 127
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %204, label %195

195:                                              ; preds = %192
  %196 = and i32 %184, 31
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %204, label %198

198:                                              ; preds = %195
  %199 = and i32 %184, 7
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %198
  %202 = and i32 %184, 1
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %226

204:                                              ; preds = %201, %198, %195, %192, %182
  %205 = phi i32 [ %184, %192 ], [ %184, %195 ], [ %184, %198 ], [ %184, %201 ], [ 6, %182 ]
  %206 = phi i32 [ 768, %192 ], [ 512, %195 ], [ 256, %198 ], [ 0, %201 ], [ 0, %182 ]
  %207 = phi i32 [ 7, %192 ], [ 5, %195 ], [ 3, %198 ], [ 1, %201 ], [ 1, %182 ]
  %208 = lshr i32 %205, %207
  %209 = add nsw i32 %208, -1
  %210 = or i32 %209, %206
  %211 = icmp ult i32 %210, 1024
  br i1 %211, label %212, label %226

212:                                              ; preds = %204
  %213 = udiv i32 %121, %205
  store i32 %213, ptr %107, align 4
  %214 = getelementptr [4 x i32], ptr @__const.rsnd_adg_get_clkout.brg_table, i32 0, i32 %113
  %215 = load i32, ptr %214, align 4
  %216 = shl i32 %215, 16
  %217 = or i32 %216, %174
  br i1 %110, label %226, label %218

218:                                              ; preds = %212, %186
  %219 = phi i32 [ %191, %186 ], [ %217, %212 ]
  %220 = phi i32 [ 0, %186 ], [ %210, %212 ]
  %221 = load i32, ptr %109, align 4
  %222 = and i32 %221, 2
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %218
  %225 = call ptr @__clk_get_name(ptr noundef nonnull %118) #9
  br label %226

226:                                              ; preds = %224, %218, %212, %204, %201, %173, %120
  %227 = phi i32 [ %116, %120 ], [ %174, %173 ], [ %219, %224 ], [ %219, %218 ], [ %217, %212 ], [ %174, %204 ], [ %174, %201 ]
  %228 = phi i32 [ %115, %120 ], [ %175, %173 ], [ %175, %224 ], [ %175, %218 ], [ %175, %212 ], [ %175, %204 ], [ %175, %201 ]
  %229 = phi i32 [ %114, %120 ], [ %114, %173 ], [ %220, %224 ], [ %220, %218 ], [ %210, %212 ], [ %114, %204 ], [ %114, %201 ]
  %230 = phi ptr [ %112, %120 ], [ %176, %173 ], [ %225, %224 ], [ %176, %218 ], [ %176, %212 ], [ %176, %204 ], [ %176, %201 ]
  %231 = add nuw nsw i32 %113, 1
  %232 = icmp eq i32 %231, 4
  br i1 %232, label %233, label %111

233:                                              ; preds = %226, %111
  %234 = phi i32 [ %227, %226 ], [ %116, %111 ]
  %235 = phi i32 [ %228, %226 ], [ %115, %111 ]
  %236 = phi i32 [ %229, %226 ], [ %114, %111 ]
  %237 = phi ptr [ %230, %226 ], [ %112, %111 ]
  %238 = call i32 @of_property_read_variable_u32_array(ptr noundef %58, ptr noundef nonnull @.str.21, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #9
  %239 = load i32, ptr %3, align 4
  %240 = icmp eq i32 %239, 0
  %241 = load i32, ptr %2, align 8
  %242 = call ptr @clk_register_fixed_rate(ptr noundef %56, ptr noundef nonnull @.str.14, ptr noundef %237, i32 noundef 0, i32 noundef %241) #9
  %243 = icmp eq ptr %242, null
  %244 = icmp ugt ptr %242, inttoptr (i32 -4096 to ptr)
  %245 = or i1 %243, %244
  br i1 %240, label %247, label %246

246:                                              ; preds = %233
  br i1 %245, label %277, label %251

247:                                              ; preds = %233
  br i1 %245, label %277, label %248

248:                                              ; preds = %247
  %249 = getelementptr inbounds %struct.rsnd_adg, ptr %54, i32 0, i32 1
  store ptr %242, ptr %249, align 4
  %250 = call i32 @of_clk_add_provider(ptr noundef %58, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef nonnull %242) #9
  br label %297

251:                                              ; preds = %246
  %252 = getelementptr %struct.rsnd_adg, ptr %54, i32 0, i32 1, i32 0
  store ptr %242, ptr %252, align 4
  %253 = load i32, ptr %2, align 8
  %254 = call ptr @clk_register_fixed_rate(ptr noundef %56, ptr noundef nonnull @.str.15, ptr noundef %237, i32 noundef 0, i32 noundef %253) #9
  %255 = icmp eq ptr %254, null
  %256 = icmp ugt ptr %254, inttoptr (i32 -4096 to ptr)
  %257 = or i1 %255, %256
  br i1 %257, label %277, label %258

258:                                              ; preds = %251
  %259 = getelementptr %struct.rsnd_adg, ptr %54, i32 0, i32 1, i32 1
  store ptr %254, ptr %259, align 4
  %260 = load i32, ptr %2, align 8
  %261 = call ptr @clk_register_fixed_rate(ptr noundef %56, ptr noundef nonnull @.str.16, ptr noundef %237, i32 noundef 0, i32 noundef %260) #9
  %262 = icmp eq ptr %261, null
  %263 = icmp ugt ptr %261, inttoptr (i32 -4096 to ptr)
  %264 = or i1 %262, %263
  br i1 %264, label %277, label %265

265:                                              ; preds = %258
  %266 = getelementptr %struct.rsnd_adg, ptr %54, i32 0, i32 1, i32 2
  store ptr %261, ptr %266, align 4
  %267 = load i32, ptr %2, align 8
  %268 = call ptr @clk_register_fixed_rate(ptr noundef %56, ptr noundef nonnull @.str.17, ptr noundef %237, i32 noundef 0, i32 noundef %267) #9
  %269 = icmp eq ptr %268, null
  %270 = icmp ugt ptr %268, inttoptr (i32 -4096 to ptr)
  %271 = or i1 %269, %270
  br i1 %271, label %277, label %272

272:                                              ; preds = %265
  %273 = getelementptr %struct.rsnd_adg, ptr %54, i32 0, i32 1, i32 3
  store ptr %268, ptr %273, align 4
  %274 = getelementptr inbounds %struct.rsnd_adg, ptr %54, i32 0, i32 3
  store ptr %252, ptr %274, align 4
  %275 = getelementptr inbounds %struct.rsnd_adg, ptr %54, i32 0, i32 3, i32 1
  store i32 4, ptr %275, align 4
  %276 = call i32 @of_clk_add_provider(ptr noundef %58, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %274) #9
  br label %297

277:                                              ; preds = %265, %258, %251, %247, %246
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.22) #10
  %278 = load ptr, ptr %13, align 4
  %279 = getelementptr %struct.rsnd_adg, ptr %278, i32 0, i32 1, i32 0
  %280 = load ptr, ptr %279, align 4
  %281 = icmp eq ptr %280, null
  br i1 %281, label %295, label %282

282:                                              ; preds = %277
  call void @clk_unregister_fixed_rate(ptr noundef nonnull %280) #9
  %283 = getelementptr %struct.rsnd_adg, ptr %278, i32 0, i32 1, i32 1
  %284 = load ptr, ptr %283, align 4
  %285 = icmp eq ptr %284, null
  br i1 %285, label %295, label %286

286:                                              ; preds = %282
  call void @clk_unregister_fixed_rate(ptr noundef nonnull %284) #9
  %287 = getelementptr %struct.rsnd_adg, ptr %278, i32 0, i32 1, i32 2
  %288 = load ptr, ptr %287, align 4
  %289 = icmp eq ptr %288, null
  br i1 %289, label %295, label %290

290:                                              ; preds = %286
  call void @clk_unregister_fixed_rate(ptr noundef nonnull %288) #9
  %291 = getelementptr %struct.rsnd_adg, ptr %278, i32 0, i32 1, i32 3
  %292 = load ptr, ptr %291, align 4
  %293 = icmp eq ptr %292, null
  br i1 %293, label %295, label %294

294:                                              ; preds = %290
  call void @clk_unregister_fixed_rate(ptr noundef nonnull %292) #9
  br label %295

295:                                              ; preds = %294, %290, %286, %282, %277, %65
  %296 = phi i32 [ -5, %294 ], [ -5, %290 ], [ -5, %286 ], [ -5, %282 ], [ -5, %277 ], [ -22, %65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  br label %304

297:                                              ; preds = %272, %248, %53
  %298 = phi i32 [ %234, %272 ], [ %234, %248 ], [ 0, %53 ]
  %299 = phi i32 [ %235, %272 ], [ %235, %248 ], [ 2, %53 ]
  %300 = phi i32 [ %236, %272 ], [ %236, %248 ], [ 2, %53 ]
  %301 = getelementptr inbounds %struct.rsnd_adg, ptr %54, i32 0, i32 7
  store i32 %298, ptr %301, align 4
  %302 = getelementptr inbounds %struct.rsnd_adg, ptr %54, i32 0, i32 8
  store i32 %299, ptr %302, align 4
  %303 = getelementptr inbounds %struct.rsnd_adg, ptr %54, i32 0, i32 9
  store i32 %300, ptr %303, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  call void @rsnd_adg_clk_control(ptr noundef %0, i32 noundef 1)
  call void @rsnd_adg_clk_dbg_info(ptr noundef %0, ptr noundef null)
  br label %304

304:                                              ; preds = %297, %295, %52, %47, %8, %1
  %305 = phi i32 [ 0, %297 ], [ -12, %1 ], [ %10, %8 ], [ %296, %295 ], [ -5, %47 ], [ -5, %52 ]
  ret i32 %305
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rsnd_adg_remove(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.rsnd_adg, ptr %6, i32 0, i32 1, i32 0
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %1
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %8) #9
  %11 = getelementptr %struct.rsnd_adg, ptr %6, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %12) #9
  %15 = getelementptr %struct.rsnd_adg, ptr %6, i32 0, i32 1, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %16) #9
  %19 = getelementptr %struct.rsnd_adg, ptr %6, i32 0, i32 1, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %20) #9
  br label %23

23:                                               ; preds = %22, %18, %14, %10, %1
  tail call void @of_clk_del_provider(ptr noundef %4) #9
  tail call void @rsnd_adg_clk_control(ptr noundef %0, i32 noundef 0)
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr inbounds %struct.rsnd_adg, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %26) #9
  br label %29

29:                                               ; preds = %28, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rsnd_ssi_is_pin_sharing(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_fixed_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
