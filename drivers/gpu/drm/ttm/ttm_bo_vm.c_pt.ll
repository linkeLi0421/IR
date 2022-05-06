; ModuleID = '/llk/IR/drivers/gpu/drm/ttm/ttm_bo_vm.c_pt.bc'
source_filename = "../drivers/gpu/drm/ttm/ttm_bo_vm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_bo_vm_reserve:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_bo_vm_reserve\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_bo_vm_reserve:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_bo_vm_fault_reserved:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_bo_vm_fault_reserved\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_bo_vm_fault_reserved:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_bo_vm_dummy_page:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_bo_vm_dummy_page\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_bo_vm_dummy_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_bo_vm_fault:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_bo_vm_fault\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_bo_vm_fault:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_bo_vm_open:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_bo_vm_open\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_bo_vm_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_bo_vm_close:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_bo_vm_close\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_bo_vm_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_bo_vm_access:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_bo_vm_access\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_bo_vm_access:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_bo_mmap_obj:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_bo_mmap_obj\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_bo_mmap_obj:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.vm_fault = type { %struct.anon.11, i32, ptr, ptr, %union.anon.12, ptr, ptr, ptr, ptr, ptr }
%struct.anon.11 = type { ptr, i32, i32, i32 }
%union.anon.12 = type { i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.9, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.ttm_tt = type { ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.anon.8 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.69] }
%struct.anon.69 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.ttm_device_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.67, i64, i64, i32, %struct.kref, i32 }
%union.anon.67 = type { i64 }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_ttm_bo_vm_reserve = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_bo_vm_reserve = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_bo_vm_reserve = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_bo_vm_reserve to i32), ptr @__kstrtab_ttm_bo_vm_reserve, ptr @__kstrtabns_ttm_bo_vm_reserve }, section "___ksymtab+ttm_bo_vm_reserve", align 4
@__const.ttm_bo_vm_fault_reserved.ctx = private unnamed_addr constant { i8, i8, i8, i8, i8, [3 x i8], ptr, [4 x i8], i64 } { i8 0, i8 0, i8 0, i8 0, i8 1, [3 x i8] zeroinitializer, ptr null, [4 x i8] zeroinitializer, i64 0 }, align 8
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_ttm_bo_vm_fault_reserved = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_bo_vm_fault_reserved = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_bo_vm_fault_reserved = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_bo_vm_fault_reserved to i32), ptr @__kstrtab_ttm_bo_vm_fault_reserved, ptr @__kstrtabns_ttm_bo_vm_fault_reserved }, section "___ksymtab+ttm_bo_vm_fault_reserved", align 4
@.str = private unnamed_addr constant [26 x i8] c"ttm_bo_release_dummy_page\00", align 1
@__kstrtab_ttm_bo_vm_dummy_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_bo_vm_dummy_page = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_bo_vm_dummy_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_bo_vm_dummy_page to i32), ptr @__kstrtab_ttm_bo_vm_dummy_page, ptr @__kstrtabns_ttm_bo_vm_dummy_page }, section "___ksymtab+ttm_bo_vm_dummy_page", align 4
@__kstrtab_ttm_bo_vm_fault = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_bo_vm_fault = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_bo_vm_fault = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_bo_vm_fault to i32), ptr @__kstrtab_ttm_bo_vm_fault, ptr @__kstrtabns_ttm_bo_vm_fault }, section "___ksymtab+ttm_bo_vm_fault", align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"drivers/gpu/drm/ttm/ttm_bo_vm.c\00", align 1
@__kstrtab_ttm_bo_vm_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_bo_vm_open = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_bo_vm_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_bo_vm_open to i32), ptr @__kstrtab_ttm_bo_vm_open, ptr @__kstrtabns_ttm_bo_vm_open }, section "___ksymtab+ttm_bo_vm_open", align 4
@__kstrtab_ttm_bo_vm_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_bo_vm_close = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_bo_vm_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_bo_vm_close to i32), ptr @__kstrtab_ttm_bo_vm_close, ptr @__kstrtabns_ttm_bo_vm_close }, section "___ksymtab+ttm_bo_vm_close", align 4
@__kstrtab_ttm_bo_vm_access = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_bo_vm_access = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_bo_vm_access = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_bo_vm_access to i32), ptr @__kstrtab_ttm_bo_vm_access, ptr @__kstrtabns_ttm_bo_vm_access }, section "___ksymtab+ttm_bo_vm_access", align 4
@ttm_bo_vm_ops = internal constant %struct.vm_operations_struct { ptr @ttm_bo_vm_open, ptr @ttm_bo_vm_close, ptr null, ptr null, ptr null, ptr @ttm_bo_vm_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ttm_bo_vm_access, ptr null, ptr null }, align 4
@__kstrtab_ttm_bo_mmap_obj = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_bo_mmap_obj = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_bo_mmap_obj = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_bo_mmap_obj to i32), ptr @__kstrtab_ttm_bo_mmap_obj, ptr @__kstrtabns_ttm_bo_mmap_obj }, section "___ksymtab+ttm_bo_mmap_obj", align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@ttm_bo_vm_access_kmap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_ttm_bo_mmap_obj, ptr @__ksymtab_ttm_bo_vm_access, ptr @__ksymtab_ttm_bo_vm_close, ptr @__ksymtab_ttm_bo_vm_dummy_page, ptr @__ksymtab_ttm_bo_vm_fault, ptr @__ksymtab_ttm_bo_vm_fault_reserved, ptr @__ksymtab_ttm_bo_vm_open, ptr @__ksymtab_ttm_bo_vm_reserve], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_bo_vm_reserve(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @ww_mutex_trylock(ptr noundef %4, ptr noundef null) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %29, !prof !8

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.vm_fault, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 36
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  %13 = and i32 %9, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %12
  tail call fastcc void @ttm_bo_get(ptr noundef %0)
  %16 = load ptr, ptr %1, align 4
  %17 = getelementptr inbounds %struct.vm_area_struct, ptr %16, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  tail call fastcc void @mmap_read_unlock(ptr noundef %18)
  %19 = load ptr, ptr %3, align 8
  %20 = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %19, ptr noundef null) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load ptr, ptr %3, align 8
  tail call void @ww_mutex_unlock(ptr noundef %23) #7
  br label %24

