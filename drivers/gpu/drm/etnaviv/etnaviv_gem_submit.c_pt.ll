; ModuleID = '/llk/IR/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ww_class = type { %struct.atomic_t, %struct.lock_class_key, %struct.lock_class_key, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type {}
%struct.etnaviv_gem_submit = type { %struct.drm_sched_job, %struct.kref, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, %struct.etnaviv_cmdbuf, i8, i32, i32, i32, ptr, i32, [0 x %struct.etnaviv_gem_submit_bo] }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.66, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.66 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.etnaviv_cmdbuf = type { ptr, i32, ptr, i32, i32 }
%struct.etnaviv_gem_submit_bo = type { i32, i64, ptr, ptr, ptr, i32, ptr }
%struct.etnaviv_gpu = type { ptr, ptr, ptr, %struct.mutex, %struct.etnaviv_chip_identity, i32, ptr, %struct.drm_gpu_scheduler, i8, i8, %struct.etnaviv_cmdbuf, i32, [1 x i32], [30 x %struct.etnaviv_event], %struct.completion, %struct.spinlock, i32, %struct.mutex, %struct.idr, i32, i32, %struct.wait_queue_head, i64, %struct.spinlock, %struct.work_struct, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.etnaviv_chip_identity = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.etnaviv_event = type { ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.etnaviv_gem_object = type { %struct.drm_gem_object, ptr, %struct.mutex, i32, %struct.list_head, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, %struct.list_head, i32, %struct.etnaviv_gem_userptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
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
%struct.etnaviv_gem_userptr = type { i32, ptr, i8 }
%struct.dma_fence = type { ptr, ptr, %union.anon.1, i64, i64, i32, %struct.kref, i32 }
%union.anon.1 = type { i64 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.67, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.76, ptr, i32, ptr, i8, i32 }
%struct.anon.67 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.76 = type { i32, ptr }
%struct.drm_etnaviv_gem_submit = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i32, i32 }
%struct.etnaviv_drm_private = type { i32, [4 x ptr], i32, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.etnaviv_iommu_global = type { ptr, i32, ptr, i32, %struct.mutex, ptr, i32, i32, %union.anon.77 }
%union.anon.77 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, i32, %struct.spinlock, [16 x i32] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.etnaviv_file_private = type { ptr, [4 x %struct.drm_sched_entity] }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.drm_etnaviv_gem_submit_bo = type { i32, i32, i64 }
%struct.etnaviv_vram_mapping = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.drm_mm_node, i32, i32 }
%struct.drm_etnaviv_gem_submit_reloc = type { i32, i32, i64, i32 }
%struct.drm_etnaviv_gem_submit_pmr = type { i32, i8, i8, i16, i32, i32, i32 }
%struct.etnaviv_perfmon_request = type { i32, i8, i8, i32, ptr, i32 }

@.str = private unnamed_addr constant [39 x i8] c"non-aligned cmdstream buffer size: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"invalid exec_state: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid flags: 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"softpin requested on incompatible MMU\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"submit arguments out of size limits\0A\00", align 1
@reservation_ww_class = external dso_local global %struct.ww_class, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"invalid flags: %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"invalid softpin address\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"invalid handle %u at index %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"invalid reloc flags\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"non-aligned reloc offset: %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"invalid offset %u at reloc %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"relocation %u outside object\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"invalid buffer index: %u (out of %u)\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"perfmon request: offset is 0\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"perfmon request: offset %u outside object\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"perfmon request: flags are not valid\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"perfmon request: domain or signal not valid\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"BO at index %u already on submit list\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @etnaviv_submit_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #9, !srcloc !9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #9, !srcloc !10
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %125, label %8, !prof !11

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #9
  br label %125

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %10 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 11
  %11 = load i8, ptr %10, align 4, !range !13
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.etnaviv_gpu, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i32 @__pm_runtime_suspend(ptr noundef %17, i32 noundef 13) #9
  br label %19

19:                                               ; preds = %13, %9
  %20 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 10
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @etnaviv_cmdbuf_free(ptr noundef %20) #9
  br label %24

24:                                               ; preds = %23, %19
  %25 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @etnaviv_iommu_context_put(ptr noundef nonnull %26) #9
  br label %29

29:                                               ; preds = %28, %24
  %30 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 5
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @etnaviv_iommu_context_put(ptr noundef nonnull %31) #9
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 16
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %81, label %38

38:                                               ; preds = %34
  %39 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 1
  br label %40

40:                                               ; preds = %77, %38
  %41 = phi i32 [ 0, %38 ], [ %78, %77 ]
  %42 = getelementptr [0 x %struct.etnaviv_gem_submit_bo], ptr %39, i32 0, i32 %41
  %43 = getelementptr inbounds %struct.etnaviv_gem_submit_bo, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = load i32, ptr %42, align 8
  %46 = and i32 %45, 8192
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.etnaviv_gem_submit_bo, ptr %42, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  tail call void @etnaviv_gem_mapping_unreference(ptr noundef %50) #9
  %51 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %44, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #9, !srcloc !9
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 1, ptr elementtype(i32) %51) #9, !srcloc !14
  store ptr null, ptr %49, align 4
  %53 = load i32, ptr %42, align 8
  %54 = and i32 %53, -8193
  store i32 %54, ptr %42, align 8
  br label %55

55:                                               ; preds = %48, %40
  %56 = phi i32 [ %54, %48 ], [ %45, %40 ]
  %57 = and i32 %56, 16384
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %41
  %61 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %41, i32 2
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.drm_gem_object, ptr %62, i32 0, i32 9
  %64 = load ptr, ptr %63, align 8
  tail call void @ww_mutex_unlock(ptr noundef %64) #9
  %65 = load i32, ptr %60, align 8
  %66 = and i32 %65, -16385
  store i32 %66, ptr %60, align 8
  br label %67

67:                                               ; preds = %59, %55
  %68 = icmp eq ptr %44, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %67
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %44) #9, !srcloc !9
  %70 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %44, ptr nonnull %44, i32 1, ptr nonnull elementtype(i32) %44) #9, !srcloc !10
  %71 = extractvalue { i32, i32, i32 } %70, 0
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = icmp sgt i32 %71, 0
  br i1 %74, label %77, label %75, !prof !11

