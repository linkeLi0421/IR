; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.79, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.79 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.82, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.82 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.mdp5_interface = type { i32, i32, i32, i32 }
%struct.mdp5_kms = type { %struct.mdp_kms, ptr, ptr, i32, [13 x ptr], i32, [8 x ptr], i32, [5 x ptr], ptr, i32, %struct.drm_modeset_lock, %struct.drm_private_obj, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i8, %struct.mdp_irq, i32 }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }
%struct.mdp5_pipeline = type { ptr, ptr, ptr }
%struct.mdp5_ctl = type { ptr, i32, i32, i8, i32, %struct.spinlock, i32, i32, i8, i8, ptr }
%struct.mdp5_cfg_hw = type { ptr, %struct.mdp5_mdp_block, %struct.mdp5_smp_block, %struct.mdp5_ctl_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_lm_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_intf_block, %struct.mdp5_perf_block, i32 }
%struct.mdp5_mdp_block = type { i32, [8 x i32], i32 }
%struct.mdp5_smp_block = type { i32, i32, [32 x i32], [2 x i32], [32 x i8] }
%struct.mdp5_ctl_block = type { i32, [8 x i32], i32 }
%struct.mdp5_pipe_block = type { i32, [8 x i32], i32 }
%struct.mdp5_lm_block = type { i32, [8 x i32], [8 x %struct.mdp5_lm_instance], i32, i32, i32 }
%struct.mdp5_lm_instance = type { i32, i32, i32, i32 }
%struct.mdp5_sub_block = type { i32, [8 x i32] }
%struct.mdp5_intf_block = type { [8 x i32], [5 x i32] }
%struct.mdp5_perf_block = type { i32, i32, i32 }
%struct.mdp5_hw_mixer = type { i32, ptr, i32, i32, i32, i32, i32 }
%struct.mdp5_ctl_manager = type { ptr, i32, i32, i32, i8, i32, %struct.spinlock, [8 x %struct.mdp5_ctl] }

@.str = private unnamed_addr constant [41 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"intf_%d: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"*ERROR* CTL %d cannot find LM\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"*ERROR* unsupported configuration\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"lm%d: blend config = 0x%08x. ext_cfg = 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"*ERROR* CTLs already paired\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"*ERROR* Only pair booked CTLs\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"fall back to the other CTL category for INTF %d!\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"*ERROR* No more CTL available!\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"CTL %d allocated\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"*ERROR* failed to allocate CTL manager\0A\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"*ERROR* Increase static pool size to at least %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"*ERROR* CTL_%d: base is null!\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"Pool of %d CTLs created.\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h\00", align 1
@mdp5_cfg = external dso_local local_unnamed_addr global ptr, align 4
@.str.18 = private unnamed_addr constant [30 x i8] c"CTL %d FLUSH pending mask %x\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"Single FLUSH mask %x,ID %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@switch.table.mdp5_ctl_blend.22 = private unnamed_addr constant [6 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 36], align 4
@switch.table.mdp_ctl_flush_mask_encoder = private unnamed_addr constant [4 x i32] [i32 -2147483648, i32 1073741824, i32 536870912, i32 268435456], align 4
@switch.table.mdp_ctl_flush_mask_pipe = private unnamed_addr constant [12 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 2048, i32 4096, i32 262144, i32 524288, i32 4194304, i32 8388608], align 4
@switch.table.mdp5_ctl_commit = private unnamed_addr constant [6 x i32] [i32 64, i32 128, i32 256, i32 512, i32 1024, i32 1048576], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdp5_ctl_set_pipeline(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr inbounds %struct.mdp5_interface, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 99
  br i1 %12, label %68, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.mdp5_kms, ptr %8, i32 0, i32 23
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #7
  %16 = getelementptr inbounds %struct.mdp5_kms, ptr %8, i32 0, i32 26
  %17 = load i32, ptr %16, align 8
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %20, !prof !8

19:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 175, i32 noundef 9, ptr noundef null) #7
  br label %20

20:                                               ; preds = %19, %13
  %21 = getelementptr inbounds %struct.mdp5_kms, ptr %8, i32 0, i32 15
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 4
  %24 = tail call i32 @msm_readl(ptr noundef %23) #7
  %25 = getelementptr inbounds %struct.mdp5_interface, ptr %9, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %49 [
    i32 0, label %27
    i32 1, label %32
    i32 2, label %38
    i32 3, label %44
  ]

27:                                               ; preds = %20
  %28 = and i32 %24, -256
  %29 = load i32, ptr %10, align 4
  %30 = and i32 %29, 255
  %31 = or i32 %30, %28
  br label %50

32:                                               ; preds = %20
  %33 = and i32 %24, -65281
  %34 = load i32, ptr %10, align 4
  %35 = shl i32 %34, 8
  %36 = and i32 %35, 65280
  %37 = or i32 %36, %33
  br label %50

38:                                               ; preds = %20
  %39 = and i32 %24, -16711681
  %40 = load i32, ptr %10, align 4
  %41 = shl i32 %40, 16
  %42 = and i32 %41, 16711680
  %43 = or i32 %42, %39
  br label %50

44:                                               ; preds = %20
  %45 = and i32 %24, 16777215
  %46 = load i32, ptr %10, align 4
  %47 = shl i32 %46, 24
  %48 = or i32 %47, %45
  br label %50

49:                                               ; preds = %20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5_ctl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 127, 0\0A.popsection", ""() #7, !srcloc !9
  unreachable

50:                                               ; preds = %44, %38, %32, %27
  %51 = phi i32 [ %48, %44 ], [ %43, %38 ], [ %37, %32 ], [ %31, %27 ]
  %52 = load i32, ptr %16, align 8
  %53 = icmp slt i32 %52, 1
  br i1 %53, label %54, label %55, !prof !8

54:                                               ; preds = %50
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %55

55:                                               ; preds = %54, %50
  %56 = load ptr, ptr %21, align 4
  %57 = getelementptr i8, ptr %56, i32 4
  tail call void @msm_writel(i32 noundef %51, ptr noundef %57) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #7
  %58 = load ptr, ptr %1, align 4
  %59 = getelementptr inbounds %struct.mdp5_interface, ptr %58, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = icmp ugt i32 %60, 99
  br i1 %61, label %68, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.mdp5_interface, ptr %58, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = shl i32 %64, 4
  %66 = add i32 %65, 16
  %67 = and i32 %66, 112
  br label %68

68:                                               ; preds = %62, %55, %2
  %69 = phi ptr [ %58, %55 ], [ %58, %62 ], [ %9, %2 ]
  %70 = phi i32 [ %60, %55 ], [ %60, %62 ], [ %11, %2 ]
  %71 = phi i32 [ 0, %55 ], [ %67, %62 ], [ 0, %2 ]
  switch i32 %70, label %81 [
    i32 1, label %73
    i32 101, label %72
  ]

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72, %68
  %74 = phi i32 [ 4, %72 ], [ 2, %68 ]
  %75 = phi i32 [ 5, %72 ], [ 131072, %68 ]
  %76 = getelementptr inbounds %struct.mdp5_interface, ptr %69, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, %74
  %79 = select i1 %78, i32 %75, i32 0
  %80 = or i32 %79, %71
  br label %81

81:                                               ; preds = %73, %68
  %82 = phi i32 [ %71, %68 ], [ %80, %73 ]
  %83 = getelementptr inbounds %struct.mdp5_pipeline, ptr %1, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.mdp5_ctl, ptr %0, i32 0, i32 5
  %86 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %85) #7
  %87 = getelementptr inbounds %struct.mdp5_ctl, ptr %0, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  switch i32 %88, label %104 [
    i32 0, label %89
    i32 1, label %92
    i32 2, label %95
    i32 3, label %98
    i32 4, label %101
  ]

89:                                               ; preds = %81
  %90 = load ptr, ptr @mdp5_cfg, align 4
  %91 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %90, i32 0, i32 3, i32 1
  br label %105

92:                                               ; preds = %81
  %93 = load ptr, ptr @mdp5_cfg, align 4
  %94 = getelementptr %struct.mdp5_cfg_hw, ptr %93, i32 0, i32 3, i32 1, i32 1
  br label %105

95:                                               ; preds = %81
  %96 = load ptr, ptr @mdp5_cfg, align 4
  %97 = getelementptr %struct.mdp5_cfg_hw, ptr %96, i32 0, i32 3, i32 1, i32 2
  br label %105

98:                                               ; preds = %81
  %99 = load ptr, ptr @mdp5_cfg, align 4
  %100 = getelementptr %struct.mdp5_cfg_hw, ptr %99, i32 0, i32 3, i32 1, i32 3
  br label %105

101:                                              ; preds = %81
  %102 = load ptr, ptr @mdp5_cfg, align 4
  %103 = getelementptr %struct.mdp5_cfg_hw, ptr %102, i32 0, i32 3, i32 1, i32 4
  br label %105

104:                                              ; preds = %81
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

105:                                              ; preds = %101, %98, %95, %92, %89
  %106 = phi ptr [ %103, %101 ], [ %100, %98 ], [ %97, %95 ], [ %94, %92 ], [ %91, %89 ]
  %107 = load i32, ptr %106, align 4
  %108 = load ptr, ptr %0, align 4
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.drm_device, ptr %109, i32 0, i32 5
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.msm_drm_private, ptr %111, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.mdp5_kms, ptr %113, i32 0, i32 26
  %115 = load i32, ptr %114, align 8
  %116 = icmp slt i32 %115, 1
  br i1 %116, label %117, label %118, !prof !8

117:                                              ; preds = %105
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %118

118:                                              ; preds = %117, %105
  %119 = add i32 %107, 20
  %120 = icmp eq ptr %84, null
  %121 = or i32 %82, 1572864
  %122 = select i1 %120, i32 %82, i32 %121
  %123 = getelementptr inbounds %struct.mdp5_kms, ptr %113, i32 0, i32 15
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr i8, ptr %124, i32 %119
  tail call void @msm_writel(i32 noundef %122, ptr noundef %125) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %85, i32 noundef %86) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdp5_ctl_set_encoder_state(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 232, i32 noundef 9, ptr noundef null) #7
  br label %24

