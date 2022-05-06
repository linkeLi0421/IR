; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdp4_crtc = type { %struct.drm_crtc, [8 x i8], i32, i32, i32, i8, i32, %struct.anon.83, ptr, i32, %struct.atomic_t, %struct.drm_flip_work, %struct.mdp_irq, %struct.mdp_irq }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.83 = type { %struct.spinlock, i8, i32, i32, i32, i32, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.drm_flip_work = type { ptr, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.80, ptr, i32, ptr, i8, i32 }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.80 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.84, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.84 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.mdp4_kms = type { %struct.mdp_kms, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mdp_irq, i8, ptr, i64 }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.mdp_format = type { %struct.msm_format, i32, i32, i32, i32, [4 x i8], i8, i8, i8, i8, i32, i32, i8 }
%struct.msm_format = type { i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.drm_vblank_crtc = type { ptr, %struct.wait_queue_head, %struct.timer_list, %struct.seqlock_t, %struct.atomic64_t, i64, %struct.atomic_t, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, i8, ptr, %struct.list_head, %struct.wait_queue_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.atomic64_t = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"%s: intf_sel=%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@dma_names = internal unnamed_addr constant [3 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11], align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"unref cursor\00", align 1
@mdp4_crtc_funcs = internal constant %struct.drm_crtc_funcs { ptr @drm_atomic_helper_crtc_reset, ptr @mdp4_crtc_cursor_set, ptr null, ptr @mdp4_crtc_cursor_move, ptr null, ptr @mdp4_crtc_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @drm_atomic_helper_crtc_duplicate_state, ptr @drm_atomic_helper_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm_crtc_enable_vblank, ptr @msm_crtc_disable_vblank, ptr null }, align 4
@mdp4_crtc_helper_funcs = internal constant %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mdp4_crtc_mode_set_nofb, ptr null, ptr null, ptr null, ptr @mdp4_crtc_atomic_check, ptr @mdp4_crtc_atomic_begin, ptr @mdp4_crtc_atomic_flush, ptr @mdp4_crtc_atomic_enable, ptr @mdp4_crtc_atomic_disable, ptr null }, align 4
@idxs = internal unnamed_addr constant [7 x i32] [i32 1, i32 2, i32 0, i32 0, i32 0, i32 3, i32 4], align 4
@setup_mixer.stages = internal unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.h\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"invalid pipe\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"vblank time out, crtc=%d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"%s: send event: %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"%s: error: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"%s: flush=%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"DMA_P\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"DMA_S\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"DMA_E\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"*ERROR* bad cursor size: %dx%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c\00", align 1
@.str.15 = private unnamed_addr constant [61 x i8] c"%s: set mode: \22%s\22: %d %d %d %d %d %d %d %d %d %d 0x%x 0x%x\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"%s: check\0A\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"%s: begin\0A\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"%s: event: %p\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@switch.table.blend_setup = private unnamed_addr constant [3 x i32] [i32 65920, i32 98688, i32 557440], align 4
@switch.table.blend_setup.20 = private unnamed_addr constant [3 x i32] [i32 65924, i32 98692, i32 557444], align 4
@switch.table.blend_setup.21 = private unnamed_addr constant [3 x i32] [i32 65928, i32 98696, i32 557448], align 4
@switch.table.blend_setup.22 = private unnamed_addr constant [3 x i32] [i32 65932, i32 98700, i32 557452], align 4
@switch.table.blend_setup.26 = private unnamed_addr constant [4 x i32] [i32 4100, i32 5124, i32 6148, i32 7044], align 4
@switch.table.blend_setup.30 = private unnamed_addr constant [4 x i32] [i32 260, i32 292, i32 324, i32 352], align 4
@switch.table.blend_setup.33 = private unnamed_addr constant [3 x i32] [i32 65536, i32 98304, i32 557056], align 4
@switch.table.blend_setup.36 = private unnamed_addr constant [3 x i32] [i32 65556, i32 98324, i32 557076], align 4
@switch.table.blend_setup.37 = private unnamed_addr constant [3 x i32] [i32 65560, i32 98328, i32 557080], align 4
@switch.table.mdp4_crtc_init = private unnamed_addr constant [3 x i32] [i32 16, i32 4, i32 8], align 4
@switch.table.mdp4_crtc_init.38 = private unnamed_addr constant [3 x i32] [i32 256, i32 0, i32 1024], align 4
@switch.table.crtc_flush = private unnamed_addr constant [4 x i32] [i32 4, i32 8, i32 16, i32 32], align 4
@switch.table.mdp4_crtc_mode_set_nofb = private unnamed_addr constant [3 x i32] [i32 65548, i32 98316, i32 557068], align 4
@switch.table.mdp4_crtc_mode_set_nofb.39 = private unnamed_addr constant [3 x i32] [i32 65544, i32 98312, i32 557064], align 4
@switch.table.mdp4_crtc_mode_set_nofb.40 = private unnamed_addr constant [3 x i32] [i32 65552, i32 98320, i32 557072], align 4
@switch.table.mdp4_crtc_mode_set_nofb.41 = private unnamed_addr constant [3 x i32] [i32 65540, i32 98308, i32 557060], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @mdp4_crtc_vblank(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 12, i32 1
  %3 = load i32, ptr %2, align 8
  ret i32 %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp4_crtc_set_config(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = icmp ult i32 %4, 3
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #8, !srcloc !8
  unreachable

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.msm_drm_private, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = shl i32 %4, 16
  %14 = add i32 %13, 589824
  %15 = getelementptr inbounds %struct.mdp4_kms, ptr %12, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %16, i32 %14
  tail call void @msm_writel(i32 noundef %1, ptr noundef %17) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp4_crtc_set_intf(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mdp4_kms, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %10, i32 56
  %12 = tail call i32 @msm_readl(ptr noundef %11) #8
  %13 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  switch i32 %14, label %29 [
    i32 0, label %15
    i32 1, label %19
    i32 2, label %24
  ]

15:                                               ; preds = %3
  %16 = and i32 %12, -4
  %17 = and i32 %1, 3
  %18 = or i32 %16, %17
  br label %29

19:                                               ; preds = %3
  %20 = and i32 %12, -13
  %21 = shl i32 %1, 2
  %22 = and i32 %21, 12
  %23 = or i32 %20, %22
  br label %29

24:                                               ; preds = %3
  %25 = and i32 %12, -49
  %26 = shl i32 %1, 4
  %27 = and i32 %26, 48
  %28 = or i32 %25, %27
  br label %29

29:                                               ; preds = %24, %19, %15, %3
  %30 = phi i32 [ %12, %3 ], [ %28, %24 ], [ %23, %19 ], [ %18, %15 ]
  switch i32 %1, label %37 [
    i32 1, label %31
    i32 2, label %34
  ]

31:                                               ; preds = %29
  %32 = and i32 %30, -193
  %33 = or i32 %32, 64
  br label %37

34:                                               ; preds = %29
  %35 = and i32 %30, -193
  %36 = or i32 %35, 128
  br label %37

37:                                               ; preds = %34, %31, %29
  %38 = phi i32 [ %33, %31 ], [ %36, %34 ], [ %30, %29 ]
  %39 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 6
  store i32 %2, ptr %39, align 8
  tail call fastcc void @blend_setup(ptr noundef %0)
  %40 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef %40, i32 noundef %38) #8
  %41 = load ptr, ptr %9, align 8
  %42 = getelementptr i8, ptr %41, i32 56
  tail call void @msm_writel(i32 noundef %38, ptr noundef %42) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @blend_setup(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca [4 x i8], align 4
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4
  %10 = icmp ult i32 %9, 3
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 324, 0\0A.popsection", ""() #8, !srcloc !9
  unreachable

12:                                               ; preds = %1
  %13 = getelementptr inbounds [3 x i32], ptr @switch.table.blend_setup, i32 0, i32 %9
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds [3 x i32], ptr @switch.table.blend_setup.20, i32 0, i32 %9
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds [3 x i32], ptr @switch.table.blend_setup.21, i32 0, i32 %9
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds [3 x i32], ptr @switch.table.blend_setup.22, i32 0, i32 %9
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mdp4_kms, ptr %7, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr i8, ptr %22, i32 %14
  tail call void @msm_writel(i32 noundef 0, ptr noundef %23) #8
  %24 = load ptr, ptr %21, align 8
  %25 = getelementptr i8, ptr %24, i32 %16
  tail call void @msm_writel(i32 noundef 0, ptr noundef %25) #8
  %26 = load ptr, ptr %21, align 8
  %27 = getelementptr i8, ptr %26, i32 %18
  tail call void @msm_writel(i32 noundef 0, ptr noundef %27) #8
  %28 = load ptr, ptr %21, align 8
  %29 = getelementptr i8, ptr %28, i32 %20
  tail call void @msm_writel(i32 noundef 0, ptr noundef %29) #8
  %30 = load ptr, ptr %0, align 8
  %31 = getelementptr inbounds %struct.drm_device, ptr %30, i32 0, i32 30, i32 18
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %38, label %34

34:                                               ; preds = %12
  %35 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  br label %57

36:                                               ; preds = %85
  %37 = icmp ult i32 %9, 3
  br i1 %37, label %38, label %97

38:                                               ; preds = %36, %12
  %39 = icmp eq i32 %9, 1
  %40 = select i1 %39, i32 98308, i32 557060
  %41 = icmp eq i32 %9, 0
  %42 = select i1 %41, i32 65540, i32 %40
  %43 = icmp ult i32 %9, 3
  %44 = getelementptr inbounds [3 x i32], ptr @switch.table.mdp4_crtc_mode_set_nofb.39, i32 0, i32 %9
  %45 = icmp ult i32 %9, 3
  %46 = getelementptr inbounds [3 x i32], ptr @switch.table.blend_setup.33, i32 0, i32 %9
  %47 = icmp ult i32 %9, 3
  %48 = getelementptr inbounds [3 x i32], ptr @switch.table.blend_setup.33, i32 0, i32 %9
  %49 = icmp ult i32 %9, 3
  %50 = getelementptr inbounds [3 x i32], ptr @switch.table.mdp4_crtc_mode_set_nofb, i32 0, i32 %9
  %51 = icmp ult i32 %9, 3
  %52 = getelementptr inbounds [3 x i32], ptr @switch.table.mdp4_crtc_mode_set_nofb.40, i32 0, i32 %9
  %53 = icmp ult i32 %9, 3
  %54 = getelementptr inbounds [3 x i32], ptr @switch.table.blend_setup.36, i32 0, i32 %9
  %55 = icmp ult i32 %9, 3
  %56 = getelementptr inbounds [3 x i32], ptr @switch.table.blend_setup.37, i32 0, i32 %9
  br label %90

57:                                               ; preds = %85, %34
  %58 = phi ptr [ %32, %34 ], [ %86, %85 ]
  %59 = load ptr, ptr %35, align 4
  %60 = getelementptr inbounds %struct.drm_crtc_state, ptr %59, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr i8, ptr %58, i32 408
  %63 = load i32, ptr %62, align 4
  %64 = shl nuw i32 1, %63
  %65 = and i32 %64, %61
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %85, label %67

67:                                               ; preds = %57
  %68 = getelementptr i8, ptr %58, i32 -4
  %69 = tail call i32 @mdp4_plane_pipe(ptr noundef %68) #8
  %70 = and i32 %69, 1073741823
  %71 = add nsw i32 %70, -5
  %72 = icmp ult i32 %71, -3
  br i1 %72, label %73, label %85

73:                                               ; preds = %67
  %74 = getelementptr [7 x i32], ptr @idxs, i32 0, i32 %69
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr i8, ptr %58, i32 416
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.drm_plane_state, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = tail call ptr @msm_framebuffer_format(ptr noundef %79) #8
  %81 = getelementptr inbounds %struct.mdp_format, ptr %80, i32 0, i32 6
  %82 = load i8, ptr %81, align 4, !range !10
  %83 = add i32 %75, -1
  %84 = getelementptr [4 x i8], ptr %2, i32 0, i32 %83
  store i8 %82, ptr %84, align 1
  br label %85

85:                                               ; preds = %73, %67, %57
  %86 = load ptr, ptr %58, align 4
  %87 = load ptr, ptr %0, align 8
  %88 = getelementptr inbounds %struct.drm_device, ptr %87, i32 0, i32 30, i32 18
  %89 = icmp eq ptr %86, %88
  br i1 %89, label %36, label %57

90:                                               ; preds = %175, %38
  %91 = phi i32 [ %182, %175 ], [ 0, %38 ]
  %92 = getelementptr [4 x i8], ptr %2, i32 0, i32 %91
  %93 = load i8, ptr %92, align 1, !range !10
  %94 = icmp eq i8 %93, 0
  %95 = select i1 %94, i32 16, i32 98
  %96 = icmp ult i32 %91, 4
  br i1 %96, label %99, label %98

97:                                               ; preds = %36
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 324, 0\0A.popsection", ""() #8, !srcloc !9
  unreachable

98:                                               ; preds = %90
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 358, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

99:                                               ; preds = %90
  %100 = getelementptr inbounds [4 x i32], ptr @switch.table.blend_setup.30, i32 0, i32 %91
  %101 = load i32, ptr %100, align 4
  %102 = add nuw nsw i32 %101, %42
  %103 = load ptr, ptr %21, align 8
  %104 = getelementptr i8, ptr %103, i32 %102
  tail call void @msm_writel(i32 noundef 255, ptr noundef %104) #8
  br i1 %43, label %106, label %105

105:                                              ; preds = %99
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 324, 0\0A.popsection", ""() #8, !srcloc !9
  unreachable

106:                                              ; preds = %99
  %107 = icmp ult i32 %91, 4
  br i1 %107, label %109, label %108

108:                                              ; preds = %106
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 358, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

109:                                              ; preds = %106
  %110 = load i32, ptr %44, align 4
  %111 = getelementptr inbounds [4 x i32], ptr @switch.table.blend_setup.30, i32 0, i32 %91
  %112 = load i32, ptr %111, align 4
  %113 = or i32 %112, %110
  %114 = load ptr, ptr %21, align 8
  %115 = getelementptr i8, ptr %114, i32 %113
  tail call void @msm_writel(i32 noundef 0, ptr noundef %115) #8
  br i1 %45, label %117, label %116

116:                                              ; preds = %109
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 324, 0\0A.popsection", ""() #8, !srcloc !9
  unreachable

117:                                              ; preds = %109
  %118 = icmp ult i32 %91, 4
  br i1 %118, label %120, label %119

119:                                              ; preds = %117
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 358, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

120:                                              ; preds = %117
  %121 = load i32, ptr %46, align 4
  %122 = getelementptr inbounds [4 x i32], ptr @switch.table.blend_setup.30, i32 0, i32 %91
  %123 = load i32, ptr %122, align 4
  %124 = or i32 %123, %121
  %125 = load ptr, ptr %21, align 8
  %126 = getelementptr i8, ptr %125, i32 %124
  tail call void @msm_writel(i32 noundef %95, ptr noundef %126) #8
  br i1 %47, label %128, label %127

127:                                              ; preds = %120
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 324, 0\0A.popsection", ""() #8, !srcloc !9
  unreachable

128:                                              ; preds = %120
  %129 = icmp ult i32 %91, 4
  br i1 %129, label %131, label %130

130:                                              ; preds = %128
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 402, 0\0A.popsection", ""() #8, !srcloc !12
  unreachable

131:                                              ; preds = %128
  %132 = load i32, ptr %48, align 4
  %133 = getelementptr inbounds [4 x i32], ptr @switch.table.blend_setup.26, i32 0, i32 %91
  %134 = load i32, ptr %133, align 4
  %135 = or i32 %134, %132
  %136 = load ptr, ptr %21, align 8
  %137 = getelementptr i8, ptr %136, i32 %135
  tail call void @msm_writel(i32 noundef 1, ptr noundef %137) #8
  br i1 %49, label %139, label %138

138:                                              ; preds = %131
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 324, 0\0A.popsection", ""() #8, !srcloc !9
  unreachable

139:                                              ; preds = %131
  %140 = icmp ult i32 %91, 4
  br i1 %140, label %142, label %141

141:                                              ; preds = %139
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 358, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

142:                                              ; preds = %139
  %143 = load i32, ptr %50, align 4
  %144 = getelementptr inbounds [4 x i32], ptr @switch.table.blend_setup.30, i32 0, i32 %91
  %145 = load i32, ptr %144, align 4
  %146 = add nuw nsw i32 %145, %143
  %147 = load ptr, ptr %21, align 8
  %148 = getelementptr i8, ptr %147, i32 %146
  tail call void @msm_writel(i32 noundef 0, ptr noundef %148) #8
  br i1 %51, label %150, label %149

149:                                              ; preds = %142
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 324, 0\0A.popsection", ""() #8, !srcloc !9
  unreachable

150:                                              ; preds = %142
  %151 = icmp ult i32 %91, 4
  br i1 %151, label %153, label %152

152:                                              ; preds = %150
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 358, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

153:                                              ; preds = %150
  %154 = load i32, ptr %52, align 4
  %155 = getelementptr inbounds [4 x i32], ptr @switch.table.blend_setup.30, i32 0, i32 %91
  %156 = load i32, ptr %155, align 4
  %157 = or i32 %156, %154
  %158 = load ptr, ptr %21, align 8
  %159 = getelementptr i8, ptr %158, i32 %157
  tail call void @msm_writel(i32 noundef 0, ptr noundef %159) #8
  br i1 %53, label %161, label %160

160:                                              ; preds = %153
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 324, 0\0A.popsection", ""() #8, !srcloc !9
  unreachable

161:                                              ; preds = %153
  %162 = icmp ult i32 %91, 4
  br i1 %162, label %164, label %163

163:                                              ; preds = %161
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 358, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

164:                                              ; preds = %161
  %165 = load i32, ptr %54, align 4
  %166 = getelementptr inbounds [4 x i32], ptr @switch.table.blend_setup.30, i32 0, i32 %91
  %167 = load i32, ptr %166, align 4
  %168 = add nuw nsw i32 %167, %165
  %169 = load ptr, ptr %21, align 8
  %170 = getelementptr i8, ptr %169, i32 %168
  tail call void @msm_writel(i32 noundef 0, ptr noundef %170) #8
  br i1 %55, label %172, label %171

171:                                              ; preds = %164
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 324, 0\0A.popsection", ""() #8, !srcloc !9
  unreachable

172:                                              ; preds = %164
  %173 = icmp ult i32 %91, 4
  br i1 %173, label %175, label %174

174:                                              ; preds = %172
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 358, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

175:                                              ; preds = %172
  %176 = load i32, ptr %56, align 4
  %177 = getelementptr inbounds [4 x i32], ptr @switch.table.blend_setup.30, i32 0, i32 %91
  %178 = load i32, ptr %177, align 4
  %179 = or i32 %178, %176
  %180 = load ptr, ptr %21, align 8
  %181 = getelementptr i8, ptr %180, i32 %179
  tail call void @msm_writel(i32 noundef 0, ptr noundef %181) #8
  %182 = add nuw nsw i32 %91, 1
  %183 = icmp eq i32 %182, 4
  br i1 %183, label %184, label %90

184:                                              ; preds = %175
  %185 = getelementptr inbounds %struct.mdp4_kms, ptr %7, i32 0, i32 1
  %186 = load ptr, ptr %185, align 8
  %187 = getelementptr inbounds %struct.drm_device, ptr %186, i32 0, i32 30, i32 20
  %188 = load ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, %187
  br i1 %189, label %286, label %194

190:                                              ; preds = %280, %194
  %191 = phi i32 [ %196, %194 ], [ %281, %280 ]
  %192 = load ptr, ptr %195, align 4
  %193 = icmp eq ptr %192, %187
  br i1 %193, label %286, label %194

194:                                              ; preds = %190, %184
  %195 = phi ptr [ %192, %190 ], [ %188, %184 ]
  %196 = phi i32 [ %191, %190 ], [ 0, %184 ]
  %197 = getelementptr i8, ptr %195, i32 -8
  %198 = load ptr, ptr %197, align 8
  %199 = getelementptr inbounds %struct.drm_device, ptr %198, i32 0, i32 30, i32 18
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, %199
  br i1 %201, label %190, label %202

202:                                              ; preds = %194
  %203 = getelementptr i8, ptr %195, i32 636
  %204 = getelementptr i8, ptr %195, i32 768
  br label %205

205:                                              ; preds = %280, %202
  %206 = phi ptr [ %200, %202 ], [ %282, %280 ]
  %207 = phi i32 [ %196, %202 ], [ %281, %280 ]
  %208 = load ptr, ptr %203, align 4
  %209 = getelementptr inbounds %struct.drm_crtc_state, ptr %208, i32 0, i32 4
  %210 = load i32, ptr %209, align 4
  %211 = getelementptr i8, ptr %206, i32 408
  %212 = load i32, ptr %211, align 4
  %213 = shl nuw i32 1, %212
  %214 = and i32 %213, %210
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %280, label %216

216:                                              ; preds = %205
  %217 = getelementptr i8, ptr %206, i32 -4
  %218 = tail call i32 @mdp4_plane_pipe(ptr noundef %217) #8
  %219 = getelementptr [7 x i32], ptr @idxs, i32 0, i32 %218
  %220 = load i32, ptr %219, align 4
  %221 = load i32, ptr %204, align 8
  %222 = getelementptr [5 x i32], ptr @setup_mixer.stages, i32 0, i32 %220
  %223 = load i32, ptr %222, align 4
  switch i32 %218, label %279 [
    i32 0, label %224
    i32 1, label %231
    i32 2, label %239
    i32 3, label %247
    i32 4, label %255
    i32 5, label %263
    i32 6, label %271
  ]

224:                                              ; preds = %216
  %225 = and i32 %207, -16
  %226 = and i32 %223, 7
  %227 = icmp eq i32 %221, 1
  %228 = select i1 %227, i32 8, i32 0
  %229 = or i32 %228, %225
  %230 = or i32 %229, %226
  br label %280

231:                                              ; preds = %216
  %232 = and i32 %207, -241
  %233 = shl i32 %223, 4
  %234 = and i32 %233, 112
  %235 = icmp eq i32 %221, 1
  %236 = select i1 %235, i32 128, i32 0
  %237 = or i32 %236, %232
  %238 = or i32 %237, %234
  br label %280

239:                                              ; preds = %216
  %240 = and i32 %207, -3841
  %241 = shl i32 %223, 8
  %242 = and i32 %241, 1792
  %243 = icmp eq i32 %221, 1
  %244 = select i1 %243, i32 2048, i32 0
  %245 = or i32 %244, %240
  %246 = or i32 %245, %242
  br label %280

247:                                              ; preds = %216
  %248 = and i32 %207, -61441
  %249 = shl i32 %223, 12
  %250 = and i32 %249, 28672
  %251 = icmp eq i32 %221, 1
  %252 = select i1 %251, i32 32768, i32 0
  %253 = or i32 %252, %248
  %254 = or i32 %253, %250
  br label %280

255:                                              ; preds = %216
  %256 = and i32 %207, -983041
  %257 = shl i32 %223, 16
  %258 = and i32 %257, 458752
  %259 = icmp eq i32 %221, 1
  %260 = select i1 %259, i32 524288, i32 0
  %261 = or i32 %260, %256
  %262 = or i32 %261, %258
  br label %280

263:                                              ; preds = %216
  %264 = and i32 %207, -15728641
  %265 = shl i32 %223, 20
  %266 = and i32 %265, 7340032
  %267 = icmp eq i32 %221, 1
  %268 = select i1 %267, i32 8388608, i32 0
  %269 = or i32 %268, %264
  %270 = or i32 %269, %266
  br label %280

271:                                              ; preds = %216
  %272 = and i32 %207, -251658241
  %273 = shl i32 %223, 24
  %274 = and i32 %273, 117440512
  %275 = icmp eq i32 %221, 1
  %276 = select i1 %275, i32 134217728, i32 0
  %277 = or i32 %276, %272
  %278 = or i32 %277, %274
  br label %280

279:                                              ; preds = %216
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 148, i32 noundef 9, ptr noundef nonnull @.str.4) #8
  br label %280

280:                                              ; preds = %279, %271, %263, %255, %247, %239, %231, %224, %205
  %281 = phi i32 [ %207, %205 ], [ %207, %279 ], [ %278, %271 ], [ %270, %263 ], [ %262, %255 ], [ %254, %247 ], [ %246, %239 ], [ %238, %231 ], [ %230, %224 ]
  %282 = load ptr, ptr %206, align 4
  %283 = load ptr, ptr %197, align 8
  %284 = getelementptr inbounds %struct.drm_device, ptr %283, i32 0, i32 30, i32 18
  %285 = icmp eq ptr %282, %284
  br i1 %285, label %190, label %205

286:                                              ; preds = %190, %184
  %287 = phi i32 [ 0, %184 ], [ %191, %190 ]
  %288 = load ptr, ptr %21, align 8
  %289 = getelementptr i8, ptr %288, i32 65792
  tail call void @msm_writel(i32 noundef %287, ptr noundef %289) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp4_crtc_wait_for_commit_done(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @drm_crtc_vblank_get(ptr noundef %0) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %53

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.mdp4_kms, ptr %7, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr i8, ptr %12, i32 98304
  %14 = tail call i32 @msm_readl(ptr noundef %13) #8
  %15 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %52, label %19

19:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #8, !annotation !13
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #8
  %20 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 23
  %21 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  br label %22

22:                                               ; preds = %40, %19
  %23 = phi i32 [ 5, %19 ], [ %41, %40 ]
  %24 = load ptr, ptr %20, align 4
  %25 = load i32, ptr %21, align 8
  %26 = getelementptr %struct.drm_vblank_crtc, ptr %24, i32 %25, i32 1
  %27 = call i32 @prepare_to_wait_event(ptr noundef %26, ptr noundef nonnull %2, i32 noundef 2) #8
  %28 = load ptr, ptr %11, align 8
  %29 = getelementptr i8, ptr %28, i32 98304
  %30 = call i32 @msm_readl(ptr noundef %29) #8
  %31 = load i32, ptr %15, align 4
  %32 = and i32 %31, %30
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = icmp ne i32 %23, 0
  %36 = select i1 %33, i1 true, i1 %35
  %37 = select i1 %36, i32 %23, i32 1
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %34, i1 true, i1 %38
  br i1 %39, label %42, label %40

40:                                               ; preds = %22
  %41 = call i32 @schedule_timeout(i32 noundef %37) #8
  br label %22

42:                                               ; preds = %22
  %43 = load ptr, ptr %20, align 4
  %44 = load i32, ptr %21, align 8
  %45 = getelementptr %struct.drm_vblank_crtc, ptr %43, i32 %44, i32 1
  call void @finish_wait(ptr noundef %45, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #8
  %46 = icmp slt i32 %37, 1
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 2
  %51 = load i32, ptr %50, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.5, i32 noundef %51) #9
  br label %52

52:                                               ; preds = %47, %42, %10
  store i32 0, ptr %15, align 4
  call void @drm_crtc_vblank_put(ptr noundef %0) #8
  br label %53

53:                                               ; preds = %52, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mdp4_crtc_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 912) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.mdp4_crtc, ptr %7, i32 0, i32 2
  store i32 %2, ptr %10, align 8
  %11 = getelementptr inbounds %struct.mdp4_crtc, ptr %7, i32 0, i32 3
  store i32 %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mdp4_crtc, ptr %7, i32 0, i32 4
  store i32 %4, ptr %12, align 8
  %13 = icmp ult i32 %4, 3
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = getelementptr inbounds [3 x i32], ptr @switch.table.mdp4_crtc_init, i32 0, i32 %4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds [3 x i32], ptr @switch.table.mdp4_crtc_init.38, i32 0, i32 %4
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i32 [ %16, %14 ], [ 0, %9 ]
  %21 = phi i32 [ %18, %14 ], [ 0, %9 ]
  %22 = getelementptr inbounds %struct.mdp4_crtc, ptr %7, i32 0, i32 12, i32 1
  store i32 %20, ptr %22, align 8
  %23 = getelementptr inbounds %struct.mdp4_crtc, ptr %7, i32 0, i32 12, i32 3
  store ptr @mdp4_crtc_vblank_irq, ptr %23, align 8
  %24 = getelementptr inbounds %struct.mdp4_crtc, ptr %7, i32 0, i32 13, i32 1
  store i32 %21, ptr %24, align 4
  %25 = getelementptr inbounds %struct.mdp4_crtc, ptr %7, i32 0, i32 13, i32 3
  store ptr @mdp4_crtc_err_irq, ptr %25, align 4
  %26 = getelementptr inbounds %struct.mdp4_crtc, ptr %7, i32 0, i32 1
  %27 = getelementptr [3 x ptr], ptr @dma_names, i32 0, i32 %4
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %26, i32 noundef 8, ptr noundef nonnull @.str.1, ptr noundef %28, i32 noundef %3)
  %30 = getelementptr inbounds %struct.mdp4_crtc, ptr %7, i32 0, i32 7
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.mdp4_crtc, ptr %7, i32 0, i32 11
  tail call void @drm_flip_work_init(ptr noundef %31, ptr noundef nonnull @.str.2, ptr noundef nonnull @unref_cursor_worker) #8
  %32 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %1, ptr noundef null, ptr noundef nonnull @mdp4_crtc_funcs, ptr noundef null) #8
  %33 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 19
  store ptr @mdp4_crtc_helper_funcs, ptr %33, align 4
  br label %34

34:                                               ; preds = %19, %5
  %35 = phi ptr [ %7, %19 ], [ inttoptr (i32 -12 to ptr), %5 ]
  ret ptr %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_crtc_vblank_irq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = getelementptr i8, ptr %0, i32 -872
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_drm_private, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void @mdp_irq_unregister(ptr noundef %9, ptr noundef %0) #8
  %10 = getelementptr i8, ptr %0, i32 -48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #8, !srcloc !15
  %11 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %10) #8, !srcloc !16
  %12 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 28
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #8
  %19 = getelementptr i8, ptr %0, i32 -56
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  store ptr null, ptr %19, align 8
  %23 = getelementptr i8, ptr %0, i32 -120
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef %23, ptr noundef nonnull %20) #8
  tail call void @drm_crtc_send_vblank_event(ptr noundef %4, ptr noundef nonnull %20) #8
  br label %24

