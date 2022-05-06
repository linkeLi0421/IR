; ModuleID = '/llk/IR/net/sunrpc/xprtmultipath.c_pt.bc'
source_filename = "../net/sunrpc/xprtmultipath.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rpc_xprt_iter_ops = type { ptr, ptr, ptr }
%struct.rpc_xprt_switch = type { %struct.spinlock, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %struct.callback_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.135, ptr, ptr, [6 x ptr], %struct.callback_head, ptr, ptr, i8 }
%struct.__kernel_sockaddr_storage = type { %union.anon.133 }
%union.anon.133 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.anon.135 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.96 }
%union.anon.96 = type { [4 x i32] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.rpc_xprt_iter = type { ptr, ptr, ptr }

@rpc_xprtswitch_ids = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@rpc_xprt_iter_singular = internal constant %struct.rpc_xprt_iter_ops { ptr @xprt_iter_no_rewind, ptr @xprt_iter_first_entry, ptr @xprt_iter_first_entry }, align 4
@rpc_xprt_iter_roundrobin = internal constant %struct.rpc_xprt_iter_ops { ptr @xprt_iter_default_rewind, ptr @xprt_iter_current_entry, ptr @xprt_iter_next_entry_roundrobin }, align 4
@.str = private unnamed_addr constant [41 x i8] c"\016RPC:   addr %s already in xprt switch\0A\00", align 1
@rpc_xprt_iter_listall = internal constant %struct.rpc_xprt_iter_ops { ptr @xprt_iter_default_rewind, ptr @xprt_iter_current_entry, ptr @xprt_iter_next_entry_all }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_xprt_switch_add_xprt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %2
  tail call void @_raw_spin_lock(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 49
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %6, %8
  %10 = icmp eq ptr %6, null
  %11 = or i1 %10, %9
  br i1 %11, label %12, label %31

12:                                               ; preds = %4
  %13 = tail call ptr @xprt_get(ptr noundef nonnull %1) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15, !prof !8

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 22
  %17 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %0, i32 0, i32 7
  %18 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %0, i32 0, i32 7, i32 1
  %19 = load ptr, ptr %18, align 4
  store ptr %17, ptr %16, align 4
  %20 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 22, i32 1
  store ptr %19, ptr %20, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  store volatile ptr %16, ptr %19, align 4
  store ptr %16, ptr %18, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !10
  %21 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %0, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load ptr, ptr %7, align 8
  store ptr %25, ptr %5, align 4
  br label %26

26:                                               ; preds = %24, %15
  %27 = add i32 %22, 1
  store i32 %27, ptr %21, align 4
  %28 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %0, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4
  br label %31

31:                                               ; preds = %26, %12, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %32 = load i16, ptr %0, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  tail call void @rpc_sysfs_xprt_setup(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 3264) #8
  br label %34

34:                                               ; preds = %31, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_sysfs_xprt_setup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_xprt_switch_remove_xprt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef %0) #8
  %3 = icmp eq ptr %1, null
  br i1 %3, label %26, label %4, !prof !8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 18
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 128
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  store i32 %12, ptr %10, align 4
  br label %13

13:                                               ; preds = %9, %4
  %14 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -1
  store i32 %16, ptr %14, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %0, i32 0, i32 8
  store ptr null, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %13
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !15
  %21 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 22
  %22 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 22, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %21, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  br label %26

26:                                               ; preds = %20, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %27 = load i16, ptr %0, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  tail call void @xprt_put(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_multipath_cleanup_ids() local_unnamed_addr #0 {
  tail call void @ida_destroy(ptr noundef nonnull @rpc_xprtswitch_ids) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xprt_switch_alloc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !16

5:                                                ; preds = %2
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 1, i32 2
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ 0, %2 ], [ %8, %5 ]
  %11 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %10, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef %1, i32 noundef 56) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %46, label %15

