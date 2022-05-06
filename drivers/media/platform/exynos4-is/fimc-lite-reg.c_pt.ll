; ModuleID = '/llk/IR/drivers/media/platform/exynos4-is/fimc-lite-reg.c_pt.bc'
source_filename = "../drivers/media/platform/exynos4-is/fimc-lite-reg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.87 = type { i32, ptr }
%struct.fimc_lite = type { ptr, ptr, %struct.exynos_video_entity, ptr, %struct.v4l2_fh, %struct.v4l2_subdev, %struct.media_pad, [3 x %struct.media_pad], ptr, %struct.v4l2_ctrl_handler, ptr, i32, %struct.mutex, %struct.spinlock, ptr, ptr, %struct.wait_queue_head, [1 x i32], %struct.flite_frame, %struct.flite_frame, %struct.atomic_t, i32, i32, %struct.list_head, %struct.list_head, %struct.vb2_queue, i16, i32, i32, %struct.fimc_lite_events, i8 }
%struct.exynos_video_entity = type { %struct.video_device, ptr }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.flite_frame = type { i16, i16, %struct.v4l2_rect, ptr }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.fimc_lite_events = type { i32 }
%struct.fimc_source_info = type { i32, i32, i16, i16 }
%struct.flite_drvdata = type { i16, i16, i16, i16, i16, i16, i16 }
%struct.flite_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, i16 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.75, i32 }
%union.anon.75 = type { i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@src_pixfmt_map = internal unnamed_addr constant [8 x [3 x i32]] [[3 x i32] [i32 8200, i32 0, i32 503316480], [3 x i32] [i32 8201, i32 16384, i32 503316480], [3 x i32] [i32 8198, i32 32768, i32 503316480], [3 x i32] [i32 8199, i32 49152, i32 503316480], [3 x i32] [i32 12290, i32 0, i32 704643072], [3 x i32] [i32 12298, i32 0, i32 721420288], [3 x i32] [i32 12305, i32 0, i32 738197504], [3 x i32] [i32 16385, i32 0, i32 805306368]], align 4
@.str = private unnamed_addr constant [53 x i8] c"\013%s: Unsupported pixel code, falling back to %#08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"CISRCSIZE\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"CIGCTRL\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"CIIMGCPT\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"CICPTSEQ\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"CIWDOFST\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"CIWDOFST2\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"CIODMAFMT\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"CIOCAN\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"CIOOFF\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"CIOSA\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"CISTATUS\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"CISTATUS2\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"CITHOLD\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"CIGENERAL\00", align 1
@__const.flite_hw_dump_regs.registers = private unnamed_addr constant [14 x %struct.anon.87] [%struct.anon.87 { i32 0, ptr @.str.1 }, %struct.anon.87 { i32 4, ptr @.str.2 }, %struct.anon.87 { i32 8, ptr @.str.3 }, %struct.anon.87 { i32 12, ptr @.str.4 }, %struct.anon.87 { i32 16, ptr @.str.5 }, %struct.anon.87 { i32 20, ptr @.str.6 }, %struct.anon.87 { i32 24, ptr @.str.7 }, %struct.anon.87 { i32 32, ptr @.str.8 }, %struct.anon.87 { i32 36, ptr @.str.9 }, %struct.anon.87 { i32 48, ptr @.str.10 }, %struct.anon.87 { i32 64, ptr @.str.11 }, %struct.anon.87 { i32 68, ptr @.str.12 }, %struct.anon.87 { i32 240, ptr @.str.13 }, %struct.anon.87 { i32 252, ptr @.str.14 }], align 4
@.str.15 = private unnamed_addr constant [18 x i8] c"\016%s: --- %s ---\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"\016%s: %9s: 0x%08x\0A\00", align 1
@flite_hw_set_out_order.pixcode = internal unnamed_addr constant [4 x [2 x i32]] [[2 x i32] [i32 8200, i32 0], [2 x i32] [i32 8201, i32 16], [2 x i32] [i32 8198, i32 32], [2 x i32] [i32 8199, i32 48]], align 4
@switch.table.flite_hw_set_output_dma = private unnamed_addr constant [4 x i32] [i32 2, i32 3, i32 0, i32 1], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flite_hw_reset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %7 = or i32 %6, 524288
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #3, !srcloc !11
  %10 = sub i32 -5, %2
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = add i32 %10, %11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %20, %1
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr i8, ptr %15, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %18 = and i32 %17, 262144
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #3
  %21 = load volatile i32, ptr @jiffies, align 64
  %22 = add i32 %10, %21
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %14, label %24

24:                                               ; preds = %20, %14, %1
  %25 = phi i32 [ %7, %1 ], [ %17, %14 ], [ %17, %20 ]
  %26 = or i32 %25, 131072
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #3, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flite_hw_clear_pending_irq(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !14
  %6 = and i32 %5, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @flite_hw_get_interrupt_source(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !16
  %6 = and i32 %5, 240
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flite_hw_clear_last_capture_end(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 68
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !17
  %6 = and i32 %5, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flite_hw_set_interrupt_mask(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 20
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  %5 = select i1 %4, i32 -481, i32 -289
  %6 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !19
  %10 = or i32 %9, 192
  %11 = and i32 %10, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !20
  tail call void @arm_heavy_mb() #3
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flite_hw_capture_start(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !21
  %6 = or i32 %5, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !22
  tail call void @arm_heavy_mb() #3
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flite_hw_capture_stop(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !23
  %6 = and i32 %5, 2147483647
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flite_hw_set_test_pattern(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !25
  %7 = and i32 %6, -32769
  %8 = select i1 %1, i32 32768, i32 0
  %9 = or i32 %7, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flite_hw_set_source_format(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.flite_frame, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %6 [
    i32 16385, label %16
    i32 12305, label %9
    i32 12298, label %10
    i32 12290, label %11
    i32 8199, label %12
    i32 8198, label %13
    i32 8201, label %14
    i32 8200, label %15
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 2, i32 0, i32 12
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %7, i32 noundef 8200) #4
  br label %16

9:                                                ; preds = %2
  br label %16

10:                                               ; preds = %2
  br label %16

11:                                               ; preds = %2
  br label %16

12:                                               ; preds = %2
  br label %16

13:                                               ; preds = %2
  br label %16

14:                                               ; preds = %2
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %14, %13, %12, %11, %10, %9, %6, %2
  %17 = phi i32 [ 0, %6 ], [ 7, %2 ], [ 6, %9 ], [ 5, %10 ], [ 4, %11 ], [ 3, %12 ], [ 2, %13 ], [ 1, %14 ], [ 0, %15 ]
  %18 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 15
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !27
  %22 = and i32 %21, -1056964609
  %23 = getelementptr [8 x [3 x i32]], ptr @src_pixfmt_map, i32 0, i32 %17, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  %26 = load ptr, ptr %18, align 8
  %27 = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #3, !srcloc !11
  %28 = load ptr, ptr %18, align 8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !29
  %30 = and i32 %29, -1073741824
  %31 = load i16, ptr %1, align 4
  %32 = zext i16 %31 to i32
  %33 = shl nuw i32 %32, 16
  %34 = getelementptr inbounds %struct.flite_frame, ptr %1, i32 0, i32 1
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = getelementptr [8 x [3 x i32]], ptr @src_pixfmt_map, i32 0, i32 %17, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = or i32 %30, %36
  %40 = or i32 %39, %33
  %41 = or i32 %40, %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !30
  tail call void @arm_heavy_mb() #3
  %42 = load ptr, ptr %18, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %41) #3, !srcloc !11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flite_hw_set_window_offset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !31
  %7 = and i32 %6, 1610670080
  %8 = getelementptr inbounds %struct.flite_frame, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %9, 16
  %11 = getelementptr inbounds %struct.flite_frame, ptr %1, i32 0, i32 2, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %7, %12
  %14 = or i32 %13, %10
  %15 = or i32 %14, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !32
  tail call void @arm_heavy_mb() #3
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #3, !srcloc !11
  %18 = load i16, ptr %1, align 4
  %19 = zext i16 %18 to i32
  %20 = getelementptr inbounds %struct.flite_frame, ptr %1, i32 0, i32 2, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %8, align 4
  %23 = add i32 %21, %22
  %24 = sub i32 %19, %23
  %25 = getelementptr inbounds %struct.flite_frame, ptr %1, i32 0, i32 1
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = getelementptr inbounds %struct.flite_frame, ptr %1, i32 0, i32 2, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr %11, align 4
  %31 = add i32 %29, %30
  %32 = sub i32 %27, %31
  %33 = shl i32 %24, 16
  %34 = or i32 %32, %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !33
  tail call void @arm_heavy_mb() #3
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr i8, ptr %35, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flite_hw_set_camera_bus(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !34
  %7 = getelementptr inbounds %struct.fimc_source_info, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %24, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.fimc_source_info, ptr %1, i32 0, i32 2
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = and i32 %6, -28681
  %15 = shl nuw nsw i32 %13, 7
  %16 = and i32 %15, 16384
  %17 = or i32 %16, %14
  %18 = shl nuw nsw i32 %13, 8
  %19 = and i32 %18, 8192
  %20 = or i32 %17, %19
  %21 = shl nuw nsw i32 %13, 9
  %22 = and i32 %21, 4096
  %23 = or i32 %20, %22
  br label %26

24:                                               ; preds = %2
  %25 = or i32 %6, 8
  br label %26

26:                                               ; preds = %24, %10
  %27 = phi i32 [ %25, %24 ], [ %23, %10 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #3, !srcloc !11
  %30 = getelementptr inbounds %struct.fimc_source_info, ptr %1, i32 0, i32 3
  %31 = load i16, ptr %30, align 2
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr i8, ptr %32, i32 252
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !36
  %35 = icmp ne i16 %31, 0
  %36 = and i32 %34, -2
  %37 = zext i1 %35 to i32
  %38 = or i32 %36, %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !37
  tail call void @arm_heavy_mb() #3
  %39 = load ptr, ptr %3, align 8
  %40 = getelementptr i8, ptr %39, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flite_hw_set_dma_window(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !38
  %7 = and i32 %6, -1073692672
  %8 = getelementptr inbounds %struct.flite_frame, ptr %1, i32 0, i32 1
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = shl nuw i32 %10, 16
  %12 = load i16, ptr %1, align 4
  %13 = zext i16 %12 to i32
  %14 = or i32 %7, %13
  %15 = or i32 %14, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr i8, ptr %16, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #3, !srcloc !11
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr i8, ptr %18, i32 36
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !40
  %21 = and i32 %20, -1073692672
  %22 = getelementptr inbounds %struct.flite_frame, ptr %1, i32 0, i32 2
  %23 = getelementptr inbounds %struct.flite_frame, ptr %1, i32 0, i32 2, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = shl i32 %24, 16
  %26 = load i32, ptr %22, align 4
  %27 = or i32 %26, %21
  %28 = or i32 %27, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr i8, ptr %29, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flite_hw_set_dma_buffer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.flite_drvdata, ptr %4, i32 0, i32 5
  %6 = load i16, ptr %5, align 2
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.flite_buffer, ptr %1, i32 0, i32 3
  %10 = load i16, ptr %9, align 4
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !42
  tail call void @arm_heavy_mb() #3
  %13 = getelementptr inbounds %struct.flite_buffer, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 15
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %16, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %14) #3, !srcloc !11
  br label %27

18:                                               ; preds = %8
  %19 = zext i16 %10 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !43
  tail call void @arm_heavy_mb() #3
  %20 = getelementptr inbounds %struct.flite_buffer, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 15
  %23 = load ptr, ptr %22, align 8
  %24 = shl nuw nsw i32 %19, 2
  %25 = add nuw nsw i32 %24, 508
  %26 = getelementptr i8, ptr %23, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %21) #3, !srcloc !11
  br label %27

27:                                               ; preds = %18, %12
  %28 = phi i32 [ %19, %18 ], [ 0, %12 ]
  %29 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 15
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr i8, ptr %30, i32 256
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !44
  %33 = shl nuw i32 1, %28
  %34 = or i32 %32, %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %35 = load ptr, ptr %29, align 8
  %36 = getelementptr i8, ptr %35, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flite_hw_mask_dma_buffer(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.flite_drvdata, ptr %4, i32 0, i32 5
  %6 = load i16, ptr %5, align 2
  %7 = icmp eq i16 %6, 1
  %8 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 256
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !46
  %12 = shl nuw i32 1, %1
  %13 = xor i32 %12, -1
  %14 = select i1 %7, i32 -2, i32 %13
  %15 = and i32 %11, %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !47
  tail call void @arm_heavy_mb() #3
  %16 = load ptr, ptr %8, align 8
  %17 = getelementptr i8, ptr %16, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flite_hw_set_output_dma(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !48
  br i1 %2, label %12, label %8

8:                                                ; preds = %3
  %9 = or i32 %7, 1048576
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !49
  tail call void @arm_heavy_mb() #3
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #3, !srcloc !11
  br label %68

12:                                               ; preds = %3
  %13 = and i32 %7, -1048577
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !50
  tail call void @arm_heavy_mb() #3
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #3, !srcloc !11
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr i8, ptr %16, i32 24
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !51
  %19 = getelementptr inbounds %struct.flite_frame, ptr %1, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, -8198
  %23 = icmp ult i32 %22, 4
  br i1 %23, label %24, label %27

24:                                               ; preds = %12
  %25 = getelementptr inbounds [4 x i32], ptr @switch.table.flite_hw_set_output_dma, i32 0, i32 %22
  %26 = load i32, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %12
  %28 = phi i32 [ %26, %24 ], [ 0, %12 ]
  %29 = and i32 %18, -49
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !52
  tail call void @arm_heavy_mb() #3
  %30 = getelementptr [4 x [2 x i32]], ptr @flite_hw_set_out_order.pixcode, i32 0, i32 %28, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %31, %29
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr i8, ptr %33, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #3, !srcloc !11
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr i8, ptr %35, i32 32
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !38
  %38 = and i32 %37, -1073692672
  %39 = getelementptr inbounds %struct.flite_frame, ptr %1, i32 0, i32 1
  %40 = load i16, ptr %39, align 2
  %41 = zext i16 %40 to i32
  %42 = shl nuw i32 %41, 16
  %43 = load i16, ptr %1, align 4
  %44 = zext i16 %43 to i32
  %45 = or i32 %38, %44
  %46 = or i32 %45, %42
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %47 = load ptr, ptr %4, align 8
  %48 = getelementptr i8, ptr %47, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #3, !srcloc !11
  %49 = load ptr, ptr %4, align 8
  %50 = getelementptr i8, ptr %49, i32 36
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !40
  %52 = and i32 %51, -1073692672
  %53 = getelementptr inbounds %struct.flite_frame, ptr %1, i32 0, i32 2
  %54 = getelementptr inbounds %struct.flite_frame, ptr %1, i32 0, i32 2, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = shl i32 %55, 16
  %57 = load i32, ptr %53, align 4
  %58 = or i32 %57, %52
  %59 = or i32 %58, %56
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  %60 = load ptr, ptr %4, align 8
  %61 = getelementptr i8, ptr %60, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #3, !srcloc !11
  %62 = load ptr, ptr %4, align 8
  %63 = getelementptr i8, ptr %62, i32 24
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !53
  %65 = and i32 %64, -16385
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !54
  tail call void @arm_heavy_mb() #3
  %66 = load ptr, ptr %4, align 8
  %67 = getelementptr i8, ptr %66, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #3, !srcloc !11
  br label %68

68:                                               ; preds = %27, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flite_hw_dump_regs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 5, i32 9
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %3, ptr noundef %1) #4
  %5 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 15
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi i32 [ 0, %2 ], [ %16, %6 ]
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr [14 x %struct.anon.87], ptr @__const.flite_hw_dump_regs.registers, i32 0, i32 %7
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %8, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !55
  %13 = getelementptr [14 x %struct.anon.87], ptr @__const.flite_hw_dump_regs.registers, i32 0, i32 %7, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %3, ptr noundef %14, i32 noundef %12) #4
  %16 = add nuw nsw i32 %7, 1
  %17 = icmp eq i32 %16, 14
  br i1 %17, label %18, label %6

18:                                               ; preds = %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!8 = !{i64 2390921}
!9 = !{i64 2155050768}
!10 = !{i64 2155051041}
!11 = !{i64 2390503}
!12 = !{i64 2155051895}
!13 = !{i64 2155052252}
!14 = !{i64 2155052716}
!15 = !{i64 2155052987}
!16 = !{i64 2155053451}
!17 = !{i64 2155053798}
!18 = !{i64 2155054069}
!19 = !{i64 2155055025}
!20 = !{i64 2155055225}
!21 = !{i64 2155055689}
!22 = !{i64 2155055962}
!23 = !{i64 2155056426}
!24 = !{i64 2155056699}
!25 = !{i64 2155057163}
!26 = !{i64 2155057520}
!27 = !{i64 2155059356}
!28 = !{i64 2155059558}
!29 = !{i64 2155060022}
!30 = !{i64 2155060247}
!31 = !{i64 2155060711}
!32 = !{i64 2155061010}
!33 = !{i64 2155061327}
!34 = !{i64 2155062608}
!35 = !{i64 2155063711}
!36 = !{i64 2155061791}
!37 = !{i64 2155062144}
!38 = !{i64 2155066113}
!39 = !{i64 2155066328}
!40 = !{i64 2155066792}
!41 = !{i64 2155067007}
!42 = !{i64 2155067330}
!43 = !{i64 2155067715}
!44 = !{i64 2155068220}
!45 = !{i64 2155068490}
!46 = !{i64 2155068959}
!47 = !{i64 2155069229}
!48 = !{i64 2155069694}
!49 = !{i64 2155069967}
!50 = !{i64 2155070368}
!51 = !{i64 2155065060}
!52 = !{i64 2155065617}
!53 = !{i64 2155064175}
!54 = !{i64 2155064532}
!55 = !{i64 2155071749}
