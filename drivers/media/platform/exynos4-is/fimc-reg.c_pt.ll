; ModuleID = '/llk/IR/drivers/media/platform/exynos4-is/fimc-reg.c_pt.bc'
source_filename = "../drivers/media/platform/exynos4-is/fimc-reg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mbus_pixfmt_desc = type { i32, i32, i16 }
%struct.fimc_dev = type { %struct.spinlock, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, [2 x ptr], ptr, %struct.wait_queue_head, ptr, %struct.fimc_m2m_device, %struct.fimc_vid_cap, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fimc_m2m_device = type { %struct.video_device, ptr, ptr, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.fimc_vid_cap = type { ptr, %struct.v4l2_subdev, %struct.exynos_video_entity, %struct.media_pad, [3 x %struct.media_pad], %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt, %struct.fimc_source_info, %struct.list_head, %struct.list_head, %struct.vb2_queue, i32, i32, i32, i32, i8, i32, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.exynos_video_entity = type { %struct.video_device, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.77, i16, i16, i16, [10 x i16] }
%union.anon.77 = type { i16 }
%struct.fimc_source_info = type { i32, i32, i16, i16 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.fimc_drvdata = type { [4 x ptr], i32, i32, i8, i8, i8, i8 }
%struct.fimc_ctx = type { %struct.fimc_frame, %struct.fimc_frame, i32, i32, i32, i32, i32, i32, %struct.fimc_scaler, %struct.fimc_effect, i32, i8, i32, i32, ptr, %struct.v4l2_fh, %struct.fimc_ctrls }
%struct.fimc_frame = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], %struct.fimc_addr, %struct.fimc_dma_offset, ptr, i8 }
%struct.fimc_addr = type { i32, i32, i32 }
%struct.fimc_dma_offset = type { i32, i32, i32, i32, i32, i32 }
%struct.fimc_scaler = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fimc_effect = type { i32, i8, i8 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.fimc_ctrls = type { %struct.v4l2_ctrl_handler, %struct.anon.81, ptr, ptr, ptr, ptr, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.81 = type { ptr, ptr }
%struct.fimc_fmt = type { i32, i32, i32, i16, i16, i8, [3 x i8], i16, i16 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pix_desc = internal unnamed_addr constant [4 x %struct.mbus_pixfmt_desc] [%struct.mbus_pixfmt_desc { i32 8200, i32 0, i16 8 }, %struct.mbus_pixfmt_desc { i32 8201, i32 16384, i16 8 }, %struct.mbus_pixfmt_desc { i32 8199, i32 49152, i16 8 }, %struct.mbus_pixfmt_desc { i32 8198, i32 32768, i16 8 }], align 4
@.str = private unnamed_addr constant [45 x i8] c"\013%s: Camera color format not supported: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"\013%s: Not supported camera pixel format: %#x\0A\00", align 1
@fimc_hw_set_camera_type.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"drivers/media/platform/exynos4-is/fimc-reg.c\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"ISP Writeback input is not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"\013%s: Invalid FIMC bus type selected: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"not supported id: %d\0A\00", align 1
@switch.table.fimc_hw_set_camera_source = private unnamed_addr constant [4 x i32] [i32 3, i32 2, i32 0, i32 1], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_hw_reset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %5 = or i32 %4, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %6 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #5, !srcloc !11
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %10 = or i32 %9, -2146435072
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #5, !srcloc !11
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #5
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr i8, ptr %14, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %17 = and i32 %16, 2147483647
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #5, !srcloc !11
  %20 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 6
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.fimc_drvdata, ptr %21, i32 0, i32 6
  %23 = load i8, ptr %22, align 1
  %24 = icmp ugt i8 %23, 4
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr i8, ptr %26, i32 508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 15) #5, !srcloc !11
  br label %28

28:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_hw_set_rotation(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 72
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %8 = and i32 %7, 2147426303
  %9 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %11 [
    i32 90, label %14
    i32 270, label %14
  ]

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  br label %20

14:                                               ; preds = %1, %1
  %15 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %37, label %18

18:                                               ; preds = %14
  %19 = or i32 %8, 8192
  br label %20

20:                                               ; preds = %18, %11
  %21 = phi i32 [ %16, %18 ], [ %13, %11 ]
  %22 = phi i32 [ %19, %18 ], [ %8, %11 ]
  %23 = icmp eq i32 %21, 2
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 11
  %26 = load i8, ptr %25, align 4
  %27 = zext i8 %26 to i16
  %28 = tail call i16 @llvm.bitreverse.i16(i16 %27) #5
  %29 = and i16 %28, -16384
  %30 = zext i16 %29 to i32
  %31 = icmp slt i32 %10, 91
  %32 = xor i32 %30, 49152
  %33 = select i1 %31, i32 %30, i32 %32
  %34 = or i32 %33, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr i8, ptr %35, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #5, !srcloc !11
  br label %57

37:                                               ; preds = %20, %14
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr i8, ptr %38, i32 252
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  %41 = and i32 %40, -24577
  %42 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 11
  %43 = load i8, ptr %42, align 4
  %44 = and i8 %43, 1
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 14
  %47 = and i8 %43, 2
  %48 = icmp eq i8 %47, 0
  %49 = select i1 %48, i32 %46, i32 8192
  %50 = load i32, ptr %9, align 4
  %51 = icmp slt i32 %50, 91
  %52 = xor i32 %49, 24576
  %53 = select i1 %51, i32 %49, i32 %52
  %54 = or i32 %53, %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %55 = load ptr, ptr %4, align 8
  %56 = getelementptr i8, ptr %55, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #5, !srcloc !11
  br label %57

57:                                               ; preds = %37, %24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_hw_set_target_format(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 72
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !21
  %8 = and i32 %7, -1878986752
  %9 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.fimc_fmt, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %23 [
    i32 16, label %13
    i32 17, label %13
    i32 18, label %13
    i32 19, label %13
    i32 20, label %13
    i32 36, label %15
    i32 33, label %15
    i32 34, label %15
    i32 35, label %15
  ]

13:                                               ; preds = %1, %1, %1, %1, %1
  %14 = or i32 %8, 1610612736
  br label %23

15:                                               ; preds = %1, %1, %1, %1
  %16 = getelementptr inbounds %struct.fimc_fmt, ptr %10, i32 0, i32 4
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = or i32 %8, 1073741824
  br label %23

21:                                               ; preds = %15
  %22 = or i32 %8, 536870912
  br label %23

23:                                               ; preds = %21, %19, %13, %1
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ], [ %14, %13 ], [ %8, %1 ]
  %25 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %30 [
    i32 90, label %27
    i32 270, label %27
  ]

27:                                               ; preds = %23, %23
  %28 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 7
  %29 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 6
  br label %33

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 6
  %32 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 7
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi ptr [ %29, %27 ], [ %32, %30 ]
  %35 = phi ptr [ %28, %27 ], [ %31, %30 ]
  %36 = load i32, ptr %35, align 4
  %37 = shl i32 %36, 16
  %38 = load i32, ptr %34, align 4
  %39 = or i32 %37, %38
  %40 = or i32 %39, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %41 = load ptr, ptr %4, align 8
  %42 = getelementptr i8, ptr %41, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #5, !srcloc !11
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr i8, ptr %43, i32 92
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !23
  %46 = and i32 %45, -268435456
  %47 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 7
  %50 = load i32, ptr %49, align 4
  %51 = mul i32 %50, %48
  %52 = or i32 %51, %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %53 = load ptr, ptr %4, align 8
  %54 = getelementptr i8, ptr %53, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #5, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_hw_set_out_dma(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 11
  %5 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 11, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 16
  %10 = load i32, ptr %4, align 4
  %11 = or i32 %9, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %12 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 9
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %13, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #5, !srcloc !11
  %15 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 11, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = shl i32 %16, 16
  %18 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 11, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %17, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %21 = load ptr, ptr %12, align 8
  %22 = getelementptr i8, ptr %21, i32 364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #5, !srcloc !11
  %23 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 11, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = shl i32 %24, 16
  %26 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 11, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %25, %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %29 = load ptr, ptr %12, align 8
  %30 = getelementptr i8, ptr %29, i32 368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #5, !srcloc !11
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1
  %33 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 %34, 16
  %36 = load i32, ptr %32, align 4
  %37 = or i32 %35, %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %38 = getelementptr inbounds %struct.fimc_dev, ptr %31, i32 0, i32 9
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr i8, ptr %39, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %37) #5, !srcloc !11
  %41 = load ptr, ptr %38, align 8
  %42 = getelementptr i8, ptr %41, i32 8
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !29
  %44 = load i32, ptr %32, align 4
  %45 = icmp ugt i32 %44, 1279
  %46 = and i32 %43, -33
  %47 = select i1 %45, i32 32, i32 0
  %48 = or i32 %47, %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %49 = load ptr, ptr %38, align 8
  %50 = getelementptr i8, ptr %49, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #5, !srcloc !11
  %51 = load ptr, ptr %12, align 8
  %52 = getelementptr i8, ptr %51, i32 76
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !31
  %54 = and i32 %53, -50528268
  %55 = getelementptr inbounds %struct.fimc_fmt, ptr %6, i32 0, i32 4
  %56 = load i16, ptr %55, align 2
  switch i16 %56, label %66 [
    i16 1, label %57
    i16 2, label %61
  ]

57:                                               ; preds = %1
  %58 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = or i32 %59, %54
  br label %66

61:                                               ; preds = %1
  %62 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = or i32 %54, %63
  %65 = or i32 %64, 8
  br label %66

66:                                               ; preds = %61, %57, %1
  %67 = phi i32 [ %60, %57 ], [ %65, %61 ], [ %54, %1 ]
  %68 = getelementptr inbounds %struct.fimc_fmt, ptr %6, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  switch i32 %69, label %74 [
    i32 16, label %72
    i32 17, label %70
  ]

70:                                               ; preds = %66
  %71 = or i32 %67, 65536
  br label %74

72:                                               ; preds = %66
  %73 = or i32 %67, 131072
  br label %74

74:                                               ; preds = %72, %70, %66
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ], [ %67, %66 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %76 = load ptr, ptr %12, align 8
  %77 = getelementptr i8, ptr %76, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #5, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_hw_en_lastirq(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 76
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !33
  %7 = icmp eq i32 %1, 0
  %8 = and i32 %6, -5
  %9 = select i1 %7, i32 0, i32 4
  %10 = or i32 %8, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr i8, ptr %11, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #5, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_hw_set_prescaler(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 8, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 8, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %5
  %9 = mul i32 %8, -268435456
  %10 = add i32 %9, -1610612736
  %11 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 8, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %12, 16
  %14 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 8, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %13, %15
  %17 = or i32 %16, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %18 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 9
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %17) #5, !srcloc !11
  %21 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 8, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = shl i32 %22, 16
  %24 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 8, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %23, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %27 = load ptr, ptr %18, align 8
  %28 = getelementptr i8, ptr %27, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #5, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_hw_set_mainscaler(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 8
  %7 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 9
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 88
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !37
  %11 = and i32 %10, 100631039
  %12 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  %16 = or i32 %11, 402653184
  %17 = select i1 %15, i32 %16, i32 %11
  %18 = load i8, ptr %6, align 4
  %19 = and i8 %18, 8
  %20 = icmp eq i8 %19, 0
  %21 = or i32 %17, -2147483648
  %22 = select i1 %20, i32 %21, i32 %17
  %23 = and i8 %18, 1
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 30
  %26 = or i32 %22, %25
  %27 = and i8 %18, 2
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 28
  %30 = or i32 %26, %29
  %31 = and i8 %18, 4
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 7
  %34 = or i32 %30, %33
  %35 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %47

38:                                               ; preds = %1
  %39 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 12
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.fimc_fmt, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  switch i32 %42, label %47 [
    i32 20, label %45
    i32 19, label %43
  ]

43:                                               ; preds = %38
  %44 = or i32 %34, 8192
  br label %47

45:                                               ; preds = %38
  %46 = or i32 %34, 16384
  br label %47

47:                                               ; preds = %45, %43, %38, %1
  %48 = phi i32 [ %46, %45 ], [ %44, %43 ], [ %34, %1 ], [ %34, %38 ]
  %49 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 7
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 12
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.fimc_fmt, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, -16
  %58 = icmp ult i32 %57, 3
  br i1 %58, label %69, label %59

59:                                               ; preds = %52
  switch i32 %56, label %69 [
    i32 19, label %60
    i32 20, label %62
  ]

60:                                               ; preds = %59
  %61 = or i32 %48, 2048
  br label %69

62:                                               ; preds = %59
  %63 = or i32 %48, 4096
  br label %69

64:                                               ; preds = %47
  %65 = and i32 %13, 4
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, i32 4096, i32 33558528
  %68 = or i32 %48, %67
  br label %69

69:                                               ; preds = %64, %62, %60, %59, %52
  %70 = phi i32 [ %61, %60 ], [ %63, %62 ], [ %48, %52 ], [ %48, %59 ], [ %68, %64 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %71 = load ptr, ptr %7, align 8
  %72 = getelementptr i8, ptr %71, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #5, !srcloc !11
  %73 = load ptr, ptr %7, align 8
  %74 = getelementptr i8, ptr %73, i32 88
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !39
  %76 = and i32 %75, -33489408
  %77 = load i8, ptr %5, align 4
  %78 = and i8 %77, 4
  %79 = icmp eq i8 %78, 0
  %80 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 8, i32 7
  %81 = load i32, ptr %80, align 4
  br i1 %79, label %105, label %82

82:                                               ; preds = %69
  %83 = shl i32 %81, 10
  %84 = and i32 %83, -65536
  %85 = or i32 %84, %76
  %86 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 8, i32 8
  %87 = load i32, ptr %86, align 4
  %88 = lshr i32 %87, 6
  %89 = or i32 %85, %88
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %90 = load ptr, ptr %7, align 8
  %91 = getelementptr i8, ptr %90, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #5, !srcloc !11
  %92 = load ptr, ptr %7, align 8
  %93 = getelementptr i8, ptr %92, i32 392
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !41
  %95 = and i32 %94, -64576
  %96 = load i32, ptr %80, align 4
  %97 = shl i32 %96, 10
  %98 = and i32 %97, 64512
  %99 = or i32 %98, %95
  %100 = load i32, ptr %86, align 4
  %101 = and i32 %100, 63
  %102 = or i32 %99, %101
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %103 = load ptr, ptr %7, align 8
  %104 = getelementptr i8, ptr %103, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #5, !srcloc !11
  br label %113

105:                                              ; preds = %69
  %106 = shl i32 %81, 16
  %107 = or i32 %106, %76
  %108 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 8, i32 8
  %109 = load i32, ptr %108, align 4
  %110 = or i32 %107, %109
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %111 = load ptr, ptr %7, align 8
  %112 = getelementptr i8, ptr %111, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %110) #5, !srcloc !11
  br label %113

113:                                              ; preds = %105, %82
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_hw_enable_capture(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 192
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !44
  %8 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 8
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 8
  %11 = icmp eq i8 %10, 0
  %12 = or i32 %7, 1107296256
  %13 = and i32 %7, 1073741824
  %14 = select i1 %11, i32 %13, i32 %12
  %15 = or i32 %14, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr i8, ptr %16, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #5, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_hw_disable_capture(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 192
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !46
  %6 = and i32 %5, 1073741823
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #5, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_hw_set_effect(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = or i32 %5, 1610612736
  %9 = icmp eq i32 %5, 67108864
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 9, i32 1
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 13
  %15 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 9, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %8, %17
  %19 = or i32 %18, %14
  br label %20

20:                                               ; preds = %10, %7, %1
  %21 = phi i32 [ %19, %10 ], [ %8, %7 ], [ 0, %1 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %22 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 9
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr i8, ptr %23, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %21) #5, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_hw_set_rgb_alpha(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fimc_fmt, ptr %3, i32 0, i32 8
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, 8
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.fimc_dev, ptr %10, i32 0, i32 9
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr i8, ptr %12, i32 76
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !49
  %15 = and i32 %14, -4081
  %16 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 13
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 4
  %20 = or i32 %19, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %21 = load ptr, ptr %11, align 8
  %22 = getelementptr i8, ptr %21, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #5, !srcloc !11
  br label %23

23:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_hw_set_in_dma(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 11
  %5 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 11, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = shl i32 %6, 16
  %8 = load i32, ptr %4, align 4
  %9 = or i32 %7, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %10 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 9
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr i8, ptr %11, i32 372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %9) #5, !srcloc !11
  %13 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 11, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %14, 16
  %16 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 11, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %15, %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %19 = load ptr, ptr %10, align 8
  %20 = getelementptr i8, ptr %19, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #5, !srcloc !11
  %21 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 11, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = shl i32 %22, 16
  %24 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 11, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %23, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %27 = load ptr, ptr %10, align 8
  %28 = getelementptr i8, ptr %27, i32 380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #5, !srcloc !11
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 3
  %33 = select i1 %32, i32 -2147483648, i32 0
  %34 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = shl i32 %35, 16
  %37 = load i32, ptr %0, align 4
  %38 = or i32 %36, %37
  %39 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 7
  %40 = load i32, ptr %39, align 4
  %41 = shl i32 %40, 16
  %42 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %43, %33
  %45 = or i32 %44, %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %46 = getelementptr inbounds %struct.fimc_dev, ptr %29, i32 0, i32 9
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr i8, ptr %47, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %38) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %49 = load ptr, ptr %46, align 8
  %50 = getelementptr i8, ptr %49, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %45) #5, !srcloc !11
  %51 = load i32, ptr %30, align 4
  %52 = icmp eq i32 %51, 3
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr i8, ptr %53, i32 384
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !56
  %56 = and i32 %55, 2147483647
  %57 = select i1 %52, i32 -2147483648, i32 0
  %58 = or i32 %56, %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %59 = load ptr, ptr %10, align 8
  %60 = getelementptr i8, ptr %59, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #5, !srcloc !11
  %61 = load ptr, ptr %10, align 8
  %62 = getelementptr i8, ptr %61, i32 252
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !58
  %64 = and i32 %63, -251891775
  %65 = or i32 %64, 67112968
  %66 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 12
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.fimc_fmt, ptr %67, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  switch i32 %69, label %98 [
    i32 18, label %70
    i32 19, label %70
    i32 20, label %70
    i32 32, label %72
    i32 33, label %81
    i32 34, label %81
    i32 35, label %81
    i32 36, label %81
  ]

70:                                               ; preds = %1, %1, %1
  %71 = or i32 %64, 67112974
  br label %98

72:                                               ; preds = %1
  %73 = getelementptr inbounds %struct.fimc_fmt, ptr %67, i32 0, i32 4
  %74 = load i16, ptr %73, align 2
  %75 = icmp eq i16 %74, 2
  br i1 %75, label %76, label %98

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 5
  %78 = load i32, ptr %77, align 4
  %79 = or i32 %64, %78
  %80 = or i32 %79, 67145736
  br label %98

81:                                               ; preds = %1, %1, %1, %1
  %82 = getelementptr inbounds %struct.fimc_fmt, ptr %67, i32 0, i32 4
  %83 = load i16, ptr %82, align 2
  %84 = icmp eq i16 %83, 1
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 4
  %87 = load i32, ptr %86, align 4
  %88 = or i32 %64, %87
  %89 = or i32 %88, 67112972
  br label %98

90:                                               ; preds = %81
  %91 = or i32 %64, 67112970
  %92 = icmp eq i16 %83, 2
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 5
  %95 = load i32, ptr %94, align 4
  %96 = or i32 %64, %95
  %97 = or i32 %96, 67145738
  br label %98

98:                                               ; preds = %93, %90, %85, %76, %72, %70, %1
  %99 = phi i32 [ %65, %1 ], [ %89, %85 ], [ %97, %93 ], [ %80, %76 ], [ %71, %70 ], [ %65, %72 ], [ %91, %90 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %100 = load ptr, ptr %10, align 8
  %101 = getelementptr i8, ptr %100, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %99) #5, !srcloc !11
  %102 = load ptr, ptr %10, align 8
  %103 = getelementptr i8, ptr %102, i32 396
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !60
  %105 = and i32 %104, -1610637313
  %106 = load ptr, ptr %66, align 4
  %107 = getelementptr inbounds %struct.fimc_fmt, ptr %106, i32 0, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, 842091860
  %110 = or i32 %105, 1610612736
  %111 = select i1 %109, i32 %110, i32 %105
  %112 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 12
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.fimc_fmt, ptr %113, i32 0, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 842091860
  %117 = or i32 %111, 24576
  %118 = select i1 %116, i32 %117, i32 %111
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %119 = load ptr, ptr %10, align 8
  %120 = getelementptr i8, ptr %119, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %118) #5, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_hw_set_input_path(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 252
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !62
  %8 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  %11 = and i32 %7, -9
  %12 = select i1 %10, i32 8, i32 0
  %13 = or i32 %12, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr i8, ptr %14, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #5, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_hw_set_output_path(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 88
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !64
  %8 = and i32 %7, -67108865
  %9 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 3
  %12 = select i1 %11, i32 67108864, i32 0
  %13 = or i32 %12, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr i8, ptr %14, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #5, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_hw_set_input_addr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 248
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !66
  %7 = or i32 %6, 1073741824
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr i8, ptr %8, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %10 = load i32, ptr %1, align 4
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr i8, ptr %11, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %13 = getelementptr inbounds %struct.fimc_addr, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr i8, ptr %15, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %17 = getelementptr inbounds %struct.fimc_addr, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr i8, ptr %19, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #5, !srcloc !11
  %21 = and i32 %6, -1073741825
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr i8, ptr %22, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #5, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_hw_set_output_addr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, -1
  %5 = select i1 %4, i32 0, i32 %2
  %6 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 9
  %7 = getelementptr inbounds %struct.fimc_addr, ptr %1, i32 0, i32 1
  %8 = getelementptr inbounds %struct.fimc_addr, ptr %1, i32 0, i32 2
  br label %9

9:                                                ; preds = %9, %3
  %10 = phi i32 [ %5, %3 ], [ %24, %9 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %11 = load i32, ptr %1, align 4
  %12 = load ptr, ptr %6, align 8
  %13 = shl i32 %10, 2
  %14 = add i32 %13, 24
  %15 = getelementptr i8, ptr %12, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %11) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %16 = load i32, ptr %7, align 4
  %17 = load ptr, ptr %6, align 8
  %18 = add i32 %13, 40
  %19 = getelementptr i8, ptr %17, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %16) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %20 = load i32, ptr %8, align 4
  %21 = load ptr, ptr %6, align 8
  %22 = add i32 %13, 56
  %23 = getelementptr i8, ptr %21, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %20) #5, !srcloc !11
  %24 = add i32 %10, 1
  %25 = icmp slt i32 %24, 4
  %26 = select i1 %4, i1 %25, i1 false
  br i1 %26, label %9, label %27

