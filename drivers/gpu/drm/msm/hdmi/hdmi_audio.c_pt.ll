; ModuleID = '/llk/IR/drivers/gpu/drm/msm/hdmi/hdmi_audio.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/hdmi/hdmi_audio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hdmi_msm_audio_arcs = type { i32, [7 x %struct.hdmi_msm_audio_acr] }
%struct.hdmi_msm_audio_acr = type { i32, i32 }
%struct.hdmi = type { ptr, ptr, ptr, ptr, %struct.hdmi_audio, i8, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.spinlock }
%struct.hdmi_audio = type { i8, %struct.hdmi_audio_infoframe, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }

@.str = private unnamed_addr constant [108 x i8] c"audio: enabled=%d, channels=%d, channel_allocation=0x%x, level_shift_value=%d, downmix_inhibit=%d, rate=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"video: power_on=%d, pixclock=%lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"disabling audio: no video\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"disabling audio: unsupported pixclock: %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"n=%u, cts=%u, multiplier=%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"audio %sabled\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@nchannels = internal unnamed_addr constant [4 x i32] [i32 2, i32 4, i32 6, i32 8], align 4
@acr_lut = internal unnamed_addr constant [5 x %struct.hdmi_msm_audio_arcs] [%struct.hdmi_msm_audio_arcs { i32 25200000, [7 x %struct.hdmi_msm_audio_acr] [%struct.hdmi_msm_audio_acr { i32 4096, i32 25200 }, %struct.hdmi_msm_audio_acr { i32 6272, i32 28000 }, %struct.hdmi_msm_audio_acr { i32 6144, i32 25200 }, %struct.hdmi_msm_audio_acr { i32 12544, i32 28000 }, %struct.hdmi_msm_audio_acr { i32 12288, i32 25200 }, %struct.hdmi_msm_audio_acr { i32 25088, i32 28000 }, %struct.hdmi_msm_audio_acr { i32 24576, i32 25200 }] }, %struct.hdmi_msm_audio_arcs { i32 27000000, [7 x %struct.hdmi_msm_audio_acr] [%struct.hdmi_msm_audio_acr { i32 4096, i32 27000 }, %struct.hdmi_msm_audio_acr { i32 6272, i32 30000 }, %struct.hdmi_msm_audio_acr { i32 6144, i32 27000 }, %struct.hdmi_msm_audio_acr { i32 12544, i32 30000 }, %struct.hdmi_msm_audio_acr { i32 12288, i32 27000 }, %struct.hdmi_msm_audio_acr { i32 25088, i32 30000 }, %struct.hdmi_msm_audio_acr { i32 24576, i32 27000 }] }, %struct.hdmi_msm_audio_arcs { i32 27030000, [7 x %struct.hdmi_msm_audio_acr] [%struct.hdmi_msm_audio_acr { i32 4096, i32 27027 }, %struct.hdmi_msm_audio_acr { i32 6272, i32 30030 }, %struct.hdmi_msm_audio_acr { i32 6144, i32 27027 }, %struct.hdmi_msm_audio_acr { i32 12544, i32 30030 }, %struct.hdmi_msm_audio_acr { i32 12288, i32 27027 }, %struct.hdmi_msm_audio_acr { i32 25088, i32 30030 }, %struct.hdmi_msm_audio_acr { i32 24576, i32 27027 }] }, %struct.hdmi_msm_audio_arcs { i32 74250000, [7 x %struct.hdmi_msm_audio_acr] [%struct.hdmi_msm_audio_acr { i32 4096, i32 74250 }, %struct.hdmi_msm_audio_acr { i32 6272, i32 82500 }, %struct.hdmi_msm_audio_acr { i32 6144, i32 74250 }, %struct.hdmi_msm_audio_acr { i32 12544, i32 82500 }, %struct.hdmi_msm_audio_acr { i32 12288, i32 74250 }, %struct.hdmi_msm_audio_acr { i32 25088, i32 82500 }, %struct.hdmi_msm_audio_acr { i32 24576, i32 74250 }] }, %struct.hdmi_msm_audio_arcs { i32 148500000, [7 x %struct.hdmi_msm_audio_acr] [%struct.hdmi_msm_audio_acr { i32 4096, i32 148500 }, %struct.hdmi_msm_audio_acr { i32 6272, i32 165000 }, %struct.hdmi_msm_audio_acr { i32 6144, i32 148500 }, %struct.hdmi_msm_audio_acr { i32 12544, i32 165000 }, %struct.hdmi_msm_audio_acr { i32 12288, i32 148500 }, %struct.hdmi_msm_audio_acr { i32 25088, i32 165000 }, %struct.hdmi_msm_audio_acr { i32 24576, i32 148500 }] }], align 4
@switch.table.msm_hdmi_audio_update = private unnamed_addr constant [6 x i32] [i32 2, i32 3, i32 2, i32 3, i32 2, i32 3], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_hdmi_audio_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [14 x i8], align 1
  %3 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 4, i32 1
  %5 = load i8, ptr %3, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  %7 = zext i8 %5 to i32
  %8 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 4, i32 1, i32 3
  %9 = load i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 4, i32 1, i32 8
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 4, i32 1, i32 9
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 4, i32 1, i32 10
  %18 = load i8, ptr %17, align 2, !range !8
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 4, i32 2
  %21 = load i32, ptr %20, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %7, i32 noundef %10, i32 noundef %13, i32 noundef %16, i32 noundef %19, i32 noundef %21) #4
  %22 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 5
  %23 = load i8, ptr %22, align 4, !range !8
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef %24, i32 noundef %26) #4
  br i1 %6, label %38, label %27