75:                                               ; preds = %73
  tail call void @refcount_warn_saturate(ptr noundef nonnull %44, i32 noundef 3) #9
  br label %77

76:                                               ; preds = %69
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @drm_gem_object_free(ptr noundef nonnull %44) #9, !callees !15
  br label %77

77:                                               ; preds = %76, %75, %73, %67
  %78 = add nuw i32 %41, 1
  %79 = load i32, ptr %35, align 8
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %40, label %81

81:                                               ; preds = %77, %34
  %82 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 3
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.etnaviv_gpu, ptr %83, i32 0, i32 21
  tail call void @__wake_up(ptr noundef %84, i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  %85 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 7
  %86 = load ptr, ptr %85, align 8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %97, label %88

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.dma_fence, ptr %86, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %89) #9, !srcloc !9
  %90 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %89, ptr %89, i32 1, ptr elementtype(i32) %89) #9, !srcloc !10
  %91 = extractvalue { i32, i32, i32 } %90, 0
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = icmp sgt i32 %91, 0
  br i1 %94, label %97, label %95, !prof !11

95:                                               ; preds = %93
  tail call void @refcount_warn_saturate(ptr noundef %89, i32 noundef 3) #9
  br label %97

96:                                               ; preds = %88
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %89) #9, !callees !15
  br label %97

97:                                               ; preds = %96, %95, %93, %81
  %98 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 6
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %122, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr %82, align 8
  %103 = getelementptr inbounds %struct.etnaviv_gpu, ptr %102, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %103) #9
  %104 = load ptr, ptr %82, align 8
  %105 = getelementptr inbounds %struct.etnaviv_gpu, ptr %104, i32 0, i32 18
  %106 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 8
  %107 = load i32, ptr %106, align 4
  %108 = tail call ptr @idr_remove(ptr noundef %105, i32 noundef %107) #9
  %109 = load ptr, ptr %82, align 8
  %110 = getelementptr inbounds %struct.etnaviv_gpu, ptr %109, i32 0, i32 17
  tail call void @mutex_unlock(ptr noundef %110) #9
  %111 = load ptr, ptr %98, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %122, label %113

113:                                              ; preds = %101
  %114 = getelementptr inbounds %struct.dma_fence, ptr %111, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %114) #9, !srcloc !9
  %115 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %114, ptr %114, i32 1, ptr elementtype(i32) %114) #9, !srcloc !10
  %116 = extractvalue { i32, i32, i32 } %115, 0
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %121, label %118

118:                                              ; preds = %113
  %119 = icmp sgt i32 %116, 0
  br i1 %119, label %122, label %120, !prof !11

120:                                              ; preds = %118
  tail call void @refcount_warn_saturate(ptr noundef %114, i32 noundef 3) #9
  br label %122

121:                                              ; preds = %113
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %114) #9, !callees !15
  br label %122

122:                                              ; preds = %121, %120, %118, %101, %97
  %123 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 15
  %124 = load ptr, ptr %123, align 4
  tail call void @kfree(ptr noundef %124) #9
  tail call void @kfree(ptr noundef %0) #9
  br label %125

125:                                              ; preds = %122, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @etnaviv_ioctl_gem_submit(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ww_acquire_ctx, align 4
  %5 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !16
  %9 = getelementptr inbounds %struct.drm_etnaviv_gem_submit, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, 3
  br i1 %11, label %321, label %12

12:                                               ; preds = %3
  %13 = getelementptr %struct.etnaviv_drm_private, ptr %8, i32 0, i32 1, i32 %10
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %321, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.drm_etnaviv_gem_submit, ptr %1, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %18) #9
  br label %321

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.drm_etnaviv_gem_submit, ptr %1, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = icmp ult i32 %24, 3
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %24) #9
  br label %321

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.drm_etnaviv_gem_submit, ptr %1, i32 0, i32 9
  %29 = load i32, ptr %28, align 8
  %30 = icmp ult i32 %29, 16
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %29) #9
  br label %321

32:                                               ; preds = %27
  %33 = and i32 %29, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %8, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %37, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #9
  br label %321

42:                                               ; preds = %35, %32
  %43 = icmp ugt i32 %18, 131072
  br i1 %43, label %56, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.drm_etnaviv_gem_submit, ptr %1, i32 0, i32 4
  %46 = load i32, ptr %45, align 8
  %47 = icmp ugt i32 %46, 131072
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.drm_etnaviv_gem_submit, ptr %1, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = icmp ugt i32 %50, 131072
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.drm_etnaviv_gem_submit, ptr %1, i32 0, i32 12
  %54 = load i32, ptr %53, align 8
  %55 = icmp ugt i32 %54, 128
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %48, %44, %42
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %321

57:                                               ; preds = %52
  %58 = shl nuw nsw i32 %50, 4
  %59 = tail call noalias ptr @kvmalloc_node(i32 noundef %58, i32 noundef 3264, i32 noundef -1) #10
  %60 = load i32, ptr %45, align 8
  %61 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %60, i32 24) #9
  %62 = extractvalue { i32, i1 } %61, 1
  br i1 %62, label %66, label %63, !prof !17

63:                                               ; preds = %57
  %64 = extractvalue { i32, i1 } %61, 0
  %65 = tail call noalias ptr @kvmalloc_node(i32 noundef %64, i32 noundef 3264, i32 noundef -1) #10
  br label %66

66:                                               ; preds = %63, %57
  %67 = phi ptr [ %65, %63 ], [ null, %57 ]
  %68 = load i32, ptr %53, align 8
  %69 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %68, i32 20) #9
  %70 = extractvalue { i32, i1 } %69, 1
  br i1 %70, label %74, label %71, !prof !17

71:                                               ; preds = %66
  %72 = extractvalue { i32, i1 } %69, 0
  %73 = tail call noalias ptr @kvmalloc_node(i32 noundef %72, i32 noundef 3264, i32 noundef -1) #10
  br label %74