15:                                               ; preds = %9
  store i32 0, ptr %13, align 8
  %16 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %13, i32 0, i32 1
  store volatile i32 1, ptr %16, align 4
  %17 = tail call i32 @ida_alloc_range(ptr noundef nonnull @rpc_xprtswitch_ids, i32 noundef 0, i32 noundef -1, i32 noundef %1) #8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %13, i32 0, i32 2
  store i32 %17, ptr %20, align 8
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %13, i32 0, i32 4
  store i32 0, ptr %22, align 8
  %23 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %13, i32 0, i32 3
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %13, i32 0, i32 6
  store volatile i32 0, ptr %24, align 8
  %25 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %13, i32 0, i32 8
  store ptr null, ptr %25, align 4
  %26 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %13, i32 0, i32 7
  store volatile ptr %26, ptr %26, align 4
  %27 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %13, i32 0, i32 7, i32 1
  store ptr %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %13, i32 0, i32 9
  store ptr @rpc_xprt_iter_singular, ptr %28, align 8
  tail call void @rpc_sysfs_xprt_switch_setup(ptr noundef nonnull %13, ptr noundef %0, i32 noundef %1) #8
  %29 = tail call ptr @xprt_get(ptr noundef %0) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %44, label %31, !prof !8

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 22
  %33 = load ptr, ptr %27, align 8
  store ptr %26, ptr %32, align 4
  %34 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 22, i32 1
  store ptr %33, ptr %34, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  store volatile ptr %32, ptr %33, align 4
  store ptr %32, ptr %27, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !10
  %35 = load i32, ptr %23, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 49
  %39 = load ptr, ptr %38, align 8
  store ptr %39, ptr %25, align 4
  br label %40

40:                                               ; preds = %37, %31
  %41 = add i32 %35, 1
  store i32 %41, ptr %23, align 4
  %42 = load i32, ptr %22, align 8
  %43 = add i32 %42, 1
  store i32 %43, ptr %22, align 8
  br label %44

44:                                               ; preds = %40, %21
  %45 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %13, i32 0, i32 5
  store i32 1, ptr %45, align 4
  tail call void @rpc_sysfs_xprt_setup(ptr noundef nonnull %13, ptr noundef %0, i32 noundef %1) #8
  br label %46

46:                                               ; preds = %44, %9
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_sysfs_xprt_switch_setup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xprt_switch_get(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %0, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %17, %3
  %8 = phi i32 [ %15, %17 ], [ %5, %3 ]
  %9 = add i32 %8, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #8, !srcloc !17
  br label %10

10:                                               ; preds = %10, %7
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 %8, i32 %9, ptr elementtype(i32) %4) #8, !srcloc !18
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %10

14:                                               ; preds = %10
  %15 = extractvalue { i32, i32 } %11, 1
  %16 = icmp eq i32 %15, %8
  br i1 %16, label %19, label %17, !prof !16

17:                                               ; preds = %14
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %19, label %7

19:                                               ; preds = %17, %14, %3
  %20 = phi i32 [ 0, %3 ], [ %8, %14 ], [ 0, %17 ]
  %21 = add i32 %20, 1
  %22 = or i32 %21, %20
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %25, label %24, !prof !16

24:                                               ; preds = %19
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 0) #8
  br label %25

25:                                               ; preds = %24, %19
  %26 = icmp eq i32 %20, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %25, %1
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi ptr [ null, %27 ], [ %0, %25 ]
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_switch_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %52, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #8, !srcloc !17
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #8, !srcloc !20
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %52, label %10, !prof !16

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #8
  br label %52

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  tail call void @_raw_spin_lock(ptr noundef nonnull %0) #8
  %12 = getelementptr %struct.rpc_xprt_switch, ptr %0, i32 0, i32 7
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %46, label %15

15:                                               ; preds = %11
  %16 = getelementptr %struct.rpc_xprt_switch, ptr %0, i32 0, i32 4
  %17 = getelementptr %struct.rpc_xprt_switch, ptr %0, i32 0, i32 3
  %18 = getelementptr %struct.rpc_xprt_switch, ptr %0, i32 0, i32 8
  br label %19

