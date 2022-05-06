; ModuleID = '/llk/IR/drivers/gpu/drm/panfrost/panfrost_gem.c_pt.bc'
source_filename = "../drivers/gpu/drm/panfrost/panfrost_gem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.panfrost_gem_object = type { %struct.drm_gem_shmem_object, ptr, %struct.anon.77, %struct.atomic_t, i8 }
%struct.drm_gem_shmem_object = type { %struct.drm_gem_object, %struct.mutex, ptr, i32, i32, %struct.list_head, i8, ptr, %struct.mutex, ptr, i32, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.77 = type { %struct.list_head, %struct.mutex }
%struct.atomic_t = type { i32 }
%struct.panfrost_file_priv = type { ptr, [3 x %struct.drm_sched_entity], ptr }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.panfrost_gem_mapping = type { %struct.list_head, %struct.kref, ptr, %struct.drm_mm_node, ptr, i8 }
%struct.panfrost_mmu = type { ptr, %struct.kref, %struct.io_pgtable_cfg, ptr, %struct.drm_mm, %struct.spinlock, i32, %struct.atomic_t, %struct.list_head }
%struct.io_pgtable_cfg = type { i32, i32, i32, i32, i8, ptr, ptr, %union.anon.79 }
%union.anon.79 = type { %struct.anon.86 }
%struct.anon.86 = type { [4 x i64], i32 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.74, ptr, i32, ptr, i8, i32 }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.74 = type { i32, ptr }
%struct.panfrost_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], [3 x ptr], i8, %struct.panfrost_features, ptr, %struct.spinlock, i32, i32, i32, %struct.list_head, ptr, [3 x [2 x ptr]], %struct.list_head, ptr, %struct.mutex, %struct.anon.78, %struct.mutex, %struct.list_head, %struct.shrinker, %struct.panfrost_devfreq }
%struct.panfrost_features = type { i16, i16, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [16 x i32], i32, i32, [2 x i32], [2 x i32] }
%struct.anon.78 = type { ptr, %struct.work_struct, %struct.atomic_t }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.panfrost_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i8, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"drivers/gpu/drm/panfrost/panfrost_gem.c\00", align 1
@panfrost_gem_create_object.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"&obj->mappings.lock\00", align 1
@panfrost_gem_funcs = internal constant %struct.drm_gem_object_funcs { ptr @panfrost_gem_free_object, ptr @panfrost_gem_open, ptr @panfrost_gem_close, ptr @drm_gem_shmem_object_print_info, ptr null, ptr @panfrost_gem_pin, ptr @drm_gem_shmem_object_unpin, ptr @drm_gem_shmem_object_get_sg_table, ptr @drm_gem_shmem_object_vmap, ptr @drm_gem_shmem_object_vunmap, ptr @drm_gem_shmem_object_mmap, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@panfrost_gem_free_object.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @panfrost_gem_mapping_get(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.panfrost_gem_object, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.panfrost_gem_object, ptr %0, i32 0, i32 2, i32 1
  tail call void @mutex_lock(ptr noundef %4) #4
  %5 = getelementptr inbounds %struct.panfrost_file_priv, ptr %1, i32 0, i32 2
  br label %6

6:                                                ; preds = %10, %2
  %7 = phi ptr [ %3, %2 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %3
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %8, i32 0, i32 4
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %15, label %6

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %8, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #4, !srcloc !8
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #4, !srcloc !9
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !10

20:                                               ; preds = %15
  %21 = add i32 %18, 1
  %22 = or i32 %21, %18
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %26, label %24, !prof !11

24:                                               ; preds = %20, %15
  %25 = phi i32 [ 2, %15 ], [ 1, %20 ]
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef %25) #4
  br label %26

26:                                               ; preds = %24, %20, %6
  %27 = phi ptr [ %8, %20 ], [ %8, %24 ], [ null, %6 ]
  tail call void @mutex_unlock(ptr noundef %4) #4
  ret ptr %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_gem_mapping_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %45, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #4, !srcloc !8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #4, !srcloc !13
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %45, label %10, !prof !11

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #4
  br label %45

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !14
  %12 = getelementptr %struct.panfrost_gem_mapping, ptr %0, i32 0, i32 5
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void @panfrost_mmu_unmap(ptr noundef nonnull %0) #4
  br label %17

17:                                               ; preds = %16, %11
  %18 = getelementptr %struct.panfrost_gem_mapping, ptr %0, i32 0, i32 4
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.panfrost_mmu, ptr %19, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %20) #4
  %21 = getelementptr %struct.panfrost_gem_mapping, ptr %0, i32 0, i32 3, i32 12
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %17
  %26 = getelementptr %struct.panfrost_gem_mapping, ptr %0, i32 0, i32 3
  tail call void @drm_mm_remove_node(ptr noundef %26) #4
  br label %27

27:                                               ; preds = %25, %17
  %28 = load ptr, ptr %18, align 8
  %29 = getelementptr inbounds %struct.panfrost_mmu, ptr %28, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !15
  %30 = load i16, ptr %29, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %29, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !18
  %32 = getelementptr %struct.panfrost_gem_mapping, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %33) #4, !srcloc !8
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %33, ptr nonnull %33, i32 1, ptr nonnull elementtype(i32) %33) #4, !srcloc !13
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = icmp sgt i32 %37, 0
  br i1 %40, label %43, label %41, !prof !11

