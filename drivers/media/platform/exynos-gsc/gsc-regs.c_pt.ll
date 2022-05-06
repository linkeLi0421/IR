; ModuleID = '/llk/IR/drivers/media/platform/exynos-gsc/gsc-regs.c_pt.bc'
source_filename = "../drivers/media/platform/exynos-gsc/gsc-regs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gsc_dev = type { %struct.spinlock, %struct.mutex, ptr, ptr, i16, i32, [4 x ptr], ptr, %struct.wait_queue_head, %struct.gsc_m2m_device, i32, %struct.video_device, %struct.v4l2_device }
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
%struct.gsc_m2m_device = type { ptr, ptr, ptr, i32 }
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
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.gsc_addr = type { i32, i32, i32 }
%struct.gsc_ctx = type { %struct.gsc_frame, %struct.gsc_frame, i32, i32, %struct.gsc_scaler, i32, i32, i32, i8, ptr, ptr, %struct.v4l2_fh, %struct.v4l2_ctrl_handler, %struct.gsc_ctrls, i8, i32 }
%struct.gsc_frame = type { i32, i32, %struct.v4l2_rect, [8 x i32], %struct.gsc_addr, ptr, i32, i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.gsc_scaler = type { i32, i32, i32, i32, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.gsc_ctrls = type { ptr, ptr, ptr, ptr }
%struct.gsc_fmt = type { i32, i32, i32, i32, i32, i16, i16, [8 x i8], i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.70, %union.anon.71, i32, ptr, i32, %struct.anon.72, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.70 = type { i64 }
%union.anon.71 = type { ptr }
%struct.anon.72 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_sw_reset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  %2 = getelementptr inbounds %struct.gsc_dev, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #2, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gsc_wait_reset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = getelementptr inbounds %struct.gsc_dev, ptr %0, i32 0, i32 7
  %4 = sub i32 -5, %2
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = add i32 %4, %5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %13, %1
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr i8, ptr %9, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #2
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = add i32 %4, %14
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %8, label %17

17:                                               ; preds = %13, %8, %1
  %18 = phi i32 [ -16, %1 ], [ -16, %13 ], [ 0, %8 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_frm_done_irq_mask(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gsc_dev, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !12
  %7 = and i32 %6, -3
  %8 = select i1 %1, i32 2, i32 0
  %9 = or i32 %7, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !13
  tail call void @arm_heavy_mb() #2
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_gsc_irq_enable(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gsc_dev, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !14
  %7 = and i32 %6, -2
  %8 = zext i1 %1 to i32
  %9 = or i32 %7, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !15
  tail call void @arm_heavy_mb() #2
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_input_buf_masking(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gsc_dev, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 76
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !16
  %8 = shl nuw i32 1, %1
  %9 = xor i32 %8, -1
  %10 = and i32 %7, %9
  %11 = zext i1 %2 to i32
  %12 = shl nuw i32 %11, %1
  %13 = or i32 %10, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !17
  tail call void @arm_heavy_mb() #2
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr i8, ptr %14, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !18
  tail call void @arm_heavy_mb() #2
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr i8, ptr %16, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %13) #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !19
  tail call void @arm_heavy_mb() #2
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr i8, ptr %18, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %13) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_output_buf_masking(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gsc_dev, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 268
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !20
  %8 = shl nuw i32 1, %1
  %9 = xor i32 %8, -1
  %10 = and i32 %7, %9
  %11 = zext i1 %2 to i32
  %12 = shl nuw i32 %11, %1
  %13 = or i32 %10, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !21
  tail call void @arm_heavy_mb() #2
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr i8, ptr %14, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !22
  tail call void @arm_heavy_mb() #2
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr i8, ptr %16, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %13) #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !23
  tail call void @arm_heavy_mb() #2
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr i8, ptr %18, i32 428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %13) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_input_addr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !24
  tail call void @arm_heavy_mb() #2
  %4 = load i32, ptr %1, align 4
  %5 = getelementptr inbounds %struct.gsc_dev, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 8
  %7 = shl i32 %2, 2
  %8 = add i32 %7, 80
  %9 = getelementptr i8, ptr %6, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %4) #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !25
  tail call void @arm_heavy_mb() #2
  %10 = getelementptr inbounds %struct.gsc_addr, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr %5, align 8
  %13 = add i32 %7, 128
  %14 = getelementptr i8, ptr %12, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !26
  tail call void @arm_heavy_mb() #2
  %15 = getelementptr inbounds %struct.gsc_addr, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %5, align 8
  %18 = add i32 %7, 176
  %19 = getelementptr i8, ptr %17, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %16) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_output_addr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !27
  tail call void @arm_heavy_mb() #2
  %4 = load i32, ptr %1, align 4
  %5 = getelementptr inbounds %struct.gsc_dev, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 8
  %7 = shl i32 %2, 2
  %8 = add i32 %7, 272
  %9 = getelementptr i8, ptr %6, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %4) #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !28
  tail call void @arm_heavy_mb() #2
  %10 = getelementptr inbounds %struct.gsc_addr, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr %5, align 8
  %13 = add i32 %7, 352
  %14 = getelementptr i8, ptr %12, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !29
  tail call void @arm_heavy_mb() #2
  %15 = getelementptr inbounds %struct.gsc_addr, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %5, align 8
  %18 = add i32 %7, 432
  %19 = getelementptr i8, ptr %17, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %16) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_input_path(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !30
  %8 = and i32 %7, -8
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !31
  tail call void @arm_heavy_mb() #2
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_in_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gsc_frame, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gsc_frame, ptr %0, i32 0, i32 2, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 16
  %9 = or i32 %8, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !32
  tail call void @arm_heavy_mb() #2
  %10 = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 7
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %9) #2, !srcloc !9
  %13 = load i32, ptr %0, align 4
  %14 = getelementptr inbounds %struct.gsc_frame, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = shl i32 %15, 16
  %17 = or i32 %16, %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !33
  tail call void @arm_heavy_mb() #2
  %18 = load ptr, ptr %10, align 8
  %19 = getelementptr i8, ptr %18, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #2, !srcloc !9
  %20 = getelementptr inbounds %struct.gsc_frame, ptr %0, i32 0, i32 2, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.gsc_frame, ptr %0, i32 0, i32 2, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = shl i32 %23, 16
  %25 = or i32 %24, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !34
  tail call void @arm_heavy_mb() #2
  %26 = load ptr, ptr %10, align 8
  %27 = getelementptr i8, ptr %26, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_in_image_rgb(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !35
  %8 = getelementptr inbounds %struct.gsc_frame, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 3
  %11 = or i32 %7, 32768
  %12 = select i1 %10, i32 %11, i32 %7
  %13 = getelementptr inbounds %struct.gsc_frame, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.gsc_fmt, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 1380075346
  %18 = or i32 %12, 256
  %19 = select i1 %17, i32 %18, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !36
  tail call void @arm_heavy_mb() #2
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr i8, ptr %20, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_in_image_format(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !37
  %8 = and i32 %7, -63257
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !38
  tail call void @arm_heavy_mb() #2
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #2, !srcloc !9
  %11 = getelementptr inbounds %struct.gsc_frame, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.gsc_fmt, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.gsc_fmt, ptr %12, i32 0, i32 5
  %19 = load i16, ptr %18, align 4
  %20 = zext i16 %19 to i32
  %21 = icmp eq i16 %19, 0
  br i1 %21, label %50, label %41

22:                                               ; preds = %1
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr inbounds %struct.gsc_dev, ptr %23, i32 0, i32 7
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr i8, ptr %25, i32 16
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !35
  %28 = getelementptr inbounds %struct.gsc_frame, ptr %0, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 3
  %31 = or i32 %27, 32768
  %32 = select i1 %30, i32 %31, i32 %27
  %33 = load ptr, ptr %11, align 4
  %34 = getelementptr inbounds %struct.gsc_fmt, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 1380075346
  %37 = or i32 %32, 256
  %38 = select i1 %36, i32 %37, i32 %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !36
  tail call void @arm_heavy_mb() #2
  %39 = load ptr, ptr %24, align 8
  %40 = getelementptr i8, ptr %39, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #2, !srcloc !9
  br label %89

41:                                               ; preds = %41, %17
  %42 = phi i32 [ %48, %41 ], [ 0, %17 ]
  %43 = phi i32 [ %47, %41 ], [ 0, %17 ]
  %44 = getelementptr %struct.gsc_fmt, ptr %12, i32 0, i32 7, i32 %42
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = add i32 %43, %46
  %48 = add nuw nsw i32 %42, 1
  %49 = icmp eq i32 %48, %20
  br i1 %49, label %50, label %41

50:                                               ; preds = %41, %17
  %51 = phi i32 [ 0, %17 ], [ %47, %41 ]
  %52 = getelementptr inbounds %struct.gsc_fmt, ptr %12, i32 0, i32 6
  %53 = load i16, ptr %52, align 2
  switch i16 %53, label %80 [
    i16 1, label %54
    i16 2, label %65
    i16 3, label %74
  ]

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.gsc_fmt, ptr %12, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 16
  %58 = select i1 %57, i32 1024, i32 9216
  %59 = or i32 %58, %8
  %60 = getelementptr inbounds %struct.gsc_fmt, ptr %12, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 32
  %63 = or i32 %59, 4096
  %64 = select i1 %62, i32 %59, i32 %63
  br label %80

65:                                               ; preds = %50
  %66 = icmp eq i32 %51, 12
  %67 = select i1 %66, i32 512, i32 1280
  %68 = or i32 %67, %8
  %69 = getelementptr inbounds %struct.gsc_fmt, ptr %12, i32 0, i32 4
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 32
  %72 = or i32 %68, 4096
  %73 = select i1 %71, i32 %68, i32 %72
  br label %80

74:                                               ; preds = %50
  %75 = icmp eq i32 %51, 12
  br i1 %75, label %76, label %78

76:                                               ; preds = %74
  %77 = or i32 %8, 768
  br label %80

78:                                               ; preds = %74
  %79 = or i32 %8, 1536
  br label %80

80:                                               ; preds = %78, %76, %65, %54, %50
  %81 = phi i32 [ %8, %50 ], [ %77, %76 ], [ %79, %78 ], [ %64, %54 ], [ %73, %65 ]
  %82 = getelementptr inbounds %struct.gsc_fmt, ptr %12, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 842091862
  %85 = or i32 %81, 8
  %86 = select i1 %84, i32 %85, i32 %81
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !39
  tail call void @arm_heavy_mb() #2
  %87 = load ptr, ptr %4, align 8
  %88 = getelementptr i8, ptr %87, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %86) #2, !srcloc !9
  br label %89

89:                                               ; preds = %80, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_output_path(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 32
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !40
  %8 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp ne i32 %9, 2
  %11 = and i32 %7, -2
  %12 = zext i1 %10 to i32
  %13 = or i32 %11, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !41
  tail call void @arm_heavy_mb() #2
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr i8, ptr %14, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_out_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 1, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 1, i32 2, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %12, 16
  %14 = or i32 %13, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !42
  tail call void @arm_heavy_mb() #2
  %15 = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 7
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %16, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %14) #2, !srcloc !9
  %18 = load i32, ptr %8, align 4
  %19 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 1, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = shl i32 %20, 16
  %22 = or i32 %21, %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !43
  tail call void @arm_heavy_mb() #2
  %23 = load ptr, ptr %15, align 8
  %24 = getelementptr i8, ptr %23, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #2, !srcloc !9
  br label %25

25:                                               ; preds = %7, %1
  %26 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 13
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.v4l2_ctrl, ptr %27, i32 0, i32 22
  %29 = load i32, ptr %28, align 4
  switch i32 %29, label %33 [
    i32 90, label %30
    i32 270, label %30
  ]

30:                                               ; preds = %25, %25
  %31 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 1, i32 2, i32 3
  %32 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 1, i32 2, i32 2
  br label %36

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 1, i32 2, i32 2
  %35 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 1, i32 2, i32 3
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi ptr [ %32, %30 ], [ %35, %33 ]
  %38 = phi ptr [ %31, %30 ], [ %34, %33 ]
  %39 = load i32, ptr %38, align 4
  %40 = load i32, ptr %37, align 4
  %41 = shl i32 %40, 16
  %42 = or i32 %41, %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !44
  tail call void @arm_heavy_mb() #2
  %43 = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 7
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr i8, ptr %44, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %42) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_out_image_rgb(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 32
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !45
  %8 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 1, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 3
  %11 = select i1 %10, i32 3072, i32 1024
  %12 = or i32 %11, %7
  %13 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 1, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.gsc_fmt, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 1380075346
  %18 = or i32 %12, 16
  %19 = select i1 %17, i32 %18, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !46
  tail call void @arm_heavy_mb() #2
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr i8, ptr %20, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_out_image_format(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 32
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !47
  %8 = and i32 %7, -3959
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !48
  tail call void @arm_heavy_mb() #2
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #2, !srcloc !9
  %11 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 1, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.gsc_fmt, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %1
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr inbounds %struct.gsc_dev, ptr %18, i32 0, i32 7
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr i8, ptr %20, i32 32
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !45
  %23 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 1, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 3
  %26 = select i1 %25, i32 3072, i32 1024
  %27 = or i32 %26, %22
  %28 = load ptr, ptr %11, align 4
  %29 = getelementptr inbounds %struct.gsc_fmt, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 1380075346
  %32 = or i32 %27, 16
  %33 = select i1 %31, i32 %32, i32 %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !46
  tail call void @arm_heavy_mb() #2
  %34 = load ptr, ptr %19, align 8
  %35 = getelementptr i8, ptr %34, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #2, !srcloc !9
  br label %93

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.gsc_fmt, ptr %12, i32 0, i32 5
  %42 = load i16, ptr %41, align 4
  %43 = zext i16 %42 to i32
  %44 = icmp eq i16 %42, 0
  br i1 %44, label %56, label %47

45:                                               ; preds = %36
  %46 = or i32 %8, 112
  br label %89

47:                                               ; preds = %47, %40
  %48 = phi i32 [ %54, %47 ], [ 0, %40 ]
  %49 = phi i32 [ %53, %47 ], [ 0, %40 ]
  %50 = getelementptr %struct.gsc_fmt, ptr %12, i32 0, i32 7, i32 %48
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = add i32 %49, %52
  %54 = add nuw nsw i32 %48, 1
  %55 = icmp eq i32 %54, %43
  br i1 %55, label %56, label %47

56:                                               ; preds = %47, %40
  %57 = phi i32 [ 0, %40 ], [ %53, %47 ]
  %58 = getelementptr inbounds %struct.gsc_fmt, ptr %12, i32 0, i32 6
  %59 = load i16, ptr %58, align 2
  switch i16 %59, label %82 [
    i16 1, label %60
    i16 2, label %71
    i16 3, label %80
  ]

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.gsc_fmt, ptr %12, i32 0, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 16
  %64 = select i1 %63, i32 64, i32 576
  %65 = or i32 %64, %8
  %66 = getelementptr inbounds %struct.gsc_fmt, ptr %12, i32 0, i32 4
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 32
  %69 = or i32 %65, 256
  %70 = select i1 %68, i32 %65, i32 %69
  br label %82

71:                                               ; preds = %56
  %72 = icmp eq i32 %57, 12
  %73 = select i1 %72, i32 32, i32 80
  %74 = or i32 %73, %8
  %75 = getelementptr inbounds %struct.gsc_fmt, ptr %12, i32 0, i32 4
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 32
  %78 = or i32 %74, 256
  %79 = select i1 %77, i32 %74, i32 %78
  br label %82

80:                                               ; preds = %56
  %81 = or i32 %8, 48
  br label %82

82:                                               ; preds = %80, %71, %60, %56
  %83 = phi i32 [ %8, %56 ], [ %81, %80 ], [ %70, %60 ], [ %79, %71 ]
  %84 = getelementptr inbounds %struct.gsc_fmt, ptr %12, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 842091862
  %87 = or i32 %83, 2
  %88 = select i1 %86, i32 %87, i32 %83
  br label %89

89:                                               ; preds = %82, %45
  %90 = phi i32 [ %46, %45 ], [ %88, %82 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !49
  tail call void @arm_heavy_mb() #2
  %91 = load ptr, ptr %4, align 8
  %92 = getelementptr i8, ptr %91, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #2, !srcloc !9
  br label %93

93:                                               ; preds = %89, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_prescaler(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 28
  %7 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 4, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %6, %8
  %10 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 4, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %11, 16
  %13 = or i32 %9, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !50
  tail call void @arm_heavy_mb() #2
  %14 = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 7
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr i8, ptr %15, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_mainscaler(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 4, i32 3
  %5 = load i32, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !51
  tail call void @arm_heavy_mb() #2
  %6 = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 7
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %5) #2, !srcloc !9
  %9 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 4, i32 4
  %10 = load i32, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !52
  tail call void @arm_heavy_mb() #2
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr i8, ptr %11, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_rotation(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !53
  %8 = and i32 %7, -458753
  %9 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %51 [
    i32 270, label %13
    i32 180, label %15
    i32 90, label %17
    i32 0, label %35
  ]

13:                                               ; preds = %1
  %14 = or i32 %7, 458752
  br label %51

15:                                               ; preds = %1
  %16 = or i32 %8, 196608
  br label %51

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 13, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.v4l2_ctrl, ptr %19, i32 0, i32 22
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = or i32 %8, 327680
  br label %51

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 13, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.v4l2_ctrl, ptr %27, i32 0, i32 22
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = or i32 %8, 393216
  br label %51

33:                                               ; preds = %25
  %34 = or i32 %8, 262144
  br label %51

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 13, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.v4l2_ctrl, ptr %37, i32 0, i32 22
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = or i32 %8, 65536
  br label %51

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 13, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.v4l2_ctrl, ptr %45, i32 0, i32 22
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  %49 = or i32 %8, 131072
  %50 = select i1 %48, i32 %8, i32 %49
  br label %51

51:                                               ; preds = %43, %41, %33, %31, %23, %15, %13, %1
  %52 = phi i32 [ %8, %1 ], [ %42, %41 ], [ %24, %23 ], [ %32, %31 ], [ %34, %33 ], [ %16, %15 ], [ %14, %13 ], [ %50, %43 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !54
  tail call void @arm_heavy_mb() #2
  %53 = load ptr, ptr %4, align 8
  %54 = getelementptr i8, ptr %53, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_global_alpha(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 1, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gsc_fmt, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.gsc_dev, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr i8, ptr %12, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !55
  %15 = and i32 %14, 16777215
  %16 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 13, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %17, i32 0, i32 22
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %19, 24
  %21 = or i32 %20, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !56
  tail call void @arm_heavy_mb() #2
  %22 = load ptr, ptr %11, align 8
  %23 = getelementptr i8, ptr %22, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #2, !srcloc !9
  br label %24

24:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_sfr_update(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !57
  %7 = or i32 %6, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !58
  tail call void @arm_heavy_mb() #2
  %8 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #2, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
!8 = !{i64 2154962946}
!9 = !{i64 368799}
!10 = !{i64 369217}
!11 = !{i64 2154963782}
!12 = !{i64 2154964121}
!13 = !{i64 2154964328}
!14 = !{i64 2154964792}
!15 = !{i64 2154964999}
!16 = !{i64 2154965463}
!17 = !{i64 2154965652}
!18 = !{i64 2154965969}
!19 = !{i64 2154966286}
!20 = !{i64 2154966754}
!21 = !{i64 2154966945}
!22 = !{i64 2154967265}
!23 = !{i64 2154967585}
!24 = !{i64 2154968712}
!25 = !{i64 2154969102}
!26 = !{i64 2154969494}
!27 = !{i64 2154970640}
!28 = !{i64 2154971033}
!29 = !{i64 2154971428}
!30 = !{i64 2154971923}
!31 = !{i64 2154972139}
!32 = !{i64 2154972512}
!33 = !{i64 2154972883}
!34 = !{i64 2154973260}
!35 = !{i64 2154973724}
!36 = !{i64 2154974197}
!37 = !{i64 2154974661}
!38 = !{i64 2154974907}
!39 = !{i64 2154975381}
!40 = !{i64 2154975845}
!41 = !{i64 2154976061}
!42 = !{i64 2154976434}
!43 = !{i64 2154976805}
!44 = !{i64 2154977242}
!45 = !{i64 2154977706}
!46 = !{i64 2154978179}
!47 = !{i64 2154978643}
!48 = !{i64 2154978887}
!49 = !{i64 2154979355}
!50 = !{i64 2154979754}
!51 = !{i64 2154980098}
!52 = !{i64 2154980442}
!53 = !{i64 2154980906}
!54 = !{i64 2154981175}
!55 = !{i64 2154982148}
!56 = !{i64 2154982395}
!57 = !{i64 2154982859}
!58 = !{i64 2154983057}