74:                                               ; preds = %71, %66
  %75 = phi ptr [ %73, %71 ], [ null, %66 ]
  %76 = load i32, ptr %17, align 4
  %77 = tail call noalias ptr @kvmalloc_node(i32 noundef %76, i32 noundef 3264, i32 noundef -1) #10
  %78 = icmp ne ptr %59, null
  %79 = icmp ne ptr %67, null
  %80 = select i1 %78, i1 %79, i1 false
  %81 = icmp ne ptr %75, null
  %82 = select i1 %80, i1 %81, i1 false
  %83 = icmp ne ptr %77, null
  %84 = select i1 %82, i1 %83, i1 false
  br i1 %84, label %85, label %319

85:                                               ; preds = %74
  %86 = getelementptr inbounds %struct.drm_etnaviv_gem_submit, ptr %1, i32 0, i32 6
  %87 = load i64, ptr %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = inttoptr i32 %88 to ptr
  %90 = load i32, ptr %49, align 4
  %91 = shl i32 %90, 4
  %92 = icmp slt i32 %91, 0
  %93 = load i1, ptr @check_copy_size.__already_done, align 1
  %94 = xor i1 %93, true
  %95 = select i1 %92, i1 %94, i1 false
  br i1 %95, label %96, label %97, !prof !17

96:                                               ; preds = %85
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %97

97:                                               ; preds = %96, %85
  br i1 %92, label %319, label %98, !prof !17

98:                                               ; preds = %97
  %99 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %89, i32 %91, i32 -1090519040) #11, !srcloc !18
  %100 = extractvalue { i32, i32 } %99, 0
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %109, !prof !11

102:                                              ; preds = %98
  %103 = tail call ptr @llvm.thread.pointer() #9
  %104 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 3
  %105 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %104) #12, !srcloc !19
  %106 = and i32 %105, -13
  %107 = or i32 %106, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %107) #9, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !21
  %108 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %59, ptr noundef %89, i32 noundef %91) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %105) #9, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !21
  br label %109

109:                                              ; preds = %102, %98
  %110 = phi i32 [ %108, %102 ], [ %91, %98 ]
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112, !prof !11

112:                                              ; preds = %109
  %113 = sub i32 %91, %110
  %114 = getelementptr i8, ptr %59, i32 %113
  tail call void @llvm.memset.p0.i32(ptr align 1 %114, i8 0, i32 %110, i1 false) #9
  br label %319

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.drm_etnaviv_gem_submit, ptr %1, i32 0, i32 7
  %117 = load i64, ptr %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = inttoptr i32 %118 to ptr
  %120 = load i32, ptr %45, align 8
  %121 = mul i32 %120, 24
  %122 = icmp slt i32 %121, 0
  %123 = load i1, ptr @check_copy_size.__already_done, align 1
  %124 = xor i1 %123, true
  %125 = select i1 %122, i1 %124, i1 false
  br i1 %125, label %126, label %127, !prof !17

126:                                              ; preds = %115
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %127

127:                                              ; preds = %126, %115
  br i1 %122, label %319, label %128, !prof !17

128:                                              ; preds = %127
  %129 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %119, i32 %121, i32 -1090519040) #11, !srcloc !18
  %130 = extractvalue { i32, i32 } %129, 0
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %139, !prof !11

132:                                              ; preds = %128
  %133 = tail call ptr @llvm.thread.pointer() #9
  %134 = getelementptr inbounds %struct.thread_info, ptr %133, i32 0, i32 3
  %135 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %134) #12, !srcloc !19
  %136 = and i32 %135, -13
  %137 = or i32 %136, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %137) #9, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !21
  %138 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %67, ptr noundef %119, i32 noundef %121) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %135) #9, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !21
  br label %139

139:                                              ; preds = %132, %128
  %140 = phi i32 [ %138, %132 ], [ %121, %128 ]
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %145, label %142, !prof !11

142:                                              ; preds = %139
  %143 = sub i32 %121, %140
  %144 = getelementptr i8, ptr %67, i32 %143
  tail call void @llvm.memset.p0.i32(ptr align 1 %144, i8 0, i32 %140, i1 false) #9
  br label %319

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.drm_etnaviv_gem_submit, ptr %1, i32 0, i32 11
  %147 = load i64, ptr %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = inttoptr i32 %148 to ptr
  %150 = load i32, ptr %53, align 8
  %151 = mul i32 %150, 20
  %152 = icmp slt i32 %151, 0
  %153 = load i1, ptr @check_copy_size.__already_done, align 1
  %154 = xor i1 %153, true
  %155 = select i1 %152, i1 %154, i1 false
  br i1 %155, label %156, label %157, !prof !17

156:                                              ; preds = %145
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %157

157:                                              ; preds = %156, %145
  br i1 %152, label %319, label %158, !prof !17

158:                                              ; preds = %157
  %159 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %149, i32 %151, i32 -1090519040) #11, !srcloc !18
  %160 = extractvalue { i32, i32 } %159, 0
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %169, !prof !11

162:                                              ; preds = %158
  %163 = tail call ptr @llvm.thread.pointer() #9
  %164 = getelementptr inbounds %struct.thread_info, ptr %163, i32 0, i32 3
  %165 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %164) #12, !srcloc !19
  %166 = and i32 %165, -13
  %167 = or i32 %166, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %167) #9, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !21
  %168 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %75, ptr noundef %149, i32 noundef %151) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %165) #9, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !21
  br label %169

169:                                              ; preds = %162, %158
  %170 = phi i32 [ %168, %162 ], [ %151, %158 ]
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %175, label %172, !prof !11

172:                                              ; preds = %169
  %173 = sub i32 %151, %170
  %174 = getelementptr i8, ptr %75, i32 %173
  tail call void @llvm.memset.p0.i32(ptr align 1 %174, i8 0, i32 %170, i1 false) #9
  br label %319

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.drm_etnaviv_gem_submit, ptr %1, i32 0, i32 8
  %177 = load i64, ptr %176, align 8
  %178 = trunc i64 %177 to i32
  %179 = inttoptr i32 %178 to ptr
  %180 = load i32, ptr %17, align 4
  %181 = icmp slt i32 %180, 0
  %182 = load i1, ptr @check_copy_size.__already_done, align 1
  %183 = xor i1 %182, true
  %184 = select i1 %181, i1 %183, i1 false
  br i1 %184, label %185, label %186, !prof !17