27:                                               ; preds = %1
  %28 = load i8, ptr %22, align 4, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %25, align 4
  switch i32 %31, label %37 [
    i32 0, label %32
    i32 25200000, label %38
    i32 27000000, label %33
    i32 27030000, label %34
    i32 74250000, label %35
    i32 148500000, label %36
  ]

32:                                               ; preds = %30, %27
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2) #4
  br label %38

33:                                               ; preds = %30
  br label %38

34:                                               ; preds = %30
  br label %38

35:                                               ; preds = %30
  br label %38

36:                                               ; preds = %30
  br label %38

37:                                               ; preds = %30
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef %31) #4
  br label %38

38:                                               ; preds = %37, %36, %35, %34, %33, %32, %30, %1
  %39 = phi ptr [ null, %37 ], [ null, %32 ], [ getelementptr inbounds ([5 x %struct.hdmi_msm_audio_arcs], ptr @acr_lut, i32 0, i32 4), %36 ], [ getelementptr inbounds ([5 x %struct.hdmi_msm_audio_arcs], ptr @acr_lut, i32 0, i32 3), %35 ], [ getelementptr inbounds ([5 x %struct.hdmi_msm_audio_arcs], ptr @acr_lut, i32 0, i32 2), %34 ], [ getelementptr inbounds ([5 x %struct.hdmi_msm_audio_arcs], ptr @acr_lut, i32 0, i32 1), %33 ], [ null, %1 ], [ @acr_lut, %30 ]
  %40 = phi i1 [ false, %37 ], [ false, %32 ], [ true, %36 ], [ true, %35 ], [ true, %34 ], [ true, %33 ], [ false, %1 ], [ true, %30 ]
  %41 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 7
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 36
  %44 = tail call i32 @msm_readl(ptr noundef %43) #4
  %45 = load ptr, ptr %41, align 4
  %46 = getelementptr i8, ptr %45, i32 40
  %47 = tail call i32 @msm_readl(ptr noundef %46) #4
  %48 = load ptr, ptr %41, align 4
  %49 = getelementptr i8, ptr %48, i32 32
  %50 = tail call i32 @msm_readl(ptr noundef %49) #4
  %51 = load ptr, ptr %41, align 4
  %52 = getelementptr i8, ptr %51, i32 44
  %53 = tail call i32 @msm_readl(ptr noundef %52) #4
  %54 = load ptr, ptr %41, align 4
  %55 = getelementptr i8, ptr %54, i32 464
  %56 = tail call i32 @msm_readl(ptr noundef %55) #4
  %57 = and i32 %44, 2147483340
  br i1 %40, label %58, label %135

58:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %2) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %2, i8 0, i32 14, i1 false), !annotation !9
  %59 = load i32, ptr %20, align 4
  %60 = getelementptr %struct.hdmi_msm_audio_arcs, ptr %39, i32 0, i32 1, i32 %59
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr %struct.hdmi_msm_audio_arcs, ptr %39, i32 0, i32 1, i32 %59, i32 1
  %63 = load i32, ptr %62, align 4
  switch i32 %59, label %68 [
    i32 6, label %64
    i32 5, label %64
    i32 4, label %66
    i32 3, label %66
  ]

64:                                               ; preds = %58, %58
  %65 = lshr i32 %61, 2
  br label %68

66:                                               ; preds = %58, %58
  %67 = lshr i32 %61, 1
  br label %68

68:                                               ; preds = %66, %64, %58
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ], [ %61, %58 ]
  %70 = phi i32 [ 4, %64 ], [ 2, %66 ], [ 1, %58 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef %69, i32 noundef %63, i32 noundef %70) #4
  %71 = shl nuw nsw i32 %70, 16
  %72 = or i32 %57, %71
  %73 = load i32, ptr %20, align 4
  %74 = add i32 %73, -1
  %75 = icmp ult i32 %74, 6
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = getelementptr inbounds [6 x i32], ptr @switch.table.msm_hdmi_audio_update, i32 0, i32 %74
  %78 = load i32, ptr %77, align 4
  br label %79

79:                                               ; preds = %76, %68
  %80 = phi i32 [ %78, %76 ], [ 1, %68 ]
  %81 = shl nuw nsw i32 %80, 4
  %82 = or i32 %81, %72
  %83 = shl nuw nsw i32 %80, 3
  %84 = add nuw nsw i32 %83, 188
  %85 = shl i32 %63, 12
  %86 = load ptr, ptr %41, align 4
  %87 = getelementptr i8, ptr %86, i32 %84
  tail call void @msm_writel(i32 noundef %85, ptr noundef %87) #4
  %88 = or i32 %83, 192
  %89 = load ptr, ptr %41, align 4
  %90 = getelementptr i8, ptr %89, i32 %88
  tail call void @msm_writel(i32 noundef %69, ptr noundef %90) #4
  %91 = load i8, ptr %8, align 2
  %92 = icmp eq i8 %91, 2
  %93 = select i1 %92, i32 1, i32 3
  %94 = load ptr, ptr %41, align 4
  %95 = getelementptr i8, ptr %94, i32 68
  tail call void @msm_writel(i32 noundef %93, ptr noundef %95) #4
  %96 = or i32 %82, -2147483389
  %97 = call i32 @hdmi_audio_infoframe_pack(ptr noundef %4, ptr noundef nonnull %2, i32 noundef 14) #4
  %98 = getelementptr inbounds [14 x i8], ptr %2, i32 0, i32 3
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = getelementptr inbounds [14 x i8], ptr %2, i32 0, i32 4
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = shl nuw nsw i32 %103, 8
  %105 = or i32 %104, %100
  %106 = getelementptr inbounds [14 x i8], ptr %2, i32 0, i32 5
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i32
  %109 = shl nuw nsw i32 %108, 16
  %110 = or i32 %105, %109
  %111 = getelementptr inbounds [14 x i8], ptr %2, i32 0, i32 6
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  %114 = shl nuw i32 %113, 24
  %115 = or i32 %110, %114
  %116 = load ptr, ptr %41, align 4
  %117 = getelementptr i8, ptr %116, i32 228
  call void @msm_writel(i32 noundef %115, ptr noundef %117) #4
  %118 = getelementptr inbounds [14 x i8], ptr %2, i32 0, i32 7
  %119 = load i8, ptr %118, align 1
  %120 = zext i8 %119 to i32
  %121 = getelementptr inbounds [14 x i8], ptr %2, i32 0, i32 8
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i32
  %124 = shl nuw nsw i32 %123, 8
  %125 = or i32 %124, %120
  %126 = load ptr, ptr %41, align 4
  %127 = getelementptr i8, ptr %126, i32 232
  call void @msm_writel(i32 noundef %125, ptr noundef %127) #4
  %128 = load ptr, ptr %41, align 4
  %129 = getelementptr i8, ptr %128, i32 64
  call void @msm_writel(i32 noundef 0, ptr noundef %129) #4
  %130 = or i32 %47, 48
  %131 = or i32 %50, 1
  %132 = or i32 %53, 240
  %133 = and i32 %56, -242
  %134 = or i32 %133, 65
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %2) #4
  br label %141

