; ModuleID = '/llk/IR/crypto/scatterwalk.c_pt.bc'
source_filename = "../crypto/scatterwalk.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scatterwalk_copychunks:\09\09\09\09\09"
module asm "\09.asciz \09\22scatterwalk_copychunks\22\09\09\09\09\09"
module asm "__kstrtabns_scatterwalk_copychunks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scatterwalk_map_and_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22scatterwalk_map_and_copy\22\09\09\09\09\09"
module asm "__kstrtabns_scatterwalk_map_and_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scatterwalk_ffwd:\09\09\09\09\09"
module asm "\09.asciz \09\22scatterwalk_ffwd\22\09\09\09\09\09"
module asm "__kstrtabns_scatterwalk_ffwd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.scatter_walk = type { ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon, %union.anon.60, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.60 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.44, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.15 }
%struct.llist_node = type { ptr }
%union.anon.15 = type { i32 }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.16 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.44 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab_scatterwalk_copychunks = external dso_local constant [0 x i8], align 1
@__kstrtabns_scatterwalk_copychunks = external dso_local constant [0 x i8], align 1
@__ksymtab_scatterwalk_copychunks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scatterwalk_copychunks to i32), ptr @__kstrtab_scatterwalk_copychunks, ptr @__kstrtabns_scatterwalk_copychunks }, section "___ksymtab_gpl+scatterwalk_copychunks", align 4
@__kstrtab_scatterwalk_map_and_copy = external dso_local constant [0 x i8], align 1
@__kstrtabns_scatterwalk_map_and_copy = external dso_local constant [0 x i8], align 1
@__ksymtab_scatterwalk_map_and_copy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scatterwalk_map_and_copy to i32), ptr @__kstrtab_scatterwalk_map_and_copy, ptr @__kstrtabns_scatterwalk_map_and_copy }, section "___ksymtab_gpl+scatterwalk_map_and_copy", align 4
@__kstrtab_scatterwalk_ffwd = external dso_local constant [0 x i8], align 1
@__kstrtabns_scatterwalk_ffwd = external dso_local constant [0 x i8], align 1
@__ksymtab_scatterwalk_ffwd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scatterwalk_ffwd to i32), ptr @__kstrtab_scatterwalk_ffwd, ptr @__kstrtabns_scatterwalk_ffwd }, section "___ksymtab_gpl+scatterwalk_ffwd", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_scatterwalk_copychunks, ptr @__ksymtab_scatterwalk_ffwd, ptr @__ksymtab_scatterwalk_map_and_copy], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scatterwalk_copychunks(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.scatter_walk, ptr %1, i32 0, i32 1
  %6 = icmp eq i32 %3, 2
  %7 = icmp eq i32 %3, 0
  %8 = and i32 %3, 1
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %1, align 4
  %11 = load i32, ptr %5, align 4
  br label %12

12:                                               ; preds = %77, %4
  %13 = phi i32 [ %11, %4 ], [ %78, %77 ]
  %14 = phi ptr [ %10, %4 ], [ %79, %77 ]
  %15 = phi i32 [ %2, %4 ], [ %54, %77 ]
  %16 = phi ptr [ %0, %4 ], [ %53, %77 ]
  %17 = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  %22 = sub i32 %21, %13
  %23 = and i32 %13, 4095
  %24 = sub nuw nsw i32 4096, %23
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 %22) #7
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 %15)
  br i1 %6, label %48, label %27