27:                                               ; preds = %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fimc_hw_set_camera_polarity(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !75
  %7 = and i32 %6, -117440531
  %8 = getelementptr inbounds %struct.fimc_source_info, ptr %1, i32 0, i32 2
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 128
  %11 = zext i16 %10 to i32
  %12 = shl nuw nsw i32 %11, 19
  %13 = or i32 %12, %7
  %14 = and i16 %9, 32
  %15 = zext i16 %14 to i32
  %16 = shl nuw nsw i32 %15, 20
  %17 = or i32 %13, %16
  %18 = and i16 %9, 8
  %19 = icmp eq i16 %18, 0
  %20 = or i32 %17, 16777232
  %21 = select i1 %19, i32 %17, i32 %20
  %22 = lshr i16 %9, 10
  %23 = and i16 %22, 2
  %24 = zext i16 %23 to i32
  %25 = or i32 %21, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !76
  tail call void @arm_heavy_mb() #5
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #5, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fimc_hw_set_camera_source(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 8
  %5 = load i32, ptr %1, align 4
  switch i32 %5, label %42 [
    i32 1, label %6
    i32 2, label %6
    i32 3, label %34
  ]

6:                                                ; preds = %2, %2
  %7 = getelementptr inbounds %struct.fimc_frame, ptr %4, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fimc_fmt, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 384
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 5, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = add i32 %15, -8198
  %17 = icmp ult i32 %16, 4
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 2, i32 0, i32 12
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %19, i32 noundef %15) #6
  br label %53