185:                                              ; preds = %175
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %186

186:                                              ; preds = %185, %175
  br i1 %181, label %319, label %187, !prof !17

187:                                              ; preds = %186
  %188 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %179, i32 %180, i32 -1090519040) #11, !srcloc !18
  %189 = extractvalue { i32, i32 } %188, 0
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %198, !prof !11

191:                                              ; preds = %187
  %192 = tail call ptr @llvm.thread.pointer() #9
  %193 = getelementptr inbounds %struct.thread_info, ptr %192, i32 0, i32 3
  %194 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %193) #12, !srcloc !19
  %195 = and i32 %194, -13
  %196 = or i32 %195, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %196) #9, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !21
  %197 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %77, ptr noundef %179, i32 noundef %180) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %194) #9, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !21
  br label %198

198:                                              ; preds = %191, %187
  %199 = phi i32 [ %197, %191 ], [ %180, %187 ]
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %204, label %201, !prof !11

201:                                              ; preds = %198
  %202 = sub i32 %180, %199
  %203 = getelementptr i8, ptr %77, i32 %202
  tail call void @llvm.memset.p0.i32(ptr align 1 %203, i8 0, i32 %199, i1 false) #9
  br label %319

204:                                              ; preds = %198
  %205 = load i32, ptr %28, align 8
  %206 = and i32 %205, 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %204
  %209 = tail call i32 @get_unused_fd_flags(i32 noundef 524288) #9
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %319, label %211

211:                                              ; preds = %208, %204
  %212 = phi i32 [ %209, %208 ], [ -1, %204 ]
  %213 = tail call ptr @llvm.thread.pointer() #9
  store ptr %213, ptr %4, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @reservation_ww_class) #9, !srcloc !9
  %214 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @reservation_ww_class, ptr nonnull @reservation_ww_class, i32 1, ptr nonnull elementtype(i32) @reservation_ww_class) #9, !srcloc !22
  %215 = extractvalue { i32, i32 } %214, 0
  %216 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %4, i32 0, i32 1
  store i32 %215, ptr %216, align 4
  %217 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %4, i32 0, i32 2
  store i32 0, ptr %217, align 4
  %218 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %4, i32 0, i32 3
  store i16 0, ptr %218, align 4
  %219 = load i32, ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 5), align 4
  %220 = trunc i32 %219 to i16
  %221 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %4, i32 0, i32 4
  store i16 %220, ptr %221, align 2
  %222 = load i32, ptr %49, align 4
  %223 = load i32, ptr %53, align 8
  %224 = tail call fastcc ptr @submit_create(ptr noundef nonnull %14, i32 noundef %222, i32 noundef %223)
  %225 = icmp eq ptr %224, null
  br i1 %225, label %313, label %226

226:                                              ; preds = %211
  %227 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %8, i32 0, i32 3
  %228 = load ptr, ptr %227, align 4
  %229 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %224, i32 0, i32 10
  %230 = load i32, ptr %17, align 4
  %231 = add i32 %230, 15
  %232 = and i32 %231, -8
  %233 = tail call i32 @etnaviv_cmdbuf_init(ptr noundef %228, ptr noundef %229, i32 noundef %232) #9
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %311

235:                                              ; preds = %226
  %236 = load ptr, ptr %5, align 4
  %237 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %224, i32 0, i32 2
  store ptr %236, ptr %237, align 4
  %238 = load ptr, ptr %236, align 8
  %239 = tail call fastcc ptr @etnaviv_iommu_context_get(ptr noundef %238)
  %240 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %224, i32 0, i32 4
  store ptr %238, ptr %240, align 4
  %241 = load i32, ptr %23, align 8
  %242 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %224, i32 0, i32 12
  store i32 %241, ptr %242, align 8
  %243 = load i32, ptr %28, align 8
  %244 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %224, i32 0, i32 13
  store i32 %243, ptr %244, align 4
  %245 = load i32, ptr %49, align 4
  %246 = tail call fastcc i32 @submit_lookup_objects(ptr noundef nonnull %224, ptr noundef %2, ptr noundef nonnull %59, i32 noundef %245)
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %311

248:                                              ; preds = %235
  %249 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %8, i32 0, i32 4
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %250, i32 0, i32 1
  %252 = load i32, ptr %251, align 4
  %253 = icmp eq i32 %252, 1
  br i1 %253, label %259, label %254

254:                                              ; preds = %248
  %255 = load i32, ptr %17, align 4
  %256 = lshr i32 %255, 2
  %257 = load i32, ptr %45, align 8
  %258 = tail call zeroext i1 @etnaviv_cmd_validate_one(ptr noundef nonnull %14, ptr noundef nonnull %77, i32 noundef %256, ptr noundef nonnull %67, i32 noundef %257) #9
  br i1 %258, label %259, label %311

259:                                              ; preds = %254, %248
  %260 = load i32, ptr %28, align 8
  %261 = and i32 %260, 2
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %269, label %263

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.drm_etnaviv_gem_submit, ptr %1, i32 0, i32 10
  %265 = load i32, ptr %264, align 4
  %266 = tail call ptr @sync_file_get_fence(i32 noundef %265) #9
  %267 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %224, i32 0, i32 7
  store ptr %266, ptr %267, align 8
  %268 = icmp eq ptr %266, null
  br i1 %268, label %311, label %269

269:                                              ; preds = %263, %259
  %270 = tail call fastcc i32 @submit_pin_objects(ptr noundef nonnull %224)
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %311

272:                                              ; preds = %269
  %273 = load i32, ptr %17, align 4
  %274 = lshr i32 %273, 2
  %275 = load i32, ptr %45, align 8
  %276 = tail call fastcc i32 @submit_reloc(ptr noundef nonnull %224, ptr noundef nonnull %77, i32 noundef %274, ptr noundef nonnull %67, i32 noundef %275)
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %311