19:                                               ; preds = %41, %15
  %20 = phi ptr [ %13, %15 ], [ %44, %41 ]
  %21 = getelementptr i8, ptr %20, i32 -616
  %22 = icmp eq ptr %21, null
  br i1 %22, label %41, label %23, !prof !8

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %20, i32 -16
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 128
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, ptr %16, align 4
  %30 = add i32 %29, -1
  store i32 %30, ptr %16, align 4
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, ptr %17, align 4
  %33 = add i32 %32, -1
  store i32 %33, ptr %17, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store ptr null, ptr %18, align 4
  br label %36

36:                                               ; preds = %35, %31
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !15
  %37 = getelementptr i8, ptr %20, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %20, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %38, ptr %40, align 4
  store volatile ptr %39, ptr %38, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %37, align 4
  br label %41

41:                                               ; preds = %36, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %42 = load i16, ptr %0, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  tail call void @xprt_put(ptr noundef %21) #8
  tail call void @_raw_spin_lock(ptr noundef nonnull %0) #8
  %44 = load volatile ptr, ptr %12, align 4
  %45 = icmp eq ptr %44, %12
  br i1 %45, label %46, label %19

46:                                               ; preds = %41, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %47 = load i16, ptr %0, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  tail call void @rpc_sysfs_xprt_switch_destroy(ptr noundef nonnull %0) #8
  %49 = getelementptr %struct.rpc_xprt_switch, ptr %0, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  tail call void @ida_free(ptr noundef nonnull @rpc_xprtswitch_ids, i32 noundef %50) #8
  %51 = getelementptr %struct.rpc_xprt_switch, ptr %0, i32 0, i32 11
  tail call void @kvfree_call_rcu(ptr noundef %51, ptr noundef nonnull inttoptr (i32 48 to ptr)) #8
  br label %52

52:                                               ; preds = %46, %10, %8, %1
  ret void
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_xprt_switch_set_roundrobin(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %0, i32 0, i32 9
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @rpc_xprt_iter_roundrobin
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store volatile ptr @rpc_xprt_iter_roundrobin, ptr %2, align 4
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @rpc_xprt_switch_has_addr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %79, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %0, i32 0, i32 7
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %79, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 3
  %12 = getelementptr %struct.sockaddr_in6, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 1
  %13 = getelementptr %struct.sockaddr_in6, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 2
  %14 = getelementptr %struct.sockaddr_in6, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 3
  %15 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 4
  %16 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 2
  %17 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 1
  br label %18

18:                                               ; preds = %72, %10
  %19 = phi ptr [ %8, %10 ], [ %73, %72 ]
  %20 = getelementptr i8, ptr %19, i32 -600
  %21 = load i16, ptr %1, align 2
  %22 = load i16, ptr %20, align 2
  %23 = icmp eq i16 %21, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %18
  switch i16 %21, label %72 [
    i16 2, label %50
    i16 10, label %25
  ]

25:                                               ; preds = %24
  %26 = getelementptr i8, ptr %19, i32 -592
  %27 = load i32, ptr %11, align 4
  %28 = load i32, ptr %26, align 4
  %29 = xor i32 %28, %27
  %30 = load i32, ptr %12, align 4
  %31 = getelementptr i8, ptr %19, i32 -588
  %32 = load i32, ptr %31, align 4
  %33 = xor i32 %32, %30
  %34 = or i32 %33, %29
  %35 = load i32, ptr %13, align 4
  %36 = getelementptr i8, ptr %19, i32 -584
  %37 = load i32, ptr %36, align 4
  %38 = xor i32 %37, %35
  %39 = or i32 %34, %38
  %40 = load i32, ptr %14, align 4
  %41 = getelementptr i8, ptr %19, i32 -580
  %42 = load i32, ptr %41, align 4
  %43 = xor i32 %42, %40
  %44 = or i32 %39, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %25
  %47 = tail call i32 @__ipv6_addr_type(ptr noundef %11) #8
  %48 = and i32 %47, 32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %46, %24
  %51 = phi i32 [ -596, %24 ], [ -576, %46 ]
  %52 = phi ptr [ %16, %24 ], [ %15, %46 ]
  %53 = getelementptr i8, ptr %19, i32 %51
  %54 = load i32, ptr %52, align 4
  %55 = load i32, ptr %53, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %50, %46
  %58 = load i16, ptr %1, align 2
  switch i16 %58, label %62 [
    i16 2, label %59
    i16 10, label %59
  ]

59:                                               ; preds = %57, %57
  %60 = load i16, ptr %17, align 2
  %61 = tail call i16 @llvm.bswap.i16(i16 %60) #8
  br label %62

62:                                               ; preds = %59, %57
  %63 = phi i16 [ 0, %57 ], [ %61, %59 ]
  %64 = load i16, ptr %20, align 2
  switch i16 %64, label %69 [
    i16 2, label %65
    i16 10, label %65
  ]

65:                                               ; preds = %62, %62
  %66 = getelementptr i8, ptr %19, i32 -598
  %67 = load i16, ptr %66, align 2
  %68 = tail call i16 @llvm.bswap.i16(i16 %67) #8
  br label %69

69:                                               ; preds = %65, %62
  %70 = phi i16 [ 0, %62 ], [ %68, %65 ]
  %71 = icmp eq i16 %63, %70
  br i1 %71, label %75, label %72

72:                                               ; preds = %69, %50, %25, %24, %18
  %73 = load volatile ptr, ptr %19, align 4
  %74 = icmp eq ptr %73, %7
  br i1 %74, label %79, label %18

75:                                               ; preds = %69
  %76 = getelementptr i8, ptr %19, i32 216
  %77 = load ptr, ptr %76, align 8
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %77) #10
  br label %79