6:                                                ; preds = %3
  %7 = load ptr, ptr %1, align 4
  %8 = zext i1 %2 to i8
  %9 = getelementptr inbounds %struct.mdp5_ctl, ptr %0, i32 0, i32 3
  store i8 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mdp5_interface, ptr %7, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = select i1 %2, ptr @.str.2, ptr @.str.3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef %11, ptr noundef nonnull %12) #7
  %13 = load ptr, ptr %1, align 4
  %14 = load i8, ptr %9, align 4, !range !11
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.mdp5_interface, ptr %13, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %24 [
    i32 101, label %23
    i32 1, label %19
  ]

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.mdp5_interface, ptr %13, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %16
  tail call fastcc void @send_start_signal(ptr noundef nonnull %0)
  br label %24

24:                                               ; preds = %23, %19, %16, %6, %5
  %25 = phi i32 [ -22, %5 ], [ 0, %23 ], [ 0, %19 ], [ 0, %6 ], [ 0, %16 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @send_start_signal(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mdp5_ctl, ptr %0, i32 0, i32 5
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #7
  %4 = getelementptr inbounds %struct.mdp5_ctl, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %21 [
    i32 0, label %6
    i32 1, label %9
    i32 2, label %12
    i32 3, label %15
    i32 4, label %18
  ]

6:                                                ; preds = %1
  %7 = load ptr, ptr @mdp5_cfg, align 4
  %8 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %7, i32 0, i32 3, i32 1
  br label %22

9:                                                ; preds = %1
  %10 = load ptr, ptr @mdp5_cfg, align 4
  %11 = getelementptr %struct.mdp5_cfg_hw, ptr %10, i32 0, i32 3, i32 1, i32 1
  br label %22

12:                                               ; preds = %1
  %13 = load ptr, ptr @mdp5_cfg, align 4
  %14 = getelementptr %struct.mdp5_cfg_hw, ptr %13, i32 0, i32 3, i32 1, i32 2
  br label %22

15:                                               ; preds = %1
  %16 = load ptr, ptr @mdp5_cfg, align 4
  %17 = getelementptr %struct.mdp5_cfg_hw, ptr %16, i32 0, i32 3, i32 1, i32 3
  br label %22

18:                                               ; preds = %1
  %19 = load ptr, ptr @mdp5_cfg, align 4
  %20 = getelementptr %struct.mdp5_cfg_hw, ptr %19, i32 0, i32 3, i32 1, i32 4
  br label %22

21:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

22:                                               ; preds = %18, %15, %12, %9, %6
  %23 = phi ptr [ %20, %18 ], [ %17, %15 ], [ %14, %12 ], [ %11, %9 ], [ %8, %6 ]
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %0, align 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.drm_device, ptr %26, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.msm_drm_private, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.mdp5_kms, ptr %30, i32 0, i32 26
  %32 = load i32, ptr %31, align 8
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %35, !prof !8

34:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %35

35:                                               ; preds = %34, %22
  %36 = add i32 %24, 28
  %37 = getelementptr inbounds %struct.mdp5_kms, ptr %30, i32 0, i32 15
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 %36
  tail call void @msm_writel(i32 noundef 1, ptr noundef %39) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdp5_ctl_set_cursor(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = zext i1 %3 to i8
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.mdp5_pipeline, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16, !prof !8

10:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 258, i32 noundef 9, ptr noundef null) #7
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mdp5_ctl, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %15) #7
  br label %121

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.mdp5_pipeline, ptr %1, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %23, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6) #7
  br label %121

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.mdp5_ctl, ptr %0, i32 0, i32 5
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #7
  %27 = getelementptr inbounds %struct.mdp5_ctl, ptr %0, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %8, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  switch i32 %28, label %46 [
    i32 0, label %31
    i32 1, label %34
    i32 2, label %37
    i32 3, label %40
    i32 4, label %43
  ]

31:                                               ; preds = %24
  %32 = load ptr, ptr @mdp5_cfg, align 4
  %33 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %32, i32 0, i32 3, i32 1
  br label %47

34:                                               ; preds = %24
  %35 = load ptr, ptr @mdp5_cfg, align 4
  %36 = getelementptr %struct.mdp5_cfg_hw, ptr %35, i32 0, i32 3, i32 1, i32 1
  br label %47

37:                                               ; preds = %24
  %38 = load ptr, ptr @mdp5_cfg, align 4
  %39 = getelementptr %struct.mdp5_cfg_hw, ptr %38, i32 0, i32 3, i32 1, i32 2
  br label %47

40:                                               ; preds = %24
  %41 = load ptr, ptr @mdp5_cfg, align 4
  %42 = getelementptr %struct.mdp5_cfg_hw, ptr %41, i32 0, i32 3, i32 1, i32 3
  br label %47

43:                                               ; preds = %24
  %44 = load ptr, ptr @mdp5_cfg, align 4
  %45 = getelementptr %struct.mdp5_cfg_hw, ptr %44, i32 0, i32 3, i32 1, i32 4
  br label %47

46:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

47:                                               ; preds = %43, %40, %37, %34, %31
  %48 = phi ptr [ %45, %43 ], [ %42, %40 ], [ %39, %37 ], [ %36, %34 ], [ %33, %31 ]
  %49 = icmp ult i32 %30, 6
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 383, 0\0A.popsection", ""() #7, !srcloc !12
  unreachable

51:                                               ; preds = %47
  %52 = load i32, ptr %48, align 4
  %53 = getelementptr inbounds [6 x i32], ptr @switch.table.mdp5_ctl_blend.22, i32 0, i32 %30
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, %52
  %56 = load ptr, ptr %0, align 4
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.drm_device, ptr %57, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.msm_drm_private, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.mdp5_kms, ptr %61, i32 0, i32 26
  %63 = load i32, ptr %62, align 8
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %65, label %66, !prof !8

65:                                               ; preds = %51
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 175, i32 noundef 9, ptr noundef null) #7
  br label %66

66:                                               ; preds = %65, %51
  %67 = getelementptr inbounds %struct.mdp5_kms, ptr %61, i32 0, i32 15
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 %55
  %70 = tail call i32 @msm_readl(ptr noundef %69) #7
  %71 = and i32 %70, -33554433
  %72 = select i1 %3, i32 33554432, i32 0
  %73 = or i32 %71, %72
  %74 = load i32, ptr %27, align 4
  %75 = load i32, ptr %29, align 4
  switch i32 %74, label %91 [
    i32 0, label %76
    i32 1, label %79
    i32 2, label %82
    i32 3, label %85
    i32 4, label %88
  ]

76:                                               ; preds = %66
  %77 = load ptr, ptr @mdp5_cfg, align 4
  %78 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %77, i32 0, i32 3, i32 1
  br label %92

79:                                               ; preds = %66
  %80 = load ptr, ptr @mdp5_cfg, align 4
  %81 = getelementptr %struct.mdp5_cfg_hw, ptr %80, i32 0, i32 3, i32 1, i32 1
  br label %92

82:                                               ; preds = %66
  %83 = load ptr, ptr @mdp5_cfg, align 4
  %84 = getelementptr %struct.mdp5_cfg_hw, ptr %83, i32 0, i32 3, i32 1, i32 2
  br label %92

85:                                               ; preds = %66
  %86 = load ptr, ptr @mdp5_cfg, align 4
  %87 = getelementptr %struct.mdp5_cfg_hw, ptr %86, i32 0, i32 3, i32 1, i32 3
  br label %92

88:                                               ; preds = %66
  %89 = load ptr, ptr @mdp5_cfg, align 4
  %90 = getelementptr %struct.mdp5_cfg_hw, ptr %89, i32 0, i32 3, i32 1, i32 4
  br label %92

91:                                               ; preds = %66
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

92:                                               ; preds = %88, %85, %82, %79, %76
  %93 = phi ptr [ %90, %88 ], [ %87, %85 ], [ %84, %82 ], [ %81, %79 ], [ %78, %76 ]
  %94 = icmp ult i32 %75, 6
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 383, 0\0A.popsection", ""() #7, !srcloc !12
  unreachable

96:                                               ; preds = %92
  %97 = load i32, ptr %93, align 4
  %98 = getelementptr inbounds [6 x i32], ptr @switch.table.mdp5_ctl_blend.22, i32 0, i32 %75
  %99 = load i32, ptr %98, align 4
  %100 = add i32 %99, %97
  %101 = load ptr, ptr %0, align 4
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.drm_device, ptr %102, i32 0, i32 5
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.msm_drm_private, ptr %104, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.mdp5_kms, ptr %106, i32 0, i32 26
  %108 = load i32, ptr %107, align 8
  %109 = icmp slt i32 %108, 1
  br i1 %109, label %110, label %111, !prof !8

110:                                              ; preds = %96
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %111

111:                                              ; preds = %110, %96
  %112 = getelementptr inbounds %struct.mdp5_kms, ptr %106, i32 0, i32 15
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr i8, ptr %113, i32 %100
  tail call void @msm_writel(i32 noundef %73, ptr noundef %114) #7
  %115 = getelementptr inbounds %struct.mdp5_ctl, ptr %0, i32 0, i32 8
  store i8 %5, ptr %115, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %26) #7
  %116 = icmp eq i32 %2, 1
  %117 = select i1 %116, i32 8388608, i32 0
  %118 = icmp eq i32 %2, 0
  %119 = select i1 %118, i32 4194304, i32 %117
  %120 = getelementptr inbounds %struct.mdp5_ctl, ptr %0, i32 0, i32 7
  store i32 %119, ptr %120, align 4
  br label %121