278:                                              ; preds = %272
  %279 = load i32, ptr %23, align 8
  %280 = tail call fastcc i32 @submit_perfmon_validate(ptr noundef nonnull %224, i32 noundef %279, ptr noundef nonnull %75)
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %311

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %224, i32 0, i32 10, i32 2
  %284 = load ptr, ptr %283, align 8
  %285 = load i32, ptr %17, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %284, ptr nonnull align 1 %77, i32 %285, i1 false)
  %286 = call fastcc i32 @submit_lock_objects(ptr noundef nonnull %224, ptr noundef nonnull %4)
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %311

288:                                              ; preds = %282
  %289 = call fastcc i32 @submit_fence_sync(ptr noundef nonnull %224)
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %311

291:                                              ; preds = %288
  %292 = load i32, ptr %9, align 4
  %293 = getelementptr %struct.etnaviv_file_private, ptr %6, i32 0, i32 1, i32 %292
  %294 = call i32 @etnaviv_sched_push_job(ptr noundef %293, ptr noundef nonnull %224) #9
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %311

296:                                              ; preds = %291
  call fastcc void @submit_attach_object_fences(ptr noundef nonnull %224)
  %297 = load i32, ptr %28, align 8
  %298 = and i32 %297, 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %307, label %300

300:                                              ; preds = %296
  %301 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %224, i32 0, i32 6
  %302 = load ptr, ptr %301, align 4
  %303 = call ptr @sync_file_create(ptr noundef %302) #9
  %304 = icmp eq ptr %303, null
  br i1 %304, label %311, label %305

305:                                              ; preds = %300
  %306 = load ptr, ptr %303, align 4
  call void @fd_install(i32 noundef %212, ptr noundef %306) #9
  br label %307

307:                                              ; preds = %305, %296
  %308 = getelementptr inbounds %struct.drm_etnaviv_gem_submit, ptr %1, i32 0, i32 10
  store i32 %212, ptr %308, align 4
  %309 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %224, i32 0, i32 8
  %310 = load i32, ptr %309, align 4
  store i32 %310, ptr %1, align 8
  br label %311

311:                                              ; preds = %307, %300, %291, %288, %282, %278, %272, %269, %263, %254, %235, %226
  %312 = phi i32 [ %233, %226 ], [ %246, %235 ], [ %270, %269 ], [ %276, %272 ], [ %280, %278 ], [ %286, %282 ], [ %289, %288 ], [ %294, %291 ], [ 0, %307 ], [ -22, %254 ], [ -22, %263 ], [ -12, %300 ]
  call void @etnaviv_submit_put(ptr noundef nonnull %224)
  br label %313

313:                                              ; preds = %311, %211
  %314 = phi i32 [ %312, %311 ], [ -12, %211 ]
  %315 = icmp ne i32 %314, 0
  %316 = icmp sgt i32 %212, -1
  %317 = select i1 %315, i1 %316, i1 false
  br i1 %317, label %318, label %319

318:                                              ; preds = %313
  call void @put_unused_fd(i32 noundef %212) #9
  br label %319

319:                                              ; preds = %318, %313, %208, %201, %186, %172, %157, %142, %127, %112, %97, %74
  %320 = phi i32 [ %314, %318 ], [ %314, %313 ], [ %209, %208 ], [ -12, %74 ], [ -14, %97 ], [ -14, %112 ], [ -14, %127 ], [ -14, %142 ], [ -14, %157 ], [ -14, %172 ], [ -14, %186 ], [ -14, %201 ]
  call void @kvfree(ptr noundef %77) #9
  call void @kvfree(ptr noundef %59) #9
  call void @kvfree(ptr noundef %67) #9
  call void @kvfree(ptr noundef %75) #9
  br label %321

321:                                              ; preds = %319, %56, %41, %31, %26, %21, %12, %3
  %322 = phi i32 [ -22, %21 ], [ -22, %26 ], [ -22, %31 ], [ -22, %41 ], [ -22, %56 ], [ %320, %319 ], [ -22, %3 ], [ -6, %12 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret i32 %322
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @submit_create(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp ugt i32 %1, 107374177
  %5 = mul i32 %1, 40
  %6 = add i32 %5, 176
  %7 = select i1 %4, i32 0, i32 %6
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %3
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 20) #9
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %13, label %15, !prof !17

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %8, i32 0, i32 15
  store ptr null, ptr %14, align 4
  br label %20

15:                                               ; preds = %10
  %16 = extractvalue { i32, i1 } %11, 0
  %17 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #10
  %18 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %8, i32 0, i32 15
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %13
  tail call void @kfree(ptr noundef nonnull %8) #9
  br label %25

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %8, i32 0, i32 14
  store i32 %2, ptr %22, align 32
  %23 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %8, i32 0, i32 3
  store ptr %0, ptr %23, align 32
  %24 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %8, i32 0, i32 1
  store volatile i32 1, ptr %24, align 8
  br label %25

25:                                               ; preds = %21, %20, %3
  %26 = phi ptr [ %8, %21 ], [ null, %20 ], [ null, %3 ]
  ret ptr %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_cmdbuf_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @etnaviv_iommu_context_get(ptr noundef returned %0) unnamed_addr #4 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #9, !srcloc !9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #9, !srcloc !23
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !17

5:                                                ; preds = %1
  %6 = add i32 %3, 1
  %7 = or i32 %6, %3
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %11, label %9, !prof !11

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 2, %1 ], [ 1, %5 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %10) #9
  br label %11

11:                                               ; preds = %9, %5
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @submit_lookup_objects(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %5) #9
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %51, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 13
  %9 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 14
  br label %10

10:                                               ; preds = %46, %7
  %11 = phi i32 [ 0, %7 ], [ %48, %46 ]
  %12 = phi ptr [ %2, %7 ], [ %49, %46 ]
  %13 = load i32, ptr %12, align 8
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %13) #9
  br label %51

16:                                               ; preds = %10
  %17 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %11
  store i32 %13, ptr %17, align 8
  %18 = load i32, ptr %8, align 4
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.drm_etnaviv_gem_submit_bo, ptr %12, i32 0, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = icmp ult i64 %23, 4194304
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #9
  br label %51

26:                                               ; preds = %21
  %27 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %11, i32 1
  store i64 %23, ptr %27, align 8
  br label %28

