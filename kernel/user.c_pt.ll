; ModuleID = '/llk/IR/kernel/user.c_pt.bc'
source_filename = "../kernel/user.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_user_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22init_user_ns\22\09\09\09\09\09"
module asm "__kstrtabns_init_user_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.47, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i32, %struct.atomic_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.lock_class_key = type {}

@init_user_ns = dso_local global %struct.user_namespace { %struct.uid_gid_map { i32 1, %union.anon { [5 x %struct.uid_gid_extent] [%struct.uid_gid_extent { i32 0, i32 0, i32 -1 }, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer] } }, %struct.uid_gid_map { i32 1, %union.anon { [5 x %struct.uid_gid_extent] [%struct.uid_gid_extent { i32 0, i32 0, i32 -1 }, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer] } }, %struct.uid_gid_map { i32 1, %union.anon { [5 x %struct.uid_gid_extent] [%struct.uid_gid_extent { i32 0, i32 0, i32 -1 }, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer] } }, ptr null, i32 0, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.ns_common { %struct.atomic_t zeroinitializer, ptr null, i32 -268435459, %struct.refcount_struct { %struct.atomic_t { i32 3 } } }, i32 1, i8 0, %struct.list_head { ptr getelementptr (i8, ptr @init_user_ns, i64 232), ptr getelementptr (i8, ptr @init_user_ns, i64 232) }, ptr null, %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @init_user_ns, i64 260), ptr getelementptr (i8, ptr @init_user_ns, i64 260) } }, %struct.work_struct zeroinitializer, %struct.ctl_table_set zeroinitializer, ptr null, ptr null, [14 x i32] zeroinitializer }, align 4
@__kstrtab_init_user_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_user_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_init_user_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_user_ns to i32), ptr @__kstrtab_init_user_ns, ptr @__kstrtabns_init_user_ns }, section "___ksymtab_gpl+init_user_ns", align 4
@root_user = dso_local global %struct.user_struct { %struct.refcount_struct { %struct.atomic_t { i32 1 } }, %struct.percpu_counter zeroinitializer, i32 0, %struct.atomic_t zeroinitializer, %struct.hlist_node zeroinitializer, %struct.kuid_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.ratelimit_state zeroinitializer }, align 8
@uidhash_lock = internal global %struct.spinlock zeroinitializer, align 4
@uidhash_table = internal global [128 x %struct.hlist_head] zeroinitializer, align 4
@uid_cachep = internal unnamed_addr global ptr null, align 4
@__initcall__kmod_user__159_251_uid_cache_init4 = internal global ptr @uid_cache_init, section ".initcall4.init", align 4
@user_epoll_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [10 x i8] c"uid_cache\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"root_user epoll percpu counter alloc failed\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_user__159_251_uid_cache_init4, ptr @__ksymtab_init_user_ns], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_user([1 x i32] %0) local_unnamed_addr #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @uidhash_lock) #6
  %3 = extractvalue [1 x i32] %0, 0
  %4 = lshr i32 %3, 7
  %5 = add i32 %4, %3
  %6 = and i32 %5, 127
  %7 = getelementptr %struct.hlist_head, ptr @uidhash_table, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = getelementptr i8, ptr %8, i32 -48
  %11 = icmp eq ptr %10, null
  %12 = or i1 %9, %11
  br i1 %12, label %35, label %13

13:                                               ; preds = %28, %1
  %14 = phi ptr [ %32, %28 ], [ %10, %1 ]
  %15 = getelementptr inbounds %struct.user_struct, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, %3
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %14) #6, !srcloc !8
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %14, ptr nonnull %14, i32 1, ptr nonnull elementtype(i32) %14) #6, !srcloc !9
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22, !prof !10

22:                                               ; preds = %18
  %23 = add i32 %20, 1
  %24 = or i32 %23, %20
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %35, label %26, !prof !11

26:                                               ; preds = %22, %18
  %27 = phi i32 [ 2, %18 ], [ 1, %22 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %14, i32 noundef %27) #6
  br label %35

28:                                               ; preds = %13
  %29 = getelementptr inbounds %struct.user_struct, ptr %14, i32 0, i32 4
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  %32 = getelementptr i8, ptr %30, i32 -48
  %33 = icmp eq ptr %32, null
  %34 = or i1 %31, %33
  br i1 %34, label %35, label %13

