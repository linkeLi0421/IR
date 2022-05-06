; ModuleID = '/llk/IR/drivers/gpu/drm/panfrost/panfrost_perfcnt.c_pt.bc'
source_filename = "../drivers/gpu/drm/panfrost/panfrost_perfcnt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.panfrost_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], [3 x ptr], i8, %struct.panfrost_features, ptr, %struct.spinlock, i32, i32, i32, %struct.list_head, ptr, [3 x [2 x ptr]], %struct.list_head, ptr, %struct.mutex, %struct.anon.87, %struct.mutex, %struct.list_head, %struct.shrinker, %struct.panfrost_devfreq }
%struct.panfrost_features = type { i16, i16, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [16 x i32], i32, i32, [2 x i32], [2 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.87 = type { ptr, %struct.work_struct, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.panfrost_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i8, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.panfrost_perfcnt = type { ptr, i32, ptr, ptr, %struct.mutex, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dma_buf_map = type { %union.anon.85, i8 }
%union.anon.85 = type { ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.74, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.74 = type { i32, ptr }
%struct.drm_panfrost_perfcnt_enable = type { i32, i32 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.panfrost_gem_mapping = type { %struct.list_head, %struct.kref, ptr, %struct.drm_mm_node, ptr, i8 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@panfrost_perfcnt_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [15 x i8] c"&perfcnt->lock\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_perfcnt_clean_cache_done(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.panfrost_perfcnt, ptr %3, i32 0, i32 5
  tail call void @complete(ptr noundef %4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_perfcnt_sample_done(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %2 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 7) #6, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @panfrost_ioctl_perfcnt_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.dma_buf_map, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.panfrost_device, ptr %6, i32 0, i32 21
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @panfrost_unstable_ioctl_check() #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %134

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.drm_panfrost_perfcnt_enable, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.panfrost_device, ptr %6, i32 0, i32 11
  %15 = load i16, ptr %14, align 8
  %16 = icmp ugt i16 %15, 4095
  %17 = zext i1 %16 to i32
  %18 = icmp ugt i32 %13, %17
  br i1 %18, label %134, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.panfrost_perfcnt, ptr %8, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %20) #6
  %21 = load i32, ptr %1, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %130, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %12, align 4
  %25 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store i64 0, ptr %4, align 8, !annotation !10
  %28 = getelementptr inbounds %struct.panfrost_perfcnt, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %26, %29
  br i1 %30, label %128, label %31

31:                                               ; preds = %23
  %32 = icmp eq ptr %29, null
  br i1 %32, label %33, label %128

33:                                               ; preds = %31
  %34 = load ptr, ptr %6, align 8
  %35 = tail call i32 @__pm_runtime_resume(ptr noundef %34, i32 noundef 4) #6
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %124, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.panfrost_device, ptr %6, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.panfrost_perfcnt, ptr %27, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = tail call ptr @drm_gem_shmem_create(ptr noundef %39, i32 noundef %41) #6
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = ptrtoint ptr %42 to i32
  br label %124

46:                                               ; preds = %37
  %47 = tail call i32 @panfrost_gem_open(ptr noundef %42, ptr noundef %2) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %113

49:                                               ; preds = %46
  %50 = tail call ptr @panfrost_gem_mapping_get(ptr noundef %42, ptr noundef %26) #6
  store ptr %50, ptr %27, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %111, label %52

52:                                               ; preds = %49
  %53 = call i32 @drm_gem_shmem_vmap(ptr noundef %42, ptr noundef nonnull %4) #6
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %108

55:                                               ; preds = %52
  %56 = load ptr, ptr %4, align 8
  %57 = getelementptr inbounds %struct.panfrost_perfcnt, ptr %27, i32 0, i32 2
  store ptr %56, ptr %57, align 4
  %58 = load ptr, ptr %7, align 8
  %59 = getelementptr inbounds %struct.panfrost_perfcnt, ptr %58, i32 0, i32 5
  store i32 0, ptr %59, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  %60 = getelementptr inbounds %struct.panfrost_device, ptr %6, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 196608) #6, !srcloc !9
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  %63 = load ptr, ptr %60, align 4
  %64 = getelementptr i8, ptr %63, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 3) #6, !srcloc !9
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  call void @arm_heavy_mb() #6
  %65 = load ptr, ptr %60, align 4
  %66 = getelementptr i8, ptr %65, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 8) #6, !srcloc !9
  %67 = load ptr, ptr %7, align 8
  %68 = getelementptr inbounds %struct.panfrost_perfcnt, ptr %67, i32 0, i32 5
  %69 = call i32 @wait_for_completion_timeout(ptr noundef %68, i32 noundef 100) #6
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %55
  call void @drm_gem_shmem_vunmap(ptr noundef %42, ptr noundef nonnull %4) #6
  br label %108

72:                                               ; preds = %55
  store ptr %26, ptr %28, align 4
  %73 = load ptr, ptr %27, align 4
  %74 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %73, i32 0, i32 4
  %75 = load ptr, ptr %74, align 8
  %76 = call i32 @panfrost_mmu_as_get(ptr noundef %6, ptr noundef %75) #6
  %77 = shl i32 %76, 4
  %78 = load i16, ptr %14, align 8
  %79 = icmp ugt i16 %78, 4095
  %80 = shl i32 %24, 8
  %81 = select i1 %79, i32 %80, i32 0
  %82 = or i32 %77, %81
  %83 = or i32 %82, 1
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  call void @arm_heavy_mb() #6
  %84 = load ptr, ptr %60, align 4
  %85 = getelementptr i8, ptr %84, i32 108
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 -1) #6, !srcloc !9
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  call void @arm_heavy_mb() #6
  %86 = load ptr, ptr %60, align 4
  %87 = getelementptr i8, ptr %86, i32 112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 -1) #6, !srcloc !9
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  call void @arm_heavy_mb() #6
  %88 = load ptr, ptr %60, align 4
  %89 = getelementptr i8, ptr %88, i32 124
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 -1) #6, !srcloc !9
  %90 = getelementptr inbounds %struct.panfrost_device, ptr %6, i32 0, i32 11, i32 24
  %91 = load volatile i32, ptr %90, align 4
  %92 = and i32 %91, 4
  %93 = icmp eq i32 %92, 0
  call void asm sideeffect "dsb st", "~{memory}"() #6
  call void @arm_heavy_mb() #6
  %94 = load ptr, ptr %60, align 4
  %95 = getelementptr i8, ptr %94, i32 116
  br i1 %93, label %97, label %96

96:                                               ; preds = %72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 0) #6, !srcloc !9
  br label %98