21:                                               ; preds = %13
  %22 = getelementptr inbounds [4 x i32], ptr @switch.table.fimc_hw_set_camera_source, i32 0, i32 %16
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr [4 x %struct.mbus_pixfmt_desc], ptr @pix_desc, i32 0, i32 %23, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %5, 1
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = getelementptr [4 x %struct.mbus_pixfmt_desc], ptr @pix_desc, i32 0, i32 %23, i32 2
  %29 = load i16, ptr %28, align 4
  switch i16 %29, label %42 [
    i16 8, label %30
    i16 16, label %32
  ]

30:                                               ; preds = %27
  %31 = or i32 %25, -2147483648
  br label %42

32:                                               ; preds = %27
  %33 = or i32 %25, 536870912
  br label %42

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.fimc_frame, ptr %4, i32 0, i32 12
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.fimc_fmt, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 384
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 0, i32 -2147483648
  br label %42

42:                                               ; preds = %34, %32, %30, %27, %21, %6, %2
  %43 = phi i32 [ 0, %2 ], [ %31, %30 ], [ %33, %32 ], [ %25, %21 ], [ -2147483648, %6 ], [ %25, %27 ], [ %41, %34 ]
  %44 = getelementptr inbounds %struct.fimc_frame, ptr %4, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = shl i32 %45, 16
  %47 = getelementptr inbounds %struct.fimc_frame, ptr %4, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = or i32 %48, %43
  %50 = or i32 %49, %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %51 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 9
  %52 = load ptr, ptr %51, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #5, !srcloc !11
  br label %53