24:                                               ; preds = %22, %15
  tail call void @ttm_bo_put(ptr noundef %0) #7
  br label %40

25:                                               ; preds = %7
  %26 = load ptr, ptr %3, align 8
  %27 = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %26, ptr noundef null) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %25, %2
  %30 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 7
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ttm_tt, ptr %31, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 12
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load ptr, ptr %3, align 8
  tail call void @ww_mutex_unlock(ptr noundef %39) #7
  br label %40

40:                                               ; preds = %38, %33, %29, %25, %24, %12
  %41 = phi i32 [ 2, %38 ], [ 1024, %24 ], [ 1024, %12 ], [ 256, %25 ], [ 0, %33 ], [ 0, %29 ]
  ret i32 %41
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ttm_bo_get(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #7, !srcloc !9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #7, !srcloc !10
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !8

6:                                                ; preds = %1
  %7 = add i32 %4, 1
  %8 = or i32 %7, %4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10, !prof !11

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 2, %1 ], [ 1, %6 ]
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %11) #7
  br label %12

12:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmap_read_unlock(ptr noundef %0) unnamed_addr #1 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @__mmap_lock_do_trace_released(ptr noundef %0, i1 noundef zeroext false) #7
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.anon.8, ptr %0, i32 0, i32 15
  tail call void @up_read(ptr noundef %6) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_bo_vm_fault_reserved(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.ttm_operation_ctx, align 8
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ttm_buffer_object, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.anon.11, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ttm_buffer_object, ptr %7, i32 0, i32 11
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %42, label %15, !prof !11

15:                                               ; preds = %3
  %16 = tail call fastcc zeroext i1 @dma_fence_is_signaled(ptr noundef nonnull %13) #7
  br i1 %16, label %40, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 36
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = and i32 %19, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %137

25:                                               ; preds = %22
  tail call fastcc void @ttm_bo_get(ptr noundef %7) #7
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.vm_area_struct, ptr %26, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  tail call fastcc void @mmap_read_unlock(ptr noundef %28) #7
  %29 = load ptr, ptr %12, align 8
  %30 = tail call i32 @dma_fence_wait_timeout(ptr noundef %29, i1 noundef zeroext true, i32 noundef 2147483647) #7
  %31 = getelementptr inbounds %struct.drm_gem_object, ptr %7, i32 0, i32 9
  %32 = load ptr, ptr %31, align 8
  tail call void @ww_mutex_unlock(ptr noundef %32) #7
  tail call void @ttm_bo_put(ptr noundef %7) #7
  br label %137

33:                                               ; preds = %17
  %34 = load ptr, ptr %12, align 8
  %35 = tail call i32 @dma_fence_wait_timeout(ptr noundef %34, i1 noundef zeroext true, i32 noundef 2147483647) #7
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %40, label %37, !prof !11

37:                                               ; preds = %33
  %38 = icmp eq i32 %35, -512
  %39 = select i1 %38, i32 256, i32 2
  br label %137

40:                                               ; preds = %33, %15
  %41 = load ptr, ptr %12, align 8
  tail call fastcc void @dma_fence_put(ptr noundef %41) #7
  store ptr null, ptr %12, align 8
  br label %42

42:                                               ; preds = %40, %3
  %43 = getelementptr inbounds %struct.ttm_buffer_object, ptr %7, i32 0, i32 6
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @ttm_mem_io_reserve(ptr noundef %9, ptr noundef %44) #7
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %137, !prof !11

47:                                               ; preds = %42
  %48 = load i32, ptr %5, align 4
  %49 = sub i32 %11, %48
  %50 = lshr i32 %49, 12
  %51 = getelementptr inbounds %struct.vm_area_struct, ptr %5, i32 0, i32 13
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %50, %52
  %54 = getelementptr inbounds %struct.drm_gem_object, ptr %7, i32 0, i32 4, i32 1, i32 1
  %55 = load i64, ptr %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = sub i32 %53, %56
  %58 = getelementptr inbounds %struct.vm_area_struct, ptr %5, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = sub i32 %59, %48
  %61 = lshr i32 %60, 12
  %62 = sub i32 %52, %56
  %63 = add i32 %62, %61
  %64 = load ptr, ptr %43, align 4
  %65 = getelementptr inbounds %struct.ttm_resource, ptr %64, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = icmp ult i32 %57, %66
  br i1 %67, label %68, label %137, !prof !11

68:                                               ; preds = %47
  %69 = tail call i32 @ttm_io_prot(ptr noundef %7, ptr noundef %64, i32 noundef %1) #7
  %70 = load ptr, ptr %43, align 4
  %71 = getelementptr inbounds %struct.ttm_resource, ptr %70, i32 0, i32 4, i32 2
  %72 = load i8, ptr %71, align 4, !range !12
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.ttm_bo_vm_fault_reserved.ctx, i32 24, i1 false)
  %75 = getelementptr inbounds %struct.ttm_buffer_object, ptr %7, i32 0, i32 7
  %76 = load ptr, ptr %75, align 8
  %77 = call i32 @ttm_tt_populate(ptr noundef %9, ptr noundef %76, ptr noundef nonnull %4) #7
  %78 = icmp eq i32 %77, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br i1 %78, label %79, label %137

