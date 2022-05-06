; ModuleID = '/llk/IR/net/core/gen_estimator.c_pt.bc'
source_filename = "../net/core/gen_estimator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_new_estimator:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_new_estimator\22\09\09\09\09\09"
module asm "__kstrtabns_gen_new_estimator:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_kill_estimator:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_kill_estimator\22\09\09\09\09\09"
module asm "__kstrtabns_gen_kill_estimator:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_replace_estimator:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_replace_estimator\22\09\09\09\09\09"
module asm "__kstrtabns_gen_replace_estimator:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_estimator_active:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_estimator_active\22\09\09\09\09\09"
module asm "__kstrtabns_gen_estimator_active:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_estimator_read:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_estimator_read\22\09\09\09\09\09"
module asm "__kstrtabns_gen_estimator_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [12 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.net_rate_estimator = type { ptr, ptr, i8, ptr, i8, i8, %struct.seqcount, i64, i64, i64, i64, i32, %struct.timer_list, %struct.callback_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.gnet_stats_rate_est64 = type { i64, i64 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_gen_new_estimator = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_new_estimator = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_new_estimator = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_new_estimator to i32), ptr @__kstrtab_gen_new_estimator, ptr @__kstrtabns_gen_new_estimator }, section "___ksymtab+gen_new_estimator", align 4
@__kstrtab_gen_kill_estimator = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_kill_estimator = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_kill_estimator = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_kill_estimator to i32), ptr @__kstrtab_gen_kill_estimator, ptr @__kstrtabns_gen_kill_estimator }, section "___ksymtab+gen_kill_estimator", align 4
@__kstrtab_gen_replace_estimator = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_replace_estimator = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_replace_estimator = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_replace_estimator to i32), ptr @__kstrtab_gen_replace_estimator, ptr @__kstrtabns_gen_replace_estimator }, section "___ksymtab+gen_replace_estimator", align 4
@__kstrtab_gen_estimator_active = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_estimator_active = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_estimator_active = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_estimator_active to i32), ptr @__kstrtab_gen_estimator_active, ptr @__kstrtabns_gen_estimator_active }, section "___ksymtab+gen_estimator_active", align 4
@__kstrtab_gen_estimator_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_estimator_read = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_estimator_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_estimator_read to i32), ptr @__kstrtab_gen_estimator_read, ptr @__kstrtabns_gen_estimator_read }, section "___ksymtab+gen_estimator_read", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_gen_estimator_active, ptr @__ksymtab_gen_estimator_read, ptr @__ksymtab_gen_kill_estimator, ptr @__ksymtab_gen_new_estimator, ptr @__ksymtab_gen_replace_estimator], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gen_new_estimator(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr nocapture noundef readonly %5) #0 {
  %7 = alloca %struct.gnet_stats_basic_sync, align 16
  %8 = zext i1 %4 to i8
  %9 = getelementptr i8, ptr %5, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i32 32, i1 false), !annotation !8
  %10 = load i16, ptr %5, align 2
  %11 = and i16 %10, -2
  %12 = icmp eq i16 %11, 4
  br i1 %12, label %94, label %13

13:                                               ; preds = %6
  %14 = load i8, ptr %9, align 1
  %15 = add i8 %14, -4
  %16 = icmp ult i8 %15, -6
  br i1 %16, label %94, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %5, i32 5
  %19 = load i8, ptr %18, align 1
  %20 = add i8 %19, -31
  %21 = icmp ult i8 %20, -30
  br i1 %21, label %94, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 88) #9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %94, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.net_rate_estimator, ptr %24, i32 0, i32 6
  store i32 0, ptr %27, align 4
  %28 = load i8, ptr %9, align 1
  %29 = sext i8 %28 to i32
  %30 = add nsw i32 %29, 2
  store ptr %0, ptr %24, align 8
  %31 = getelementptr inbounds %struct.net_rate_estimator, ptr %24, i32 0, i32 1
  store ptr %3, ptr %31, align 4
  %32 = getelementptr inbounds %struct.net_rate_estimator, ptr %24, i32 0, i32 2
  store i8 %8, ptr %32, align 8
  %33 = load i8, ptr %18, align 1
  %34 = getelementptr inbounds %struct.net_rate_estimator, ptr %24, i32 0, i32 4
  store i8 %33, ptr %34, align 8
  %35 = trunc i32 %30 to i8
  %36 = getelementptr inbounds %struct.net_rate_estimator, ptr %24, i32 0, i32 5
  store i8 %35, ptr %36, align 1
  %37 = getelementptr inbounds %struct.net_rate_estimator, ptr %24, i32 0, i32 3
  store ptr %1, ptr %37, align 4
  %38 = icmp eq ptr %3, null
  br i1 %38, label %64, label %39