35:                                               ; preds = %28, %26, %22, %1
  %36 = phi ptr [ %14, %26 ], [ %14, %22 ], [ null, %1 ], [ null, %28 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @uidhash_lock, i32 noundef %2) #6
  ret ptr %36
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_uid(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !12
  %3 = icmp eq ptr %0, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = call zeroext i1 @refcount_dec_and_lock_irqsave(ptr noundef nonnull %0, ptr noundef nonnull @uidhash_lock, ptr noundef nonnull %2) #6
  br i1 %5, label %6, label %21

6:                                                ; preds = %4
  %7 = load i32, ptr %2, align 4
  %8 = getelementptr inbounds %struct.user_struct, ptr %0, i32 0, i32 4
  %9 = getelementptr inbounds %struct.user_struct, ptr %0, i32 0, i32 4, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr %8, align 4
  store volatile ptr %13, ptr %10, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  store volatile ptr %10, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %12
  store ptr null, ptr %8, align 4
  store ptr null, ptr %9, align 4
  br label %18

18:                                               ; preds = %17, %6
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @uidhash_lock, i32 noundef %7) #6
  %19 = getelementptr inbounds %struct.user_struct, ptr %0, i32 0, i32 1
  call void @percpu_counter_destroy(ptr noundef %19) #6
  %20 = load ptr, ptr @uid_cachep, align 4
  call void @kmem_cache_free(ptr noundef %20, ptr noundef nonnull %0) #6
  br label %21

21:                                               ; preds = %18, %4, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_lock_irqsave(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_uid([1 x i32] %0) local_unnamed_addr #0 {
  %2 = extractvalue [1 x i32] %0, 0
  %3 = lshr i32 %2, 7
  %4 = add i32 %3, %2
  %5 = and i32 %4, 127
  %6 = getelementptr %struct.hlist_head, ptr @uidhash_table, i32 %5
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @uidhash_lock) #6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = getelementptr i8, ptr %7, i32 -48
  %10 = icmp eq ptr %9, null
  %11 = or i1 %8, %10
  br i1 %11, label %34, label %12

12:                                               ; preds = %27, %1
  %13 = phi ptr [ %31, %27 ], [ %9, %1 ]
  %14 = getelementptr inbounds %struct.user_struct, ptr %13, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %13) #6, !srcloc !8
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #6, !srcloc !9
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !10

21:                                               ; preds = %17
  %22 = add i32 %19, 1
  %23 = or i32 %22, %19
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %34, label %25, !prof !11

25:                                               ; preds = %21, %17
  %26 = phi i32 [ 2, %17 ], [ 1, %21 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef %26) #6
  br label %34

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.user_struct, ptr %13, i32 0, i32 4
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  %31 = getelementptr i8, ptr %29, i32 -48
  %32 = icmp eq ptr %31, null
  %33 = or i1 %30, %32
  br i1 %33, label %34, label %12

34:                                               ; preds = %27, %25, %21, %1
  %35 = phi ptr [ %13, %25 ], [ %13, %21 ], [ null, %1 ], [ null, %27 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %36 = load i16, ptr @uidhash_lock, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr @uidhash_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  %38 = icmp eq ptr %35, null
  br i1 %38, label %39, label %94

39:                                               ; preds = %34
  %40 = load ptr, ptr @uid_cachep, align 4
  %41 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %40, i32 noundef 3520) #6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %94, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.user_struct, ptr %41, i32 0, i32 5
  store i32 %2, ptr %44, align 8
  store volatile i32 1, ptr %41, align 8
  %45 = getelementptr inbounds %struct.user_struct, ptr %41, i32 0, i32 1
  %46 = tail call i32 @__percpu_counter_init(ptr noundef %45, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @user_epoll_alloc.__key) #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr @uid_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %49, ptr noundef nonnull %41) #6
  br label %94

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.user_struct, ptr %41, i32 0, i32 7
  %52 = getelementptr inbounds %struct.user_struct, ptr %41, i32 0, i32 7, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(28) %51, i8 0, i64 24, i1 false) #6
  store i32 100, ptr %52, align 4
  %53 = getelementptr inbounds %struct.user_struct, ptr %41, i32 0, i32 7, i32 2
  store i32 100, ptr %53, align 8
  %54 = getelementptr inbounds %struct.user_struct, ptr %41, i32 0, i32 7, i32 6
  store i32 1, ptr %54, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @uidhash_lock) #6
  %55 = load ptr, ptr %6, align 4
  %56 = icmp eq ptr %55, null
  %57 = getelementptr i8, ptr %55, i32 -48
  %58 = icmp eq ptr %57, null
  %59 = or i1 %56, %58
  br i1 %59, label %84, label %60