135:                                              ; preds = %38
  %136 = and i32 %44, -52
  %137 = and i32 %47, -49
  %138 = and i32 %50, -2
  %139 = and i32 %53, -241
  %140 = and i32 %56, -2
  br label %141

141:                                              ; preds = %135, %79
  %142 = phi ptr [ @.str.7, %135 ], [ @.str.6, %79 ]
  %143 = phi i32 [ 0, %135 ], [ 4, %79 ]
  %144 = phi i32 [ %136, %135 ], [ %96, %79 ]
  %145 = phi i32 [ %137, %135 ], [ %130, %79 ]
  %146 = phi i32 [ %138, %135 ], [ %131, %79 ]
  %147 = phi i32 [ %139, %135 ], [ %132, %79 ]
  %148 = phi i32 [ %140, %135 ], [ %134, %79 ]
  %149 = load ptr, ptr %41, align 4
  %150 = getelementptr i8, ptr %149, i32 36
  call void @msm_writel(i32 noundef %144, ptr noundef %150) #4
  %151 = load ptr, ptr %41, align 4
  %152 = getelementptr i8, ptr %151, i32 40
  call void @msm_writel(i32 noundef %145, ptr noundef %152) #4
  %153 = load ptr, ptr %41, align 4
  %154 = getelementptr i8, ptr %153, i32 32
  call void @msm_writel(i32 noundef %146, ptr noundef %154) #4
  %155 = load ptr, ptr %41, align 4
  %156 = getelementptr i8, ptr %155, i32 44
  call void @msm_writel(i32 noundef %147, ptr noundef %156) #4
  %157 = zext i1 %40 to i32
  %158 = or i32 %143, %157
  %159 = load ptr, ptr %41, align 4
  %160 = getelementptr i8, ptr %159, i32 716
  call void @msm_writel(i32 noundef %158, ptr noundef %160) #4
  %161 = load ptr, ptr %41, align 4
  %162 = getelementptr i8, ptr %161, i32 464
  call void @msm_writel(i32 noundef %148, ptr noundef %162) #4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, ptr noundef nonnull %142) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_hdmi_audio_info_setup(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = zext i1 %1 to i8
  %8 = zext i1 %5 to i8
  %9 = icmp eq ptr %0, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %6
  %11 = icmp ugt i32 %2, 3
  br i1 %11, label %24, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 4
  store i8 %7, ptr %13, align 4
  %14 = getelementptr [4 x i32], ptr @nchannels, i32 0, i32 %2
  %15 = load i32, ptr %14, align 4
  %16 = trunc i32 %15 to i8
  %17 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 4, i32 1, i32 3
  store i8 %16, ptr %17, align 2
  %18 = trunc i32 %3 to i8
  %19 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 4, i32 1, i32 8
  store i8 %18, ptr %19, align 4
  %20 = trunc i32 %4 to i8
  %21 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 4, i32 1, i32 9
  store i8 %20, ptr %21, align 1
  %22 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 4, i32 1, i32 10
  store i8 %8, ptr %22, align 2
  %23 = tail call i32 @msm_hdmi_audio_update(ptr noundef nonnull %0)
  br label %24

24:                                               ; preds = %12, %10, %6
  %25 = phi i32 [ 0, %12 ], [ -6, %6 ], [ -22, %10 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_hdmi_audio_set_sample_rate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt i32 %1, 6
  %5 = or i1 %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 4, i32 2
  store i32 %1, ptr %7, align 4
  %8 = tail call i32 @msm_hdmi_audio_update(ptr noundef nonnull %0)
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