79:                                               ; preds = %74, %68
  %80 = phi ptr [ %76, %74 ], [ null, %68 ]
  %81 = icmp eq i32 %2, 0
  br i1 %81, label %135, label %82

82:                                               ; preds = %131, %79
  %83 = phi i32 [ %132, %131 ], [ %11, %79 ]
  %84 = phi i32 [ %123, %131 ], [ 0, %79 ]
  %85 = phi i32 [ %133, %131 ], [ 0, %79 ]
  %86 = phi i32 [ %129, %131 ], [ %57, %79 ]
  %87 = load ptr, ptr %43, align 4
  %88 = getelementptr inbounds %struct.ttm_resource, ptr %87, i32 0, i32 4, i32 2
  %89 = load i8, ptr %88, align 4, !range !12
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %105, label %91

91:                                               ; preds = %82
  %92 = load ptr, ptr %8, align 8
  %93 = getelementptr inbounds %struct.ttm_device, ptr %92, i32 0, i32 1
  %94 = load ptr, ptr %93, align 8
  %95 = getelementptr inbounds %struct.ttm_device_funcs, ptr %94, i32 0, i32 11
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %91
  %99 = call i32 %96(ptr noundef %7, i32 noundef %86) #7
  br label %121

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.ttm_resource, ptr %87, i32 0, i32 4, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = lshr i32 %102, 12
  %104 = add i32 %103, %86
  br label %121

