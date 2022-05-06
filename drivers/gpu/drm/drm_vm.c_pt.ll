; ModuleID = '/llk/IR/drivers/gpu/drm/drm_vm.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_vm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_mmap\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.67, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.67 = type { i32, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.12, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.drm_device_dma = type { [23 x %struct.drm_buf_entry], i32, ptr, i32, i32, ptr, i32, i32 }
%struct.drm_buf_entry = type { i32, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.drm_vma_entry = type { %struct.list_head, ptr, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%struct.llist_node = type { ptr }
%union.anon.22 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.23 }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.drm_local_map = type { i32, i32, i32, i32, ptr, i32 }
%struct.anon.14 = type { ptr, i32, i32, i32 }
%struct.page = type { i32, %union.anon.3, %union.anon.18, %struct.atomic_t }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.18 = type { %struct.atomic_t }
%struct.vm_fault = type { %struct.anon.14, i32, ptr, ptr, %union.anon.15, ptr, ptr, ptr, ptr, ptr }
%union.anon.15 = type { i32 }
%struct.drm_map_list = type { %struct.list_head, %struct.drm_hash_item, ptr, i64, ptr }
%struct.drm_hash_item = type { %struct.hlist_node, i32 }
%struct.drm_sg_mem = type { i32, ptr, i32, ptr, ptr }

@__kstrtab_drm_legacy_mmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_mmap = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_mmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_mmap to i32), ptr @__kstrtab_drm_legacy_mmap, ptr @__kstrtabns_drm_legacy_mmap }, section "___ksymtab+drm_legacy_mmap", align 4
@.str = private unnamed_addr constant [49 x i8] c"start = 0x%lx, end = 0x%lx, page offset = 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Could not find map\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"   Type = %d; start = 0x%lx, end = 0x%lx, offset = 0x%llx\0A\00", align 1
@drm_vm_ops = internal constant %struct.vm_operations_struct { ptr @drm_vm_open, ptr @drm_vm_close, ptr null, ptr null, ptr null, ptr @drm_vm_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@drm_vm_shm_ops = internal constant %struct.vm_operations_struct { ptr @drm_vm_open, ptr @drm_vm_shm_close, ptr null, ptr null, ptr null, ptr @drm_vm_shm_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@drm_vm_sg_ops = internal constant %struct.vm_operations_struct { ptr @drm_vm_open, ptr @drm_vm_close, ptr null, ptr null, ptr null, ptr @drm_vm_sg_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@drm_vm_dma_ops = internal constant %struct.vm_operations_struct { ptr @drm_vm_open, ptr @drm_vm_close, ptr null, ptr null, ptr null, ptr @drm_vm_dma_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"0x%08lx,0x%08lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"dma_fault 0x%lx (page %lu)\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"shm_fault 0x%lx\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_drm_legacy_mmap], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_file, ptr %6, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_minor, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %11 = call zeroext i1 @drm_dev_enter(ptr noundef %10, ptr noundef nonnull %4) #6
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br label %194

13:                                               ; preds = %2
  %14 = load i32, ptr %4, align 4
  call void @drm_dev_exit(i32 noundef %14) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %15 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 14
  call void @mutex_lock(ptr noundef %15) #6
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %struct.drm_file, ptr %16, i32 0, i32 13
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.drm_minor, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !8
  %21 = load i32, ptr %1, align 4
  %22 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %25 = load i32, ptr %24, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %21, i32 noundef %23, i32 noundef %25) #6
  %26 = load i8, ptr %16, align 4, !range !9
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %192, label %28

28:                                               ; preds = %13
  %29 = load i32, ptr %24, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %83

31:                                               ; preds = %28
  %32 = load ptr, ptr %5, align 8
  %33 = load i32, ptr %22, align 4
  %34 = load i32, ptr %1, align 4
  %35 = getelementptr inbounds %struct.drm_file, ptr %32, i32 0, i32 13
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.drm_minor, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.drm_device, ptr %38, i32 0, i32 45
  %40 = load ptr, ptr %39, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %34, i32 noundef %33, i32 noundef 0) #6
  %41 = icmp eq ptr %40, null
  br i1 %41, label %192, label %42

42:                                               ; preds = %31
  %43 = sub i32 %33, %34
  %44 = lshr i32 %43, 12
  %45 = getelementptr inbounds %struct.drm_device_dma, ptr %40, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %192

48:                                               ; preds = %42
  %49 = call zeroext i1 @capable(i32 noundef 21) #6
  br i1 %49, label %62, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.drm_device_dma, ptr %40, i32 0, i32 7
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, -35
  store i32 %58, ptr %56, align 4
  %59 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  %60 = load i32, ptr %59, align 4
  %61 = or i32 %60, 128
  store i32 %61, ptr %59, align 4
  br label %62

62:                                               ; preds = %55, %50, %48
  %63 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  store ptr @drm_vm_dma_ops, ptr %63, align 4
  %64 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %65 = load i32, ptr %64, align 4
  %66 = or i32 %65, 67371008
  store i32 %66, ptr %64, align 4
  %67 = load i32, ptr %1, align 4
  %68 = load i32, ptr %22, align 4
  %69 = sub i32 %68, %67
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %67, i32 noundef %69) #6
  %70 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %71 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3264, i32 noundef 16) #7
  %72 = icmp eq ptr %71, null
  br i1 %72, label %192, label %73

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.drm_vma_entry, ptr %71, i32 0, i32 1
  store ptr %1, ptr %74, align 8
  %75 = tail call ptr @llvm.thread.pointer() #6
  %76 = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 52
  %77 = load i32, ptr %76, align 8
  %78 = getelementptr inbounds %struct.drm_vma_entry, ptr %71, i32 0, i32 2
  store i32 %77, ptr %78, align 4
  %79 = getelementptr inbounds %struct.drm_device, ptr %38, i32 0, i32 44
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  store ptr %71, ptr %81, align 4
  store ptr %80, ptr %71, align 8
  %82 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  store ptr %79, ptr %82, align 4
  store volatile ptr %71, ptr %79, align 4
  br label %192