60:                                               ; preds = %75, %50
  %61 = phi ptr [ %79, %75 ], [ %57, %50 ]
  %62 = getelementptr inbounds %struct.user_struct, ptr %61, i32 0, i32 5
  %63 = load i32, ptr %62, align 8
  %64 = icmp eq i32 %63, %2
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %61) #6, !srcloc !8
  %66 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %61, ptr nonnull %61, i32 1, ptr nonnull elementtype(i32) %61) #6, !srcloc !9
  %67 = extractvalue { i32, i32, i32 } %66, 0
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69, !prof !10

69:                                               ; preds = %65
  %70 = add i32 %67, 1
  %71 = or i32 %70, %67
  %72 = icmp sgt i32 %71, -1
  br i1 %72, label %82, label %73, !prof !11

73:                                               ; preds = %69, %65
  %74 = phi i32 [ 2, %65 ], [ 1, %69 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %61, i32 noundef %74) #6
  br label %82

75:                                               ; preds = %60
  %76 = getelementptr inbounds %struct.user_struct, ptr %61, i32 0, i32 4
  %77 = load ptr, ptr %76, align 8
  %78 = icmp eq ptr %77, null
  %79 = getelementptr i8, ptr %77, i32 -48
  %80 = icmp eq ptr %79, null
  %81 = or i1 %78, %80
  br i1 %81, label %84, label %60

82:                                               ; preds = %73, %69
  tail call void @percpu_counter_destroy(ptr noundef %45) #6
  %83 = load ptr, ptr @uid_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %83, ptr noundef nonnull %41) #6
  br label %90

84:                                               ; preds = %75, %50
  %85 = getelementptr inbounds %struct.user_struct, ptr %41, i32 0, i32 4
  store volatile ptr %55, ptr %85, align 8
  br i1 %56, label %88, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.hlist_node, ptr %55, i32 0, i32 1
  store volatile ptr %85, ptr %87, align 4
  br label %88

88:                                               ; preds = %86, %84
  store volatile ptr %85, ptr %6, align 4
  %89 = getelementptr inbounds %struct.user_struct, ptr %41, i32 0, i32 4, i32 1
  store volatile ptr %6, ptr %89, align 4
  br label %90

90:                                               ; preds = %88, %82
  %91 = phi ptr [ %61, %82 ], [ %41, %88 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %92 = load i16, ptr @uidhash_lock, align 4
  %93 = add i16 %92, 1
  store i16 %93, ptr @uidhash_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  br label %94

94:                                               ; preds = %90, %48, %39, %34
  %95 = phi ptr [ null, %48 ], [ null, %39 ], [ %35, %34 ], [ %91, %90 ]
  ret ptr %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @uid_cache_init() #3 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 0, i32 noundef 270336, ptr noundef null) #6
  store ptr %1, ptr @uid_cachep, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(512) @uidhash_table, i8 0, i32 512, i1 false)
  %2 = tail call i32 @__percpu_counter_init(ptr noundef getelementptr inbounds (%struct.user_struct, ptr @root_user, i32 0, i32 1), i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @user_epoll_alloc.__key) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1) #7
  unreachable

5:                                                ; preds = %0
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @uidhash_lock) #6
  %6 = load ptr, ptr @uidhash_table, align 4
  store volatile ptr %6, ptr getelementptr inbounds (%struct.user_struct, ptr @root_user, i32 0, i32 4), align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1
  store volatile ptr getelementptr inbounds (%struct.user_struct, ptr @root_user, i32 0, i32 4), ptr %9, align 4
  br label %10

10:                                               ; preds = %8, %5
  store volatile ptr getelementptr inbounds (%struct.user_struct, ptr @root_user, i32 0, i32 4), ptr @uidhash_table, align 4
  store volatile ptr @uidhash_table, ptr getelementptr inbounds (%struct.user_struct, ptr @root_user, i32 0, i32 4, i32 1), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %11 = load i16, ptr @uidhash_lock, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr @uidhash_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold noreturn nounwind }

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
!8 = !{i64 533331, i64 2148034897, i64 2148034923, i64 2148034970, i64 2148034992, i64 2148035020, i64 2148035040}
!9 = !{i64 2148099617, i64 2148099649, i64 2148099678, i64 2148099712, i64 2148099743, i64 2148099766}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{!"auto-init"}
!13 = !{i64 2149169060}
!14 = !{i64 2149164884}
!15 = !{i64 2149164959, i64 2149164986, i64 2149165033, i64 2149165055, i64 2149165083, i64 2149165103}
!16 = !{i64 562323}
!17 = !{i64 2149193204}