121:                                              ; preds = %111, %20, %10
  %122 = phi i32 [ -22, %10 ], [ -22, %20 ], [ 0, %111 ]
  ret i32 %122
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @mdp_ctl_flush_mask_cursor(i32 noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq i32 %0, 1
  %3 = select i1 %2, i32 8388608, i32 0
  %4 = icmp eq i32 %0, 0
  %5 = select i1 %4, i32 4194304, i32 %3
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdp5_ctl_blend(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.mdp5_pipeline, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mdp5_pipeline, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.mdp5_ctl, ptr %0, i32 0, i32 5
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #7
  %14 = getelementptr inbounds %struct.mdp5_ctl_manager, ptr %11, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %104, label %17

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.mdp5_ctl, ptr %0, i32 0, i32 1
  br label %19

19:                                               ; preds = %97, %17
  %20 = phi i32 [ 0, %17 ], [ %101, %97 ]
  %21 = load i32, ptr %18, align 4
  switch i32 %21, label %37 [
    i32 0, label %22
    i32 1, label %25
    i32 2, label %28
    i32 3, label %31
    i32 4, label %34
  ]

22:                                               ; preds = %19
  %23 = load ptr, ptr @mdp5_cfg, align 4
  %24 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %23, i32 0, i32 3, i32 1
  br label %38

25:                                               ; preds = %19
  %26 = load ptr, ptr @mdp5_cfg, align 4
  %27 = getelementptr %struct.mdp5_cfg_hw, ptr %26, i32 0, i32 3, i32 1, i32 1
  br label %38

28:                                               ; preds = %19
  %29 = load ptr, ptr @mdp5_cfg, align 4
  %30 = getelementptr %struct.mdp5_cfg_hw, ptr %29, i32 0, i32 3, i32 1, i32 2
  br label %38

31:                                               ; preds = %19
  %32 = load ptr, ptr @mdp5_cfg, align 4
  %33 = getelementptr %struct.mdp5_cfg_hw, ptr %32, i32 0, i32 3, i32 1, i32 3
  br label %38

34:                                               ; preds = %19
  %35 = load ptr, ptr @mdp5_cfg, align 4
  %36 = getelementptr %struct.mdp5_cfg_hw, ptr %35, i32 0, i32 3, i32 1, i32 4
  br label %38

37:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

38:                                               ; preds = %34, %31, %28, %25, %22
  %39 = phi ptr [ %36, %34 ], [ %33, %31 ], [ %30, %28 ], [ %27, %25 ], [ %24, %22 ]
  %40 = icmp ult i32 %20, 6
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 383, 0\0A.popsection", ""() #7, !srcloc !12
  unreachable

42:                                               ; preds = %38
  %43 = load i32, ptr %39, align 4
  %44 = getelementptr inbounds [6 x i32], ptr @switch.table.mdp5_ctl_blend.22, i32 0, i32 %20
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, %43
  %47 = load ptr, ptr %0, align 4
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.drm_device, ptr %48, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.msm_drm_private, ptr %50, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.mdp5_kms, ptr %52, i32 0, i32 26
  %54 = load i32, ptr %53, align 8
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %57, !prof !8

56:                                               ; preds = %42
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %57

57:                                               ; preds = %56, %42
  %58 = getelementptr inbounds %struct.mdp5_kms, ptr %52, i32 0, i32 15
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 %46
  tail call void @msm_writel(i32 noundef 0, ptr noundef %60) #7
  %61 = load i32, ptr %18, align 4
  switch i32 %61, label %77 [
    i32 0, label %62
    i32 1, label %65
    i32 2, label %68
    i32 3, label %71
    i32 4, label %74
  ]

62:                                               ; preds = %57
  %63 = load ptr, ptr @mdp5_cfg, align 4
  %64 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %63, i32 0, i32 3, i32 1
  br label %78

65:                                               ; preds = %57
  %66 = load ptr, ptr @mdp5_cfg, align 4
  %67 = getelementptr %struct.mdp5_cfg_hw, ptr %66, i32 0, i32 3, i32 1, i32 1
  br label %78

68:                                               ; preds = %57
  %69 = load ptr, ptr @mdp5_cfg, align 4
  %70 = getelementptr %struct.mdp5_cfg_hw, ptr %69, i32 0, i32 3, i32 1, i32 2
  br label %78

71:                                               ; preds = %57
  %72 = load ptr, ptr @mdp5_cfg, align 4
  %73 = getelementptr %struct.mdp5_cfg_hw, ptr %72, i32 0, i32 3, i32 1, i32 3
  br label %78

74:                                               ; preds = %57
  %75 = load ptr, ptr @mdp5_cfg, align 4
  %76 = getelementptr %struct.mdp5_cfg_hw, ptr %75, i32 0, i32 3, i32 1, i32 4
  br label %78

77:                                               ; preds = %57
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

78:                                               ; preds = %74, %71, %68, %65, %62
  %79 = phi ptr [ %76, %74 ], [ %73, %71 ], [ %70, %68 ], [ %67, %65 ], [ %64, %62 ]
  %80 = icmp ult i32 %20, 6
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 518, 0\0A.popsection", ""() #7, !srcloc !13
  unreachable

82:                                               ; preds = %78
  %83 = load i32, ptr %79, align 4
  %84 = shl i32 %20, 2
  %85 = add i32 %84, 64
  %86 = add i32 %85, %83
  %87 = load ptr, ptr %0, align 4
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.drm_device, ptr %88, i32 0, i32 5
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.msm_drm_private, ptr %90, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.mdp5_kms, ptr %92, i32 0, i32 26
  %94 = load i32, ptr %93, align 8
  %95 = icmp slt i32 %94, 1
  br i1 %95, label %96, label %97, !prof !8

96:                                               ; preds = %82
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %97

97:                                               ; preds = %96, %82
  %98 = getelementptr inbounds %struct.mdp5_kms, ptr %92, i32 0, i32 15
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr i8, ptr %99, i32 %86
  tail call void @msm_writel(i32 noundef 0, ptr noundef %100) #7
  %101 = add nuw nsw i32 %20, 1
  %102 = load i32, ptr %14, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %19, label %104

104:                                              ; preds = %97, %6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #7
  %105 = and i32 %5, 1
  %106 = icmp eq i32 %105, 0
  %107 = icmp eq ptr %10, null
  %108 = shl nuw nsw i32 %105, 24
  %109 = select i1 %106, i1 true, i1 %107
  %110 = select i1 %109, i32 0, i32 16777216
  %111 = icmp eq i32 %4, 0
  br i1 %111, label %343, label %112

112:                                              ; preds = %104
  %113 = select i1 %106, i32 1, i32 2
  br label %114

114:                                              ; preds = %338, %112
  %115 = phi i32 [ %341, %338 ], [ %113, %112 ]
  %116 = phi i32 [ %340, %338 ], [ 0, %112 ]
  %117 = phi i32 [ %339, %338 ], [ %110, %112 ]
  %118 = phi i32 [ %228, %338 ], [ 0, %112 ]
  %119 = phi i32 [ %185, %338 ], [ %108, %112 ]
  %120 = getelementptr [2 x i32], ptr %2, i32 %115
  %121 = load i32, ptr %120, align 4
  switch i32 %121, label %150 [
    i32 1, label %122
    i32 2, label %124
    i32 3, label %127
    i32 4, label %130
    i32 5, label %133
    i32 6, label %136
    i32 7, label %139
    i32 8, label %142
    i32 9, label %145
    i32 10, label %148
  ]

122:                                              ; preds = %114
  %123 = and i32 %115, 7
  br label %150

124:                                              ; preds = %114
  %125 = shl nuw nsw i32 %115, 3
  %126 = and i32 %125, 56
  br label %150

127:                                              ; preds = %114
  %128 = shl nuw nsw i32 %115, 6
  %129 = and i32 %128, 448
  br label %150

130:                                              ; preds = %114
  %131 = shl nuw nsw i32 %115, 9
  %132 = and i32 %131, 3584
  br label %150

133:                                              ; preds = %114
  %134 = shl nuw nsw i32 %115, 12
  %135 = and i32 %134, 28672
  br label %150

136:                                              ; preds = %114
  %137 = shl nuw nsw i32 %115, 15
  %138 = and i32 %137, 229376
  br label %150

139:                                              ; preds = %114
  %140 = shl nuw nsw i32 %115, 18
  %141 = and i32 %140, 1835008
  br label %150

142:                                              ; preds = %114
  %143 = shl nuw nsw i32 %115, 21
  %144 = and i32 %143, 14680064
  br label %150

145:                                              ; preds = %114
  %146 = shl nuw nsw i32 %115, 26
  %147 = and i32 %146, 469762048
  br label %150

148:                                              ; preds = %114
  %149 = shl i32 %115, 29
  br label %150

150:                                              ; preds = %148, %145, %142, %139, %136, %133, %130, %127, %124, %122, %114
  %151 = phi i32 [ %149, %148 ], [ %147, %145 ], [ %144, %142 ], [ %141, %139 ], [ %138, %136 ], [ %135, %133 ], [ %132, %130 ], [ %129, %127 ], [ %126, %124 ], [ %123, %122 ], [ 0, %114 ]
  %152 = getelementptr [2 x i32], ptr %2, i32 %115, i32 1
  %153 = load i32, ptr %152, align 4
  switch i32 %153, label %182 [
    i32 1, label %154
    i32 2, label %156
    i32 3, label %159
    i32 4, label %162
    i32 5, label %165
    i32 6, label %168
    i32 7, label %171
    i32 8, label %174
    i32 9, label %177
    i32 10, label %180
  ]

154:                                              ; preds = %150
  %155 = and i32 %115, 7
  br label %182

156:                                              ; preds = %150
  %157 = shl nuw nsw i32 %115, 3
  %158 = and i32 %157, 56
  br label %182

159:                                              ; preds = %150
  %160 = shl nuw nsw i32 %115, 6
  %161 = and i32 %160, 448
  br label %182

162:                                              ; preds = %150
  %163 = shl nuw nsw i32 %115, 9
  %164 = and i32 %163, 3584
  br label %182

165:                                              ; preds = %150
  %166 = shl nuw nsw i32 %115, 12
  %167 = and i32 %166, 28672
  br label %182

168:                                              ; preds = %150
  %169 = shl nuw nsw i32 %115, 15
  %170 = and i32 %169, 229376
  br label %182

171:                                              ; preds = %150
  %172 = shl nuw nsw i32 %115, 18
  %173 = and i32 %172, 1835008
  br label %182

174:                                              ; preds = %150
  %175 = shl nuw nsw i32 %115, 21
  %176 = and i32 %175, 14680064
  br label %182

177:                                              ; preds = %150
  %178 = shl nuw nsw i32 %115, 26
  %179 = and i32 %178, 469762048
  br label %182

180:                                              ; preds = %150
  %181 = shl i32 %115, 29
  br label %182

182:                                              ; preds = %180, %177, %174, %171, %168, %165, %162, %159, %156, %154, %150
  %183 = phi i32 [ %181, %180 ], [ %179, %177 ], [ %176, %174 ], [ %173, %171 ], [ %170, %168 ], [ %167, %165 ], [ %164, %162 ], [ %161, %159 ], [ %158, %156 ], [ %155, %154 ], [ 0, %150 ]
  %184 = or i32 %151, %119
  %185 = or i32 %184, %183
  %186 = icmp ult i32 %115, 8
  %187 = add i32 %121, -13
  %188 = icmp ult i32 %187, -2
  %189 = and i1 %186, %188
  br i1 %189, label %205, label %190

190:                                              ; preds = %182
  switch i32 %121, label %204 [
    i32 1, label %205
    i32 2, label %191
    i32 3, label %192
    i32 4, label %193
    i32 5, label %194
    i32 6, label %195
    i32 7, label %196
    i32 8, label %197
    i32 9, label %198
    i32 10, label %199
    i32 11, label %200
    i32 12, label %202
  ]

191:                                              ; preds = %190
  br label %205

192:                                              ; preds = %190
  br label %205

193:                                              ; preds = %190
  br label %205

194:                                              ; preds = %190
  br label %205

195:                                              ; preds = %190
  br label %205

196:                                              ; preds = %190
  br label %205

197:                                              ; preds = %190
  br label %205

198:                                              ; preds = %190
  br label %205

199:                                              ; preds = %190
  br label %205

200:                                              ; preds = %190
  %201 = shl i32 %115, 20
  br label %205

202:                                              ; preds = %190
  %203 = shl i32 %115, 26
  br label %205

204:                                              ; preds = %190
  br label %205

205:                                              ; preds = %204, %202, %200, %199, %198, %197, %196, %195, %194, %193, %192, %191, %190, %182
  %206 = phi i32 [ 0, %204 ], [ %203, %202 ], [ %201, %200 ], [ 16384, %199 ], [ 64, %198 ], [ 262144, %197 ], [ 65536, %196 ], [ 4096, %195 ], [ 1024, %194 ], [ 256, %193 ], [ 16, %192 ], [ 4, %191 ], [ 0, %182 ], [ %121, %190 ]
  %207 = add i32 %153, -13
  %208 = icmp ult i32 %207, -2
  %209 = and i1 %186, %208
  br i1 %209, label %225, label %210

210:                                              ; preds = %205
  switch i32 %153, label %224 [
    i32 1, label %225
    i32 2, label %211
    i32 3, label %212
    i32 4, label %213
    i32 5, label %214
    i32 6, label %215
    i32 7, label %216
    i32 8, label %217
    i32 9, label %218
    i32 10, label %219
    i32 11, label %220
    i32 12, label %222
  ]

211:                                              ; preds = %210
  br label %225

212:                                              ; preds = %210
  br label %225

213:                                              ; preds = %210
  br label %225

214:                                              ; preds = %210
  br label %225

215:                                              ; preds = %210
  br label %225

216:                                              ; preds = %210
  br label %225

217:                                              ; preds = %210
  br label %225

218:                                              ; preds = %210
  br label %225

219:                                              ; preds = %210
  br label %225

220:                                              ; preds = %210
  %221 = shl i32 %115, 20
  br label %225

222:                                              ; preds = %210
  %223 = shl i32 %115, 26
  br label %225

224:                                              ; preds = %210
  br label %225

225:                                              ; preds = %224, %222, %220, %219, %218, %217, %216, %215, %214, %213, %212, %211, %210, %205
  %226 = phi i32 [ 0, %224 ], [ %223, %222 ], [ %221, %220 ], [ 16384, %219 ], [ 64, %218 ], [ 262144, %217 ], [ 65536, %216 ], [ 4096, %215 ], [ 1024, %214 ], [ 256, %213 ], [ 16, %212 ], [ 4, %211 ], [ 0, %205 ], [ %153, %210 ]
  %227 = or i32 %206, %118
  %228 = or i32 %227, %226
  br i1 %107, label %338, label %229

229:                                              ; preds = %225
  %230 = getelementptr [2 x i32], ptr %3, i32 %115
  %231 = load i32, ptr %230, align 4
  switch i32 %231, label %260 [
    i32 1, label %232
    i32 2, label %234
    i32 3, label %237
    i32 4, label %240
    i32 5, label %243
    i32 6, label %246
    i32 7, label %249
    i32 8, label %252
    i32 9, label %255
    i32 10, label %258
  ]

232:                                              ; preds = %229
  %233 = and i32 %115, 7
  br label %260

234:                                              ; preds = %229
  %235 = shl i32 %115, 3
  %236 = and i32 %235, 56
  br label %260

237:                                              ; preds = %229
  %238 = shl i32 %115, 6
  %239 = and i32 %238, 448
  br label %260

240:                                              ; preds = %229
  %241 = shl i32 %115, 9
  %242 = and i32 %241, 3584
  br label %260

243:                                              ; preds = %229
  %244 = shl i32 %115, 12
  %245 = and i32 %244, 28672
  br label %260

246:                                              ; preds = %229
  %247 = shl i32 %115, 15
  %248 = and i32 %247, 229376
  br label %260

249:                                              ; preds = %229
  %250 = shl i32 %115, 18
  %251 = and i32 %250, 1835008
  br label %260

252:                                              ; preds = %229
  %253 = shl i32 %115, 21
  %254 = and i32 %253, 14680064
  br label %260

255:                                              ; preds = %229
  %256 = shl i32 %115, 26
  %257 = and i32 %256, 469762048
  br label %260

258:                                              ; preds = %229
  %259 = shl i32 %115, 29
  br label %260

260:                                              ; preds = %258, %255, %252, %249, %246, %243, %240, %237, %234, %232, %229
  %261 = phi i32 [ %259, %258 ], [ %257, %255 ], [ %254, %252 ], [ %251, %249 ], [ %248, %246 ], [ %245, %243 ], [ %242, %240 ], [ %239, %237 ], [ %236, %234 ], [ %233, %232 ], [ 0, %229 ]
  %262 = getelementptr [2 x i32], ptr %3, i32 %115, i32 1
  %263 = load i32, ptr %262, align 4
  switch i32 %263, label %292 [
    i32 1, label %264
    i32 2, label %266
    i32 3, label %269
    i32 4, label %272
    i32 5, label %275
    i32 6, label %278
    i32 7, label %281
    i32 8, label %284
    i32 9, label %287
    i32 10, label %290
  ]

264:                                              ; preds = %260
  %265 = and i32 %115, 7
  br label %292

266:                                              ; preds = %260
  %267 = shl i32 %115, 3
  %268 = and i32 %267, 56
  br label %292

269:                                              ; preds = %260
  %270 = shl i32 %115, 6
  %271 = and i32 %270, 448
  br label %292

272:                                              ; preds = %260
  %273 = shl i32 %115, 9
  %274 = and i32 %273, 3584
  br label %292

275:                                              ; preds = %260
  %276 = shl i32 %115, 12
  %277 = and i32 %276, 28672
  br label %292

278:                                              ; preds = %260
  %279 = shl i32 %115, 15
  %280 = and i32 %279, 229376
  br label %292

281:                                              ; preds = %260
  %282 = shl i32 %115, 18
  %283 = and i32 %282, 1835008
  br label %292

284:                                              ; preds = %260
  %285 = shl i32 %115, 21
  %286 = and i32 %285, 14680064
  br label %292

287:                                              ; preds = %260
  %288 = shl i32 %115, 26
  %289 = and i32 %288, 469762048
  br label %292

290:                                              ; preds = %260
  %291 = shl i32 %115, 29
  br label %292

292:                                              ; preds = %290, %287, %284, %281, %278, %275, %272, %269, %266, %264, %260
  %293 = phi i32 [ %291, %290 ], [ %289, %287 ], [ %286, %284 ], [ %283, %281 ], [ %280, %278 ], [ %277, %275 ], [ %274, %272 ], [ %271, %269 ], [ %268, %266 ], [ %265, %264 ], [ 0, %260 ]
  %294 = or i32 %261, %117
  %295 = or i32 %294, %293
  %296 = add i32 %231, -13
  %297 = icmp ult i32 %296, -2
  %298 = and i1 %186, %297
  br i1 %298, label %314, label %299

299:                                              ; preds = %292
  switch i32 %231, label %313 [
    i32 1, label %314
    i32 2, label %300
    i32 3, label %301
    i32 4, label %302
    i32 5, label %303
    i32 6, label %304
    i32 7, label %305
    i32 8, label %306
    i32 9, label %307
    i32 10, label %308
    i32 11, label %309
    i32 12, label %311
  ]

300:                                              ; preds = %299
  br label %314

301:                                              ; preds = %299
  br label %314

302:                                              ; preds = %299
  br label %314

303:                                              ; preds = %299
  br label %314

304:                                              ; preds = %299
  br label %314

305:                                              ; preds = %299
  br label %314

306:                                              ; preds = %299
  br label %314

307:                                              ; preds = %299
  br label %314

308:                                              ; preds = %299
  br label %314

309:                                              ; preds = %299
  %310 = shl i32 %115, 20
  br label %314

311:                                              ; preds = %299
  %312 = shl i32 %115, 26
  br label %314

313:                                              ; preds = %299
  br label %314

314:                                              ; preds = %313, %311, %309, %308, %307, %306, %305, %304, %303, %302, %301, %300, %299, %292
  %315 = phi i32 [ 0, %313 ], [ %312, %311 ], [ %310, %309 ], [ 16384, %308 ], [ 64, %307 ], [ 262144, %306 ], [ 65536, %305 ], [ 4096, %304 ], [ 1024, %303 ], [ 256, %302 ], [ 16, %301 ], [ 4, %300 ], [ 0, %292 ], [ %231, %299 ]
  %316 = add i32 %263, -13
  %317 = icmp ult i32 %316, -2
  %318 = and i1 %186, %317
  br i1 %318, label %334, label %319

319:                                              ; preds = %314
  switch i32 %263, label %333 [
    i32 1, label %334
    i32 2, label %320
    i32 3, label %321
    i32 4, label %322
    i32 5, label %323
    i32 6, label %324
    i32 7, label %325
    i32 8, label %326
    i32 9, label %327
    i32 10, label %328
    i32 11, label %329
    i32 12, label %331
  ]

320:                                              ; preds = %319
  br label %334

321:                                              ; preds = %319
  br label %334

322:                                              ; preds = %319
  br label %334

323:                                              ; preds = %319
  br label %334

324:                                              ; preds = %319
  br label %334

325:                                              ; preds = %319
  br label %334

326:                                              ; preds = %319
  br label %334

327:                                              ; preds = %319
  br label %334

328:                                              ; preds = %319
  br label %334

329:                                              ; preds = %319
  %330 = shl i32 %115, 20
  br label %334

331:                                              ; preds = %319
  %332 = shl i32 %115, 26
  br label %334

333:                                              ; preds = %319
  br label %334

334:                                              ; preds = %333, %331, %329, %328, %327, %326, %325, %324, %323, %322, %321, %320, %319, %314
  %335 = phi i32 [ 0, %333 ], [ %332, %331 ], [ %330, %329 ], [ 16384, %328 ], [ 64, %327 ], [ 262144, %326 ], [ 65536, %325 ], [ 4096, %324 ], [ 1024, %323 ], [ 256, %322 ], [ 16, %321 ], [ 4, %320 ], [ 0, %314 ], [ %263, %319 ]
  %336 = or i32 %315, %116
  %337 = or i32 %336, %335
  br label %338

338:                                              ; preds = %334, %225
  %339 = phi i32 [ %295, %334 ], [ %117, %225 ]
  %340 = phi i32 [ %337, %334 ], [ %116, %225 ]
  %341 = add nuw nsw i32 %115, 1
  %342 = icmp ult i32 %115, 8
  br i1 %342, label %114, label %343

343:                                              ; preds = %338, %104
  %344 = phi i32 [ %108, %104 ], [ %185, %338 ]
  %345 = phi i32 [ 0, %104 ], [ %228, %338 ]
  %346 = phi i32 [ %110, %104 ], [ %339, %338 ]
  %347 = phi i32 [ 0, %104 ], [ %340, %338 ]
  %348 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #7
  %349 = getelementptr inbounds %struct.mdp5_ctl, ptr %0, i32 0, i32 8
  %350 = load i8, ptr %349, align 4, !range !11
  %351 = icmp eq i8 %350, 0
  %352 = or i32 %344, 33554432
  %353 = select i1 %351, i32 %344, i32 %352
  %354 = getelementptr inbounds %struct.mdp5_ctl, ptr %0, i32 0, i32 1
  %355 = load i32, ptr %354, align 4
  %356 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %8, i32 0, i32 2
  %357 = load i32, ptr %356, align 4
  switch i32 %355, label %373 [
    i32 0, label %358
    i32 1, label %361
    i32 2, label %364
    i32 3, label %367
    i32 4, label %370
  ]

358:                                              ; preds = %343
  %359 = load ptr, ptr @mdp5_cfg, align 4
  %360 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %359, i32 0, i32 3, i32 1
  br label %374

361:                                              ; preds = %343
  %362 = load ptr, ptr @mdp5_cfg, align 4
  %363 = getelementptr %struct.mdp5_cfg_hw, ptr %362, i32 0, i32 3, i32 1, i32 1
  br label %374

364:                                              ; preds = %343
  %365 = load ptr, ptr @mdp5_cfg, align 4
  %366 = getelementptr %struct.mdp5_cfg_hw, ptr %365, i32 0, i32 3, i32 1, i32 2
  br label %374

367:                                              ; preds = %343
  %368 = load ptr, ptr @mdp5_cfg, align 4
  %369 = getelementptr %struct.mdp5_cfg_hw, ptr %368, i32 0, i32 3, i32 1, i32 3
  br label %374

370:                                              ; preds = %343
  %371 = load ptr, ptr @mdp5_cfg, align 4
  %372 = getelementptr %struct.mdp5_cfg_hw, ptr %371, i32 0, i32 3, i32 1, i32 4
  br label %374

373:                                              ; preds = %343
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

374:                                              ; preds = %370, %367, %364, %361, %358
  %375 = phi ptr [ %372, %370 ], [ %369, %367 ], [ %366, %364 ], [ %363, %361 ], [ %360, %358 ]
  %376 = icmp ult i32 %357, 6
  br i1 %376, label %378, label %377

377:                                              ; preds = %374
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 383, 0\0A.popsection", ""() #7, !srcloc !12
  unreachable

378:                                              ; preds = %374
  %379 = load i32, ptr %375, align 4
  %380 = getelementptr inbounds [6 x i32], ptr @switch.table.mdp5_ctl_blend.22, i32 0, i32 %357
  %381 = load i32, ptr %380, align 4
  %382 = add i32 %381, %379
  %383 = load ptr, ptr %0, align 4
  %384 = load ptr, ptr %383, align 4
  %385 = getelementptr inbounds %struct.drm_device, ptr %384, i32 0, i32 5
  %386 = load ptr, ptr %385, align 4
  %387 = getelementptr inbounds %struct.msm_drm_private, ptr %386, i32 0, i32 1
  %388 = load ptr, ptr %387, align 4
  %389 = getelementptr inbounds %struct.mdp5_kms, ptr %388, i32 0, i32 26
  %390 = load i32, ptr %389, align 8
  %391 = icmp slt i32 %390, 1
  br i1 %391, label %392, label %393, !prof !8

392:                                              ; preds = %378
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %393

393:                                              ; preds = %392, %378
  %394 = getelementptr inbounds %struct.mdp5_kms, ptr %388, i32 0, i32 15
  %395 = load ptr, ptr %394, align 4
  %396 = getelementptr i8, ptr %395, i32 %382
  tail call void @msm_writel(i32 noundef %353, ptr noundef %396) #7
  %397 = load i32, ptr %354, align 4
  %398 = load i32, ptr %356, align 4
  switch i32 %397, label %414 [
    i32 0, label %399
    i32 1, label %402
    i32 2, label %405
    i32 3, label %408
    i32 4, label %411
  ]

399:                                              ; preds = %393
  %400 = load ptr, ptr @mdp5_cfg, align 4
  %401 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %400, i32 0, i32 3, i32 1
  br label %415

402:                                              ; preds = %393
  %403 = load ptr, ptr @mdp5_cfg, align 4
  %404 = getelementptr %struct.mdp5_cfg_hw, ptr %403, i32 0, i32 3, i32 1, i32 1
  br label %415

405:                                              ; preds = %393
  %406 = load ptr, ptr @mdp5_cfg, align 4
  %407 = getelementptr %struct.mdp5_cfg_hw, ptr %406, i32 0, i32 3, i32 1, i32 2
  br label %415

408:                                              ; preds = %393
  %409 = load ptr, ptr @mdp5_cfg, align 4
  %410 = getelementptr %struct.mdp5_cfg_hw, ptr %409, i32 0, i32 3, i32 1, i32 3
  br label %415

411:                                              ; preds = %393
  %412 = load ptr, ptr @mdp5_cfg, align 4
  %413 = getelementptr %struct.mdp5_cfg_hw, ptr %412, i32 0, i32 3, i32 1, i32 4
  br label %415

414:                                              ; preds = %393
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

415:                                              ; preds = %411, %408, %405, %402, %399
  %416 = phi ptr [ %413, %411 ], [ %410, %408 ], [ %407, %405 ], [ %404, %402 ], [ %401, %399 ]
  %417 = icmp ult i32 %398, 6
  br i1 %417, label %419, label %418

418:                                              ; preds = %415
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 518, 0\0A.popsection", ""() #7, !srcloc !13
  unreachable

419:                                              ; preds = %415
  %420 = load i32, ptr %416, align 4
  %421 = shl i32 %398, 2
  %422 = add i32 %421, 64
  %423 = add i32 %422, %420
  %424 = load ptr, ptr %0, align 4
  %425 = load ptr, ptr %424, align 4
  %426 = getelementptr inbounds %struct.drm_device, ptr %425, i32 0, i32 5
  %427 = load ptr, ptr %426, align 4
  %428 = getelementptr inbounds %struct.msm_drm_private, ptr %427, i32 0, i32 1
  %429 = load ptr, ptr %428, align 4
  %430 = getelementptr inbounds %struct.mdp5_kms, ptr %429, i32 0, i32 26
  %431 = load i32, ptr %430, align 8
  %432 = icmp slt i32 %431, 1
  br i1 %432, label %433, label %434, !prof !8

433:                                              ; preds = %419
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %434

434:                                              ; preds = %433, %419
  %435 = getelementptr inbounds %struct.mdp5_kms, ptr %429, i32 0, i32 15
  %436 = load ptr, ptr %435, align 4
  %437 = getelementptr i8, ptr %436, i32 %423
  tail call void @msm_writel(i32 noundef %345, ptr noundef %437) #7
  br i1 %107, label %522, label %438

438:                                              ; preds = %434
  %439 = load i32, ptr %354, align 4
  %440 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %10, i32 0, i32 2
  %441 = load i32, ptr %440, align 4
  switch i32 %439, label %457 [
    i32 0, label %442
    i32 1, label %445
    i32 2, label %448
    i32 3, label %451
    i32 4, label %454
  ]

442:                                              ; preds = %438
  %443 = load ptr, ptr @mdp5_cfg, align 4
  %444 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %443, i32 0, i32 3, i32 1
  br label %458

445:                                              ; preds = %438
  %446 = load ptr, ptr @mdp5_cfg, align 4
  %447 = getelementptr %struct.mdp5_cfg_hw, ptr %446, i32 0, i32 3, i32 1, i32 1
  br label %458

448:                                              ; preds = %438
  %449 = load ptr, ptr @mdp5_cfg, align 4
  %450 = getelementptr %struct.mdp5_cfg_hw, ptr %449, i32 0, i32 3, i32 1, i32 2
  br label %458

451:                                              ; preds = %438
  %452 = load ptr, ptr @mdp5_cfg, align 4
  %453 = getelementptr %struct.mdp5_cfg_hw, ptr %452, i32 0, i32 3, i32 1, i32 3
  br label %458

454:                                              ; preds = %438
  %455 = load ptr, ptr @mdp5_cfg, align 4
  %456 = getelementptr %struct.mdp5_cfg_hw, ptr %455, i32 0, i32 3, i32 1, i32 4
  br label %458

457:                                              ; preds = %438
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

458:                                              ; preds = %454, %451, %448, %445, %442
  %459 = phi ptr [ %456, %454 ], [ %453, %451 ], [ %450, %448 ], [ %447, %445 ], [ %444, %442 ]
  %460 = icmp ult i32 %441, 6
  br i1 %460, label %462, label %461

461:                                              ; preds = %458
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 383, 0\0A.popsection", ""() #7, !srcloc !12
  unreachable

462:                                              ; preds = %458
  %463 = load i32, ptr %459, align 4
  %464 = getelementptr inbounds [6 x i32], ptr @switch.table.mdp5_ctl_blend.22, i32 0, i32 %441
  %465 = load i32, ptr %464, align 4
  %466 = add i32 %465, %463
  %467 = load ptr, ptr %0, align 4
  %468 = load ptr, ptr %467, align 4
  %469 = getelementptr inbounds %struct.drm_device, ptr %468, i32 0, i32 5
  %470 = load ptr, ptr %469, align 4
  %471 = getelementptr inbounds %struct.msm_drm_private, ptr %470, i32 0, i32 1
  %472 = load ptr, ptr %471, align 4
  %473 = getelementptr inbounds %struct.mdp5_kms, ptr %472, i32 0, i32 26
  %474 = load i32, ptr %473, align 8
  %475 = icmp slt i32 %474, 1
  br i1 %475, label %476, label %477, !prof !8

476:                                              ; preds = %462
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %477

477:                                              ; preds = %476, %462
  %478 = getelementptr inbounds %struct.mdp5_kms, ptr %472, i32 0, i32 15
  %479 = load ptr, ptr %478, align 4
  %480 = getelementptr i8, ptr %479, i32 %466
  tail call void @msm_writel(i32 noundef %346, ptr noundef %480) #7
  %481 = load i32, ptr %354, align 4
  %482 = load i32, ptr %440, align 4
  switch i32 %481, label %498 [
    i32 0, label %483
    i32 1, label %486
    i32 2, label %489
    i32 3, label %492
    i32 4, label %495
  ]

483:                                              ; preds = %477
  %484 = load ptr, ptr @mdp5_cfg, align 4
  %485 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %484, i32 0, i32 3, i32 1
  br label %499

486:                                              ; preds = %477
  %487 = load ptr, ptr @mdp5_cfg, align 4
  %488 = getelementptr %struct.mdp5_cfg_hw, ptr %487, i32 0, i32 3, i32 1, i32 1
  br label %499

489:                                              ; preds = %477
  %490 = load ptr, ptr @mdp5_cfg, align 4
  %491 = getelementptr %struct.mdp5_cfg_hw, ptr %490, i32 0, i32 3, i32 1, i32 2
  br label %499

492:                                              ; preds = %477
  %493 = load ptr, ptr @mdp5_cfg, align 4
  %494 = getelementptr %struct.mdp5_cfg_hw, ptr %493, i32 0, i32 3, i32 1, i32 3
  br label %499

495:                                              ; preds = %477
  %496 = load ptr, ptr @mdp5_cfg, align 4
  %497 = getelementptr %struct.mdp5_cfg_hw, ptr %496, i32 0, i32 3, i32 1, i32 4
  br label %499

498:                                              ; preds = %477
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

499:                                              ; preds = %495, %492, %489, %486, %483
  %500 = phi ptr [ %497, %495 ], [ %494, %492 ], [ %491, %489 ], [ %488, %486 ], [ %485, %483 ]
  %501 = icmp ult i32 %482, 6
  br i1 %501, label %503, label %502

502:                                              ; preds = %499
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 518, 0\0A.popsection", ""() #7, !srcloc !13
  unreachable

503:                                              ; preds = %499
  %504 = load i32, ptr %500, align 4
  %505 = shl i32 %482, 2
  %506 = add i32 %505, 64
  %507 = add i32 %506, %504
  %508 = load ptr, ptr %0, align 4
  %509 = load ptr, ptr %508, align 4
  %510 = getelementptr inbounds %struct.drm_device, ptr %509, i32 0, i32 5
  %511 = load ptr, ptr %510, align 4
  %512 = getelementptr inbounds %struct.msm_drm_private, ptr %511, i32 0, i32 1
  %513 = load ptr, ptr %512, align 4
  %514 = getelementptr inbounds %struct.mdp5_kms, ptr %513, i32 0, i32 26
  %515 = load i32, ptr %514, align 8
  %516 = icmp slt i32 %515, 1
  br i1 %516, label %517, label %518, !prof !8

517:                                              ; preds = %503
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %518

518:                                              ; preds = %517, %503
  %519 = getelementptr inbounds %struct.mdp5_kms, ptr %513, i32 0, i32 15
  %520 = load ptr, ptr %519, align 4
  %521 = getelementptr i8, ptr %520, i32 %507
  tail call void @msm_writel(i32 noundef %347, ptr noundef %521) #7
  br label %522

522:                                              ; preds = %518, %434
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %348) #7
  %523 = load i32, ptr %356, align 4
  %524 = icmp ult i32 %523, 6
  br i1 %524, label %525, label %528

525:                                              ; preds = %522
  %526 = getelementptr inbounds [6 x i32], ptr @switch.table.mdp5_ctl_commit, i32 0, i32 %523
  %527 = load i32, ptr %526, align 4
  br label %528

528:                                              ; preds = %525, %522
  %529 = phi i32 [ %527, %525 ], [ 0, %522 ]
  %530 = getelementptr inbounds %struct.mdp5_ctl, ptr %0, i32 0, i32 7
  store i32 %529, ptr %530, align 4
  br i1 %107, label %543, label %531

531:                                              ; preds = %528
  %532 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %10, i32 0, i32 2
  %533 = load i32, ptr %532, align 4
  %534 = icmp ult i32 %533, 6
  br i1 %534, label %535, label %538

535:                                              ; preds = %531
  %536 = getelementptr inbounds [6 x i32], ptr @switch.table.mdp5_ctl_commit, i32 0, i32 %533
  %537 = load i32, ptr %536, align 4
  br label %538

538:                                              ; preds = %535, %531
  %539 = phi i32 [ %537, %535 ], [ 0, %531 ]
  %540 = or i32 %539, %529
  store i32 %540, ptr %530, align 4
  %541 = load i32, ptr %356, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %541, i32 noundef %353, i32 noundef %345) #7
  %542 = load i32, ptr %532, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %542, i32 noundef %346, i32 noundef %347) #7
  br label %545

