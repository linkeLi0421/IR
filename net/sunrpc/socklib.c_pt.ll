; ModuleID = '/llk/IR/net/sunrpc/socklib.c_pt.bc'
source_filename = "../net/sunrpc/socklib.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_csum_partial_copy_to_xdr:\09\09\09\09\09"
module asm "\09.asciz \09\22csum_partial_copy_to_xdr\22\09\09\09\09\09"
module asm "__kstrtabns_csum_partial_copy_to_xdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.xdr_skb_reader = type { ptr, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.34, %union.anon.37, %union.anon.38, [48 x i8], %union.anon.39, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.41, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, ptr, %union.anon.36 }
%union.anon.36 = type { ptr }
%union.anon.37 = type { ptr }
%union.anon.38 = type { i64 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { i32, ptr }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.43, i32, i32, i32, i16, i16, %union.anon.45, %union.anon.46, %union.anon.47, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { i32 }
%union.anon.46 = type { i32 }
%union.anon.47 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.114, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.72 }
%struct.llist_node = type { ptr }
%union.anon.72 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.73 }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.114 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.33, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.30, %union.anon.31 }
%union.anon.30 = type { ptr }
%union.anon.31 = type { i64 }
%union.anon.33 = type { ptr }

@__kstrtab_csum_partial_copy_to_xdr = external dso_local constant [0 x i8], align 1
@__kstrtabns_csum_partial_copy_to_xdr = external dso_local constant [0 x i8], align 1
@__ksymtab_csum_partial_copy_to_xdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @csum_partial_copy_to_xdr to i32), ptr @__kstrtab_csum_partial_copy_to_xdr, ptr @__kstrtabns_csum_partial_copy_to_xdr }, section "___ksymtab_gpl+csum_partial_copy_to_xdr", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_csum_partial_copy_to_xdr], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @csum_partial_copy_to_xdr(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.xdr_skb_reader, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  %4 = getelementptr inbounds i8, ptr %3, i32 12
  store i32 0, ptr %4, align 4, !annotation !8
  store ptr %1, ptr %3, align 4
  %5 = getelementptr inbounds %struct.xdr_skb_reader, ptr %3, i32 0, i32 1
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.xdr_skb_reader, ptr %3, i32 0, i32 2
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %10 = load i16, ptr %9, align 8
  %11 = lshr i16 %10, 5
  %12 = and i16 %11, 3
  %13 = icmp ne i16 %12, 1
  %14 = icmp sgt i16 %10, -1
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %78

16:                                               ; preds = %2
  %17 = icmp eq i16 %12, 3
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %20 = load ptr, ptr %19, align 4
  br label %34

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %28 = load ptr, ptr %27, align 8
  %29 = ptrtoint ptr %26 to i32
  %30 = ptrtoint ptr %28 to i32
  %31 = sub i32 %24, %29
  %32 = add i32 %31, %30
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %78

34:                                               ; preds = %21, %18
  %35 = phi ptr [ %20, %18 ], [ %26, %21 ]
  %36 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 @csum_partial(ptr noundef %35, i32 noundef 0, i32 noundef %37) #5
  %39 = getelementptr inbounds %struct.xdr_skb_reader, ptr %3, i32 0, i32 3
  store i32 %38, ptr %39, align 4
  %40 = call fastcc i32 @xdr_partial_copy_from_skb(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @xdr_skb_read_and_csum_bits)
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %85, label %42

42:                                               ; preds = %34
  %43 = load i32, ptr %5, align 4
  %44 = load i32, ptr %6, align 8
  %45 = icmp eq i32 %44, %43
  br i1 %45, label %59, label %46

46:                                               ; preds = %42
  %47 = sub i32 %44, %43
  %48 = call i32 @skb_checksum(ptr noundef %1, i32 noundef %43, i32 noundef %47, i32 noundef 0) #5
  %49 = load i32, ptr %39, align 4
  %50 = load i32, ptr %5, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  %53 = call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 24) #5
  %54 = select i1 %52, i32 %48, i32 %53
  %55 = add i32 %54, %49
  %56 = icmp ult i32 %55, %54
  %57 = zext i1 %56 to i32
  %58 = add i32 %55, %57
  store i32 %58, ptr %39, align 4
  br label %59

59:                                               ; preds = %46, %42
  %60 = load i32, ptr %8, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %59
  %63 = load i32, ptr %39, align 4
  %64 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %63) #6, !srcloc !9
  %65 = icmp ugt i32 %64, -65537
  br i1 %65, label %66, label %85