83:                                               ; preds = %28
  %84 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 43
  %85 = call i32 @drm_ht_find_item(ptr noundef %84, i32 noundef %29, ptr noundef nonnull %3) #6
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %192

88:                                               ; preds = %83
  %89 = load ptr, ptr %3, align 4
  %90 = getelementptr i8, ptr %89, i32 12
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %192, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.drm_local_map, ptr %91, i32 0, i32 3
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %93
  %99 = call zeroext i1 @capable(i32 noundef 21) #6
  br i1 %99, label %100, label %192

100:                                              ; preds = %98, %93
  %101 = getelementptr inbounds %struct.drm_local_map, ptr %91, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = load i32, ptr %22, align 4
  %104 = load i32, ptr %1, align 4
  %105 = sub i32 %103, %104
  %106 = icmp ult i32 %102, %105
  br i1 %106, label %192, label %107

107:                                              ; preds = %100
  %108 = call zeroext i1 @capable(i32 noundef 21) #6
  br i1 %108, label %120, label %109

109:                                              ; preds = %107
  %110 = load i32, ptr %94, align 4
  %111 = and i32 %110, 2
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %115 = load i32, ptr %114, align 4
  %116 = and i32 %115, -35
  store i32 %116, ptr %114, align 4
  %117 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  %118 = load i32, ptr %117, align 4
  %119 = or i32 %118, 128
  store i32 %119, ptr %117, align 4
  br label %120

120:                                              ; preds = %113, %109, %107
  %121 = getelementptr inbounds %struct.drm_local_map, ptr %91, i32 0, i32 2
  %122 = load i32, ptr %121, align 4
  switch i32 %122, label %192 [
    i32 0, label %123
    i32 1, label %123
    i32 5, label %143
    i32 2, label %162
    i32 4, label %165
  ]

123:                                              ; preds = %120, %120
  %124 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %125 = load i32, ptr %124, align 4
  %126 = call i32 @vm_get_page_prot(i32 noundef %125) #6
  %127 = and i32 %126, -61
  %128 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  store i32 %127, ptr %128, align 4
  %129 = load i32, ptr %1, align 4
  %130 = load i32, ptr %91, align 4
  %131 = lshr i32 %130, 12
  %132 = load i32, ptr %22, align 4
  %133 = sub i32 %132, %129
  %134 = call i32 @remap_pfn_range(ptr noundef %1, i32 noundef %129, i32 noundef %131, i32 noundef %133, i32 noundef %127) #6
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %192