97:                                               ; preds = %72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 -1) #6, !srcloc !9
  br label %98

98:                                               ; preds = %97, %96
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  call void @arm_heavy_mb() #6
  %99 = load ptr, ptr %60, align 4
  %100 = getelementptr i8, ptr %99, i32 104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %83) #6, !srcloc !9
  %101 = load volatile i32, ptr %90, align 4
  %102 = and i32 %101, 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %98
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  call void @arm_heavy_mb() #6
  %105 = load ptr, ptr %60, align 4
  %106 = getelementptr i8, ptr %105, i32 116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 -1) #6, !srcloc !9
  br label %107

107:                                              ; preds = %104, %98
  call fastcc void @drm_gem_object_put(ptr noundef %42) #6
  br label %128

108:                                              ; preds = %71, %52
  %109 = phi i32 [ %53, %52 ], [ -110, %71 ]
  %110 = load ptr, ptr %27, align 4
  call void @panfrost_gem_mapping_put(ptr noundef %110) #6
  br label %111

111:                                              ; preds = %108, %49
  %112 = phi i32 [ %109, %108 ], [ -22, %49 ]
  call void @panfrost_gem_close(ptr noundef %42, ptr noundef %2) #6
  br label %113

113:                                              ; preds = %111, %46
  %114 = phi i32 [ %47, %46 ], [ %112, %111 ]
  %115 = icmp eq ptr %42, null
  br i1 %115, label %124, label %116

116:                                              ; preds = %113
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %42) #6, !srcloc !20
  %117 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %42, ptr nonnull %42, i32 1, ptr nonnull elementtype(i32) %42) #6, !srcloc !21
  %118 = extractvalue { i32, i32, i32 } %117, 0
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = icmp sgt i32 %118, 0
  br i1 %121, label %124, label %122, !prof !22