543:                                              ; preds = %528
  %544 = load i32, ptr %356, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %544, i32 noundef %353, i32 noundef %345) #7
  br label %545

545:                                              ; preds = %543, %538
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @mdp_ctl_flush_mask_lm(i32 noundef %0) local_unnamed_addr #2 {
  %2 = icmp ult i32 %0, 6
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = getelementptr inbounds [6 x i32], ptr @switch.table.mdp5_ctl_commit, i32 0, i32 %0
  %5 = load i32, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @mdp_ctl_flush_mask_encoder(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.mdp5_interface, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 101
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mdp5_interface, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds [4 x i32], ptr @switch.table.mdp_ctl_flush_mask_encoder, i32 0, i32 %7
  %11 = load i32, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %5, %1
  %13 = phi i32 [ 65536, %1 ], [ %11, %9 ], [ 0, %5 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @mdp_ctl_flush_mask_pipe(i32 noundef %0) local_unnamed_addr #2 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 12
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds [12 x i32], ptr @switch.table.mdp_ctl_flush_mask_pipe, i32 0, i32 %2
  %6 = load i32, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi i32 [ %6, %4 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdp5_ctl_commit(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.mdp5_ctl, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mdp5_ctl, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = or i32 %2, 131072
  store i32 0, ptr %8, align 4
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi i32 [ %2, %4 ], [ %13, %12 ]
  %16 = getelementptr inbounds %struct.mdp5_ctl_manager, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 4194304
  %19 = icmp ne i32 %18, 0
  %20 = and i32 %15, 4194304
  %21 = icmp eq i32 %20, 0
  %22 = or i1 %21, %19
  br i1 %22, label %32, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.mdp5_pipeline, ptr %1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %27, 6
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = getelementptr inbounds [6 x i32], ptr @switch.table.mdp5_ctl_commit, i32 0, i32 %27
  %31 = load i32, ptr %30, align 4
  br label %32

32:                                               ; preds = %29, %23, %14
  %33 = phi i32 [ 0, %14 ], [ %31, %29 ], [ 0, %23 ]
  %34 = or i32 %33, %15
  %35 = and i32 %34, %17
  %36 = getelementptr inbounds %struct.mdp5_ctl, ptr %0, i32 0, i32 10
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %53, label %39

39:                                               ; preds = %32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef %7, i32 noundef %35) #7
  %40 = getelementptr inbounds %struct.mdp5_ctl, ptr %0, i32 0, i32 9
  store i8 1, ptr %40, align 1
  %41 = getelementptr inbounds %struct.mdp5_ctl_manager, ptr %5, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %42, %35
  store i32 %43, ptr %41, align 4
  %44 = load ptr, ptr %36, align 4
  %45 = getelementptr inbounds %struct.mdp5_ctl, ptr %44, i32 0, i32 9
  %46 = load i8, ptr %45, align 1, !range !11
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %39
  %49 = load i32, ptr %6, align 4
  %50 = getelementptr inbounds %struct.mdp5_ctl, ptr %44, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @llvm.umin.i32(i32 %49, i32 %51) #7
  store i8 0, ptr %40, align 1
  store i8 0, ptr %45, align 1
  store i32 0, ptr %41, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, i32 noundef %43, i32 noundef %52) #7
  br label %53

53:                                               ; preds = %48, %39, %32
  %54 = phi i32 [ %35, %32 ], [ 0, %39 ], [ %43, %48 ]
  %55 = phi i32 [ %7, %32 ], [ %7, %39 ], [ %52, %48 ]
  %56 = getelementptr inbounds %struct.mdp5_ctl, ptr %0, i32 0, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = or i32 %57, %54
  br i1 %3, label %60, label %59

59:                                               ; preds = %53
  store i32 %58, ptr %56, align 4
  br label %112

60:                                               ; preds = %53
  store i32 0, ptr %56, align 4
  %61 = icmp eq i32 %58, 0
  br i1 %61, label %99, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.mdp5_ctl, ptr %0, i32 0, i32 5
  %64 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %63) #7
  switch i32 %55, label %80 [
    i32 0, label %65
    i32 1, label %68
    i32 2, label %71
    i32 3, label %74
    i32 4, label %77
  ]

65:                                               ; preds = %62
  %66 = load ptr, ptr @mdp5_cfg, align 4
  %67 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %66, i32 0, i32 3, i32 1
  br label %81

68:                                               ; preds = %62
  %69 = load ptr, ptr @mdp5_cfg, align 4
  %70 = getelementptr %struct.mdp5_cfg_hw, ptr %69, i32 0, i32 3, i32 1, i32 1
  br label %81

71:                                               ; preds = %62
  %72 = load ptr, ptr @mdp5_cfg, align 4
  %73 = getelementptr %struct.mdp5_cfg_hw, ptr %72, i32 0, i32 3, i32 1, i32 2
  br label %81

74:                                               ; preds = %62
  %75 = load ptr, ptr @mdp5_cfg, align 4
  %76 = getelementptr %struct.mdp5_cfg_hw, ptr %75, i32 0, i32 3, i32 1, i32 3
  br label %81

77:                                               ; preds = %62
  %78 = load ptr, ptr @mdp5_cfg, align 4
  %79 = getelementptr %struct.mdp5_cfg_hw, ptr %78, i32 0, i32 3, i32 1, i32 4
  br label %81

80:                                               ; preds = %62
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

81:                                               ; preds = %77, %74, %71, %68, %65
  %82 = phi ptr [ %79, %77 ], [ %76, %74 ], [ %73, %71 ], [ %70, %68 ], [ %67, %65 ]
  %83 = load i32, ptr %82, align 4
  %84 = add i32 %83, 24
  %85 = load ptr, ptr %0, align 4
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.drm_device, ptr %86, i32 0, i32 5
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.msm_drm_private, ptr %88, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.mdp5_kms, ptr %90, i32 0, i32 26
  %92 = load i32, ptr %91, align 8
  %93 = icmp slt i32 %92, 1
  br i1 %93, label %94, label %95, !prof !8

94:                                               ; preds = %81
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %95

95:                                               ; preds = %94, %81
  %96 = getelementptr inbounds %struct.mdp5_kms, ptr %90, i32 0, i32 15
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr i8, ptr %97, i32 %84
  tail call void @msm_writel(i32 noundef %58, ptr noundef %98) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %63, i32 noundef %64) #7
  br label %99

