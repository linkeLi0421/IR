; ModuleID = '/llk/IR/net/sunrpc/backchannel_rqst.c_pt.bc'
source_filename = "../net/sunrpc/backchannel_rqst.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_setup_backchannel:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_setup_backchannel\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_setup_backchannel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xprt_destroy_backchannel:\09\09\09\09\09"
module asm "\09.asciz \09\22xprt_destroy_backchannel\22\09\09\09\09\09"
module asm "__kstrtabns_xprt_destroy_backchannel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.122, ptr, ptr, [6 x ptr], %struct.callback_head, ptr, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon.118 }
%union.anon.118 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.anon.122 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.callback_head = type { ptr, ptr }
%struct.rpc_xprt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.117, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.117 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.svc_serv = type { ptr, ptr, %struct.spinlock, %struct.kref, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, %struct.timer_list, ptr, i32, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@__kstrtab_xprt_setup_backchannel = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_setup_backchannel = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_setup_backchannel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_setup_backchannel to i32), ptr @__kstrtab_xprt_setup_backchannel, ptr @__kstrtabns_xprt_setup_backchannel }, section "___ksymtab_gpl+xprt_setup_backchannel", align 4
@.str = private unnamed_addr constant [32 x i8] c"\013Failed to create bc rpc_rqst\0A\00", align 1
@__kstrtab_xprt_destroy_backchannel = external dso_local constant [0 x i8], align 1
@__kstrtabns_xprt_destroy_backchannel = external dso_local constant [0 x i8], align 1
@__ksymtab_xprt_destroy_backchannel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xprt_destroy_backchannel to i32), ptr @__kstrtab_xprt_destroy_backchannel, ptr @__kstrtabns_xprt_destroy_backchannel }, section "___ksymtab_gpl+xprt_destroy_backchannel", align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"\013Failed to create bc receive xbuf\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\013Failed to create bc snd xbuf\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@xprt_free_allocation.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"net/sunrpc/backchannel_rqst.c\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_xprt_destroy_backchannel, ptr @__ksymtab_xprt_setup_backchannel], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @xprt_bc_max_slots(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i32 64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xprt_setup_backchannel(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %4, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 %6(ptr noundef %0, i32 noundef %1) #8
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xprt_setup_bc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %4 = tail call i32 @llvm.umin.i32(i32 %1, i32 64)
  store volatile ptr %3, ptr %3, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %15, %2
  %8 = phi i32 [ %20, %15 ], [ 0, %2 ]
  %9 = call fastcc ptr @xprt_alloc_bc_req(ptr noundef %0)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  %13 = load volatile ptr, ptr %3, align 8
  %14 = icmp eq ptr %13, %3
  br i1 %14, label %67, label %43

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.rpc_rqst, ptr %9, i32 0, i32 33
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store ptr %17, ptr %16, align 4
  %19 = getelementptr inbounds %struct.rpc_rqst, ptr %9, i32 0, i32 33, i32 1
  store ptr %3, ptr %19, align 4
  store volatile ptr %16, ptr %3, align 8
  %20 = add nuw nsw i32 %8, 1
  %21 = icmp eq i32 %20, %4
  br i1 %21, label %22, label %7

22:                                               ; preds = %15, %2
  %23 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 45
  call void @_raw_spin_lock(ptr noundef %23) #8
  %24 = load volatile ptr, ptr %3, align 8
  %25 = icmp eq ptr %24, %3
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 46
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %27, ptr %30, align 4
  store ptr %24, ptr %27, align 4
  store ptr %28, ptr %29, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %29, ptr %31, align 4
  br label %32

32:                                               ; preds = %26, %22
  %33 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 43
  %34 = load i32, ptr %33, align 8
  %35 = add i32 %34, %4
  store i32 %35, ptr %33, align 8
  %36 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 42
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, %4
  store i32 %38, ptr %36, align 4
  %39 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 44
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #8, !srcloc !8
  %40 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 %4, ptr elementtype(i32) %39) #8, !srcloc !9
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %41 = load i16, ptr %23, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %23, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  br label %67

43:                                               ; preds = %58, %11
  %44 = phi ptr [ %65, %58 ], [ %13, %11 ]
  %45 = getelementptr i8, ptr %44, i32 -280
  %46 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %44, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  store ptr %47, ptr %49, align 4
  store volatile ptr %48, ptr %47, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %44, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %46, align 4
  %50 = getelementptr i8, ptr %44, i32 -4
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %51, 2
  %53 = icmp ne i32 %52, 0
  %54 = load i1, ptr @xprt_free_allocation.__already_done, align 1
  %55 = xor i1 %54, true
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %57, label %58, !prof !14

57:                                               ; preds = %43
  store i1 true, ptr @xprt_free_allocation.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 59, i32 noundef 9, ptr noundef null) #8
  br label %58