105:                                              ; preds = %82
  %106 = load ptr, ptr %80, align 4
  %107 = getelementptr ptr, ptr %106, i32 %86
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  %110 = icmp eq i32 %85, 0
  %111 = select i1 %109, i1 %110, i1 false
  br i1 %111, label %137, label %112, !prof !8

112:                                              ; preds = %105
  br i1 %109, label %135, label %113, !prof !8

113:                                              ; preds = %112
  %114 = load ptr, ptr @mem_map, align 4
  %115 = ptrtoint ptr %108 to i32
  %116 = ptrtoint ptr %114 to i32
  %117 = sub i32 %115, %116
  %118 = ashr exact i32 %117, 5
  %119 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %120 = add i32 %118, %119
  br label %121

121:                                              ; preds = %113, %100, %98
  %122 = phi i32 [ %120, %113 ], [ %99, %98 ], [ %104, %100 ]
  %123 = call i32 @vmf_insert_pfn_prot(ptr noundef %5, i32 noundef %83, i32 noundef %122, i32 noundef %69) #7
  %124 = and i32 %123, 2163
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126, !prof !11

126:                                              ; preds = %121
  %127 = icmp eq i32 %85, 0
  br i1 %127, label %137, label %135

128:                                              ; preds = %121
  %129 = add i32 %86, 1
  %130 = icmp ult i32 %129, %63
  br i1 %130, label %131, label %135, !prof !11

131:                                              ; preds = %128
  %132 = add i32 %83, 4096
  %133 = add nuw i32 %85, 1
  %134 = icmp eq i32 %133, %2
  br i1 %134, label %135, label %82

135:                                              ; preds = %131, %128, %126, %112, %79
  %136 = phi i32 [ %123, %126 ], [ 0, %79 ], [ %123, %131 ], [ %84, %112 ], [ %123, %128 ]
  br label %137