99:                                               ; preds = %95, %60
  %100 = load ptr, ptr %1, align 4
  %101 = getelementptr inbounds %struct.mdp5_ctl, ptr %0, i32 0, i32 3
  %102 = load i8, ptr %101, align 4, !range !11
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.mdp5_interface, ptr %100, i32 0, i32 2
  %106 = load i32, ptr %105, align 4
  switch i32 %106, label %112 [
    i32 101, label %111
    i32 1, label %107
  ]

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.mdp5_interface, ptr %100, i32 0, i32 3
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, 2
  br i1 %110, label %111, label %112

111:                                              ; preds = %107, %104
  tail call fastcc void @send_start_signal(ptr noundef %0)
  br label %112

112:                                              ; preds = %111, %107, %104, %99, %59
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdp5_ctl_get_commit_status(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mdp5_ctl, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %19 [
    i32 0, label %4
    i32 1, label %7
    i32 2, label %10
    i32 3, label %13
    i32 4, label %16
  ]

4:                                                ; preds = %1
  %5 = load ptr, ptr @mdp5_cfg, align 4
  %6 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %5, i32 0, i32 3, i32 1
  br label %20

7:                                                ; preds = %1
  %8 = load ptr, ptr @mdp5_cfg, align 4
  %9 = getelementptr %struct.mdp5_cfg_hw, ptr %8, i32 0, i32 3, i32 1, i32 1
  br label %20

10:                                               ; preds = %1
  %11 = load ptr, ptr @mdp5_cfg, align 4
  %12 = getelementptr %struct.mdp5_cfg_hw, ptr %11, i32 0, i32 3, i32 1, i32 2
  br label %20

13:                                               ; preds = %1
  %14 = load ptr, ptr @mdp5_cfg, align 4
  %15 = getelementptr %struct.mdp5_cfg_hw, ptr %14, i32 0, i32 3, i32 1, i32 3
  br label %20

16:                                               ; preds = %1
  %17 = load ptr, ptr @mdp5_cfg, align 4
  %18 = getelementptr %struct.mdp5_cfg_hw, ptr %17, i32 0, i32 3, i32 1, i32 4
  br label %20

19:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

20:                                               ; preds = %16, %13, %10, %7, %4
  %21 = phi ptr [ %18, %16 ], [ %15, %13 ], [ %12, %10 ], [ %9, %7 ], [ %6, %4 ]
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %0, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.msm_drm_private, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.mdp5_kms, ptr %28, i32 0, i32 26
  %30 = load i32, ptr %29, align 8
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %32, label %33, !prof !8

32:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 175, i32 noundef 9, ptr noundef null) #7
  br label %33