28:                                               ; preds = %26, %16
  %29 = getelementptr inbounds %struct.drm_etnaviv_gem_submit_bo, ptr %12, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = tail call ptr @idr_find(ptr noundef %9, i32 noundef %30) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.drm_etnaviv_gem_submit_bo, ptr %12, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %35, i32 noundef %11) #9
  br label %51

36:                                               ; preds = %28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %31) #9, !srcloc !9
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %31, ptr nonnull %31, i32 1, ptr nonnull elementtype(i32) %31) #9, !srcloc !23
  %38 = extractvalue { i32, i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40, !prof !17

40:                                               ; preds = %36
  %41 = add i32 %38, 1
  %42 = or i32 %41, %38
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %46, label %44, !prof !11

44:                                               ; preds = %40, %36
  %45 = phi i32 [ 2, %36 ], [ 1, %40 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %31, i32 noundef %45) #9
  br label %46

46:                                               ; preds = %44, %40
  %47 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %11, i32 2
  store ptr %31, ptr %47, align 8
  %48 = add nuw i32 %11, 1
  %49 = getelementptr %struct.drm_etnaviv_gem_submit_bo, ptr %12, i32 1
  %50 = icmp eq i32 %48, %3
  br i1 %50, label %51, label %10

51:                                               ; preds = %46, %33, %25, %15, %4
  %52 = phi i32 [ %11, %15 ], [ %11, %25 ], [ %11, %33 ], [ 0, %4 ], [ %3, %46 ]
  %53 = phi i32 [ -22, %15 ], [ -22, %25 ], [ -22, %33 ], [ 0, %4 ], [ 0, %46 ]
  %54 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 16
  store i32 %52, ptr %54, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !24
  %55 = load i16, ptr %5, align 4
  %56 = add i16 %55, 1
  store i16 %56, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @etnaviv_cmd_validate_one(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sync_file_get_fence(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @submit_pin_objects(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 16
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %40, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 13
  br label %8

8:                                                ; preds = %31, %5
  %9 = phi i32 [ 0, %5 ], [ %37, %31 ]
  %10 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %9
  %11 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %9, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %9, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = tail call ptr @etnaviv_gem_mapping_get(ptr noundef %12, ptr noundef %13, i64 noundef %15) #9
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %29, label %18

18:                                               ; preds = %8
  %19 = load i32, ptr %7, align 4
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = load i64, ptr %14, align 8
  %24 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %16, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = zext i32 %25 to i64
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  tail call void @etnaviv_gem_mapping_unreference(ptr noundef %16) #9
  br label %40

29:                                               ; preds = %8
  %30 = ptrtoint ptr %16 to i32
  br label %40

31:                                               ; preds = %22, %18
  %32 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %12, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #9, !srcloc !9
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #9, !srcloc !28
  %34 = load i32, ptr %10, align 8
  %35 = or i32 %34, 8192
  store i32 %35, ptr %10, align 8
  %36 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %9, i32 3
  store ptr %16, ptr %36, align 4
  %37 = add nuw i32 %9, 1
  %38 = load i32, ptr %2, align 8
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %8, label %40

40:                                               ; preds = %31, %29, %28, %1
  %41 = phi i32 [ -22, %28 ], [ %30, %29 ], [ 0, %1 ], [ 0, %31 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @submit_reloc(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 13
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 8
  %9 = icmp ne i32 %8, 0
  %10 = icmp ne i32 %4, 0
  %11 = and i1 %10, %9
  br i1 %11, label %62, label %12

12:                                               ; preds = %5
  %13 = icmp eq i32 %4, 0
  br i1 %13, label %62, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 16
  br label %16

16:                                               ; preds = %52, %14
  %17 = phi i32 [ 0, %14 ], [ %30, %52 ]
  %18 = phi i32 [ 0, %14 ], [ %60, %52 ]
  %19 = getelementptr %struct.drm_etnaviv_gem_submit_reloc, ptr %3, i32 %18, i32 3
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22, !prof !11

22:                                               ; preds = %16
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %62

23:                                               ; preds = %16
  %24 = getelementptr %struct.drm_etnaviv_gem_submit_reloc, ptr %3, i32 %18
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 3
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %25) #9
  br label %62

29:                                               ; preds = %23
  %30 = lshr i32 %25, 2
  %31 = icmp uge i32 %30, %2
  %32 = icmp ult i32 %30, %17
  %33 = or i1 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %30, i32 noundef %18) #9
  br label %62

35:                                               ; preds = %29
  %36 = getelementptr %struct.drm_etnaviv_gem_submit_reloc, ptr %3, i32 %18, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = load i32, ptr %15, align 8
  %39 = icmp ugt i32 %38, %37
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %37, i32 noundef %38) #9
  br label %62

41:                                               ; preds = %35
  %42 = getelementptr %struct.drm_etnaviv_gem_submit_reloc, ptr %3, i32 %18, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %37, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.drm_gem_object, ptr %45, i32 0, i32 5
  %47 = load i32, ptr %46, align 8
  %48 = add i32 %47, -4
  %49 = zext i32 %48 to i64
  %50 = icmp ugt i64 %43, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, i32 noundef %18) #9
  br label %62

52:                                               ; preds = %41
  %53 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %37, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %54, i32 0, i32 7
  %56 = load i32, ptr %55, align 4
  %57 = trunc i64 %43 to i32
  %58 = add i32 %56, %57
  %59 = getelementptr i32, ptr %1, i32 %30
  store i32 %58, ptr %59, align 4
  %60 = add nuw i32 %18, 1
  %61 = icmp eq i32 %60, %4
  br i1 %61, label %62, label %16

62:                                               ; preds = %52, %51, %40, %34, %28, %22, %12, %5
  %63 = phi i32 [ -22, %5 ], [ -22, %22 ], [ -22, %28 ], [ -22, %34 ], [ -22, %51 ], [ -22, %40 ], [ 0, %12 ], [ 0, %52 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @submit_perfmon_validate(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 14
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %66, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 16
  %9 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 15
  br label %10

10:                                               ; preds = %39, %7
  %11 = phi i32 [ 0, %7 ], [ %63, %39 ]
  %12 = getelementptr %struct.drm_etnaviv_gem_submit_pmr, ptr %2, i32 %11
  %13 = getelementptr %struct.drm_etnaviv_gem_submit_pmr, ptr %2, i32 %11, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %8, align 8
  %16 = icmp ugt i32 %15, %14
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %14, i32 noundef %15) #9
  br label %66

18:                                               ; preds = %10
  %19 = getelementptr %struct.drm_etnaviv_gem_submit_pmr, ptr %2, i32 %11, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #9
  br label %66

23:                                               ; preds = %18
  %24 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %14, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.drm_gem_object, ptr %25, i32 0, i32 5
  %27 = load i32, ptr %26, align 8
  %28 = add i32 %27, -4
  %29 = icmp ult i32 %20, %28
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, i32 noundef %11) #9
  br label %66

31:                                               ; preds = %23
  %32 = load i32, ptr %12, align 4
  %33 = icmp ult i32 %32, 4
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #9
  br label %66

35:                                               ; preds = %31
  %36 = tail call i32 @etnaviv_pm_req_validate(ptr noundef %12, i32 noundef %1) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18) #9
  br label %66

39:                                               ; preds = %35
  %40 = load i32, ptr %12, align 4
  %41 = load ptr, ptr %9, align 4
  %42 = getelementptr %struct.etnaviv_perfmon_request, ptr %41, i32 %11
  store i32 %40, ptr %42, align 4
  %43 = getelementptr %struct.drm_etnaviv_gem_submit_pmr, ptr %2, i32 %11, i32 1
  %44 = load i8, ptr %43, align 4
  %45 = load ptr, ptr %9, align 4
  %46 = getelementptr %struct.etnaviv_perfmon_request, ptr %45, i32 %11, i32 1
  store i8 %44, ptr %46, align 4
  %47 = getelementptr %struct.drm_etnaviv_gem_submit_pmr, ptr %2, i32 %11, i32 3
  %48 = load i16, ptr %47, align 2
  %49 = trunc i16 %48 to i8
  %50 = load ptr, ptr %9, align 4
  %51 = getelementptr %struct.etnaviv_perfmon_request, ptr %50, i32 %11, i32 2
  store i8 %49, ptr %51, align 1
  %52 = getelementptr %struct.drm_etnaviv_gem_submit_pmr, ptr %2, i32 %11, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = load ptr, ptr %9, align 4
  %55 = getelementptr %struct.etnaviv_perfmon_request, ptr %54, i32 %11, i32 3
  store i32 %53, ptr %55, align 4
  %56 = load i32, ptr %19, align 4
  %57 = load ptr, ptr %9, align 4
  %58 = getelementptr %struct.etnaviv_perfmon_request, ptr %57, i32 %11, i32 5
  store i32 %56, ptr %58, align 4
  %59 = load ptr, ptr %24, align 8
  %60 = tail call ptr @etnaviv_gem_vmap(ptr noundef %59) #9
  %61 = load ptr, ptr %9, align 4
  %62 = getelementptr %struct.etnaviv_perfmon_request, ptr %61, i32 %11, i32 4
  store ptr %60, ptr %62, align 4
  %63 = add nuw i32 %11, 1
  %64 = load i32, ptr %4, align 8
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %10, label %66

66:                                               ; preds = %39, %38, %34, %30, %22, %17, %3
  %67 = phi i32 [ -22, %22 ], [ -22, %30 ], [ -22, %34 ], [ -22, %38 ], [ -22, %17 ], [ 0, %3 ], [ 0, %39 ]
  ret i32 %67
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @submit_lock_objects(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 16
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %80, label %6

6:                                                ; preds = %33, %2
  %7 = phi i32 [ %34, %33 ], [ %4, %2 ]
  %8 = phi i32 [ %35, %33 ], [ 0, %2 ]
  %9 = phi i32 [ %36, %33 ], [ -1, %2 ]
  %10 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %8
  %11 = icmp eq i32 %9, %8
  %12 = select i1 %11, i32 -1, i32 %9
  %13 = load i32, ptr %10, align 8
  %14 = and i32 %13, 16384
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %6
  %17 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %8, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.drm_gem_object, ptr %18, i32 0, i32 9
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %20, ptr noundef %1) #9
  switch i32 %21, label %27 [
    i32 -114, label %22
    i32 0, label %23
  ]

22:                                               ; preds = %16
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, i32 noundef %8) #9
  br label %27