39:                                               ; preds = %26
  %40 = tail call ptr @llvm.thread.pointer() #8
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %42 = load volatile i32, ptr %41, align 4
  %43 = add i32 %42, 512
  store volatile i32 %43, ptr %41, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  call void @gnet_stats_basic_sync_init(ptr noundef nonnull %7) #8
  %44 = load ptr, ptr %31, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %39
  call void @_raw_spin_lock(ptr noundef nonnull %44) #8
  %47 = load ptr, ptr %37, align 4
  %48 = load ptr, ptr %24, align 8
  %49 = load i8, ptr %32, align 8, !range !10
  %50 = icmp ne i8 %49, 0
  call void @gnet_stats_add_basic(ptr noundef nonnull %7, ptr noundef %47, ptr noundef %48, i1 noundef zeroext %50) #8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %51 = load i16, ptr %44, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %44, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %58

53:                                               ; preds = %39
  %54 = load ptr, ptr %37, align 4
  %55 = load ptr, ptr %24, align 8
  %56 = load i8, ptr %32, align 8, !range !10
  %57 = icmp ne i8 %56, 0
  call void @gnet_stats_add_basic(ptr noundef nonnull %7, ptr noundef %54, ptr noundef %55, i1 noundef zeroext %57) #8
  br label %58

58:                                               ; preds = %53, %46
  call fastcc void @local_bh_enable()
  %59 = load i64, ptr %7, align 16
  %60 = getelementptr inbounds %struct.net_rate_estimator, ptr %24, i32 0, i32 8
  store i64 %59, ptr %60, align 8
  %61 = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %7, i32 0, i32 1
  %62 = load i64, ptr %61, align 8
  %63 = getelementptr inbounds %struct.net_rate_estimator, ptr %24, i32 0, i32 7
  store i64 %62, ptr %63, align 8
  call void @_raw_spin_lock_bh(ptr noundef nonnull %3) #8
  br label %70

64:                                               ; preds = %26
  call void @gnet_stats_basic_sync_init(ptr noundef nonnull %7) #8
  call void @gnet_stats_add_basic(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %0, i1 noundef zeroext %4) #8
  %65 = load i64, ptr %7, align 16
  %66 = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %7, i32 0, i32 1
  %67 = load i64, ptr %66, align 8
  %68 = getelementptr inbounds %struct.net_rate_estimator, ptr %24, i32 0, i32 8
  store i64 %65, ptr %68, align 8
  %69 = getelementptr inbounds %struct.net_rate_estimator, ptr %24, i32 0, i32 7
  store i64 %67, ptr %69, align 8
  br label %70

70:                                               ; preds = %64, %58
  %71 = load ptr, ptr %2, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %82, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.net_rate_estimator, ptr %71, i32 0, i32 12
  %75 = call i32 @del_timer_sync(ptr noundef %74) #8
  %76 = getelementptr inbounds %struct.net_rate_estimator, ptr %71, i32 0, i32 10
  %77 = load i64, ptr %76, align 8
  %78 = getelementptr inbounds %struct.net_rate_estimator, ptr %24, i32 0, i32 10
  store i64 %77, ptr %78, align 8
  %79 = getelementptr inbounds %struct.net_rate_estimator, ptr %71, i32 0, i32 9
  %80 = load i64, ptr %79, align 8
  %81 = getelementptr inbounds %struct.net_rate_estimator, ptr %24, i32 0, i32 9
  store i64 %80, ptr %81, align 8
  br label %82