122:                                              ; preds = %120
  call void @refcount_warn_saturate(ptr noundef nonnull %42, i32 noundef 3) #6
  br label %124

123:                                              ; preds = %116
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  call void @drm_gem_object_free(ptr noundef nonnull %42) #6
  br label %124

124:                                              ; preds = %123, %122, %120, %113, %44, %33
  %125 = phi i32 [ %35, %33 ], [ %45, %44 ], [ %114, %113 ], [ %114, %120 ], [ %114, %122 ], [ %114, %123 ]
  %126 = load ptr, ptr %6, align 8
  %127 = call i32 @__pm_runtime_idle(ptr noundef %126, i32 noundef 5) #6
  br label %128

128:                                              ; preds = %124, %107, %31, %23
  %129 = phi i32 [ %125, %124 ], [ 0, %107 ], [ 0, %23 ], [ -16, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  br label %132

130:                                              ; preds = %19
  %131 = tail call fastcc i32 @panfrost_perfcnt_disable_locked(ptr noundef %6, ptr noundef %2)
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  call void @mutex_unlock(ptr noundef %20) #6
  br label %134

134:                                              ; preds = %132, %11, %3
  %135 = phi i32 [ %133, %132 ], [ %9, %3 ], [ -22, %11 ]
  ret i32 %135
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_unstable_ioctl_check() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @panfrost_perfcnt_disable_locked(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.dma_buf_map, align 8
  %4 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 21
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store i64 0, ptr %3, align 8, !annotation !10
  %8 = getelementptr inbounds %struct.panfrost_perfcnt, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %3, align 8
  %10 = getelementptr inbounds %struct.panfrost_perfcnt, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %5, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %14 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr i8, ptr %17, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr i8, ptr %19, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %21 = load ptr, ptr %14, align 4
  %22 = getelementptr i8, ptr %21, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %23 = load ptr, ptr %14, align 4
  %24 = getelementptr i8, ptr %23, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #6, !srcloc !9
  store ptr null, ptr %10, align 4
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  call void @drm_gem_shmem_vunmap(ptr noundef %27, ptr noundef nonnull %3) #6
  store ptr null, ptr %8, align 4
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  call void @panfrost_gem_close(ptr noundef %30, ptr noundef %1) #6
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %31, i32 0, i32 4
  %33 = load ptr, ptr %32, align 8
  call void @panfrost_mmu_as_put(ptr noundef %0, ptr noundef %33) #6
  %34 = load ptr, ptr %7, align 4
  call void @panfrost_gem_mapping_put(ptr noundef %34) #6
  store ptr null, ptr %7, align 4
  %35 = load ptr, ptr %0, align 8
  %36 = call i64 @ktime_get_mono_fast_ns() #6
  %37 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 11, i32 22
  store volatile i64 %36, ptr %37, align 8
  %38 = load ptr, ptr %0, align 8
  %39 = call i32 @__pm_runtime_suspend(ptr noundef %38, i32 noundef 13) #6
  br label %40

40:                                               ; preds = %13, %2
  %41 = phi i32 [ 0, %13 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @panfrost_ioctl_perfcnt_dump(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.panfrost_device, ptr %5, i32 0, i32 21
  %7 = load ptr, ptr %6, align 8
  %8 = load i64, ptr %1, align 8
  %9 = trunc i64 %8 to i32
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 @panfrost_unstable_ioctl_check() #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %75

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.panfrost_perfcnt, ptr %7, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %14) #6
  %15 = getelementptr inbounds %struct.panfrost_perfcnt, ptr %7, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %20, label %73

20:                                               ; preds = %13
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr inbounds %struct.panfrost_perfcnt, ptr %21, i32 0, i32 5
  store i32 0, ptr %22, align 4
  %23 = load ptr, ptr %6, align 8
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %24, i32 0, i32 3, i32 1
  %26 = load i64, ptr %25, align 8
  %27 = shl i64 %26, 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds %struct.panfrost_device, ptr %5, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %28) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %32 = lshr i64 %27, 32
  %33 = trunc i64 %32 to i32
  %34 = load ptr, ptr %29, align 4
  %35 = getelementptr i8, ptr %34, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  %36 = load ptr, ptr %29, align 4
  %37 = getelementptr i8, ptr %36, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 196608) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !32
  tail call void @arm_heavy_mb() #6
  %38 = load ptr, ptr %29, align 4
  %39 = getelementptr i8, ptr %38, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 4) #6, !srcloc !9
  %40 = load ptr, ptr %6, align 8
  %41 = getelementptr inbounds %struct.panfrost_perfcnt, ptr %40, i32 0, i32 5
  %42 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %41, i32 noundef 100) #6
  %43 = icmp eq i32 %42, 0
  %44 = tail call i32 @llvm.smin.i32(i32 %42, i32 0) #6
  %45 = select i1 %43, i32 -110, i32 %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %20
  %48 = getelementptr inbounds %struct.panfrost_perfcnt, ptr %7, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.panfrost_perfcnt, ptr %7, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp slt i32 %51, 0
  %53 = load i1, ptr @check_copy_size.__already_done, align 1
  %54 = xor i1 %53, true
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %57, !prof !33