136:                                              ; preds = %123
  %137 = load i32, ptr %121, align 4
  %138 = load i32, ptr %1, align 4
  %139 = load i32, ptr %22, align 4
  %140 = load i32, ptr %91, align 4
  %141 = zext i32 %140 to i64
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %137, i32 noundef %138, i32 noundef %139, i64 noundef %141) #6
  %142 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  store ptr @drm_vm_ops, ptr %142, align 4
  br label %172

143:                                              ; preds = %120
  %144 = load i32, ptr %1, align 4
  %145 = getelementptr inbounds %struct.drm_local_map, ptr %91, i32 0, i32 4
  %146 = load ptr, ptr %145, align 4
  %147 = ptrtoint ptr %146 to i32
  %148 = add i32 %147, 1073741824
  %149 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %150 = lshr i32 %148, 12
  %151 = add i32 %150, %149
  %152 = load i32, ptr %22, align 4
  %153 = sub i32 %152, %144
  %154 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  %155 = load i32, ptr %154, align 4
  %156 = call i32 @remap_pfn_range(ptr noundef %1, i32 noundef %144, i32 noundef %151, i32 noundef %153, i32 noundef %155) #6
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %192

158:                                              ; preds = %143
  %159 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %160 = load i32, ptr %159, align 4
  %161 = call i32 @vm_get_page_prot(i32 noundef %160) #6
  store i32 %161, ptr %154, align 4
  br label %162

162:                                              ; preds = %158, %120
  %163 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  store ptr @drm_vm_shm_ops, ptr %163, align 4
  %164 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  store ptr %91, ptr %164, align 4
  br label %172

165:                                              ; preds = %120
  %166 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  store ptr @drm_vm_sg_ops, ptr %166, align 4
  %167 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  store ptr %91, ptr %167, align 4
  %168 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %169 = load i32, ptr %168, align 4
  %170 = call i32 @vm_get_page_prot(i32 noundef %169) #6
  %171 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  store i32 %170, ptr %171, align 4
  br label %172

172:                                              ; preds = %165, %162, %136
  %173 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %174 = load i32, ptr %173, align 4
  %175 = or i32 %174, 67371008
  store i32 %175, ptr %173, align 4
  %176 = load i32, ptr %1, align 4
  %177 = load i32, ptr %22, align 4
  %178 = sub i32 %177, %176
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %176, i32 noundef %178) #6
  %179 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %180 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %179, i32 noundef 3264, i32 noundef 16) #7
  %181 = icmp eq ptr %180, null
  br i1 %181, label %192, label %182

182:                                              ; preds = %172
  %183 = getelementptr inbounds %struct.drm_vma_entry, ptr %180, i32 0, i32 1
  store ptr %1, ptr %183, align 8
  %184 = tail call ptr @llvm.thread.pointer() #6
  %185 = getelementptr inbounds %struct.task_struct, ptr %184, i32 0, i32 52
  %186 = load i32, ptr %185, align 8
  %187 = getelementptr inbounds %struct.drm_vma_entry, ptr %180, i32 0, i32 2
  store i32 %186, ptr %187, align 4
  %188 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 44
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr inbounds %struct.list_head, ptr %189, i32 0, i32 1
  store ptr %180, ptr %190, align 4
  store ptr %189, ptr %180, align 8
  %191 = getelementptr inbounds %struct.list_head, ptr %180, i32 0, i32 1
  store ptr %188, ptr %191, align 4
  store volatile ptr %180, ptr %188, align 4
  br label %192