41:                                               ; preds = %39
  tail call void @refcount_warn_saturate(ptr noundef nonnull %33, i32 noundef 3) #4
  br label %43

42:                                               ; preds = %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !14
  tail call void @drm_gem_object_free(ptr noundef nonnull %33) #4, !callees !19
  br label %43

43:                                               ; preds = %42, %41, %39, %27
  %44 = load ptr, ptr %18, align 8
  tail call void @panfrost_mmu_ctx_put(ptr noundef %44) #4
  tail call void @kfree(ptr noundef nonnull %0) #4
  br label %45

45:                                               ; preds = %43, %10, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_gem_teardown_mappings_locked(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.panfrost_gem_object, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %29, label %5

5:                                                ; preds = %22, %1
  %6 = phi ptr [ %27, %22 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %6, i32 0, i32 5
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void @panfrost_mmu_unmap(ptr noundef %6) #4
  br label %12

12:                                               ; preds = %11, %5
  %13 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %6, i32 0, i32 4
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.panfrost_mmu, ptr %14, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %15) #4
  %16 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %6, i32 0, i32 3, i32 12
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %6, i32 0, i32 3
  tail call void @drm_mm_remove_node(ptr noundef %21) #4
  br label %22

22:                                               ; preds = %20, %12
  %23 = load ptr, ptr %13, align 8
  %24 = getelementptr inbounds %struct.panfrost_mmu, ptr %23, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !15
  %25 = load i16, ptr %24, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !18
  %27 = load ptr, ptr %6, align 4
  %28 = icmp eq ptr %27, %2
  br i1 %28, label %29, label %5

29:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @panfrost_gem_open(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.panfrost_gem_object, ptr %0, i32 0, i32 4
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 136) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %70, label %14

14:                                               ; preds = %2
  store volatile ptr %12, ptr %12, align 8
  %15 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %12, ptr %15, align 4
  %16 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %12, i32 0, i32 1
  store volatile i32 1, ptr %16, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !8
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #4, !srcloc !9
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !10

20:                                               ; preds = %14
  %21 = add i32 %18, 1
  %22 = or i32 %21, %18
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %26, label %24, !prof !11

24:                                               ; preds = %20, %14
  %25 = phi i32 [ 2, %14 ], [ 1, %20 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %25) #4
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %12, i32 0, i32 2
  store ptr %0, ptr %27, align 4
  %28 = load i8, ptr %5, align 4
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  %31 = icmp ugt i32 %4, 2097151
  %32 = select i1 %31, i32 512, i32 0
  %33 = lshr i32 %4, 12
  %34 = select i1 %30, i32 %33, i32 %32
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.panfrost_file_priv, ptr %10, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = tail call ptr @panfrost_mmu_ctx_get(ptr noundef %37) #4
  %39 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %12, i32 0, i32 4
  store ptr %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.panfrost_mmu, ptr %38, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %40) #4
  %41 = load ptr, ptr %39, align 8
  %42 = getelementptr inbounds %struct.panfrost_mmu, ptr %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %12, i32 0, i32 3
  %44 = zext i32 %33 to i64
  %45 = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %42, ptr noundef %43, i64 noundef %44, i64 noundef %35, i32 noundef %8, i64 noundef 0, i64 noundef -1, i32 noundef 0) #4
  %46 = load ptr, ptr %39, align 8
  %47 = getelementptr inbounds %struct.panfrost_mmu, ptr %46, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !15
  %48 = load i16, ptr %47, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %47, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !18
  %50 = icmp eq i32 %45, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %26
  %52 = load i8, ptr %5, align 4
  %53 = and i8 %52, 2
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = tail call i32 @panfrost_mmu_map(ptr noundef nonnull %12) #4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %55, %51
  %59 = getelementptr inbounds %struct.panfrost_gem_object, ptr %0, i32 0, i32 2
  %60 = getelementptr inbounds %struct.panfrost_gem_object, ptr %0, i32 0, i32 2, i32 1
  tail call void @mutex_lock(ptr noundef %60) #4
  %61 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64, !prof !11

64:                                               ; preds = %58
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 159, i32 noundef 9, ptr noundef null) #4
  br label %65