27:                                               ; preds = %12
  %28 = load i32, ptr %14, align 4
  %29 = and i32 %28, -4
  %30 = inttoptr i32 %29 to ptr
  %31 = lshr i32 %13, 12
  %32 = getelementptr %struct.page, ptr %30, i32 %31
  %33 = load i32, ptr @pgprot_kernel, align 4
  %34 = or i32 %33, 512
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !8
  %35 = tail call ptr @llvm.thread.pointer() #7
  %36 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 149
  %37 = load i32, ptr %36, align 8
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  %39 = tail call ptr @__kmap_local_page_prot(ptr noundef %32, i32 noundef %34) #7
  %40 = load i32, ptr %5, align 4
  %41 = and i32 %40, 4095
  %42 = getelementptr i8, ptr %39, i32 %41
  %43 = select i1 %7, ptr %42, ptr %16
  %44 = select i1 %7, ptr %16, ptr %42
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %44, ptr align 1 %43, i32 %26, i1 false) #7
  tail call void @kunmap_local_indexed(ptr noundef %42) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %45 = load i32, ptr %36, align 8
  %46 = add i32 %45, -1
  store i32 %46, ptr %36, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %47 = load i32, ptr %5, align 4
  br label %48

48:                                               ; preds = %27, %12
  %49 = phi i32 [ %47, %27 ], [ %13, %12 ]
  %50 = add i32 %49, %26
  store i32 %50, ptr %5, align 4
  %51 = icmp ugt i32 %15, %25
  br i1 %51, label %52, label %80

52:                                               ; preds = %48
  %53 = getelementptr i8, ptr %16, i32 %26
  %54 = sub i32 %15, %26
  br i1 %9, label %64, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %1, align 4
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, -4
  %59 = inttoptr i32 %58 to ptr
  %60 = add i32 %50, -1
  %61 = lshr i32 %60, 12
  %62 = getelementptr %struct.page, ptr %59, i32 %61
  tail call void @flush_dcache_page(ptr noundef %62) #7
  %63 = load i32, ptr %5, align 4
  br label %64

64:                                               ; preds = %55, %52
  %65 = phi i32 [ %63, %55 ], [ %50, %52 ]
  %66 = load ptr, ptr %1, align 4
  %67 = getelementptr inbounds %struct.scatterlist, ptr %66, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.scatterlist, ptr %66, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, %68
  %72 = icmp ult i32 %65, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %64
  %74 = tail call ptr @sg_next(ptr noundef %66) #7
  store ptr %74, ptr %1, align 4
  %75 = getelementptr inbounds %struct.scatterlist, ptr %74, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  store i32 %76, ptr %5, align 4
  br label %77

77:                                               ; preds = %73, %64
  %78 = phi i32 [ %76, %73 ], [ %65, %64 ]
  %79 = phi ptr [ %74, %73 ], [ %66, %64 ]
  br label %12

80:                                               ; preds = %48
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scatterwalk_map_and_copy(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.scatter_walk, align 8
  %7 = alloca [2 x %struct.scatterlist], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %7, i8 0, i32 40, i1 false), !annotation !12
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %65, label %9

9:                                                ; preds = %5
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %50, label %11

11:                                               ; preds = %17, %9
  %12 = phi i32 [ %18, %17 ], [ %2, %9 ]
  %13 = phi ptr [ %19, %17 ], [ %1, %9 ]
  %14 = getelementptr inbounds %struct.scatterlist, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = sub i32 %12, %15
  %19 = tail call ptr @sg_next(ptr noundef %13) #7
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %50, label %11

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.scatterlist, ptr %13, i32 0, i32 2
  call void @sg_init_table(ptr noundef nonnull %7, i32 noundef 2) #7
  %23 = load i32, ptr %13, align 4
  %24 = and i32 %23, -4
  %25 = load i32, ptr %22, align 4
  %26 = sub i32 %25, %12
  %27 = getelementptr inbounds %struct.scatterlist, ptr %13, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %12
  %30 = load i32, ptr %7, align 4
  %31 = and i32 %30, 3
  %32 = or i32 %31, %24
  store i32 %32, ptr %7, align 4
  %33 = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 1
  store i32 %29, ptr %33, align 4
  %34 = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 2
  store i32 %26, ptr %34, align 4
  %35 = call ptr @sg_next(ptr noundef %13) #7
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %21
  %38 = getelementptr inbounds %struct.scatterlist, ptr %7, i32 1
  %39 = getelementptr inbounds %struct.scatterlist, ptr %7, i32 1, i32 1
  store i32 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.scatterlist, ptr %7, i32 1, i32 2
  store i32 0, ptr %40, align 4
  %41 = ptrtoint ptr %35 to i32
  br label %44