192:                                              ; preds = %182, %172, %143, %123, %120, %100, %98, %88, %87, %73, %62, %42, %31, %13
  %193 = phi i32 [ -22, %87 ], [ -13, %13 ], [ -1, %98 ], [ -1, %88 ], [ -22, %100 ], [ -11, %123 ], [ -11, %143 ], [ -22, %120 ], [ -22, %42 ], [ -22, %31 ], [ 0, %62 ], [ 0, %73 ], [ 0, %172 ], [ 0, %182 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @mutex_unlock(ptr noundef %15) #6
  br label %194

194:                                              ; preds = %192, %12
  %195 = phi i32 [ %193, %192 ], [ -19, %12 ]
  ret i32 %195
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_legacy_vma_flush(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 44
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %12, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %7, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  tail call void @kfree(ptr noundef %6) #6
  %11 = icmp eq ptr %7, %2
  br i1 %11, label %12, label %5

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ht_find_item(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_vm_open(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_minor, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %10) #6
  %11 = load i32, ptr %0, align 4
  %12 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %13, %11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %11, i32 noundef %14) #6
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 16) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.drm_vma_entry, ptr %16, i32 0, i32 1
  store ptr %0, ptr %19, align 8
  %20 = tail call ptr @llvm.thread.pointer() #6
  %21 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 52
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.drm_vma_entry, ptr %16, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 44
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %16, ptr %26, align 4
  store ptr %25, ptr %16, align 8
  %27 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %24, ptr %27, align 4
  store volatile ptr %16, ptr %24, align 4
  br label %28

28:                                               ; preds = %18, %1
  tail call void @mutex_unlock(ptr noundef %10) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_vm_close(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_minor, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %10) #6
  %11 = load i32, ptr %0, align 4
  %12 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %13, %11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %11, i32 noundef %14) #6
  %15 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 44
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %20, %1
  %18 = phi ptr [ %16, %1 ], [ %21, %20 ]
  %19 = icmp eq ptr %18, %15
  br i1 %19, label %29, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr inbounds %struct.drm_vma_entry, ptr %18, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %17

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  store volatile ptr %21, ptr %27, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %26, align 4
  tail call void @kfree(ptr noundef %18) #6
  br label %29

29:                                               ; preds = %25, %17
  tail call void @mutex_unlock(ptr noundef %10) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_vm_dma_fault(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_file, ptr %6, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_minor, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 45
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %44, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.drm_device_dma, ptr %12, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %44, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.anon.14, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %2, align 4
  %22 = sub i32 %20, %21
  %23 = lshr i32 %22, 12
  %24 = load ptr, ptr @mem_map, align 4
  %25 = getelementptr i32, ptr %16, i32 %23
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1073741824
  %28 = lshr i32 %27, 12
  %29 = getelementptr %struct.page, ptr %24, i32 %28
  %30 = getelementptr %struct.page, ptr %24, i32 %28, i32 1
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34, !prof !10

34:                                               ; preds = %18
  %35 = add i32 %31, -1
  br label %38

36:                                               ; preds = %18
  %37 = ptrtoint ptr %29 to i32
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = inttoptr i32 %39 to ptr
  %41 = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #6, !srcloc !11
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #6, !srcloc !12
  %43 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 6
  store ptr %29, ptr %43, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %22, i32 noundef %23) #6
  br label %44