65:                                               ; preds = %64, %58
  %66 = getelementptr inbounds %struct.panfrost_gem_object, ptr %0, i32 0, i32 2, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  store ptr %12, ptr %66, align 4
  store ptr %59, ptr %12, align 8
  store ptr %67, ptr %15, align 4
  store volatile ptr %12, ptr %67, align 4
  tail call void @mutex_unlock(ptr noundef %60) #4
  br label %70

68:                                               ; preds = %55, %26
  %69 = phi i32 [ %56, %55 ], [ %45, %26 ]
  tail call void @panfrost_gem_mapping_put(ptr noundef nonnull %12)
  br label %70

70:                                               ; preds = %68, %65, %2
  %71 = phi i32 [ -12, %2 ], [ %69, %68 ], [ 0, %65 ]
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @panfrost_mmu_ctx_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_mmu_map(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_gem_close(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.panfrost_gem_object, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.panfrost_gem_object, ptr %0, i32 0, i32 2, i32 1
  tail call void @mutex_lock(ptr noundef %6) #4
  %7 = getelementptr inbounds %struct.panfrost_file_priv, ptr %4, i32 0, i32 2
  br label %8

8:                                                ; preds = %12, %2
  %9 = phi ptr [ %5, %2 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %5
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %10, i32 0, i32 4
  %14 = load ptr, ptr %13, align 8
  %15 = load ptr, ptr %7, align 8
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %8

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %10, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %20, ptr %19, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %18, align 4
  br label %22

22:                                               ; preds = %17, %8
  %23 = phi ptr [ %10, %17 ], [ null, %8 ]
  tail call void @mutex_unlock(ptr noundef %6) #4
  tail call void @panfrost_gem_mapping_put(ptr noundef %23)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @panfrost_gem_create_object(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 328) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.panfrost_gem_object, ptr %6, i32 0, i32 2
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.panfrost_gem_object, ptr %6, i32 0, i32 2, i32 0, i32 1
  store ptr %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.panfrost_gem_object, ptr %6, i32 0, i32 2, i32 1
  tail call void @__mutex_init(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @panfrost_gem_create_object.__key) #4
  %12 = getelementptr inbounds %struct.drm_gem_object, ptr %6, i32 0, i32 11
  store ptr @panfrost_gem_funcs, ptr %12, align 8
  %13 = getelementptr inbounds %struct.panfrost_device, ptr %4, i32 0, i32 10
  %14 = load i8, ptr %13, align 8, !range !20
  %15 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %6, i32 0, i32 11
  %16 = xor i8 %14, 1
  store i8 %16, ptr %15, align 4
  br label %17

17:                                               ; preds = %8, %2
  %18 = phi ptr [ %6, %8 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @panfrost_gem_create_with_handle(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %3, 2
  %7 = icmp eq i32 %6, 0
  %8 = add i32 %2, 2097151
  %9 = and i32 %8, -2097152
  %10 = select i1 %7, i32 %2, i32 %9
  %11 = tail call ptr @drm_gem_shmem_create(ptr noundef %1, i32 noundef %10) #4
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %36, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.panfrost_gem_object, ptr %11, i32 0, i32 4
  %15 = trunc i32 %3 to i8
  %16 = and i8 %15, 1
  %17 = load i8, ptr %14, align 4
  %18 = and i8 %17, -4
  %19 = trunc i32 %6 to i8
  %20 = or i8 %16, %19
  %21 = or i8 %20, %18
  store i8 %21, ptr %14, align 4
  %22 = tail call i32 @drm_gem_handle_create(ptr noundef %0, ptr noundef %11, ptr noundef %4) #4
  %23 = icmp eq ptr %11, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %11) #4, !srcloc !8
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #4, !srcloc !13
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = icmp sgt i32 %26, 0
  br i1 %29, label %32, label %30, !prof !11

30:                                               ; preds = %28
  tail call void @refcount_warn_saturate(ptr noundef nonnull %11, i32 noundef 3) #4
  br label %32

31:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !14
  tail call void @drm_gem_object_free(ptr noundef nonnull %11) #4, !callees !19
  br label %32

32:                                               ; preds = %31, %30, %28, %13
  %33 = icmp eq i32 %22, 0
  %34 = inttoptr i32 %22 to ptr
  %35 = select i1 %33, ptr %11, ptr %34
  br label %36

36:                                               ; preds = %32, %5
  %37 = phi ptr [ %11, %5 ], [ %35, %32 ]
  ret ptr %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_shmem_create(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @panfrost_gem_prime_import_sg_table(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @drm_gem_shmem_prime_import_sg_table(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.panfrost_gem_object, ptr %4, i32 0, i32 4
  %8 = load i8, ptr %7, align 4
  %9 = or i8 %8, 1
  store i8 %9, ptr %7, align 4
  br label %10

10:                                               ; preds = %6, %3
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_shmem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_mmu_ctx_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_mmu_unmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @panfrost_gem_free_object(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.panfrost_device, ptr %5, i32 0, i32 24
  tail call void @mutex_lock(ptr noundef %6) #4
  %7 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 5
  %8 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %0, i32 0, i32 5, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %8, align 4
  tail call void @mutex_unlock(ptr noundef %6) #4
  %12 = getelementptr inbounds %struct.panfrost_gem_object, ptr %0, i32 0, i32 2
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp ne ptr %13, %12
  %15 = load i1, ptr @panfrost_gem_free_object.__already_done, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %19, !prof !10

18:                                               ; preds = %1
  store i1 true, ptr @panfrost_gem_free_object.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 36, i32 noundef 9, ptr noundef null) #4
  br label %19

19:                                               ; preds = %18, %1
  %20 = getelementptr inbounds %struct.panfrost_gem_object, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %47, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %25 = load i32, ptr %24, align 8
  %26 = icmp ult i32 %25, 2097152
  br i1 %26, label %45, label %27

27:                                               ; preds = %23
  %28 = lshr i32 %25, 21
  br label %29

29:                                               ; preds = %41, %27
  %30 = phi ptr [ %21, %27 ], [ %44, %41 ]
  %31 = phi i32 [ 0, %27 ], [ %42, %41 ]
  %32 = getelementptr %struct.sg_table, ptr %30, i32 %31
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %5, align 8
  %37 = getelementptr %struct.sg_table, ptr %30, i32 %31, i32 2
  %38 = load i32, ptr %37, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %36, ptr noundef nonnull %33, i32 noundef %38, i32 noundef 0, i32 noundef 0) #4
  %39 = load ptr, ptr %20, align 8
  %40 = getelementptr %struct.sg_table, ptr %39, i32 %31
  tail call void @sg_free_table(ptr noundef %40) #4
  br label %41

41:                                               ; preds = %35, %29
  %42 = add nuw nsw i32 %31, 1
  %43 = icmp eq i32 %42, %28
  %44 = load ptr, ptr %20, align 8
  br i1 %43, label %45, label %29

45:                                               ; preds = %41, %23
  %46 = phi ptr [ %21, %23 ], [ %44, %41 ]
  tail call void @kvfree(ptr noundef %46) #4
  br label %47

47:                                               ; preds = %45, %19
  tail call void @drm_gem_shmem_free(ptr noundef %0) #4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_gem_shmem_object_print_info(ptr noundef %0, i32 noundef %1, ptr noundef %2) #3 {
  tail call void @drm_gem_shmem_print_info(ptr noundef %2, ptr noundef %0, i32 noundef %1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panfrost_gem_pin(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.panfrost_gem_object, ptr %0, i32 0, i32 4
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 @drm_gem_shmem_pin(ptr noundef %0) #4
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ -22, %1 ]
  ret i32 %9
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_gem_shmem_object_unpin(ptr noundef %0) #3 {
  tail call void @drm_gem_shmem_unpin(ptr noundef %0) #4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @drm_gem_shmem_object_get_sg_table(ptr noundef %0) #3 {
  %2 = tail call ptr @drm_gem_shmem_get_sg_table(ptr noundef %0) #4
  ret ptr %2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_gem_shmem_object_vmap(ptr noundef %0, ptr noundef %1) #3 {
  %3 = tail call i32 @drm_gem_shmem_vmap(ptr noundef %0, ptr noundef %1) #4
  ret i32 %3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_gem_shmem_object_vunmap(ptr noundef %0, ptr noundef %1) #3 {
  tail call void @drm_gem_shmem_vunmap(ptr noundef %0, ptr noundef %1) #4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_gem_shmem_object_mmap(ptr noundef %0, ptr noundef %1) #3 {
  %3 = tail call i32 @drm_gem_shmem_mmap(ptr noundef %0, ptr noundef %1) #4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_print_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_shmem_pin(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_unpin(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_shmem_get_sg_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_shmem_vmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_vunmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_shmem_mmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(2) }

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
!8 = !{i64 760754, i64 2148250725, i64 2148250751, i64 2148250798, i64 2148250820, i64 2148250848, i64 2148250868}
!9 = !{i64 2148263598, i64 2148263630, i64 2148263659, i64 2148263693, i64 2148263724, i64 2148263747}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148363820}
!13 = !{i64 2148265955, i64 2148265987, i64 2148266016, i64 2148266050, i64 2148266081, i64 2148266104}
!14 = !{i64 2149278710}
!15 = !{i64 2148929358}
!16 = !{i64 2148925182}
!17 = !{i64 2148925257, i64 2148925284, i64 2148925331, i64 2148925353, i64 2148925381, i64 2148925401}
!18 = !{i64 2148952361}
!19 = distinct !{ptr @drm_gem_object_free, null}
!20 = !{i8 0, i8 2}