23:                                               ; preds = %16
  %24 = load i32, ptr %10, align 8
  %25 = or i32 %24, 16384
  store i32 %25, ptr %10, align 8
  %26 = load i32, ptr %3, align 8
  br label %29

27:                                               ; preds = %22, %16
  %28 = icmp sgt i32 %8, -1
  br i1 %28, label %37, label %53

29:                                               ; preds = %23, %6
  %30 = phi i32 [ %26, %23 ], [ %7, %6 ]
  %31 = add nuw i32 %8, 1
  %32 = icmp ult i32 %31, %30
  br i1 %32, label %33, label %80

33:                                               ; preds = %75, %29
  %34 = phi i32 [ %30, %29 ], [ %78, %75 ]
  %35 = phi i32 [ %31, %29 ], [ 0, %75 ]
  %36 = phi i32 [ %12, %29 ], [ %8, %75 ]
  br label %6

37:                                               ; preds = %50, %27
  %38 = phi i32 [ %51, %50 ], [ %8, %27 ]
  %39 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %38
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 16384
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %37
  %44 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %38, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.drm_gem_object, ptr %45, i32 0, i32 9
  %47 = load ptr, ptr %46, align 8
  tail call void @ww_mutex_unlock(ptr noundef %47) #9
  %48 = load i32, ptr %39, align 8
  %49 = and i32 %48, -16385
  store i32 %49, ptr %39, align 8
  br label %50

50:                                               ; preds = %43, %37
  %51 = add nsw i32 %38, -1
  %52 = icmp sgt i32 %38, 0
  br i1 %52, label %37, label %53

53:                                               ; preds = %50, %27
  %54 = icmp sgt i32 %12, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %53
  %56 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %12
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 16384
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %55
  %61 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %12, i32 2
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.drm_gem_object, ptr %62, i32 0, i32 9
  %64 = load ptr, ptr %63, align 8
  tail call void @ww_mutex_unlock(ptr noundef %64) #9
  %65 = load i32, ptr %56, align 8
  %66 = and i32 %65, -16385
  store i32 %66, ptr %56, align 8
  br label %67