53:                                               ; preds = %42, %18
  %54 = phi i32 [ 0, %42 ], [ -22, %18 ]
  ret i32 %54
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_hw_set_camera_offset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !78
  %7 = and i32 %6, 2013327360
  %8 = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %9, 16
  %11 = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %7, %12
  %14 = or i32 %13, %10
  %15 = or i32 %14, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #5, !srcloc !11
  %18 = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %8, align 4
  %23 = add i32 %21, %22
  %24 = sub i32 %19, %23
  %25 = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %11, align 4
  %30 = add i32 %28, %29
  %31 = sub i32 %26, %30
  %32 = shl i32 %24, 16
  %33 = or i32 %31, %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr i8, ptr %34, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #5, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fimc_hw_set_camera_type(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !81
  %7 = and i32 %6, -939525577
  %8 = load i32, ptr %1, align 4
  switch i32 %8, label %52 [
    i32 3, label %9
    i32 1, label %27
    i32 2, label %27
    i32 4, label %38
    i32 5, label %40
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.fimc_source_info, ptr %1, i32 0, i32 3
  %11 = load i16, ptr %10, align 2
  %12 = icmp eq i16 %11, 0
  %13 = select i1 %12, i32 136, i32 8
  %14 = or i32 %13, %7
  %15 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 5, i32 2
  %16 = load i32, ptr %15, align 8
  switch i32 %16, label %19 [
    i32 8199, label %22
    i32 16385, label %17
    i32 20481, label %17
  ]

17:                                               ; preds = %9, %9
  %18 = or i32 %14, 256
  br label %22

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 2, i32 0, i32 12
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %20, i32 noundef %16) #6
  br label %59