56:                                               ; preds = %47
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %57

57:                                               ; preds = %56, %47
  br i1 %52, label %73, label %58, !prof !33

58:                                               ; preds = %57
  %59 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 %51, i32 -1090519040) #7, !srcloc !34
  %60 = extractvalue { i32, i32 } %59, 0
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = tail call ptr @llvm.thread.pointer() #6
  %64 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 3
  %65 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %64) #8, !srcloc !35
  %66 = and i32 %65, -13
  %67 = or i32 %66, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #6, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !37
  %68 = tail call i32 @arm_copy_to_user(ptr noundef %10, ptr noundef %49, i32 noundef %51) #6
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #6, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !37
  br label %69

69:                                               ; preds = %62, %58
  %70 = phi i32 [ %68, %62 ], [ %51, %58 ]
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, i32 0, i32 -14
  br label %73

73:                                               ; preds = %69, %57, %20, %13
  %74 = phi i32 [ %45, %20 ], [ -22, %13 ], [ -14, %57 ], [ %72, %69 ]
  tail call void @mutex_unlock(ptr noundef %14) #6
  br label %75

75:                                               ; preds = %73, %3
  %76 = phi i32 [ %74, %73 ], [ %11, %3 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_perfcnt_close(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.panfrost_device, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #6
  %9 = getelementptr inbounds %struct.panfrost_perfcnt, ptr %6, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %9) #6
  %10 = getelementptr inbounds %struct.panfrost_perfcnt, ptr %6, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %3
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = tail call fastcc i32 @panfrost_perfcnt_disable_locked(ptr noundef %4, ptr noundef %0)
  br label %15

15:                                               ; preds = %13, %1
  tail call void @mutex_unlock(ptr noundef %9) #6
  %16 = load ptr, ptr %4, align 8
  %17 = tail call i64 @ktime_get_mono_fast_ns() #6
  %18 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 11, i32 22
  store volatile i64 %17, ptr %18, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = tail call i32 @__pm_runtime_suspend(ptr noundef %19, i32 noundef 13) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @panfrost_perfcnt_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 23
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 2097152
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 4
  %8 = load i64, ptr %7, align 8
  %9 = tail call i32 @__sw_hweight64(i64 noundef %8) #6
  %10 = shl i32 %9, 11
  br label %36

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 11
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 8
  %15 = and i32 %14, 15
  %16 = add nuw nsw i32 %15, 1
  %17 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = lshr i64 %18, 32
  %20 = trunc i64 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %11
  %23 = tail call i32 @llvm.ctlz.i32(i32 %20, i1 true) #6, !range !38
  %24 = sub nuw nsw i32 64, %23
  br label %31

25:                                               ; preds = %11
  %26 = trunc i64 %18 to i32
  %27 = icmp eq i32 %26, 0
  %28 = tail call i32 @llvm.ctlz.i32(i32 %26, i1 false) #6, !range !38
  %29 = sub nuw nsw i32 32, %28
  %30 = select i1 %27, i32 0, i32 %29
  br label %31

31:                                               ; preds = %25, %22
  %32 = phi i32 [ %24, %22 ], [ %30, %25 ]
  %33 = add nuw nsw i32 %16, %32
  %34 = shl nuw nsw i32 %33, 8
  %35 = add nuw nsw i32 %34, 512
  br label %36

36:                                               ; preds = %31, %6
  %37 = phi i32 [ %10, %6 ], [ %35, %31 ]
  %38 = load ptr, ptr %0, align 8
  %39 = tail call noalias ptr @devm_kmalloc(ptr noundef %38, i32 noundef 52, i32 noundef 3520) #6
  %40 = icmp eq ptr %39, null
  br i1 %40, label %58, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.panfrost_perfcnt, ptr %39, i32 0, i32 1
  store i32 %37, ptr %42, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %43 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 0) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %46 = load ptr, ptr %43, align 4
  %47 = getelementptr i8, ptr %46, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 0) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %48 = load ptr, ptr %43, align 4
  %49 = getelementptr i8, ptr %48, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 0) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  %50 = load ptr, ptr %43, align 4
  %51 = getelementptr i8, ptr %50, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 0) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %52 = load ptr, ptr %43, align 4
  %53 = getelementptr i8, ptr %52, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 0) #6, !srcloc !9
  %54 = getelementptr inbounds %struct.panfrost_perfcnt, ptr %39, i32 0, i32 5
  store i32 0, ptr %54, align 4
  %55 = getelementptr inbounds %struct.panfrost_perfcnt, ptr %39, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %55, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #6
  %56 = getelementptr inbounds %struct.panfrost_perfcnt, ptr %39, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %56, ptr noundef nonnull @.str, ptr noundef nonnull @panfrost_perfcnt_init.__key) #6
  %57 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 21
  store ptr %39, ptr %57, align 8
  br label %58