58:                                               ; preds = %57, %43
  %59 = getelementptr i8, ptr %44, i32 -232
  %60 = load ptr, ptr %59, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @free_pages(i32 noundef %61, i32 noundef 0) #8
  %62 = getelementptr i8, ptr %44, i32 -276
  %63 = load ptr, ptr %62, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @free_pages(i32 noundef %64, i32 noundef 0) #8
  call void @kfree(ptr noundef %45) #8
  %65 = load volatile ptr, ptr %3, align 8
  %66 = icmp eq ptr %65, %3
  br i1 %66, label %67, label %43

67:                                               ; preds = %58, %32, %11
  %68 = phi i32 [ 0, %32 ], [ -12, %11 ], [ -12, %58 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i32 %68
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @xprt_alloc_bc_req(ptr noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 288) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %49, label %5

5:                                                ; preds = %1
  store ptr %0, ptr %3, align 8
  %6 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 31
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 31, i32 1
  store ptr %6, ptr %7, align 8
  %8 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 2
  %9 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %5
  %12 = tail call ptr @page_address(ptr noundef nonnull %9) #8
  store ptr %12, ptr %8, align 8
  %13 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 1
  store i32 4096, ptr %13, align 4
  %14 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 2, i32 1, i32 0, i32 1
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 2, i32 3
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 2, i32 5
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 2, i32 6
  store i32 0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 2, i32 8
  %19 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 2, i32 7
  store i32 4096, ptr %19, align 4
  store i32 4096, ptr %18, align 8
  %20 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 1
  %24 = tail call ptr @page_address(ptr noundef nonnull %20) #8
  store ptr %24, ptr %23, align 4
  %25 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 1
  store i32 4096, ptr %25, align 8
  %26 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 1, i32 1, i32 0, i32 1
  store i32 0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 1, i32 3
  store ptr null, ptr %27, align 8
  %28 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 1, i32 5
  store i32 0, ptr %28, align 8
  %29 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 1, i32 6
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 1, i32 8
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 1, i32 7
  store i32 4096, ptr %31, align 8
  br label %49

32:                                               ; preds = %11, %5
  %33 = phi ptr [ @.str.1, %5 ], [ @.str.2, %11 ]
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %33) #9
  %35 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 32
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 2
  %38 = icmp ne i32 %37, 0
  %39 = load i1, ptr @xprt_free_allocation.__already_done, align 1
  %40 = xor i1 %39, true
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %43, !prof !14

42:                                               ; preds = %32
  store i1 true, ptr @xprt_free_allocation.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 59, i32 noundef 9, ptr noundef null) #8
  br label %43

43:                                               ; preds = %42, %32
  %44 = load ptr, ptr %8, align 8
  %45 = ptrtoint ptr %44 to i32
  tail call void @free_pages(i32 noundef %45, i32 noundef 0) #8
  %46 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = ptrtoint ptr %47 to i32
  tail call void @free_pages(i32 noundef %48, i32 noundef 0) #8
  tail call void @kfree(ptr noundef nonnull %3) #8
  br label %49