79:                                               ; preds = %75, %72, %6, %2
  %80 = phi i1 [ true, %75 ], [ false, %2 ], [ false, %6 ], [ false, %72 ]
  ret i1 %80
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_iter_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %1, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %18, %4
  %9 = phi i32 [ %16, %18 ], [ %6, %4 ]
  %10 = add i32 %9, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #8, !srcloc !17
  br label %11

11:                                               ; preds = %11, %8
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 %9, i32 %10, ptr elementtype(i32) %5) #8, !srcloc !18
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11
  %16 = extractvalue { i32, i32 } %12, 1
  %17 = icmp eq i32 %16, %9
  br i1 %17, label %20, label %18, !prof !16

18:                                               ; preds = %15
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %20, label %8

20:                                               ; preds = %18, %15, %4
  %21 = phi i32 [ 0, %4 ], [ %9, %15 ], [ 0, %18 ]
  %22 = add i32 %21, 1
  %23 = or i32 %22, %21
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %26, label %25, !prof !16

25:                                               ; preds = %20
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef 0) #8
  br label %26

26:                                               ; preds = %25, %20
  %27 = icmp eq i32 %21, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %26, %2
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi ptr [ null, %28 ], [ %1, %26 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  store volatile ptr %30, ptr %0, align 4
  %31 = getelementptr inbounds %struct.rpc_xprt_iter, ptr %0, i32 0, i32 1
  store ptr null, ptr %31, align 4
  %32 = getelementptr inbounds %struct.rpc_xprt_iter, ptr %0, i32 0, i32 2
  store ptr null, ptr %32, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_iter_init_listall(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %1, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %18, %4
  %9 = phi i32 [ %16, %18 ], [ %6, %4 ]
  %10 = add i32 %9, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #8, !srcloc !17
  br label %11

11:                                               ; preds = %11, %8
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 %9, i32 %10, ptr elementtype(i32) %5) #8, !srcloc !18
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11
  %16 = extractvalue { i32, i32 } %12, 1
  %17 = icmp eq i32 %16, %9
  br i1 %17, label %20, label %18, !prof !16

18:                                               ; preds = %15
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %20, label %8

20:                                               ; preds = %18, %15, %4
  %21 = phi i32 [ 0, %4 ], [ %9, %15 ], [ 0, %18 ]
  %22 = add i32 %21, 1
  %23 = or i32 %22, %21
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %26, label %25, !prof !16

25:                                               ; preds = %20
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef 0) #8
  br label %26