82:                                               ; preds = %73, %70
  %83 = load volatile i32, ptr @jiffies, align 64
  %84 = shl i32 25, %30
  %85 = add i32 %83, %84
  %86 = getelementptr inbounds %struct.net_rate_estimator, ptr %24, i32 0, i32 11
  store i32 %85, ptr %86, align 8
  %87 = getelementptr inbounds %struct.net_rate_estimator, ptr %24, i32 0, i32 12
  call void @init_timer_key(ptr noundef %87, ptr noundef nonnull @est_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  %88 = load i32, ptr %86, align 8
  %89 = call i32 @mod_timer(ptr noundef %87, i32 noundef %88) #8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  store volatile ptr %24, ptr %2, align 4
  br i1 %38, label %91, label %90

90:                                               ; preds = %82
  call void @_raw_spin_unlock_bh(ptr noundef nonnull %3) #8
  br label %91

91:                                               ; preds = %90, %82
  br i1 %72, label %94, label %92

92:                                               ; preds = %91
  %93 = getelementptr inbounds %struct.net_rate_estimator, ptr %71, i32 0, i32 13
  call void @kvfree_call_rcu(ptr noundef %93, ptr noundef nonnull inttoptr (i32 80 to ptr)) #8
  br label %94

94:                                               ; preds = %92, %91, %22, %17, %13, %6
  %95 = phi i32 [ -22, %6 ], [ -22, %13 ], [ -22, %17 ], [ -105, %22 ], [ 0, %92 ], [ 0, %91 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #8
  ret i32 %95
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @est_timer(ptr noundef %0) #0 {
  %2 = alloca %struct.gnet_stats_basic_sync, align 16
  %3 = getelementptr i8, ptr %0, i32 -60
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  call void @gnet_stats_basic_sync_init(ptr noundef nonnull %2) #8
  %4 = getelementptr i8, ptr %0, i32 -56
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  call void @_raw_spin_lock(ptr noundef nonnull %5) #8
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr i8, ptr %0, i32 -48
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr i8, ptr %0, i32 -52
  %13 = load i8, ptr %12, align 8, !range !10
  %14 = icmp ne i8 %13, 0
  call void @gnet_stats_add_basic(ptr noundef nonnull %2, ptr noundef %10, ptr noundef %11, i1 noundef zeroext %14) #8
  %15 = load ptr, ptr %4, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %18 = load i16, ptr %15, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %15, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %20

20:                                               ; preds = %17, %8
  %21 = load i64, ptr %2, align 16
  %22 = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %2, i32 0, i32 1
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr i8, ptr %0, i32 -28
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr i8, ptr %0, i32 -43
  %27 = load i8, ptr %26, align 1
  %28 = getelementptr i8, ptr %0, i32 -44
  %29 = load i8, ptr %28, align 8
  %30 = getelementptr i8, ptr %0, i32 -12
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr i8, ptr %0, i32 -36
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr i8, ptr %0, i32 -20
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr i8, ptr %0, i32 -40
  %37 = sub i64 %23, %33
  %38 = zext i8 %27 to i32
  %39 = sub nsw i32 10, %38
  %40 = zext i32 %39 to i64
  %41 = shl i64 %37, %40
  %42 = zext i8 %29 to i64
  %43 = lshr i64 %41, %42
  %44 = lshr i64 %35, %42
  %45 = sub i64 %43, %44
  %46 = sub i64 %21, %25
  %47 = shl i64 %46, %40
  %48 = lshr i64 %47, %42
  %49 = lshr i64 %31, %42
  %50 = sub i64 %48, %49
  %51 = load i32, ptr %36, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %36, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !16
  %53 = load i64, ptr %30, align 8
  %54 = add i64 %50, %53
  store i64 %54, ptr %30, align 8
  %55 = load i64, ptr %34, align 8
  %56 = add i64 %45, %55
  store i64 %56, ptr %34, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !17
  %57 = load i32, ptr %36, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %36, align 4
  store i64 %21, ptr %24, align 8
  store i64 %23, ptr %32, align 8
  %59 = load i8, ptr %26, align 1
  %60 = zext i8 %59 to i32
  %61 = shl i32 25, %60
  %62 = getelementptr i8, ptr %0, i32 -4
  %63 = load i32, ptr %62, align 8
  %64 = add i32 %61, %63
  store i32 %64, ptr %62, align 8
  %65 = load volatile i32, ptr @jiffies, align 64
  %66 = sub i32 %65, %64
  %67 = icmp sgt i32 %66, -1
  br i1 %67, label %68, label %71, !prof !18

68:                                               ; preds = %20
  %69 = load volatile i32, ptr @jiffies, align 64
  %70 = add i32 %69, 1
  store i32 %70, ptr %62, align 8
  br label %71

71:                                               ; preds = %68, %20
  %72 = phi i32 [ %70, %68 ], [ %64, %20 ]
  %73 = call i32 @mod_timer(ptr noundef %0, i32 noundef %72) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gen_kill_estimator(ptr noundef %0) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !20
  %2 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %0) #8, !srcloc !21
  %3 = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = inttoptr i32 %3 to ptr
  %7 = getelementptr inbounds %struct.net_rate_estimator, ptr %6, i32 0, i32 12
  %8 = tail call i32 @del_timer_sync(ptr noundef %7) #8
  %9 = getelementptr inbounds %struct.net_rate_estimator, ptr %6, i32 0, i32 13
  tail call void @kvfree_call_rcu(ptr noundef %9, ptr noundef nonnull inttoptr (i32 80 to ptr)) #8
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gen_replace_estimator(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr nocapture noundef readonly %5) #0 {
  %7 = tail call i32 @gen_new_estimator(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5)
  ret i32 %7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @gen_estimator_active(ptr noundef %0) #5 {
  %2 = load volatile ptr, ptr %0, align 4
  %3 = icmp ne ptr %2, null
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @gen_estimator_read(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !23
  %3 = load volatile ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.net_rate_estimator, ptr %3, i32 0, i32 6
  %7 = getelementptr inbounds %struct.net_rate_estimator, ptr %3, i32 0, i32 10
  %8 = getelementptr inbounds %struct.net_rate_estimator, ptr %3, i32 0, i32 9
  %9 = getelementptr inbounds %struct.gnet_stats_rate_est64, ptr %1, i32 0, i32 1
  br label %11

10:                                               ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !24
  br label %28

11:                                               ; preds = %19, %5
  %12 = load volatile i32, ptr %6, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %15, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !26
  %16 = load volatile i32, ptr %6, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %15

19:                                               ; preds = %15, %11
  %20 = phi i32 [ %12, %11 ], [ %16, %15 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !27
  %21 = load i64, ptr %7, align 8
  %22 = lshr i64 %21, 8
  store i64 %22, ptr %1, align 8
  %23 = load i64, ptr %8, align 8
  %24 = lshr i64 %23, 8
  store i64 %24, ptr %9, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !28
  %25 = load volatile i32, ptr %6, align 4
  %26 = icmp eq i32 %25, %20
  br i1 %26, label %27, label %11

27:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !24
  br label %28

28:                                               ; preds = %27, %10
  %29 = xor i1 %4, true
  ret i1 %29
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_basic_sync_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_add_basic(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!9 = !{i64 2148771822}
!10 = !{i8 0, i8 2}
!11 = !{i64 2149184441}
!12 = !{i64 2149180265}
!13 = !{i64 2149180340, i64 2149180367, i64 2149180414, i64 2149180436, i64 2149180464, i64 2149180484}
!14 = !{i64 2149207444}
!15 = !{i64 2155347334}
!16 = !{i64 2149603803}
!17 = !{i64 2149604104}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2155354101}
!20 = !{i64 546318, i64 2148047884, i64 2148047910, i64 2148047957, i64 2148047979, i64 2148048007, i64 2148048027}
!21 = !{i64 618410, i64 618427, i64 618451, i64 618477, i64 618495}
!22 = !{i64 2155354428}
!23 = !{i64 2148958242}
!24 = !{i64 2148958459}
!25 = !{i64 2155373653}
!26 = !{i64 2155373495}
!27 = !{i64 2155373797}
!28 = !{i64 2149603504}