33:                                               ; preds = %32, %20
  %34 = add i32 %22, 24
  %35 = getelementptr inbounds %struct.mdp5_kms, ptr %28, i32 0, i32 15
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 %34
  %38 = tail call i32 @msm_readl(ptr noundef %37) #7
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdp5_ctl_get_ctl_id(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 587, i32 noundef 9, ptr noundef null) #7
  br label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.mdp5_ctl, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %3
  %8 = phi i32 [ %6, %4 ], [ -22, %3 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdp5_ctl_pair(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_drm_private, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mdp5_ctl_manager, ptr %4, i32 0, i32 4
  %11 = load i8, ptr %10, align 4, !range !11
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %55, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.mdp5_ctl, ptr %0, i32 0, i32 10
  br i1 %2, label %25, label %15

15:                                               ; preds = %13
  store ptr null, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mdp5_ctl, ptr %1, i32 0, i32 10
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.mdp5_kms, ptr %9, i32 0, i32 26
  %18 = load i32, ptr %17, align 8
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %21, !prof !8

20:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %21

21:                                               ; preds = %20, %15
  %22 = getelementptr inbounds %struct.mdp5_kms, ptr %9, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 40
  tail call void @msm_writel(i32 noundef 0, ptr noundef %24) #7
  br label %55

25:                                               ; preds = %13
  %26 = load ptr, ptr %14, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.mdp5_ctl, ptr %1, i32 0, i32 10
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28, %25
  %33 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %34, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8) #7
  br label %55

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.mdp5_ctl, ptr %0, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.mdp5_ctl, ptr %1, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %37, 2
  %41 = and i32 %40, %39
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %45, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9) #7
  br label %55