49:                                               ; preds = %43, %22, %1
  %50 = phi ptr [ null, %43 ], [ null, %1 ], [ %3, %22 ]
  ret ptr %50
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_destroy_backchannel(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %4, i32 0, i32 26
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void %6(ptr noundef %0, i32 noundef %1) #8
  br label %9

9:                                                ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_destroy_bc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %44, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 45
  tail call void @_raw_spin_lock_bh(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 42
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.usub.sat.i32(i32 %7, i32 %1)
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 46
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 43
  %12 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 44
  br label %13

13:                                               ; preds = %31, %4
  %14 = phi ptr [ %10, %4 ], [ %16, %31 ]
  %15 = phi i32 [ %1, %4 ], [ %41, %31 ]
  %16 = load ptr, ptr %14, align 8
  %17 = icmp eq ptr %14, %9
  br i1 %17, label %43, label %18

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %14, i32 -280
  %20 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  store volatile ptr %16, ptr %21, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  %23 = getelementptr i8, ptr %14, i32 -4
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 2
  %26 = icmp ne i32 %25, 0
  %27 = load i1, ptr @xprt_free_allocation.__already_done, align 1
  %28 = xor i1 %27, true
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %31, !prof !14

30:                                               ; preds = %18
  store i1 true, ptr @xprt_free_allocation.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 59, i32 noundef 9, ptr noundef null) #8
  br label %31

31:                                               ; preds = %30, %18
  %32 = getelementptr i8, ptr %14, i32 -232
  %33 = load ptr, ptr %32, align 4
  %34 = ptrtoint ptr %33 to i32
  tail call void @free_pages(i32 noundef %34, i32 noundef 0) #8
  %35 = getelementptr i8, ptr %14, i32 -276
  %36 = load ptr, ptr %35, align 4
  %37 = ptrtoint ptr %36 to i32
  tail call void @free_pages(i32 noundef %37, i32 noundef 0) #8
  tail call void @kfree(ptr noundef %19) #8
  %38 = load i32, ptr %11, align 8
  %39 = add i32 %38, -1
  store i32 %39, ptr %11, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #8, !srcloc !8
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #8, !srcloc !15
  %41 = add i32 %15, -1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %13

43:                                               ; preds = %31, %13
  tail call void @_raw_spin_unlock_bh(ptr noundef %5) #8
  br label %44

44:                                               ; preds = %43, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_free_bc_request(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.rpc_xprt, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %4, i32 0, i32 25
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_free_bc_rqst(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.rpc_xprt, ptr %2, i32 0, i32 25
  %4 = load i32, ptr %3, align 8
  %5 = add i32 %4, -1
  %6 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 26
  store i32 %5, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %7 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 32
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %7) #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  %8 = getelementptr inbounds %struct.rpc_xprt, ptr %2, i32 0, i32 45
  tail call void @_raw_spin_lock_bh(ptr noundef %8) #8
  %9 = getelementptr inbounds %struct.rpc_xprt, ptr %2, i32 0, i32 43
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.rpc_xprt, ptr %2, i32 0, i32 42
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 33
  %16 = getelementptr inbounds %struct.rpc_xprt, ptr %2, i32 0, i32 46
  %17 = getelementptr inbounds %struct.rpc_xprt, ptr %2, i32 0, i32 46, i32 1
  %18 = load ptr, ptr %17, align 4
  store ptr %15, ptr %17, align 4
  store ptr %16, ptr %15, align 4
  %19 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 33, i32 1
  store ptr %18, ptr %19, align 4
  store volatile ptr %15, ptr %18, align 4
  %20 = load i32, ptr %9, align 8
  %21 = add i32 %20, 1
  store i32 %21, ptr %9, align 8
  %22 = getelementptr inbounds %struct.rpc_xprt, ptr %2, i32 0, i32 44
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #8, !srcloc !8
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #8, !srcloc !9
  tail call void @_raw_spin_unlock_bh(ptr noundef %8) #8
  br label %41

24:                                               ; preds = %1
  tail call void @_raw_spin_unlock_bh(ptr noundef %8) #8
  %25 = icmp eq ptr %0, null
  br i1 %25, label %41, label %26

26:                                               ; preds = %24
  %27 = load volatile i32, ptr %7, align 4
  %28 = and i32 %27, 2
  %29 = icmp ne i32 %28, 0
  %30 = load i1, ptr @xprt_free_allocation.__already_done, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %34, !prof !14

33:                                               ; preds = %26
  store i1 true, ptr @xprt_free_allocation.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 59, i32 noundef 9, ptr noundef null) #8
  br label %34

34:                                               ; preds = %33, %26
  %35 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = ptrtoint ptr %36 to i32
  tail call void @free_pages(i32 noundef %37, i32 noundef 0) #8
  %38 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = ptrtoint ptr %39 to i32
  tail call void @free_pages(i32 noundef %40, i32 noundef 0) #8
  tail call void @kfree(ptr noundef nonnull %0) #8
  br label %41

41:                                               ; preds = %34, %24, %14
  tail call void @xprt_put(ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xprt_lookup_bc_request(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 45
  %4 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 46
  %5 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 25
  %6 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 44
  %7 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 46, i32 1
  %8 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 43
  br label %9

9:                                                ; preds = %79, %2
  %10 = phi ptr [ null, %2 ], [ %80, %79 ]
  tail call void @_raw_spin_lock(ptr noundef %3) #8
  %11 = load ptr, ptr %4, align 4
  %12 = icmp eq ptr %11, %4
  br i1 %12, label %27, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %5, align 8
  br label %15

15:                                               ; preds = %24, %13
  %16 = phi ptr [ %11, %13 ], [ %25, %24 ]
  %17 = getelementptr i8, ptr %16, i32 -36
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %14
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %16, i32 -180
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %52, label %24

24:                                               ; preds = %20, %15
  %25 = load ptr, ptr %16, align 4
  %26 = icmp eq ptr %25, %4
  br i1 %26, label %27, label %15

27:                                               ; preds = %24, %9
  %28 = load volatile ptr, ptr %4, align 4
  %29 = icmp eq ptr %28, %4
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = icmp eq ptr %10, null
  br i1 %31, label %54, label %32

32:                                               ; preds = %30
  %33 = load volatile i32, ptr %6, align 4
  %34 = icmp ugt i32 %33, 63
  br i1 %34, label %54, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.rpc_rqst, ptr %10, i32 0, i32 33
  %37 = load ptr, ptr %7, align 4
  store ptr %36, ptr %7, align 4
  store ptr %4, ptr %36, align 4
  %38 = getelementptr inbounds %struct.rpc_rqst, ptr %10, i32 0, i32 33, i32 1
  store ptr %37, ptr %38, align 4
  store volatile ptr %36, ptr %37, align 4
  %39 = load i32, ptr %8, align 8
  %40 = add i32 %39, 1
  store i32 %40, ptr %8, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #8, !srcloc !8
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #8, !srcloc !9
  %42 = load ptr, ptr %4, align 4
  br label %43

43:                                               ; preds = %35, %27
  %44 = phi ptr [ %42, %35 ], [ %28, %27 ]
  %45 = getelementptr i8, ptr %44, i32 -280
  %46 = getelementptr i8, ptr %44, i32 -108
  store i32 0, ptr %46, align 4
  %47 = getelementptr i8, ptr %44, i32 -104
  %48 = getelementptr i8, ptr %44, i32 -232
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(44) %47, ptr noundef align 8 dereferenceable(44) %48, i32 44, i1 false) #8
  %49 = getelementptr i8, ptr %44, i32 -180
  store i32 %1, ptr %49, align 4
  %50 = load i32, ptr %5, align 8
  %51 = getelementptr i8, ptr %44, i32 -36
  store i32 %50, ptr %51, align 4
  br label %54

52:                                               ; preds = %20
  %53 = getelementptr i8, ptr %16, i32 -280
  br label %54

54:                                               ; preds = %52, %43, %32, %30
  %55 = phi ptr [ null, %32 ], [ %45, %43 ], [ null, %30 ], [ %53, %52 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %56 = load i16, ptr %3, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %58 = icmp eq ptr %10, null
  br i1 %58, label %77, label %59

59:                                               ; preds = %54
  %60 = icmp eq ptr %55, %10
  br i1 %60, label %82, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.rpc_rqst, ptr %10, i32 0, i32 32
  %63 = load volatile i32, ptr %62, align 4
  %64 = and i32 %63, 2
  %65 = icmp ne i32 %64, 0
  %66 = load i1, ptr @xprt_free_allocation.__already_done, align 1
  %67 = xor i1 %66, true
  %68 = select i1 %65, i1 %67, i1 false
  br i1 %68, label %69, label %70, !prof !14

69:                                               ; preds = %61
  store i1 true, ptr @xprt_free_allocation.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 59, i32 noundef 9, ptr noundef null) #8
  br label %70

70:                                               ; preds = %69, %61
  %71 = getelementptr inbounds %struct.rpc_rqst, ptr %10, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = ptrtoint ptr %72 to i32
  tail call void @free_pages(i32 noundef %73, i32 noundef 0) #8
  %74 = getelementptr inbounds %struct.rpc_rqst, ptr %10, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = ptrtoint ptr %75 to i32
  tail call void @free_pages(i32 noundef %76, i32 noundef 0) #8
  tail call void @kfree(ptr noundef nonnull %10) #8
  br label %82

77:                                               ; preds = %54
  %78 = icmp eq ptr %55, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = tail call fastcc ptr @xprt_alloc_bc_req(ptr noundef %0)
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %9

82:                                               ; preds = %79, %77, %70, %59
  %83 = phi ptr [ %10, %59 ], [ %55, %70 ], [ %55, %77 ], [ null, %79 ]
  ret ptr %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_complete_bc_request(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 41
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 45
  tail call void @_raw_spin_lock(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 33
  %8 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 33, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  %12 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 43
  %13 = load i32, ptr %12, align 8
  %14 = add i32 %13, -1
  store i32 %14, ptr %12, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %15 = load i16, ptr %6, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %17 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 20, i32 8
  store i32 %1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 32
  tail call void @_set_bit(i32 noundef 1, ptr noundef %18) #8
  %19 = tail call ptr @xprt_get(ptr noundef %3) #8
  %20 = getelementptr inbounds %struct.svc_serv, ptr %5, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %20) #8
  %21 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 31
  %22 = getelementptr inbounds %struct.svc_serv, ptr %5, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %21, ptr %24, align 4
  store ptr %23, ptr %21, align 4
  %25 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 31, i32 1
  store ptr %22, ptr %25, align 4
  store volatile ptr %21, ptr %22, align 4
  %26 = getelementptr inbounds %struct.svc_serv, ptr %5, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %26, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %27 = load i16, ptr %20, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 576245, i64 2148066216, i64 2148066242, i64 2148066289, i64 2148066311, i64 2148066339, i64 2148066359}
!9 = !{i64 2148078428, i64 2148078454, i64 2148078483, i64 2148078517, i64 2148078548, i64 2148078571}
!10 = !{i64 2149203595}
!11 = !{i64 2149199419}
!12 = !{i64 2149199494, i64 2149199521, i64 2149199568, i64 2149199590, i64 2149199618, i64 2149199638}
!13 = !{i64 2149226598}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2148080785, i64 2148080811, i64 2148080840, i64 2148080874, i64 2148080905, i64 2148080928}
!16 = !{i64 2155654295}
!17 = !{i64 2155654573}