24:                                               ; preds = %22, %15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %18) #8
  br label %25

25:                                               ; preds = %24, %2
  %26 = and i32 %12, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %126, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.msm_drm_private, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %0, i32 -104
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr i8, ptr %0, i32 -92
  %37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %36) #8
  %38 = getelementptr i8, ptr %0, i32 -88
  %39 = load i8, ptr %38, align 4, !range !10
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %107, label %41

41:                                               ; preds = %28
  %42 = getelementptr i8, ptr %0, i32 -64
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %0, i32 -60
  %45 = load ptr, ptr %44, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %46 = getelementptr i8, ptr %0, i32 -68
  %47 = load i32, ptr %46, align 4
  %48 = zext i32 %47 to i64
  store i64 %48, ptr %3, align 8
  %49 = icmp eq ptr %43, null
  br i1 %49, label %90, label %50

50:                                               ; preds = %41
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %43) #8, !srcloc !15
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %43, ptr nonnull %43, i32 1, ptr nonnull elementtype(i32) %43) #8, !srcloc !18
  %52 = extractvalue { i32, i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54, !prof !19

54:                                               ; preds = %50
  %55 = add i32 %52, 1
  %56 = or i32 %55, %52
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %60, label %58, !prof !20

58:                                               ; preds = %54, %50
  %59 = phi i32 [ 2, %50 ], [ 1, %54 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %43, i32 noundef %59) #8
  br label %60

60:                                               ; preds = %58, %54
  %61 = getelementptr inbounds %struct.msm_kms, ptr %33, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = call i32 @msm_gem_get_and_pin_iova(ptr noundef nonnull %43, ptr noundef %62, ptr noundef nonnull %3) #8
  %64 = icmp ult i32 %35, 3
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #8, !srcloc !8
  unreachable

66:                                               ; preds = %60
  %67 = shl i32 %35, 16
  %68 = add i32 %67, 589892
  %69 = shl i32 %35, 16
  %70 = add i32 %69, 589896
  %71 = shl i32 %35, 16
  %72 = add i32 %71, 589920
  %73 = getelementptr i8, ptr %0, i32 -84
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, 127
  %76 = getelementptr i8, ptr %0, i32 -80
  %77 = load i32, ptr %76, align 4
  %78 = shl i32 %77, 16
  %79 = and i32 %78, 8323072
  %80 = or i32 %79, %75
  %81 = getelementptr inbounds %struct.mdp4_kms, ptr %33, i32 0, i32 3
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr i8, ptr %82, i32 %68
  call void @msm_writel(i32 noundef %80, ptr noundef %83) #8
  %84 = load i64, ptr %3, align 8
  %85 = trunc i64 %84 to i32
  %86 = load ptr, ptr %81, align 8
  %87 = getelementptr i8, ptr %86, i32 %70
  call void @msm_writel(i32 noundef %85, ptr noundef %87) #8
  %88 = load ptr, ptr %81, align 8
  %89 = getelementptr i8, ptr %88, i32 %72
  call void @msm_writel(i32 noundef 3, ptr noundef %89) #8
  br label %102

90:                                               ; preds = %41
  %91 = icmp ult i32 %35, 3
  br i1 %91, label %93, label %92

92:                                               ; preds = %90
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #8, !srcloc !8
  unreachable

93:                                               ; preds = %90
  %94 = shl i32 %35, 16
  %95 = add i32 %94, 589896
  %96 = getelementptr inbounds %struct.mdp4_kms, ptr %33, i32 0, i32 12
  %97 = load i64, ptr %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = getelementptr inbounds %struct.mdp4_kms, ptr %33, i32 0, i32 3
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr i8, ptr %100, i32 %95
  tail call void @msm_writel(i32 noundef %98, ptr noundef %101) #8
  br label %102

102:                                              ; preds = %93, %66
  %103 = icmp eq ptr %45, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %102
  %105 = getelementptr i8, ptr %0, i32 -44
  call void @drm_flip_work_queue(ptr noundef %105, ptr noundef nonnull %45) #8
  br label %106

106:                                              ; preds = %104, %102
  store ptr %43, ptr %44, align 4
  store i8 0, ptr %38, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  br label %107

107:                                              ; preds = %106, %28
  %108 = icmp ult i32 %35, 3
  br i1 %108, label %110, label %109

109:                                              ; preds = %107
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #8, !srcloc !8
  unreachable

110:                                              ; preds = %107
  %111 = shl i32 %35, 16
  %112 = add i32 %111, 589900
  %113 = getelementptr i8, ptr %0, i32 -76
  %114 = load i32, ptr %113, align 4
  %115 = and i32 %114, 65535
  %116 = getelementptr i8, ptr %0, i32 -72
  %117 = load i32, ptr %116, align 4
  %118 = shl i32 %117, 16
  %119 = or i32 %118, %115
  %120 = getelementptr inbounds %struct.mdp4_kms, ptr %33, i32 0, i32 3
  %121 = load ptr, ptr %120, align 8
  %122 = getelementptr i8, ptr %121, i32 %112
  call void @msm_writel(i32 noundef %119, ptr noundef %122) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %36, i32 noundef %37) #8
  %123 = getelementptr i8, ptr %0, i32 -44
  %124 = getelementptr inbounds %struct.msm_drm_private, ptr %7, i32 0, i32 22
  %125 = load ptr, ptr %124, align 8
  call void @drm_flip_work_commit(ptr noundef %123, ptr noundef %125) #8
  br label %126