58:                                               ; preds = %41, %36
  %59 = phi i32 [ 0, %41 ], [ -12, %36 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_perfcnt_fini(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %2 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr i8, ptr %11, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #6, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_shmem_create(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_gem_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @panfrost_gem_mapping_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_shmem_vmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_mmu_as_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drm_gem_object_put(ptr noundef %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #6, !srcloc !20
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #6, !srcloc !21
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %11, label %9, !prof !22

9:                                                ; preds = %7
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 3) #6
  br label %11

10:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  tail call void @drm_gem_object_free(ptr noundef nonnull %0) #6
  br label %11

11:                                               ; preds = %10, %9, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_vunmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_gem_mapping_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_gem_close(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_mmu_as_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight64(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

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
!8 = !{i64 2154184453}
!9 = !{i64 4681830}
!10 = !{!"auto-init"}
!11 = !{i64 2154187297}
!12 = !{i64 2154187787}
!13 = !{i64 2154188167}
!14 = !{i64 2154188602}
!15 = !{i64 2154189001}
!16 = !{i64 2154189400}
!17 = !{i64 2154190547}
!18 = !{i64 2154190932}
!19 = !{i64 2148288714}
!20 = !{i64 685648, i64 2148175619, i64 2148175645, i64 2148175692, i64 2148175714, i64 2148175742, i64 2148175762}
!21 = !{i64 2148190849, i64 2148190881, i64 2148190910, i64 2148190944, i64 2148190975, i64 2148190998}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2149310187}
!24 = !{i64 2154191386}
!25 = !{i64 2154191757}
!26 = !{i64 2154192128}
!27 = !{i64 2154192495}
!28 = !{i64 2154192874}
!29 = !{i64 2154184917}
!30 = !{i64 2154185435}
!31 = !{i64 2154186144}
!32 = !{i64 2154186634}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{i64 2151680292, i64 2151680317}
!35 = !{i64 4175826}
!36 = !{i64 4176023}
!37 = !{i64 2151661302}
!38 = !{i32 0, i32 33}
!39 = !{i64 2154199986}
!40 = !{i64 2154200357}
!41 = !{i64 2154200720}
!42 = !{i64 2154201083}
!43 = !{i64 2154201446}
!44 = !{i64 2154201984}
!45 = !{i64 2154202355}
!46 = !{i64 2154202718}
!47 = !{i64 2154203081}
!48 = !{i64 2154203444}