46:                                               ; preds = %35
  store ptr %1, ptr %14, align 4
  store ptr %0, ptr %29, align 4
  %47 = getelementptr inbounds %struct.mdp5_kms, ptr %9, i32 0, i32 26
  %48 = load i32, ptr %47, align 8
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %50, label %51, !prof !8

50:                                               ; preds = %46
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %51

51:                                               ; preds = %50, %46
  %52 = getelementptr inbounds %struct.mdp5_kms, ptr %9, i32 0, i32 15
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 40
  tail call void @msm_writel(i32 noundef 1, ptr noundef %54) #7
  br label %55

55:                                               ; preds = %51, %43, %32, %21, %3
  %56 = phi i32 [ -22, %32 ], [ 0, %51 ], [ -22, %43 ], [ 0, %21 ], [ 0, %3 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mdp5_ctlm_request(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 2
  %5 = select i1 %4, i32 2, i32 0
  %6 = getelementptr inbounds %struct.mdp5_ctl_manager, ptr %0, i32 0, i32 6
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #7
  %8 = getelementptr inbounds %struct.mdp5_ctl_manager, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %17, %2
  %12 = phi i32 [ %18, %17 ], [ 0, %2 ]
  %13 = getelementptr %struct.mdp5_ctl_manager, ptr %0, i32 0, i32 7, i32 %12, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 3
  %16 = icmp eq i32 %15, %5
  br i1 %16, label %40, label %17

17:                                               ; preds = %11
  %18 = add nuw i32 %12, 1
  %19 = icmp eq i32 %18, %9
  br i1 %19, label %20, label %11

20:                                               ; preds = %17, %2
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.10, i32 noundef %1) #8
  %24 = xor i32 %5, 2
  %25 = load i32, ptr %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %33, %20
  %28 = phi i32 [ %34, %33 ], [ 0, %20 ]
  %29 = getelementptr %struct.mdp5_ctl_manager, ptr %0, i32 0, i32 7, i32 %28, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 3
  %32 = icmp eq i32 %31, %24
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = add nuw i32 %28, 1
  %35 = icmp eq i32 %34, %25
  br i1 %35, label %36, label %27

36:                                               ; preds = %33, %20
  %37 = load ptr, ptr %0, align 4
  %38 = getelementptr inbounds %struct.drm_device, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %39, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #7
  br label %49

40:                                               ; preds = %27, %11
  %41 = phi i32 [ %30, %27 ], [ %14, %11 ]
  %42 = phi i32 [ %28, %27 ], [ %12, %11 ]
  %43 = getelementptr %struct.mdp5_ctl_manager, ptr %0, i32 0, i32 7, i32 %42
  %44 = getelementptr %struct.mdp5_ctl_manager, ptr %0, i32 0, i32 7, i32 %42, i32 2
  %45 = or i32 %41, 1
  store i32 %45, ptr %44, align 4
  %46 = getelementptr %struct.mdp5_ctl_manager, ptr %0, i32 0, i32 7, i32 %42, i32 7
  store i32 0, ptr %46, align 4
  %47 = getelementptr %struct.mdp5_ctl_manager, ptr %0, i32 0, i32 7, i32 %42, i32 1
  %48 = load i32, ptr %47, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef %48) #7
  br label %49