126:                                              ; preds = %110, %25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_crtc_err_irq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -892
  %4 = getelementptr i8, ptr %0, i32 -140
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef %4, i32 noundef %1) #8
  tail call fastcc void @crtc_flush(ptr noundef %3)
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_flip_work_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @unref_cursor_worker(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -828
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_kms, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  tail call void @msm_gem_unpin_iova(ptr noundef %1, ptr noundef %10) #8
  %11 = icmp eq ptr %1, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %1) #8, !srcloc !15
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #8, !srcloc !22
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %20, label %18, !prof !20

18:                                               ; preds = %16
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #8
  br label %20

19:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !23
  tail call void @drm_gem_object_free(ptr noundef nonnull %1) #8
  br label %20

20:                                               ; preds = %19, %18, %16, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp4_plane_pipe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_framebuffer_format(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp_irq_unregister(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_flip_work_commit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_get_and_pin_iova(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_flip_work_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @crtc_flush(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_drm_private, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 18
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %41, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  br label %12

12:                                               ; preds = %35, %10
  %13 = phi ptr [ %2, %10 ], [ %36, %35 ]
  %14 = phi ptr [ %8, %10 ], [ %38, %35 ]
  %15 = phi i32 [ 0, %10 ], [ %37, %35 ]
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr inbounds %struct.drm_crtc_state, ptr %16, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %14, i32 408
  %20 = load i32, ptr %19, align 4
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %18
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %12
  %25 = getelementptr i8, ptr %14, i32 -4
  %26 = tail call i32 @mdp4_plane_pipe(ptr noundef %25) #8
  %27 = icmp ult i32 %26, 4
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds [4 x i32], ptr @switch.table.crtc_flush, i32 0, i32 %26
  %30 = load i32, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi i32 [ %30, %28 ], [ 0, %24 ]
  %33 = or i32 %32, %15
  %34 = load ptr, ptr %0, align 8
  br label %35

35:                                               ; preds = %31, %12
  %36 = phi ptr [ %34, %31 ], [ %13, %12 ]
  %37 = phi i32 [ %33, %31 ], [ %15, %12 ]
  %38 = load ptr, ptr %14, align 4
  %39 = getelementptr inbounds %struct.drm_device, ptr %36, i32 0, i32 30, i32 18
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %41, label %12

41:                                               ; preds = %35, %1
  %42 = phi i32 [ 0, %1 ], [ %37, %35 ]
  %43 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 1
  %46 = select i1 %45, i32 2, i32 0
  %47 = icmp eq i32 %44, 0
  %48 = select i1 %47, i32 1, i32 %46
  %49 = or i32 %48, %42
  %50 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef %50, i32 noundef %49) #8
  %51 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 9
  store i32 %49, ptr %51, align 4
  %52 = getelementptr inbounds %struct.mdp4_kms, ptr %6, i32 0, i32 3
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr i8, ptr %53, i32 98304
  tail call void @msm_writel(i32 noundef %49, ptr noundef %54) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_unpin_iova(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_reset(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdp4_crtc_cursor_set(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = alloca i64, align 8
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.msm_drm_private, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  store i64 0, ptr %6, align 8, !annotation !13
  %12 = icmp ugt i32 %3, 64
  %13 = icmp ugt i32 %4, 64
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %17, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %3, i32 noundef %4) #8
  br label %60

18:                                               ; preds = %5
  %19 = icmp eq i32 %2, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %18
  %21 = tail call ptr @drm_gem_object_lookup(ptr noundef %1, i32 noundef %2) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %60, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.msm_kms, ptr %11, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @msm_gem_get_and_pin_iova(ptr noundef nonnull %21, ptr noundef %25, ptr noundef nonnull %6) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %23, %18
  %29 = phi ptr [ %21, %23 ], [ null, %18 ]
  %30 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 7
  %31 = call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #8
  %32 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 7, i32 7
  %33 = load ptr, ptr %32, align 4
  store ptr %29, ptr %32, align 4
  %34 = load i64, ptr %6, align 8
  %35 = trunc i64 %34 to i32
  %36 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 7, i32 6
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 7, i32 2
  store i32 %3, ptr %37, align 4
  %38 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 7, i32 3
  store i32 %4, ptr %38, align 4
  %39 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 7, i32 1
  store i8 1, ptr %39, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %31) #8
  %40 = icmp eq ptr %33, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 11
  call void @drm_flip_work_queue(ptr noundef %42, ptr noundef nonnull %33) #8
  br label %43

43:                                               ; preds = %41, %28
  %44 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #8, !srcloc !15
  %45 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #8, !srcloc !24
  %46 = load ptr, ptr %0, align 8
  %47 = getelementptr inbounds %struct.drm_device, ptr %46, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.msm_drm_private, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 12
  call void @mdp_irq_register(ptr noundef %50, ptr noundef %51) #8
  br label %60

52:                                               ; preds = %23
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %21) #8, !srcloc !15
  %53 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %21, ptr nonnull %21, i32 1, ptr nonnull elementtype(i32) %21) #8, !srcloc !22
  %54 = extractvalue { i32, i32, i32 } %53, 0
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = icmp sgt i32 %54, 0
  br i1 %57, label %60, label %58, !prof !20

58:                                               ; preds = %56
  call void @refcount_warn_saturate(ptr noundef nonnull %21, i32 noundef 3) #8
  br label %60

59:                                               ; preds = %52
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !23
  call void @drm_gem_object_free(ptr noundef nonnull %21) #8
  br label %60

60:                                               ; preds = %59, %58, %56, %43, %20, %15
  %61 = phi i32 [ -22, %15 ], [ 0, %43 ], [ -2, %20 ], [ %26, %56 ], [ %26, %58 ], [ %26, %59 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdp4_crtc_cursor_move(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 7
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 7, i32 4
  store i32 %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 7, i32 5
  store i32 %2, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #8
  tail call fastcc void @crtc_flush(ptr noundef %0)
  %8 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #8, !srcloc !15
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #8, !srcloc !24
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.msm_drm_private, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 12
  tail call void @mdp_irq_register(ptr noundef %14, ptr noundef %15) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_crtc_destroy(ptr noundef %0) #2 {
  tail call void @drm_crtc_cleanup(ptr noundef %0) #8
  %2 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 11
  tail call void @drm_flip_work_cleanup(ptr noundef %2) #8
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_crtc_duplicate_state(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_crtc_enable_vblank(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_crtc_disable_vblank(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp_irq_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_flip_work_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_crtc_mode_set_nofb(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_drm_private, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !19

14:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 233, i32 noundef 9, ptr noundef null) #8
  br label %109

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7
  %17 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 1
  %18 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 31
  %19 = tail call i32 @drm_mode_vrefresh(ptr noundef %16) #8
  %20 = load i32, ptr %16, align 4
  %21 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 1
  %22 = load i16, ptr %21, align 4
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 2
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 3
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  %30 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 4
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 6
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 7
  %37 = load i16, ptr %36, align 4
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 8
  %40 = load i16, ptr %39, align 2
  %41 = zext i16 %40 to i32
  %42 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 9
  %43 = load i16, ptr %42, align 4
  %44 = zext i16 %43 to i32
  %45 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 28
  %46 = load i8, ptr %45, align 2
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 11
  %49 = load i32, ptr %48, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15, ptr noundef %17, ptr noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef %23, i32 noundef %26, i32 noundef %29, i32 noundef %32, i32 noundef %35, i32 noundef %38, i32 noundef %41, i32 noundef %44, i32 noundef %47, i32 noundef %49) #8
  %50 = icmp ult i32 %8, 3
  br i1 %50, label %52, label %51

51:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #8, !srcloc !8
  unreachable

52:                                               ; preds = %15
  %53 = shl i32 %8, 16
  %54 = add i32 %53, 589828
  %55 = shl i32 %8, 16
  %56 = add i32 %55, 589832
  %57 = shl i32 %8, 16
  %58 = add i32 %57, 589836
  %59 = shl i32 %8, 16
  %60 = add i32 %59, 589840
  %61 = load i16, ptr %21, align 4
  %62 = zext i16 %61 to i32
  %63 = load i16, ptr %33, align 2
  %64 = zext i16 %63 to i32
  %65 = shl nuw i32 %64, 16
  %66 = or i32 %65, %62
  %67 = getelementptr inbounds %struct.mdp4_kms, ptr %6, i32 0, i32 3
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr i8, ptr %68, i32 %54
  tail call void @msm_writel(i32 noundef %66, ptr noundef %69) #8
  %70 = load ptr, ptr %67, align 8
  %71 = getelementptr i8, ptr %70, i32 %56
  tail call void @msm_writel(i32 noundef 0, ptr noundef %71) #8
  %72 = load ptr, ptr %67, align 8
  %73 = getelementptr i8, ptr %72, i32 %58
  tail call void @msm_writel(i32 noundef 0, ptr noundef %73) #8
  %74 = load ptr, ptr %67, align 8
  %75 = getelementptr i8, ptr %74, i32 %60
  tail call void @msm_writel(i32 noundef 0, ptr noundef %75) #8
  %76 = icmp ult i32 %10, 3
  br i1 %76, label %78, label %77

77:                                               ; preds = %52
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp4/mdp4.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 324, 0\0A.popsection", ""() #8, !srcloc !9
  unreachable

78:                                               ; preds = %52
  %79 = getelementptr inbounds [3 x i32], ptr @switch.table.mdp4_crtc_mode_set_nofb, i32 0, i32 %10
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds [3 x i32], ptr @switch.table.mdp4_crtc_mode_set_nofb.39, i32 0, i32 %10
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds [3 x i32], ptr @switch.table.mdp4_crtc_mode_set_nofb.40, i32 0, i32 %10
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds [3 x i32], ptr @switch.table.mdp4_crtc_mode_set_nofb.41, i32 0, i32 %10
  %86 = load i32, ptr %85, align 4
  %87 = load ptr, ptr %67, align 8
  %88 = getelementptr i8, ptr %87, i32 %80
  tail call void @msm_writel(i32 noundef 0, ptr noundef %88) #8
  %89 = load i16, ptr %21, align 4
  %90 = zext i16 %89 to i32
  %91 = load i16, ptr %33, align 2
  %92 = zext i16 %91 to i32
  %93 = shl nuw i32 %92, 16
  %94 = or i32 %93, %90
  %95 = load ptr, ptr %67, align 8
  %96 = getelementptr i8, ptr %95, i32 %82
  tail call void @msm_writel(i32 noundef %94, ptr noundef %96) #8
  %97 = load ptr, ptr %67, align 8
  %98 = getelementptr i8, ptr %97, i32 %84
  tail call void @msm_writel(i32 noundef 0, ptr noundef %98) #8
  %99 = load ptr, ptr %67, align 8
  %100 = getelementptr i8, ptr %99, i32 %86
  tail call void @msm_writel(i32 noundef 1, ptr noundef %100) #8
  %101 = icmp eq i32 %8, 2
  br i1 %101, label %102, label %109

102:                                              ; preds = %78
  %103 = load ptr, ptr %67, align 8
  %104 = getelementptr i8, ptr %103, i32 721008
  tail call void @msm_writel(i32 noundef 16711680, ptr noundef %104) #8
  %105 = load ptr, ptr %67, align 8
  %106 = getelementptr i8, ptr %105, i32 721012
  tail call void @msm_writel(i32 noundef 16711680, ptr noundef %106) #8
  %107 = load ptr, ptr %67, align 8
  %108 = getelementptr i8, ptr %107, i32 721016
  tail call void @msm_writel(i32 noundef 16711680, ptr noundef %108) #8
  br label %109

109:                                              ; preds = %102, %78, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdp4_crtc_atomic_check(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16, ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_crtc_atomic_begin(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.17, ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_crtc_atomic_flush(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 18
  %8 = load ptr, ptr %7, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef %4, ptr noundef %8) #8
  %9 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !20

12:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 335, i32 noundef 9, ptr noundef null) #8
  br label %13

13:                                               ; preds = %12, %2
  %14 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 28
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #8
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.drm_crtc_state, ptr %16, i32 0, i32 18
  %18 = load ptr, ptr %17, align 4
  store ptr %18, ptr %9, align 8
  store ptr null, ptr %17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #8
  tail call fastcc void @blend_setup(ptr noundef %0)
  tail call fastcc void @crtc_flush(ptr noundef %0)
  %19 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #8, !srcloc !15
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 2, ptr elementtype(i32) %19) #8, !srcloc !24
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.msm_drm_private, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 12
  tail call void @mdp_irq_register(ptr noundef %25, ptr noundef %26) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_crtc_atomic_enable(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, ptr noundef %8) #8
  %9 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 5
  %10 = load i8, ptr %9, align 4, !range !10
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12, !prof !20

12:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 295, i32 noundef 9, ptr noundef null) #8
  br label %16

13:                                               ; preds = %2
  %14 = tail call i32 @mdp4_enable(ptr noundef %7) #8
  tail call void @drm_crtc_vblank_on(ptr noundef %0) #8
  %15 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 13
  tail call void @mdp_irq_register(ptr noundef %7, ptr noundef %15) #8
  tail call fastcc void @crtc_flush(ptr noundef %0)
  store i8 1, ptr %9, align 4
  br label %16

16:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_crtc_atomic_disable(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, ptr noundef %8) #8
  %9 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 5
  %10 = load i8, ptr %9, align 4, !range !10
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13, !prof !19

12:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 275, i32 noundef 9, ptr noundef null) #8
  br label %16

13:                                               ; preds = %2
  tail call void @drm_crtc_vblank_off(ptr noundef %0) #8
  %14 = getelementptr inbounds %struct.mdp4_crtc, ptr %0, i32 0, i32 13
  tail call void @mdp_irq_unregister(ptr noundef %7, ptr noundef %14) #8
  %15 = tail call i32 @mdp4_disable(ptr noundef %7) #8
  store i8 0, ptr %9, align 4
  br label %16

16:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp4_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp4_disable(ptr noundef) local_unnamed_addr #3

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!8 = !{i64 2155692757, i64 2155693262, i64 2155692794, i64 2155692850, i64 2155692884, i64 2155692908, i64 2155692949, i64 2155692970, i64 2155692998, i64 2155693032}
!9 = !{i64 2155682464, i64 2155682969, i64 2155682501, i64 2155682557, i64 2155682591, i64 2155682615, i64 2155682656, i64 2155682677, i64 2155682705, i64 2155682739}
!10 = !{i8 0, i8 2}
!11 = !{i64 2155685003, i64 2155685508, i64 2155685040, i64 2155685096, i64 2155685130, i64 2155685154, i64 2155685195, i64 2155685216, i64 2155685244, i64 2155685278}
!12 = !{i64 2155687879, i64 2155688384, i64 2155687916, i64 2155687972, i64 2155688006, i64 2155688030, i64 2155688071, i64 2155688092, i64 2155688120, i64 2155688154}
!13 = !{!"auto-init"}
!14 = !{i64 2148391222}
!15 = !{i64 604977, i64 2148094948, i64 2148094974, i64 2148095021, i64 2148095043, i64 2148095071, i64 2148095091}
!16 = !{i64 614424, i64 614441, i64 614465, i64 614491, i64 614509}
!17 = !{i64 2148391566}
!18 = !{i64 2148108618, i64 2148108650, i64 2148108679, i64 2148108713, i64 2148108744, i64 2148108767}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2148208828}
!22 = !{i64 2148110975, i64 2148111007, i64 2148111036, i64 2148111070, i64 2148111101, i64 2148111124}
!23 = !{i64 2149547470}
!24 = !{i64 2148114938, i64 2148114964, i64 2148114993, i64 2148115027, i64 2148115058, i64 2148115081}