22:                                               ; preds = %17, %9
  %23 = phi i32 [ 304, %17 ], [ 286, %9 ]
  %24 = phi i32 [ %18, %17 ], [ %14, %9 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr i8, ptr %25, i32 404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %23) #5, !srcloc !11
  br label %55

27:                                               ; preds = %2, %2
  %28 = getelementptr inbounds %struct.fimc_source_info, ptr %1, i32 0, i32 3
  %29 = load i16, ptr %28, align 2
  %30 = icmp eq i16 %29, 0
  %31 = or i32 %7, 536870912
  %32 = select i1 %30, i32 %31, i32 %7
  %33 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 5, i32 2
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %34, 16385
  %36 = or i32 %32, 256
  %37 = select i1 %35, i32 %36, i32 %32
  br label %55

38:                                               ; preds = %2
  %39 = or i32 %7, 64
  br label %40

40:                                               ; preds = %38, %2
  %41 = phi i32 [ %7, %2 ], [ %39, %38 ]
  %42 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = load i8, ptr %43, align 4
  %45 = and i8 %44, 16
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  %48 = or i32 %41, 64
  br label %55

49:                                               ; preds = %40
  %50 = load i1, ptr @fimc_hw_set_camera_type.__already_done, align 1
  br i1 %50, label %55, label %51, !prof !83