49:                                               ; preds = %40, %36
  %50 = phi ptr [ %43, %40 ], [ null, %36 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #7
  ret ptr %50
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp5_ctlm_hw_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mdp5_ctl_manager, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %49, label %5

5:                                                ; preds = %42, %1
  %6 = phi i32 [ %46, %42 ], [ 0, %1 ]
  %7 = getelementptr %struct.mdp5_ctl_manager, ptr %0, i32 0, i32 7, i32 %6
  %8 = getelementptr %struct.mdp5_ctl_manager, ptr %0, i32 0, i32 7, i32 %6, i32 5
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #7
  %10 = getelementptr %struct.mdp5_ctl_manager, ptr %0, i32 0, i32 7, i32 %6, i32 1
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %27 [
    i32 0, label %12
    i32 1, label %15
    i32 2, label %18
    i32 3, label %21
    i32 4, label %24
  ]

12:                                               ; preds = %5
  %13 = load ptr, ptr @mdp5_cfg, align 4
  %14 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %13, i32 0, i32 3, i32 1
  br label %28

15:                                               ; preds = %5
  %16 = load ptr, ptr @mdp5_cfg, align 4
  %17 = getelementptr %struct.mdp5_cfg_hw, ptr %16, i32 0, i32 3, i32 1, i32 1
  br label %28

18:                                               ; preds = %5
  %19 = load ptr, ptr @mdp5_cfg, align 4
  %20 = getelementptr %struct.mdp5_cfg_hw, ptr %19, i32 0, i32 3, i32 1, i32 2
  br label %28

21:                                               ; preds = %5
  %22 = load ptr, ptr @mdp5_cfg, align 4
  %23 = getelementptr %struct.mdp5_cfg_hw, ptr %22, i32 0, i32 3, i32 1, i32 3
  br label %28

24:                                               ; preds = %5
  %25 = load ptr, ptr @mdp5_cfg, align 4
  %26 = getelementptr %struct.mdp5_cfg_hw, ptr %25, i32 0, i32 3, i32 1, i32 4
  br label %28

27:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

28:                                               ; preds = %24, %21, %18, %15, %12
  %29 = phi ptr [ %26, %24 ], [ %23, %21 ], [ %20, %18 ], [ %17, %15 ], [ %14, %12 ]
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 20
  %32 = load ptr, ptr %7, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.msm_drm_private, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.mdp5_kms, ptr %37, i32 0, i32 26
  %39 = load i32, ptr %38, align 8
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %41, label %42, !prof !8

41:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %42

42:                                               ; preds = %41, %28
  %43 = getelementptr inbounds %struct.mdp5_kms, ptr %37, i32 0, i32 15
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 %31
  tail call void @msm_writel(i32 noundef 0, ptr noundef %45) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #7
  %46 = add nuw i32 %6, 1
  %47 = load i32, ptr %2, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %5, label %49

49:                                               ; preds = %42, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp5_ctlm_destroy(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mdp5_ctlm_init(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @mdp5_cfg_get_hw_config(ptr noundef %2) #7
  %5 = tail call i32 @mdp5_cfg_get_hw_rev(ptr noundef %2) #7
  %6 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %4, i32 0, i32 3
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 348) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %12, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.13) #7
  br label %91

13:                                               ; preds = %3
  %14 = load i32, ptr %6, align 4
  %15 = icmp ugt i32 %14, 8
  br i1 %15, label %16, label %20, !prof !8

16:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 707, i32 noundef 9, ptr noundef null) #7
  %17 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %6, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %18, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.14, i32 noundef %19) #7
  br label %89

20:                                               ; preds = %13
  store ptr %0, ptr %8, align 8
  %21 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %4, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.mdp5_ctl_manager, ptr %8, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %6, align 4
  %25 = getelementptr inbounds %struct.mdp5_ctl_manager, ptr %8, i32 0, i32 2
  store i32 %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %4, i32 0, i32 3, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.mdp5_ctl_manager, ptr %8, i32 0, i32 3
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.mdp5_ctl_manager, ptr %8, i32 0, i32 6
  store i32 0, ptr %29, align 8
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #7
  %31 = load i32, ptr %25, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %66, %20
  %34 = getelementptr %struct.mdp5_cfg_hw, ptr %4, i32 0, i32 14, i32 1, i32 0
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 1
  %37 = zext i1 %36 to i32
  %38 = getelementptr %struct.mdp5_cfg_hw, ptr %4, i32 0, i32 14, i32 1, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 1
  %41 = zext i1 %40 to i32
  %42 = add nuw nsw i32 %37, %41
  %43 = getelementptr %struct.mdp5_cfg_hw, ptr %4, i32 0, i32 14, i32 1, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 1
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %42, %46
  %48 = getelementptr %struct.mdp5_cfg_hw, ptr %4, i32 0, i32 14, i32 1, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 1
  %51 = zext i1 %50 to i32
  %52 = add nuw nsw i32 %47, %51
  %53 = getelementptr %struct.mdp5_cfg_hw, ptr %4, i32 0, i32 14, i32 1, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 1
  %56 = zext i1 %55 to i32
  %57 = add nuw nsw i32 %52, %56
  %58 = icmp sgt i32 %5, 2
  %59 = icmp ugt i32 %57, 1
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %76, label %84

61:                                               ; preds = %66, %20
  %62 = phi i32 [ %73, %66 ], [ 0, %20 ]
  %63 = getelementptr %struct.mdp5_cfg_hw, ptr %4, i32 0, i32 3, i32 1, i32 %62
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %86, label %66, !prof !8

66:                                               ; preds = %61
  %67 = getelementptr %struct.mdp5_ctl_manager, ptr %8, i32 0, i32 7, i32 %62
  store ptr %8, ptr %67, align 4
  %68 = getelementptr %struct.mdp5_ctl_manager, ptr %8, i32 0, i32 7, i32 %62, i32 1
  store i32 %62, ptr %68, align 8
  %69 = load i32, ptr %63, align 4
  %70 = getelementptr %struct.mdp5_ctl_manager, ptr %8, i32 0, i32 7, i32 %62, i32 6
  store i32 %69, ptr %70, align 4
  %71 = getelementptr %struct.mdp5_ctl_manager, ptr %8, i32 0, i32 7, i32 %62, i32 2
  store i32 0, ptr %71, align 4
  %72 = getelementptr %struct.mdp5_ctl_manager, ptr %8, i32 0, i32 7, i32 %62, i32 5
  store i32 0, ptr %72, align 8
  %73 = add nuw i32 %62, 1
  %74 = load i32, ptr %25, align 8
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %61, label %33

76:                                               ; preds = %33
  %77 = getelementptr inbounds %struct.mdp5_ctl_manager, ptr %8, i32 0, i32 4
  store i8 1, ptr %77, align 8
  %78 = getelementptr inbounds %struct.mdp5_ctl_manager, ptr %8, i32 0, i32 7, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = or i32 %79, 2
  store i32 %80, ptr %78, align 4
  %81 = getelementptr %struct.mdp5_ctl_manager, ptr %8, i32 0, i32 7, i32 1, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = or i32 %82, 2
  store i32 %83, ptr %81, align 4
  br label %84

84:                                               ; preds = %76, %33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %30) #7
  %85 = load i32, ptr %25, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16, i32 noundef %85) #7
  br label %94

86:                                               ; preds = %61
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 726, i32 noundef 9, ptr noundef null) #7
  %87 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %88, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.15, i32 noundef %62) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %30) #7
  br label %89

89:                                               ; preds = %86, %16
  %90 = phi i32 [ -28, %16 ], [ -22, %86 ]
  tail call void @kfree(ptr noundef nonnull %8) #7
  br label %91

91:                                               ; preds = %89, %10
  %92 = phi i32 [ -12, %10 ], [ %90, %89 ]
  %93 = inttoptr i32 %92 to ptr
  br label %94

94:                                               ; preds = %91, %84
  %95 = phi ptr [ %93, %91 ], [ %8, %84 ]
  ret ptr %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_cfg_get_hw_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_cfg_get_hw_rev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2155753319, i64 2155753824, i64 2155753356, i64 2155753412, i64 2155753446, i64 2155753470, i64 2155753511, i64 2155753532, i64 2155753560, i64 2155753594}
!10 = !{i64 2155648669, i64 2155649174, i64 2155648706, i64 2155648762, i64 2155648796, i64 2155648820, i64 2155648861, i64 2155648882, i64 2155648910, i64 2155648944}
!11 = !{i8 0, i8 2}
!12 = !{i64 2155649998, i64 2155650503, i64 2155650035, i64 2155650091, i64 2155650125, i64 2155650149, i64 2155650190, i64 2155650211, i64 2155650239, i64 2155650273}
!13 = !{i64 2155654545, i64 2155655050, i64 2155654582, i64 2155654638, i64 2155654672, i64 2155654696, i64 2155654737, i64 2155654758, i64 2155654786, i64 2155654820}