66:                                               ; preds = %62
  %67 = load i16, ptr %9, align 8
  %68 = and i16 %67, 96
  %69 = icmp eq i16 %68, 64
  br i1 %69, label %70, label %85, !prof !10

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %72 = load i16, ptr %71, align 2
  %73 = and i16 %72, 2
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.anon.35, ptr %1, i32 0, i32 2
  %77 = load ptr, ptr %76, align 8
  call void @netdev_rx_csum_fault(ptr noundef %77, ptr noundef %1) #5
  br label %85

78:                                               ; preds = %21, %2
  %79 = call fastcc i32 @xdr_partial_copy_from_skb(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @xdr_skb_read_bits)
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load i32, ptr %8, align 4
  %83 = icmp ne i32 %82, 0
  %84 = sext i1 %83 to i32
  br label %85

85:                                               ; preds = %81, %78, %75, %70, %66, %62, %59, %34
  %86 = phi i32 [ -1, %34 ], [ -1, %59 ], [ -1, %62 ], [ 0, %75 ], [ 0, %70 ], [ 0, %66 ], [ -1, %78 ], [ %84, %81 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  ret i32 %86
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xdr_partial_copy_from_skb(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.kvec, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %0, align 4
  %13 = tail call i32 %2(ptr noundef %1, ptr noundef %12, i32 noundef %9) #5, !callees !11
  %14 = icmp eq i32 %13, %9
  br i1 %14, label %15, label %89

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.xdr_skb_reader, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %89, label %19

19:                                               ; preds = %15, %3
  %20 = icmp eq i32 %7, 0
  br i1 %20, label %79, label %21, !prof !10

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %23, 12
  %25 = and i32 %23, 4095
  %26 = getelementptr ptr, ptr %5, i32 %24
  %27 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 6
  %28 = getelementptr inbounds %struct.xdr_skb_reader, ptr %1, i32 0, i32 2
  br label %29

29:                                               ; preds = %75, %21
  %30 = phi i32 [ %25, %21 ], [ 0, %75 ]
  %31 = phi ptr [ %26, %21 ], [ %76, %75 ]
  %32 = phi i32 [ %7, %21 ], [ %77, %75 ]
  %33 = phi i32 [ %9, %21 ], [ %70, %75 ]
  %34 = load i32, ptr %27, align 4
  %35 = and i32 %34, 4
  %36 = icmp ne i32 %35, 0
  %37 = load ptr, ptr %31, align 4
  %38 = icmp eq ptr %37, null
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %46

40:                                               ; preds = %29
  %41 = tail call ptr @__alloc_pages(i32 noundef 10240, i32 noundef 0, i32 noundef 0, ptr noundef null) #5
  store ptr %41, ptr %31, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46, !prof !10

43:                                               ; preds = %40
  %44 = icmp eq i32 %33, 0
  %45 = select i1 %44, i32 -12, i32 %33
  br label %89

46:                                               ; preds = %40, %29
  %47 = phi ptr [ %41, %40 ], [ %37, %29 ]
  %48 = load i32, ptr @pgprot_kernel, align 4
  %49 = or i32 %48, 512
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %50 = tail call ptr @llvm.thread.pointer() #5
  %51 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 149
  %52 = load i32, ptr %51, align 8
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %54 = tail call ptr @__kmap_local_page_prot(ptr noundef %47, i32 noundef %49) #5
  %55 = icmp eq i32 %30, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %46
  %57 = sub nuw nsw i32 4096, %30
  %58 = tail call i32 @llvm.umin.i32(i32 %32, i32 %57)
  %59 = getelementptr i8, ptr %54, i32 %30
  %60 = tail call i32 %2(ptr noundef %1, ptr noundef %59, i32 noundef %58) #5, !callees !11
  br label %64

61:                                               ; preds = %46
  %62 = tail call i32 @llvm.umin.i32(i32 %32, i32 4096)
  %63 = tail call i32 %2(ptr noundef %1, ptr noundef %54, i32 noundef %62) #5, !callees !11
  br label %64

64:                                               ; preds = %61, %56
  %65 = phi i32 [ %58, %56 ], [ %62, %61 ]
  %66 = phi i32 [ %60, %56 ], [ %63, %61 ]
  %67 = load ptr, ptr %31, align 4
  tail call void @flush_dcache_page(ptr noundef %67) #5
  tail call void @kunmap_local_indexed(ptr noundef %54) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  %68 = load i32, ptr %51, align 8
  %69 = add i32 %68, -1
  store i32 %69, ptr %51, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %70 = add i32 %66, %33
  %71 = icmp eq i32 %66, %65
  br i1 %71, label %72, label %89

72:                                               ; preds = %64
  %73 = load i32, ptr %28, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %89, label %75

75:                                               ; preds = %72
  %76 = getelementptr ptr, ptr %31, i32 1
  %77 = sub i32 %32, %65
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %29

79:                                               ; preds = %75, %19
  %80 = phi i32 [ %9, %19 ], [ %70, %75 ]
  %81 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = tail call i32 %2(ptr noundef %1, ptr noundef %86, i32 noundef %82) #5, !callees !11
  %88 = add i32 %87, %80
  br label %89

89:                                               ; preds = %84, %79, %72, %64, %43, %15, %11
  %90 = phi i32 [ %13, %11 ], [ %88, %84 ], [ %80, %79 ], [ %9, %15 ], [ %45, %43 ], [ %70, %64 ], [ %70, %72 ]
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xdr_skb_read_and_csum_bits(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.xdr_skb_reader, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %2)
  %7 = getelementptr inbounds %struct.xdr_skb_reader, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %0, align 4
  %10 = tail call i32 @skb_copy_and_csum_bits(ptr noundef %9, i32 noundef %8, ptr noundef %1, i32 noundef %6) #5
  %11 = getelementptr inbounds %struct.xdr_skb_reader, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %8, 1
  %14 = icmp eq i32 %13, 0
  %15 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 24) #5
  %16 = select i1 %14, i32 %10, i32 %15
  %17 = add i32 %16, %12
  %18 = icmp ult i32 %17, %16
  %19 = zext i1 %18 to i32
  %20 = add i32 %17, %19
  store i32 %20, ptr %11, align 4
  %21 = load i32, ptr %4, align 4
  %22 = sub i32 %21, %6
  store i32 %22, ptr %4, align 4
  %23 = load i32, ptr %7, align 4
  %24 = add i32 %23, %6
  store i32 %24, ptr %7, align 4
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rx_csum_fault(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xdr_skb_read_bits(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.xdr_skb_reader, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %2)
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.xdr_skb_reader, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @skb_copy_bits(ptr noundef %7, i32 noundef %9, ptr noundef %1, i32 noundef %6) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17, !prof !16

12:                                               ; preds = %3
  %13 = load i32, ptr %4, align 4
  %14 = sub i32 %13, %6
  store i32 %14, ptr %4, align 4
  %15 = load i32, ptr %8, align 4
  %16 = add i32 %15, %6
  store i32 %16, ptr %8, align 4
  br label %17

17:                                               ; preds = %12, %3
  %18 = phi i32 [ %6, %12 ], [ 0, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xprt_sock_sendmsg(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.kvec], align 4
  %9 = icmp eq i32 %4, 0
  %10 = select i1 %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.xdr_buf, ptr %2, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %10, %3
  %14 = add i32 %13, %12
  store i32 0, ptr %5, align 4
  %15 = icmp eq ptr %0, null
  br i1 %15, label %121, label %16, !prof !10

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 32768
  store i32 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.kvec, ptr %2, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %10
  %23 = icmp ugt i32 %22, %3
  br i1 %23, label %24, label %58

24:                                               ; preds = %16
  %25 = sub i32 %22, %3
  %26 = sub i32 %14, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = and i32 %18, -32769
  store i32 %29, ptr %17, align 4
  br label %30

30:                                               ; preds = %28, %24
  br i1 %9, label %43, label %31

31:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  store i32 %4, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #5
  store ptr %7, ptr %8, align 4
  %32 = getelementptr inbounds %struct.kvec, ptr %8, i32 0, i32 1
  store i32 4, ptr %32, align 4
  %33 = getelementptr inbounds %struct.kvec, ptr %8, i32 1
  %34 = load i64, ptr %2, align 4
  store i64 %34, ptr %33, align 4
  %35 = lshr i64 %34, 32
  %36 = trunc i64 %35 to i32
  %37 = add i32 %36, 4
  %38 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %38, i32 noundef 1, ptr noundef nonnull %8, i32 noundef 2, i32 noundef %37) #5
  %39 = icmp eq i32 %3, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  call void @iov_iter_advance(ptr noundef %38, i32 noundef %3) #5
  br label %41

41:                                               ; preds = %40, %31
  %42 = call i32 @sock_sendmsg(ptr noundef nonnull %0, ptr noundef %1) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  br label %50

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %45 = load i32, ptr %20, align 4
  tail call void @iov_iter_kvec(ptr noundef %44, i32 noundef 1, ptr noundef %2, i32 noundef 1, i32 noundef %45) #5
  %46 = icmp eq i32 %3, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @iov_iter_advance(ptr noundef %44, i32 noundef %3) #5
  br label %48

48:                                               ; preds = %47, %43
  %49 = tail call i32 @sock_sendmsg(ptr noundef nonnull %0, ptr noundef %1) #5
  br label %50

50:                                               ; preds = %48, %41
  %51 = phi i32 [ %42, %41 ], [ %49, %48 ]
  %52 = xor i1 %27, true
  %53 = icmp eq i32 %51, %25
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %55, label %115

55:                                               ; preds = %50
  %56 = load i32, ptr %5, align 4
  %57 = add i32 %56, %25
  store i32 %57, ptr %5, align 4
  br label %60

58:                                               ; preds = %16
  %59 = sub i32 %3, %22
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi i32 [ %59, %58 ], [ 0, %55 ]
  %62 = phi i32 [ %14, %58 ], [ %26, %55 ]
  %63 = getelementptr inbounds %struct.xdr_buf, ptr %2, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  %65 = icmp ult i32 %61, %64
  br i1 %65, label %66, label %98

66:                                               ; preds = %60
  %67 = sub i32 %64, %61
  %68 = icmp eq i32 %62, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, ptr %17, align 4
  %71 = and i32 %70, -32769
  store i32 %71, ptr %17, align 4
  br label %72

72:                                               ; preds = %69, %66
  %73 = call i32 @xdr_alloc_bvec(ptr noundef %2, i32 noundef 3264) #5
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %90, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %77 = getelementptr inbounds %struct.xdr_buf, ptr %2, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = call i32 @xdr_buf_pagecount(ptr noundef %2) #5
  %80 = load i32, ptr %63, align 4
  %81 = getelementptr inbounds %struct.xdr_buf, ptr %2, i32 0, i32 4
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, %80
  call void @iov_iter_bvec(ptr noundef %76, i32 noundef 1, ptr noundef %78, i32 noundef %79, i32 noundef %83) #5
  %84 = load i32, ptr %81, align 4
  %85 = add i32 %84, %61
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %75
  call void @iov_iter_advance(ptr noundef %76, i32 noundef %85) #5
  br label %88

88:                                               ; preds = %87, %75
  %89 = call i32 @sock_sendmsg(ptr noundef nonnull %0, ptr noundef %1) #5
  br label %90

90:                                               ; preds = %88, %72
  %91 = phi i32 [ %89, %88 ], [ %73, %72 ]
  %92 = xor i1 %68, true
  %93 = icmp eq i32 %91, %67
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %95, label %115

95:                                               ; preds = %90
  %96 = load i32, ptr %5, align 4
  %97 = add i32 %96, %67
  store i32 %97, ptr %5, align 4
  br label %100

98:                                               ; preds = %60
  %99 = sub i32 %61, %64
  br label %100

100:                                              ; preds = %98, %95
  %101 = phi i32 [ %99, %98 ], [ 0, %95 ]
  %102 = getelementptr inbounds %struct.xdr_buf, ptr %2, i32 0, i32 1, i32 0, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = icmp ult i32 %101, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.xdr_buf, ptr %2, i32 0, i32 1
  %107 = load i32, ptr %17, align 4
  %108 = and i32 %107, -32769
  store i32 %108, ptr %17, align 4
  %109 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %110 = load i32, ptr %102, align 4
  call void @iov_iter_kvec(ptr noundef %109, i32 noundef 1, ptr noundef %106, i32 noundef 1, i32 noundef %110) #5
  %111 = icmp eq i32 %101, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %105
  call void @iov_iter_advance(ptr noundef %109, i32 noundef %101) #5
  br label %113

113:                                              ; preds = %112, %105
  %114 = call i32 @sock_sendmsg(ptr noundef nonnull %0, ptr noundef %1) #5
  br label %115

115:                                              ; preds = %113, %90, %50
  %116 = phi i32 [ %114, %113 ], [ %51, %50 ], [ %91, %90 ]
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, ptr %5, align 4
  %120 = add i32 %119, %116
  store i32 %120, ptr %5, align 4
  br label %121

121:                                              ; preds = %118, %115, %100, %6
  %122 = phi i32 [ -88, %6 ], [ 0, %100 ], [ 0, %118 ], [ %116, %115 ]
  ret i32 %122
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_and_csum_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_sendmsg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_alloc_bvec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_buf_pagecount(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

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
!9 = !{i64 5576021}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{ptr @xdr_skb_read_and_csum_bits, ptr @xdr_skb_read_bits}
!12 = !{i64 2152964735}
!13 = !{i64 2151638204}
!14 = !{i64 2151638411}
!15 = !{i64 2152967360}
!16 = !{!"branch_weights", i32 2000, i32 1}