42:                                               ; preds = %21
  %43 = load i32, ptr %7, align 4
  br label %44

44:                                               ; preds = %42, %37
  %45 = phi i32 [ %43, %42 ], [ %41, %37 ]
  %46 = phi i32 [ 2, %42 ], [ 1, %37 ]
  %47 = phi ptr [ %7, %42 ], [ %38, %37 ]
  %48 = and i32 %45, -4
  %49 = or i32 %48, %46
  store i32 %49, ptr %47, align 4
  br label %50

50:                                               ; preds = %44, %17, %9
  %51 = phi ptr [ %7, %44 ], [ %1, %9 ], [ %19, %17 ]
  store ptr %51, ptr %6, align 8
  %52 = getelementptr inbounds %struct.scatterlist, ptr %51, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.scatter_walk, ptr %6, i32 0, i32 1
  store i32 %53, ptr %54, align 4
  call void @scatterwalk_copychunks(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %3, i32 noundef %4)
  %55 = icmp eq i32 %4, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %50
  %57 = load ptr, ptr %6, align 8
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, -4
  %60 = inttoptr i32 %59 to ptr
  %61 = load i32, ptr %54, align 4
  %62 = add i32 %61, -1
  %63 = lshr i32 %62, 12
  %64 = getelementptr %struct.page, ptr %60, i32 %63
  call void @flush_dcache_page(ptr noundef %64) #7
  br label %65

65:                                               ; preds = %56, %50, %5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @scatterwalk_ffwd(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %44, label %5

5:                                                ; preds = %11, %3
  %6 = phi i32 [ %12, %11 ], [ %2, %3 ]
  %7 = phi ptr [ %13, %11 ], [ %1, %3 ]
  %8 = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = sub i32 %6, %9
  %13 = tail call ptr @sg_next(ptr noundef %7) #7
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %44, label %5

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 2
  tail call void @sg_init_table(ptr noundef %0, i32 noundef 2) #7
  %17 = load i32, ptr %7, align 4
  %18 = and i32 %17, -4
  %19 = load i32, ptr %16, align 4
  %20 = sub i32 %19, %6
  %21 = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %6
  %24 = load i32, ptr %0, align 4
  %25 = and i32 %24, 3
  %26 = or i32 %25, %18
  store i32 %26, ptr %0, align 4
  %27 = getelementptr inbounds %struct.scatterlist, ptr %0, i32 0, i32 1
  store i32 %23, ptr %27, align 4
  %28 = getelementptr inbounds %struct.scatterlist, ptr %0, i32 0, i32 2
  store i32 %20, ptr %28, align 4
  %29 = tail call ptr @sg_next(ptr noundef %7) #7
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %15
  %32 = getelementptr %struct.scatterlist, ptr %0, i32 1
  %33 = getelementptr %struct.scatterlist, ptr %0, i32 1, i32 1
  store i32 0, ptr %33, align 4
  %34 = getelementptr %struct.scatterlist, ptr %0, i32 1, i32 2
  store i32 0, ptr %34, align 4
  %35 = ptrtoint ptr %29 to i32
  br label %38

36:                                               ; preds = %15
  %37 = load i32, ptr %0, align 4
  br label %38

38:                                               ; preds = %36, %31
  %39 = phi i32 [ %37, %36 ], [ %35, %31 ]
  %40 = phi i32 [ 2, %36 ], [ 1, %31 ]
  %41 = phi ptr [ %0, %36 ], [ %32, %31 ]
  %42 = and i32 %39, -4
  %43 = or i32 %42, %40
  store i32 %43, ptr %41, align 4
  br label %44

44:                                               ; preds = %38, %11, %3
  %45 = phi ptr [ %0, %38 ], [ %1, %3 ], [ %13, %11 ]
  ret ptr %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
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
!8 = !{i64 2152423815}
!9 = !{i64 2151176827}
!10 = !{i64 2151177034}
!11 = !{i64 2152426440}
!12 = !{!"auto-init"}