67:                                               ; preds = %60, %55, %53
  %68 = icmp eq i32 %21, -35
  br i1 %68, label %69, label %80

69:                                               ; preds = %67
  %70 = load ptr, ptr %17, align 8
  %71 = getelementptr inbounds %struct.drm_gem_object, ptr %70, i32 0, i32 9
  %72 = load ptr, ptr %71, align 8
  %73 = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %72, ptr noundef %1) #9
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load i32, ptr %10, align 8
  %77 = or i32 %76, 16384
  store i32 %77, ptr %10, align 8
  %78 = load i32, ptr %3, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %33

80:                                               ; preds = %75, %69, %67, %29, %2
  %81 = phi i32 [ 0, %2 ], [ 0, %75 ], [ %73, %69 ], [ %21, %67 ], [ 0, %29 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @submit_fence_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 16
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %54, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 13
  br label %7

7:                                                ; preds = %50, %5
  %8 = phi i32 [ 0, %5 ], [ %51, %50 ]
  %9 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %8
  %10 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %8, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.drm_gem_object, ptr %11, i32 0, i32 9
  %13 = load ptr, ptr %12, align 8
  %14 = load i32, ptr %9, align 8
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %7
  %18 = tail call i32 @dma_resv_reserve_shared(ptr noundef %13, i32 noundef 1) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %17, %7
  %21 = load i32, ptr %6, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %20
  %25 = load i32, ptr %9, align 8
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %8, i32 5
  %30 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %8, i32 6
  %31 = tail call i32 @dma_resv_get_fences(ptr noundef %13, ptr noundef null, ptr noundef %29, ptr noundef %30) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %50, label %54

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.dma_resv, ptr %13, i32 0, i32 2
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.dma_fence, ptr %35, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #9, !srcloc !9
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #9, !srcloc !23
  %40 = extractvalue { i32, i32, i32 } %39, 0
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42, !prof !17

42:                                               ; preds = %37
  %43 = add i32 %40, 1
  %44 = or i32 %43, %40
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %48, label %46, !prof !11

46:                                               ; preds = %42, %37
  %47 = phi i32 [ 2, %37 ], [ 1, %42 ]
  tail call void @refcount_warn_saturate(ptr noundef %38, i32 noundef %47) #9
  br label %48

48:                                               ; preds = %46, %42, %33
  %49 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %8, i32 4
  store ptr %35, ptr %49, align 8
  br label %50

50:                                               ; preds = %48, %28, %20
  %51 = add nuw i32 %8, 1
  %52 = load i32, ptr %2, align 8
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %7, label %54

54:                                               ; preds = %50, %28, %17, %1
  %55 = phi i32 [ 0, %1 ], [ %31, %28 ], [ %18, %17 ], [ 0, %50 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_sched_push_job(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @submit_attach_object_fences(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 16
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 6
  br label %7

7:                                                ; preds = %30, %5
  %8 = phi i32 [ 0, %5 ], [ %31, %30 ]
  %9 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %8
  %10 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %8, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = load i32, ptr %9, align 8
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.drm_gem_object, ptr %11, i32 0, i32 9
  %16 = load ptr, ptr %15, align 8
  %17 = load ptr, ptr %6, align 4
  br i1 %14, label %19, label %18

18:                                               ; preds = %7
  tail call void @dma_resv_add_excl_fence(ptr noundef %16, ptr noundef %17) #9
  br label %20

19:                                               ; preds = %7
  tail call void @dma_resv_add_shared_fence(ptr noundef %16, ptr noundef %17) #9
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i32, ptr %9, align 8
  %22 = and i32 %21, 16384
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %10, align 8
  %26 = getelementptr inbounds %struct.drm_gem_object, ptr %25, i32 0, i32 9
  %27 = load ptr, ptr %26, align 8
  tail call void @ww_mutex_unlock(ptr noundef %27) #9
  %28 = load i32, ptr %9, align 8
  %29 = and i32 %28, -16385
  store i32 %29, ptr %9, align 8
  br label %30

30:                                               ; preds = %24, %20
  %31 = add nuw i32 %8, 1
  %32 = load i32, ptr %2, align 8
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %7, label %34

34:                                               ; preds = %30, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sync_file_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_cmdbuf_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_iommu_context_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_gem_mapping_unreference(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @etnaviv_gem_mapping_get(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_pm_req_validate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @etnaviv_gem_vmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_reserve_shared(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_get_fences(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_excl_fence(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_shared_fence(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind readonly }

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
!8 = !{i64 2148294593}
!9 = !{i64 691527, i64 2148181498, i64 2148181524, i64 2148181571, i64 2148181593, i64 2148181621, i64 2148181641}
!10 = !{i64 2148196728, i64 2148196760, i64 2148196789, i64 2148196823, i64 2148196854, i64 2148196877}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149316066}
!13 = !{i8 0, i8 2}
!14 = !{i64 2148195270, i64 2148195296, i64 2148195325, i64 2148195359, i64 2148195390, i64 2148195413}
!15 = distinct !{ptr @dma_fence_release, ptr @drm_gem_object_free, null}
!16 = !{!"auto-init"}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2151685593, i64 2151685618}
!19 = !{i64 4181705}
!20 = !{i64 4181902}
!21 = !{i64 2151667181}
!22 = !{i64 2148193597, i64 2148193629, i64 2148193658, i64 2148193692, i64 2148193723, i64 2148193746}
!23 = !{i64 2148194371, i64 2148194403, i64 2148194432, i64 2148194466, i64 2148194497, i64 2148194520}
!24 = !{i64 2148860131}
!25 = !{i64 2148855955}
!26 = !{i64 2148856030, i64 2148856057, i64 2148856104, i64 2148856126, i64 2148856154, i64 2148856174}
!27 = !{i64 2148883134}
!28 = !{i64 2148192913, i64 2148192939, i64 2148192968, i64 2148193002, i64 2148193033, i64 2148193056}