44:                                               ; preds = %38, %14, %1
  %45 = phi i32 [ 0, %38 ], [ 2, %1 ], [ 2, %14 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_get_page_prot(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @drm_vm_fault(ptr nocapture noundef readnone %0) #3 {
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_vm_shm_close(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_minor, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %0, align 4
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %12, %10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %10, i32 noundef %13) #6
  %14 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %16) #6
  %17 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 44
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %79, label %20

20:                                               ; preds = %36, %1
  %21 = phi ptr [ %23, %36 ], [ %18, %1 ]
  %22 = phi i32 [ %30, %36 ], [ 0, %1 ]
  %23 = load ptr, ptr %21, align 4
  %24 = getelementptr inbounds %struct.drm_vma_entry, ptr %21, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.vm_area_struct, ptr %25, i32 0, i32 15
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %15
  %29 = zext i1 %28 to i32
  %30 = add i32 %22, %29
  %31 = icmp eq ptr %25, %0
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %34, ptr %35, align 4
  store volatile ptr %23, ptr %34, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %33, align 4
  tail call void @kfree(ptr noundef %21) #6
  br label %36

36:                                               ; preds = %32, %20
  %37 = icmp eq ptr %23, %17
  br i1 %37, label %38, label %20

38:                                               ; preds = %36
  %39 = icmp eq i32 %30, 1
  br i1 %39, label %40, label %79

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.drm_local_map, ptr %15, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 64
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %79, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 42
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %46
  br i1 %48, label %61, label %49

49:                                               ; preds = %49, %45
  %50 = phi ptr [ %57, %49 ], [ %47, %45 ]
  %51 = phi i32 [ %56, %49 ], [ 0, %45 ]
  %52 = getelementptr inbounds %struct.drm_map_list, ptr %50, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %15
  %55 = zext i1 %54 to i32
  %56 = add i32 %51, %55
  %57 = load ptr, ptr %50, align 4
  %58 = icmp eq ptr %57, %46
  br i1 %58, label %59, label %49

59:                                               ; preds = %49
  %60 = icmp eq i32 %56, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %59, %45
  %62 = getelementptr inbounds %struct.drm_local_map, ptr %15, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  switch i32 %63, label %78 [
    i32 1, label %64
    i32 0, label %64
    i32 2, label %67
    i32 5, label %70
  ]

64:                                               ; preds = %61, %61
  %65 = getelementptr inbounds %struct.drm_local_map, ptr %15, i32 0, i32 4
  %66 = load ptr, ptr %65, align 4
  tail call void @iounmap(ptr noundef %66) #6
  br label %78

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.drm_local_map, ptr %15, i32 0, i32 4
  %69 = load ptr, ptr %68, align 4
  tail call void @vfree(ptr noundef %69) #6
  br label %78

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.drm_local_map, ptr %15, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.drm_local_map, ptr %15, i32 0, i32 4
  %76 = load ptr, ptr %75, align 4
  %77 = load i32, ptr %15, align 4
  tail call void @dma_free_attrs(ptr noundef %72, i32 noundef %74, ptr noundef %76, i32 noundef %77, i32 noundef 0) #6
  br label %78

78:                                               ; preds = %70, %67, %64, %61
  tail call void @kfree(ptr noundef %15) #6
  br label %79

79:                                               ; preds = %78, %59, %40, %38, %1
  tail call void @mutex_unlock(ptr noundef %16) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_vm_shm_fault(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.anon.14, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %2, align 4
  %10 = sub i32 %8, %9
  %11 = getelementptr inbounds %struct.drm_local_map, ptr %4, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = add i32 %10, %13
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call ptr @vmalloc_to_page(ptr noundef %15) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 1
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !10

23:                                               ; preds = %18
  %24 = add i32 %20, -1
  br label %27

25:                                               ; preds = %18
  %26 = ptrtoint ptr %16 to i32
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #6, !srcloc !11
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #6, !srcloc !12
  %32 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 6
  store ptr %16, ptr %32, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %10) #6
  br label %33

33:                                               ; preds = %27, %6, %1
  %34 = phi i32 [ 0, %27 ], [ 2, %1 ], [ 2, %6 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_vm_sg_fault(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.drm_file, ptr %8, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_minor, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 54
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %49, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.drm_sg_mem, ptr %14, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %49, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.anon.14, ptr %0, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %2, align 4
  %24 = sub i32 %22, %23
  %25 = load i32, ptr %4, align 4
  %26 = getelementptr inbounds %struct.drm_sg_mem, ptr %14, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = ptrtoint ptr %27 to i32
  %29 = sub i32 %25, %28
  %30 = lshr i32 %24, 12
  %31 = lshr i32 %29, 12
  %32 = add nuw nsw i32 %31, %30
  %33 = getelementptr ptr, ptr %18, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.page, ptr %34, i32 0, i32 1
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39, !prof !10

39:                                               ; preds = %20
  %40 = add i32 %36, -1
  br label %43

41:                                               ; preds = %20
  %42 = ptrtoint ptr %34 to i32
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = inttoptr i32 %44 to ptr
  %46 = getelementptr inbounds %struct.page, ptr %45, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #6, !srcloc !11
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #6, !srcloc !12
  %48 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 6
  store ptr %34, ptr %48, align 4
  br label %49

49:                                               ; preds = %43, %16, %1
  %50 = phi i32 [ 0, %43 ], [ 2, %1 ], [ 2, %16 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 815388, i64 2148305359, i64 2148305385, i64 2148305432, i64 2148305454, i64 2148305482, i64 2148305502}
!12 = !{i64 2148317571, i64 2148317597, i64 2148317626, i64 2148317660, i64 2148317691, i64 2148317714}