137:                                              ; preds = %135, %126, %105, %74, %47, %42, %37, %25, %22
  %138 = phi i32 [ %136, %135 ], [ 1, %74 ], [ 2, %42 ], [ 2, %47 ], [ 256, %126 ], [ %39, %37 ], [ 1024, %25 ], [ 1024, %22 ], [ 1, %105 ]
  ret i32 %138
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_mem_io_reserve(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_io_prot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_tt_populate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vmf_insert_pfn_prot(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_bo_vm_dummy_page(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_gem_object, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @__alloc_pages(i32 noundef 3520, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @__drmm_add_action_or_reset(ptr noundef %7, ptr noundef nonnull @ttm_bo_release_dummy_page, ptr noundef nonnull %8, ptr noundef nonnull @.str) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load ptr, ptr @mem_map, align 4
  %15 = ptrtoint ptr %8 to i32
  %16 = ptrtoint ptr %14 to i32
  %17 = sub i32 %15, %16
  %18 = ashr exact i32 %17, 5
  %19 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %20 = add i32 %18, %19
  %21 = load i32, ptr %3, align 4
  %22 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %25, %13
  %26 = phi i32 [ %28, %25 ], [ %21, %13 ]
  %27 = tail call i32 @vmf_insert_pfn_prot(ptr noundef %3, i32 noundef %26, i32 noundef %20, i32 noundef %1) #7
  %28 = add i32 %26, 4096
  %29 = load i32, ptr %22, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %25, label %31

31:                                               ; preds = %25, %13, %10, %2
  %32 = phi i32 [ 1, %2 ], [ 1, %10 ], [ 256, %13 ], [ %27, %25 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drmm_add_action_or_reset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ttm_bo_release_dummy_page(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @__free_pages(ptr noundef %1, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_bo_vm_fault(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_gem_object, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !13
  %8 = tail call i32 @ttm_bo_vm_reserve(ptr noundef %5, ptr noundef %0)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %58

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = call zeroext i1 @drm_dev_enter(ptr noundef %7, ptr noundef nonnull %2) #7
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = call i32 @ttm_bo_vm_fault_reserved(ptr noundef %0, i32 noundef %12, i32 noundef 16)
  %16 = load i32, ptr %2, align 4
  call void @drm_dev_exit(i32 noundef %16) #7
  br label %46

17:                                               ; preds = %10
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.vm_area_struct, ptr %18, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.drm_gem_object, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = call ptr @__alloc_pages(i32 noundef 3520, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %54, label %25

25:                                               ; preds = %17
  %26 = call i32 @__drmm_add_action_or_reset(ptr noundef %22, ptr noundef nonnull @ttm_bo_release_dummy_page, ptr noundef nonnull %23, ptr noundef nonnull @.str) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %25
  %29 = load ptr, ptr @mem_map, align 4
  %30 = ptrtoint ptr %23 to i32
  %31 = ptrtoint ptr %29 to i32
  %32 = sub i32 %30, %31
  %33 = ashr exact i32 %32, 5
  %34 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %35 = add i32 %33, %34
  %36 = load i32, ptr %18, align 4
  %37 = getelementptr inbounds %struct.vm_area_struct, ptr %18, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %40, %28
  %41 = phi i32 [ %43, %40 ], [ %36, %28 ]
  %42 = call i32 @vmf_insert_pfn_prot(ptr noundef %18, i32 noundef %41, i32 noundef %35, i32 noundef %12) #7
  %43 = add i32 %41, 4096
  %44 = load i32, ptr %37, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %40, label %46

46:                                               ; preds = %40, %14
  %47 = phi i32 [ %15, %14 ], [ %42, %40 ]
  %48 = icmp eq i32 %47, 1024
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49, %46, %28, %25, %17
  %55 = phi i32 [ 1024, %49 ], [ %47, %46 ], [ 256, %28 ], [ 1, %25 ], [ 1, %17 ]
  %56 = getelementptr inbounds %struct.drm_gem_object, ptr %5, i32 0, i32 9
  %57 = load ptr, ptr %56, align 8
  call void @ww_mutex_unlock(ptr noundef %57) #7
  br label %58

58:                                               ; preds = %54, %49, %1
  %59 = phi i32 [ %55, %54 ], [ %8, %1 ], [ 1024, %49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ttm_bo_vm_open(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ttm_buffer_object, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ttm_device, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 17
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %7, %11
  br i1 %12, label %14, label %13, !prof !11

13:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 360, i32 noundef 9, ptr noundef null) #7
  br label %14

14:                                               ; preds = %13, %1
  %15 = getelementptr inbounds %struct.ttm_buffer_object, ptr %3, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #7, !srcloc !9
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #7, !srcloc !10
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !8

19:                                               ; preds = %14
  %20 = add i32 %17, 1
  %21 = or i32 %20, %17
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %25, label %23, !prof !11

23:                                               ; preds = %19, %14
  %24 = phi i32 [ 2, %14 ], [ 1, %19 ]
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef %24) #7
  br label %25

25:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ttm_bo_vm_close(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  tail call void @ttm_bo_put(ptr noundef %3) #7
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_bo_vm_access(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.ttm_bo_kmap_obj, align 4
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %0, align 4
  %10 = sub i32 %1, %9
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_gem_object, ptr %8, i32 0, i32 4, i32 1, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = sub i32 %12, %15
  %17 = shl i32 %16, 12
  %18 = add i32 %17, %10
  %19 = icmp slt i32 %3, 1
  br i1 %19, label %94, label %20

20:                                               ; preds = %5
  %21 = add i32 %18, %3
  %22 = lshr i32 %21, 12
  %23 = getelementptr inbounds %struct.ttm_buffer_object, ptr %8, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ttm_resource, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %22, %26
  br i1 %27, label %94, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.drm_gem_object, ptr %8, i32 0, i32 9
  %30 = load ptr, ptr %29, align 8
  %31 = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %30, ptr noundef null) #7
  %32 = icmp eq i32 %31, -4
  %33 = select i1 %32, i32 -512, i32 %31
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %94

35:                                               ; preds = %28
  %36 = load ptr, ptr %23, align 4
  %37 = getelementptr inbounds %struct.ttm_resource, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp ult i32 %38, 2
  br i1 %39, label %40, label %73

40:                                               ; preds = %35
  %41 = lshr i32 %18, 12
  %42 = and i32 %18, 4095
  %43 = getelementptr inbounds %struct.ttm_bo_kmap_obj, ptr %6, i32 0, i32 2
  %44 = icmp eq i32 %4, 0
  br label %45

45:                                               ; preds = %68, %40
  %46 = phi i32 [ %3, %40 ], [ %71, %68 ]
  %47 = phi i32 [ %41, %40 ], [ %69, %68 ]
  %48 = phi ptr [ %2, %40 ], [ %70, %68 ]
  %49 = phi i32 [ %42, %40 ], [ 0, %68 ]
  %50 = sub nuw nsw i32 4096, %49
  %51 = call i32 @llvm.umin.i32(i32 %46, i32 %50) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false) #7, !annotation !13
  %52 = call i32 @ttm_bo_kmap(ptr noundef %8, i32 noundef %47, i32 noundef 1, ptr noundef nonnull %6) #7
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %45
  %55 = load i32, ptr %43, align 4
  %56 = load ptr, ptr %6, align 4
  %57 = getelementptr i8, ptr %56, i32 %49
  %58 = and i32 %55, 128
  %59 = icmp ne i32 %58, 0
  %60 = load i1, ptr @ttm_bo_vm_access_kmap.__already_done, align 1
  %61 = xor i1 %60, true
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %63, label %64, !prof !8

63:                                               ; preds = %54
  store i1 true, ptr @ttm_bo_vm_access_kmap.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 398, i32 noundef 9, ptr noundef null) #7
  br label %64

64:                                               ; preds = %63, %54
  br i1 %44, label %66, label %65

65:                                               ; preds = %64
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %57, ptr align 1 %48, i32 %51, i1 false) #7
  br label %68

66:                                               ; preds = %64
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %48, ptr align 1 %57, i32 %51, i1 false) #7
  br label %68

67:                                               ; preds = %45
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  br label %83

68:                                               ; preds = %66, %65
  call void @ttm_bo_kunmap(ptr noundef nonnull %6) #7
  %69 = add i32 %47, 1
  %70 = getelementptr i8, ptr %48, i32 %51
  %71 = sub i32 %46, %51
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %83, label %45

73:                                               ; preds = %35
  %74 = getelementptr inbounds %struct.ttm_buffer_object, ptr %8, i32 0, i32 1
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.ttm_device, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.ttm_device_funcs, ptr %77, i32 0, i32 12
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %73
  %82 = tail call i32 %79(ptr noundef %8, i32 noundef %18, ptr noundef %2, i32 noundef %3, i32 noundef %4) #7
  br label %83

83:                                               ; preds = %81, %73, %68, %67
  %84 = phi i32 [ %82, %81 ], [ -5, %73 ], [ %52, %67 ], [ %3, %68 ]
  %85 = getelementptr inbounds %struct.ttm_buffer_object, ptr %8, i32 0, i32 1
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.ttm_device, ptr %86, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %87) #7
  %88 = load ptr, ptr %23, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %8, ptr noundef %88, ptr noundef null) #7
  %89 = load ptr, ptr %85, align 8
  %90 = getelementptr inbounds %struct.ttm_device, ptr %89, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %91 = load i16, ptr %90, align 4
  %92 = add i16 %91, 1
  store i16 %92, ptr %90, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  %93 = load ptr, ptr %29, align 8
  call void @ww_mutex_unlock(ptr noundef %93) #7
  br label %94

94:                                               ; preds = %83, %28, %20, %5
  %95 = phi i32 [ %84, %83 ], [ -5, %20 ], [ -5, %5 ], [ %33, %28 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_bo_mmap_obj(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 40
  %6 = icmp eq i32 %5, 32
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ttm_buffer_object, ptr %1, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #7, !srcloc !9
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #7, !srcloc !10
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12, !prof !8

12:                                               ; preds = %7
  %13 = add i32 %10, 1
  %14 = or i32 %13, %10
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %18, label %16, !prof !11

16:                                               ; preds = %12, %7
  %17 = phi i32 [ 2, %7 ], [ 1, %12 ]
  tail call void @refcount_warn_saturate(ptr noundef %8, i32 noundef %17) #7
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store ptr @ttm_bo_vm_ops, ptr %19, align 4
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 15
  store ptr %1, ptr %24, align 4
  %25 = load i32, ptr %3, align 4
  %26 = or i32 %25, 67388416
  store i32 %26, ptr %3, align 4
  br label %27

27:                                               ; preds = %23, %2
  %28 = phi i32 [ 0, %23 ], [ -22, %2 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_trylock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @dma_fence_is_signaled(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 5
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dma_fence_ops, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = tail call zeroext i1 %10(ptr noundef %0) #7
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = tail call i32 @dma_fence_signal(ptr noundef %0) #7
  br label %16

16:                                               ; preds = %14, %12, %6, %1
  %17 = phi i1 [ true, %14 ], [ true, %1 ], [ false, %12 ], [ false, %6 ]
  ret i1 %17
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dma_fence_put(ptr noundef %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #7, !srcloc !9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #7, !srcloc !19
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %12, label %10, !prof !11

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #7
  br label %12

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  tail call void @dma_fence_release(ptr noundef %4) #7
  br label %12

12:                                               ; preds = %11, %10, %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_kmap(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_kunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

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
!9 = !{i64 551386, i64 2148041357, i64 2148041383, i64 2148041430, i64 2148041452, i64 2148041480, i64 2148041500}
!10 = !{i64 2148054230, i64 2148054262, i64 2148054291, i64 2148054325, i64 2148054356, i64 2148054379}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i8 0, i8 2}
!13 = !{!"auto-init"}
!14 = !{i64 2148966445}
!15 = !{i64 2148962269}
!16 = !{i64 2148962344, i64 2148962371, i64 2148962418, i64 2148962440, i64 2148962468, i64 2148962488}
!17 = !{i64 2148989448}
!18 = !{i64 2148154428}
!19 = !{i64 2148056587, i64 2148056619, i64 2148056648, i64 2148056682, i64 2148056713, i64 2148056736}
!20 = !{i64 2149034433}