51:                                               ; preds = %49
  store i1 true, ptr @fimc_hw_set_camera_type.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 725, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %55

52:                                               ; preds = %2
  %53 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 2, i32 0, i32 12
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %53, i32 noundef %8) #6
  br label %59

55:                                               ; preds = %51, %49, %47, %27, %22
  %56 = phi i32 [ %48, %47 ], [ %24, %22 ], [ %41, %51 ], [ %41, %49 ], [ %37, %27 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !84
  tail call void @arm_heavy_mb() #5
  %57 = load ptr, ptr %3, align 8
  %58 = getelementptr i8, ptr %57, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #5, !srcloc !11
  br label %59

59:                                               ; preds = %55, %52, %19
  %60 = phi i32 [ -22, %52 ], [ 0, %55 ], [ -22, %19 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_hw_clear_irq(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !85
  %6 = or i32 %5, 524288
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !86
  tail call void @arm_heavy_mb() #5
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #5, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_hw_enable_scaler(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 88
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !87
  %7 = and i32 %6, -32769
  %8 = select i1 %1, i32 32768, i32 0
  %9 = or i32 %7, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr i8, ptr %10, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #5, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_hw_activate_input_dma(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 252
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !89
  %7 = and i32 %6, -2
  %8 = zext i1 %1 to i32
  %9 = or i32 %7, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !90
  tail call void @arm_heavy_mb() #5
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr i8, ptr %10, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #5, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fimc_hw_get_frame_index(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fimc_drvdata, ptr %3, i32 0, i32 3
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 8
  br i1 %6, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %8, i32 104
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !91
  %12 = and i32 %11, 63
  %13 = add nsw i32 %12, -1
  br label %19

14:                                               ; preds = %1
  %15 = getelementptr i8, ptr %8, i32 100
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !92
  %17 = lshr i32 %16, 26
  %18 = and i32 %17, 3
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i32 [ %13, %9 ], [ %18, %14 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fimc_hw_get_prev_frame_index(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fimc_drvdata, ptr %3, i32 0, i32 3
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 104
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !93
  %12 = lshr i32 %11, 7
  %13 = and i32 %12, 63
  %14 = add nsw i32 %13, -1
  br label %15

15:                                               ; preds = %7, %1
  %16 = phi i32 [ %14, %7 ], [ -1, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_activate_capture(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 8
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 8
  %7 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 9
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 88
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !87
  %11 = and i32 %10, -32769
  %12 = zext i8 %6 to i32
  %13 = shl nuw nsw i32 %12, 12
  %14 = or i32 %11, %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %15 = load ptr, ptr %7, align 8
  %16 = getelementptr i8, ptr %15, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #5, !srcloc !11
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds %struct.fimc_dev, ptr %17, i32 0, i32 9
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i32 192
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !44
  %22 = load i8, ptr %4, align 4
  %23 = and i8 %22, 8
  %24 = icmp eq i8 %23, 0
  %25 = or i32 %21, 1107296256
  %26 = and i32 %21, 1073741824
  %27 = select i1 %24, i32 %26, i32 %25
  %28 = or i32 %27, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %29 = load ptr, ptr %18, align 8
  %30 = getelementptr i8, ptr %29, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #5, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_deactivate_capture(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 76
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !33
  %6 = or i32 %5, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #5, !srcloc !11
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr i8, ptr %9, i32 192
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !46
  %12 = and i32 %11, 1073741823
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr i8, ptr %13, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #5, !srcloc !11
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr i8, ptr %15, i32 88
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !87
  %18 = and i32 %17, -32769
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr i8, ptr %19, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #5, !srcloc !11
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr i8, ptr %21, i32 76
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !33
  %24 = and i32 %23, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr i8, ptr %25, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #5, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fimc_hw_camblk_cfg_writeback(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !94
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %1
  %7 = call i32 @regmap_read(ptr noundef nonnull %4, i32 noundef 536, ptr noundef nonnull %2) #5
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %6
  %10 = load i32, ptr %2, align 4
  %11 = and i32 %10, 7340032
  %12 = icmp eq i32 %11, 3145728
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, 2
  br i1 %16, label %17, label %18, !prof !95

17:                                               ; preds = %13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 821, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %15) #5
  br label %21

18:                                               ; preds = %13
  %19 = add nsw i32 %15, 20
  %20 = shl nuw nsw i32 1, %19
  br label %21

21:                                               ; preds = %18, %17
  %22 = phi i32 [ 0, %17 ], [ %20, %18 ]
  %23 = call i32 @regmap_update_bits_base(ptr noundef nonnull %4, i32 noundef 536, i32 noundef 7372800, i32 noundef %22, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %26 = or i32 %22, 32768
  %27 = call i32 @regmap_update_bits_base(ptr noundef nonnull %4, i32 noundef 536, i32 noundef 7372800, i32 noundef %26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = call i32 @regmap_update_bits_base(ptr noundef nonnull %4, i32 noundef 524, i32 noundef 128, i32 noundef -129, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %33 = call i32 @regmap_update_bits_base(ptr noundef nonnull %4, i32 noundef 524, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %34

34:                                               ; preds = %32, %29, %25, %21, %9, %6, %1
  %35 = phi i32 [ %33, %32 ], [ 0, %1 ], [ %7, %9 ], [ %7, %6 ], [ %23, %21 ], [ %27, %25 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bitreverse.i16(i16) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 2404239}
!9 = !{i64 2155182792}
!10 = !{i64 2155183065}
!11 = !{i64 2403821}
!12 = !{i64 2155183529}
!13 = !{i64 2155183886}
!14 = !{i64 2155184892}
!15 = !{i64 2155185165}
!16 = !{i64 2155182325}
!17 = !{i64 2155185729}
!18 = !{i64 2155186264}
!19 = !{i64 2155186728}
!20 = !{i64 2155186928}
!21 = !{i64 2155188421}
!22 = !{i64 2155188687}
!23 = !{i64 2155189151}
!24 = !{i64 2155189351}
!25 = !{i64 2155190807}
!26 = !{i64 2155191127}
!27 = !{i64 2155191447}
!28 = !{i64 2155189670}
!29 = !{i64 2155190135}
!30 = !{i64 2155190488}
!31 = !{i64 2155191912}
!32 = !{i64 2155192187}
!33 = !{i64 2155193479}
!34 = !{i64 2155193832}
!35 = !{i64 2155194149}
!36 = !{i64 2155194466}
!37 = !{i64 2155194930}
!38 = !{i64 2155196483}
!39 = !{i64 2155197977}
!40 = !{i64 2155198262}
!41 = !{i64 2155198730}
!42 = !{i64 2155199005}
!43 = !{i64 2155199378}
!44 = !{i64 2155199842}
!45 = !{i64 2155200367}
!46 = !{i64 2155200831}
!47 = !{i64 2155201188}
!48 = !{i64 2155201619}
!49 = !{i64 2155202092}
!50 = !{i64 2155202293}
!51 = !{i64 2155203345}
!52 = !{i64 2155203665}
!53 = !{i64 2155203985}
!54 = !{i64 2155202698}
!55 = !{i64 2155203022}
!56 = !{i64 2155192655}
!57 = !{i64 2155193014}
!58 = !{i64 2155204450}
!59 = !{i64 2155205027}
!60 = !{i64 2155205495}
!61 = !{i64 2155205730}
!62 = !{i64 2155206195}
!63 = !{i64 2155206557}
!64 = !{i64 2155207021}
!65 = !{i64 2155207378}
!66 = !{i64 2155207842}
!67 = !{i64 2155208115}
!68 = !{i64 2155208470}
!69 = !{i64 2155208851}
!70 = !{i64 2155209234}
!71 = !{i64 2155209662}
!72 = !{i64 2155210011}
!73 = !{i64 2155210383}
!74 = !{i64 2155210757}
!75 = !{i64 2155212277}
!76 = !{i64 2155213711}
!77 = !{i64 2155215893}
!78 = !{i64 2155216361}
!79 = !{i64 2155216662}
!80 = !{i64 2155216981}
!81 = !{i64 2155217449}
!82 = !{i64 2155219176}
!83 = !{!"branch_weights", i32 2000, i32 1}
!84 = !{i64 2155221717}
!85 = !{i64 2155222182}
!86 = !{i64 2155222455}
!87 = !{i64 2155222919}
!88 = !{i64 2155223276}
!89 = !{i64 2155223740}
!90 = !{i64 2155224093}
!91 = !{i64 2155224557}
!92 = !{i64 2155224893}
!93 = !{i64 2155225242}
!94 = !{!"auto-init"}
!95 = !{!"branch_weights", i32 1, i32 2000}