26:                                               ; preds = %25, %20
  %27 = icmp eq i32 %21, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %26, %2
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi ptr [ null, %28 ], [ %1, %26 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  store volatile ptr %30, ptr %0, align 4
  %31 = getelementptr inbounds %struct.rpc_xprt_iter, ptr %0, i32 0, i32 1
  store ptr null, ptr %31, align 4
  %32 = getelementptr inbounds %struct.rpc_xprt_iter, ptr %0, i32 0, i32 2
  store ptr @rpc_xprt_iter_listall, ptr %32, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xprt_iter_xchg_switch(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !23
  %3 = ptrtoint ptr %1 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !17
  %4 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %3, ptr %0) #8, !srcloc !24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  %5 = icmp eq ptr %1, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  %7 = getelementptr inbounds %struct.rpc_xprt_iter, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load volatile ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %11, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi ptr [ %13, %10 ], [ %8, %6 ]
  %16 = load ptr, ptr %15, align 4
  tail call void %16(ptr noundef %0) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !27
  br label %17

17:                                               ; preds = %14, %2
  %18 = extractvalue { i32, i32 } %4, 0
  %19 = inttoptr i32 %18 to ptr
  ret ptr %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xprt_iter_destroy(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !17
  %2 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %0) #8, !srcloc !24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = inttoptr i32 %3 to ptr
  tail call void @xprt_switch_put(ptr noundef %4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xprt_iter_xprt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rpc_xprt_iter, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load volatile ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.rpc_xprt_iter_ops, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr %12(ptr noundef %0) #8
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xprt_iter_get_xprt(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  %2 = getelementptr inbounds %struct.rpc_xprt_iter, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load volatile ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.rpc_xprt_iter_ops, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %16, %9
  %14 = tail call ptr %12(ptr noundef %0) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @xprt_get(ptr noundef nonnull %14) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %13, label %19

19:                                               ; preds = %16, %13
  %20 = phi ptr [ null, %13 ], [ %17, %16 ]
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !27
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xprt_iter_get_next(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  %2 = getelementptr inbounds %struct.rpc_xprt_iter, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load volatile ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.rpc_xprt_iter_ops, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %16, %9
  %14 = tail call ptr %12(ptr noundef %0) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @xprt_get(ptr noundef nonnull %14) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %13, label %19

19:                                               ; preds = %16, %13
  %20 = phi ptr [ null, %13 ], [ %17, %16 ]
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !27
  ret ptr %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_sysfs_xprt_switch_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @xprt_iter_no_rewind(ptr nocapture noundef %0) #6 {
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @xprt_iter_first_entry(ptr noundef %0) #7 {
  %2 = load volatile ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %2, i32 0, i32 7
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %23, label %8

8:                                                ; preds = %18, %4
  %9 = phi ptr [ %19, %18 ], [ %6, %4 ]
  %10 = getelementptr i8, ptr %9, i32 -616
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %9, i32 -16
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 128
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %8
  %19 = load volatile ptr, ptr %9, align 4
  %20 = icmp eq ptr %19, %5
  br i1 %20, label %23, label %8

21:                                               ; preds = %13
  %22 = getelementptr i8, ptr %9, i32 -616
  br label %23

23:                                               ; preds = %21, %18, %4, %1
  %24 = phi ptr [ null, %1 ], [ null, %4 ], [ %22, %21 ], [ null, %18 ]
  ret ptr %24
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xprt_iter_default_rewind(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.rpc_xprt_iter, ptr %0, i32 0, i32 1
  store volatile ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @xprt_iter_current_entry(ptr noundef %0) #7 {
  %2 = load volatile ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %51, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %2, i32 0, i32 7
  %6 = getelementptr inbounds %struct.rpc_xprt_iter, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %2, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %13, label %29

13:                                               ; preds = %9, %4
  %14 = load volatile ptr, ptr %5, align 4
  %15 = icmp eq ptr %14, %5
  br i1 %15, label %51, label %16

16:                                               ; preds = %26, %13
  %17 = phi ptr [ %27, %26 ], [ %14, %13 ]
  %18 = getelementptr i8, ptr %17, i32 -616
  %19 = load volatile i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %17, i32 -16
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 128
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %49, label %26

26:                                               ; preds = %21, %16
  %27 = load volatile ptr, ptr %17, align 4
  %28 = icmp eq ptr %27, %5
  br i1 %28, label %51, label %16

29:                                               ; preds = %9
  %30 = load volatile ptr, ptr %5, align 4
  %31 = icmp eq ptr %30, %5
  br i1 %31, label %51, label %32

32:                                               ; preds = %46, %29
  %33 = phi ptr [ %47, %46 ], [ %30, %29 ]
  %34 = phi i1 [ %37, %46 ], [ false, %29 ]
  %35 = getelementptr i8, ptr %33, i32 -616
  %36 = icmp eq ptr %35, %7
  %37 = select i1 %36, i1 true, i1 %34
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load volatile i32, ptr %35, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = getelementptr i8, ptr %33, i32 -16
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 128
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41, %38, %32
  %47 = load volatile ptr, ptr %33, align 4
  %48 = icmp eq ptr %47, %5
  br i1 %48, label %51, label %32

49:                                               ; preds = %21
  %50 = getelementptr i8, ptr %17, i32 -616
  br label %51

51:                                               ; preds = %49, %46, %41, %29, %26, %13, %1
  %52 = phi ptr [ null, %1 ], [ null, %13 ], [ null, %29 ], [ %50, %49 ], [ null, %26 ], [ %35, %41 ], [ null, %46 ]
  ret ptr %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @xprt_iter_next_entry_roundrobin(ptr noundef %0) #0 {
  %2 = load volatile ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %63, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rpc_xprt_iter, ptr %0, i32 0, i32 1
  %6 = load volatile ptr, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !28
  %7 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %2, i32 0, i32 7
  %8 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %2, i32 0, i32 6
  %9 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %2, i32 0, i32 4
  br label %10

10:                                               ; preds = %53, %4
  %11 = phi ptr [ %6, %4 ], [ %54, %53 ]
  %12 = load volatile ptr, ptr %7, align 4
  %13 = icmp eq ptr %12, %7
  br i1 %13, label %34, label %14

14:                                               ; preds = %29, %10
  %15 = phi ptr [ %30, %29 ], [ %12, %10 ]
  %16 = phi ptr [ %18, %29 ], [ null, %10 ]
  %17 = phi i1 [ %20, %29 ], [ false, %10 ]
  %18 = getelementptr i8, ptr %15, i32 -616
  %19 = icmp eq ptr %16, %11
  %20 = select i1 %19, i1 true, i1 %17
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load volatile i32, ptr %18, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = getelementptr i8, ptr %15, i32 -16
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 128
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24, %21, %14
  %30 = load volatile ptr, ptr %15, align 4
  %31 = icmp eq ptr %30, %7
  br i1 %31, label %34, label %14

32:                                               ; preds = %24
  %33 = icmp eq ptr %18, null
  br i1 %33, label %34, label %53

34:                                               ; preds = %32, %29, %10
  %35 = load volatile ptr, ptr %7, align 4
  %36 = icmp eq ptr %35, %7
  br i1 %36, label %61, label %37

37:                                               ; preds = %47, %34
  %38 = phi ptr [ %48, %47 ], [ %35, %34 ]
  %39 = getelementptr i8, ptr %38, i32 -616
  %40 = load volatile i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = getelementptr i8, ptr %38, i32 -16
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %44, 128
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42, %37
  %48 = load volatile ptr, ptr %38, align 4
  %49 = icmp eq ptr %48, %7
  br i1 %49, label %61, label %37

50:                                               ; preds = %42
  %51 = getelementptr i8, ptr %38, i32 -616
  %52 = icmp eq ptr %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %50, %32
  %54 = phi ptr [ %51, %50 ], [ %18, %32 ]
  %55 = getelementptr inbounds %struct.rpc_xprt, ptr %54, i32 0, i32 32
  %56 = load volatile i32, ptr %55, align 4
  %57 = load volatile i32, ptr %8, align 4
  %58 = load volatile i32, ptr %9, align 4
  %59 = mul i32 %58, %56
  %60 = icmp ugt i32 %59, %57
  br i1 %60, label %10, label %61

61:                                               ; preds = %53, %50, %47, %34
  %62 = phi ptr [ null, %47 ], [ %54, %53 ], [ null, %50 ], [ null, %34 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !29
  store volatile ptr %62, ptr %5, align 4
  br label %63

63:                                               ; preds = %61, %1
  %64 = phi ptr [ %62, %61 ], [ null, %1 ]
  ret ptr %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @xprt_iter_next_entry_all(ptr noundef %0) #0 {
  %2 = load volatile ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rpc_xprt_iter, ptr %0, i32 0, i32 1
  %6 = load volatile ptr, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !28
  %7 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %2, i32 0, i32 7
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %28, label %10

10:                                               ; preds = %25, %4
  %11 = phi ptr [ %26, %25 ], [ %8, %4 ]
  %12 = phi ptr [ %14, %25 ], [ null, %4 ]
  %13 = phi i1 [ %16, %25 ], [ false, %4 ]
  %14 = getelementptr i8, ptr %11, i32 -616
  %15 = icmp eq ptr %12, %6
  %16 = select i1 %15, i1 true, i1 %13
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = load volatile i32, ptr %14, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = getelementptr i8, ptr %11, i32 -16
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 128
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %17, %10
  %26 = load volatile ptr, ptr %11, align 4
  %27 = icmp eq ptr %26, %7
  br i1 %27, label %28, label %10

28:                                               ; preds = %25, %20, %4
  %29 = phi ptr [ null, %4 ], [ null, %25 ], [ %14, %20 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !29
  store volatile ptr %29, ptr %5, align 4
  br label %30

30:                                               ; preds = %28, %1
  %31 = phi ptr [ %29, %28 ], [ null, %1 ]
  ret ptr %31
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
!9 = !{i64 2148999568}
!10 = !{i64 2155711054}
!11 = !{i64 2148836825}
!12 = !{i64 2148832649}
!13 = !{i64 2148832724, i64 2148832751, i64 2148832798, i64 2148832820, i64 2148832848, i64 2148832868}
!14 = !{i64 2148859828}
!15 = !{i64 2155711480}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 259241, i64 2147760807, i64 2147760833, i64 2147760880, i64 2147760902, i64 2147760930, i64 2147760950}
!18 = !{i64 208393, i64 208417, i64 208438, i64 208455, i64 208472}
!19 = !{i64 2147936164}
!20 = !{i64 2147838323, i64 2147838355, i64 2147838384, i64 2147838418, i64 2147838449, i64 2147838472}
!21 = !{i64 2148904813}
!22 = !{i64 2155901633}
!23 = !{i64 2155905309}
!24 = !{i64 341772, i64 341789, i64 341813, i64 341839, i64 341857}
!25 = !{i64 2155905678}
!26 = !{i64 2148945084}
!27 = !{i64 2148945301}
!28 = !{i64 2155885458}
!29 = !{i64 2155887369}
