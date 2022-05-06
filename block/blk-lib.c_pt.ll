; ModuleID = '/llk/IR/block/blk-lib.c_pt.bc'
source_filename = "../block/blk-lib.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_next_bio:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_next_bio\22\09\09\09\09\09"
module asm "__kstrtabns_blk_next_bio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___blkdev_issue_discard:\09\09\09\09\09"
module asm "\09.asciz \09\22__blkdev_issue_discard\22\09\09\09\09\09"
module asm "__kstrtabns___blkdev_issue_discard:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkdev_issue_discard:\09\09\09\09\09"
module asm "\09.asciz \09\22blkdev_issue_discard\22\09\09\09\09\09"
module asm "__kstrtabns_blkdev_issue_discard:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkdev_issue_write_same:\09\09\09\09\09"
module asm "\09.asciz \09\22blkdev_issue_write_same\22\09\09\09\09\09"
module asm "__kstrtabns_blkdev_issue_write_same:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___blkdev_issue_zeroout:\09\09\09\09\09"
module asm "\09.asciz \09\22__blkdev_issue_zeroout\22\09\09\09\09\09"
module asm "__kstrtabns___blkdev_issue_zeroout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkdev_issue_zeroout:\09\09\09\09\09"
module asm "\09.asciz \09\22blkdev_issue_zeroout\22\09\09\09\09\09"
module asm "__kstrtabns_blkdev_issue_zeroout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.lockdep_map = type {}
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.78, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.78 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }

@__kstrtab_blk_next_bio = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_next_bio = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_next_bio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_next_bio to i32), ptr @__kstrtab_blk_next_bio, ptr @__kstrtabns_blk_next_bio }, section "___ksymtab_gpl+blk_next_bio", align 4
@__blkdev_issue_discard.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [16 x i8] c"block/blk-lib.c\00", align 1
@__blkdev_issue_discard._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.__blkdev_issue_discard = private unnamed_addr constant [23 x i8] c"__blkdev_issue_discard\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"\013%s: Error: discard_granularity is 0.\0A\00", align 1
@__blkdev_issue_discard.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab___blkdev_issue_discard = external dso_local constant [0 x i8], align 1
@__kstrtabns___blkdev_issue_discard = external dso_local constant [0 x i8], align 1
@__ksymtab___blkdev_issue_discard = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__blkdev_issue_discard to i32), ptr @__kstrtab___blkdev_issue_discard, ptr @__kstrtabns___blkdev_issue_discard }, section "___ksymtab+__blkdev_issue_discard", align 4
@__kstrtab_blkdev_issue_discard = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkdev_issue_discard = external dso_local constant [0 x i8], align 1
@__ksymtab_blkdev_issue_discard = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkdev_issue_discard to i32), ptr @__kstrtab_blkdev_issue_discard, ptr @__kstrtabns_blkdev_issue_discard }, section "___ksymtab+blkdev_issue_discard", align 4
@__kstrtab_blkdev_issue_write_same = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkdev_issue_write_same = external dso_local constant [0 x i8], align 1
@__ksymtab_blkdev_issue_write_same = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkdev_issue_write_same to i32), ptr @__kstrtab_blkdev_issue_write_same, ptr @__kstrtabns_blkdev_issue_write_same }, section "___ksymtab+blkdev_issue_write_same", align 4
@__kstrtab___blkdev_issue_zeroout = external dso_local constant [0 x i8], align 1
@__kstrtabns___blkdev_issue_zeroout = external dso_local constant [0 x i8], align 1
@__ksymtab___blkdev_issue_zeroout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__blkdev_issue_zeroout to i32), ptr @__kstrtab___blkdev_issue_zeroout, ptr @__kstrtabns___blkdev_issue_zeroout }, section "___ksymtab+__blkdev_issue_zeroout", align 4
@__kstrtab_blkdev_issue_zeroout = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkdev_issue_zeroout = external dso_local constant [0 x i8], align 1
@__ksymtab_blkdev_issue_zeroout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkdev_issue_zeroout to i32), ptr @__kstrtab_blkdev_issue_zeroout, ptr @__kstrtabns_blkdev_issue_zeroout }, section "___ksymtab+blkdev_issue_zeroout", align 4
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@empty_zero_page = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab___blkdev_issue_discard, ptr @__ksymtab___blkdev_issue_zeroout, ptr @__ksymtab_blk_next_bio, ptr @__ksymtab_blkdev_issue_discard, ptr @__ksymtab_blkdev_issue_write_same, ptr @__ksymtab_blkdev_issue_zeroout], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @blk_next_bio(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = trunc i32 %1 to i16
  %5 = tail call ptr @bio_alloc_bioset(i32 noundef %2, i16 noundef zeroext %4, ptr noundef nonnull @fs_bio_set) #6
  %6 = icmp eq ptr %0, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @bio_chain(ptr noundef nonnull %0, ptr noundef %5) #6
  tail call void @submit_bio(ptr noundef nonnull %0) #6
  br label %8

8:                                                ; preds = %7, %3
  ret ptr %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__blkdev_issue_discard(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5) #0 {
  %7 = alloca [32 x i8], align 1
  %8 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 18
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %5, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %134, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 4
  %14 = load i8, ptr %13, align 8, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %134

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.gendisk, ptr %18, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.block_device, ptr %20, i32 0, i32 4
  %22 = load i8, ptr %21, align 8, !range !8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %134

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.gendisk, ptr %18, i32 0, i32 12
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %134

29:                                               ; preds = %24
  %30 = and i32 %4, 1
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 11
  %33 = load volatile i32, ptr %32, align 4
  br i1 %31, label %37, label %34

34:                                               ; preds = %29
  %35 = and i32 %33, 2048
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %134, label %40

37:                                               ; preds = %29
  %38 = and i32 %33, 256
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %134, label %40

40:                                               ; preds = %37, %34
  %41 = phi i32 [ 5, %34 ], [ 3, %37 ]
  %42 = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 32, i32 18
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  %45 = load i1, ptr @__blkdev_issue_discard.__already_done, align 1
  %46 = xor i1 %45, true
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %49, !prof !9

48:                                               ; preds = %40
  store i1 true, ptr @__blkdev_issue_discard.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef null) #6
  br label %49

49:                                               ; preds = %48, %40
  br i1 %44, label %50, label %57

50:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %7, i8 0, i32 32, i1 false), !annotation !10
  %51 = call ptr @bdevname(ptr noundef %0, ptr noundef nonnull %7) #6
  %52 = call i32 @___ratelimit(ptr noundef nonnull @__blkdev_issue_discard._rs, ptr noundef nonnull @__func__.__blkdev_issue_discard) #6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %7) #7
  br label %56

56:                                               ; preds = %54, %50
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #6
  br label %134

57:                                               ; preds = %49
  %58 = load ptr, ptr %8, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.request_queue, ptr %58, i32 0, i32 32, i32 9
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  %64 = lshr i32 %62, 9
  %65 = add nsw i32 %64, -1
  %66 = select i1 %63, i32 0, i32 %65
  br label %67

67:                                               ; preds = %60, %57
  %68 = phi i32 [ 0, %57 ], [ %66, %60 ]
  %69 = zext i32 %68 to i64
  %70 = or i64 %2, %1
  %71 = and i64 %70, %69
  %72 = icmp ne i64 %71, 0
  %73 = icmp eq i64 %2, 0
  %74 = or i1 %73, %72
  br i1 %74, label %134, label %75

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 15
  %77 = load i8, ptr %76, align 8
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = load i64, ptr %0, align 8
  br label %81

81:                                               ; preds = %79, %75
  %82 = phi i64 [ %80, %79 ], [ 0, %75 ]
  br label %83

83:                                               ; preds = %125, %81
  %84 = phi i64 [ %129, %125 ], [ %1, %81 ]
  %85 = phi i64 [ %130, %125 ], [ %2, %81 ]
  %86 = phi ptr [ %112, %125 ], [ %10, %81 ]
  %87 = add i64 %84, %82
  %88 = add i64 %87, -1
  %89 = load i32, ptr %42, align 4
  %90 = lshr i32 %89, 9
  %91 = add nsw i32 %90, -1
  %92 = zext i32 %91 to i64
  %93 = or i64 %88, %92
  %94 = add i64 %93, 1
  %95 = icmp eq i64 %94, %87
  br i1 %95, label %96, label %100

96:                                               ; preds = %83
  %97 = sub i32 0, %89
  %98 = lshr i32 %97, 9
  %99 = zext i32 %98 to i64
  br label %102

100:                                              ; preds = %83
  %101 = sub i64 %94, %87
  br label %102

102:                                              ; preds = %100, %96
  %103 = phi i64 [ %101, %100 ], [ %99, %96 ]
  %104 = tail call i64 @llvm.umin.i64(i64 %85, i64 %103)
  %105 = shl i64 %104, 9
  %106 = icmp ugt i64 %105, 4294967295
  %107 = load i1, ptr @__blkdev_issue_discard.__already_done.2, align 1
  %108 = xor i1 %107, true
  %109 = select i1 %106, i1 %108, i1 false
  br i1 %109, label %110, label %111, !prof !9

110:                                              ; preds = %102
  store i1 true, ptr @__blkdev_issue_discard.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef null) #6
  br label %111

111:                                              ; preds = %110, %102
  %112 = tail call ptr @bio_alloc_bioset(i32 noundef %3, i16 noundef zeroext 0, ptr noundef nonnull @fs_bio_set) #6
  %113 = icmp eq ptr %86, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  tail call void @bio_chain(ptr noundef nonnull %86, ptr noundef %112) #6
  tail call void @submit_bio(ptr noundef nonnull %86) #6
  br label %115

115:                                              ; preds = %114, %111
  %116 = getelementptr inbounds %struct.bio, ptr %112, i32 0, i32 8
  store i64 %84, ptr %116, align 4
  %117 = getelementptr inbounds %struct.bio, ptr %112, i32 0, i32 3
  %118 = load i16, ptr %117, align 4
  %119 = and i16 %118, -2049
  store i16 %119, ptr %117, align 4
  %120 = getelementptr inbounds %struct.bio, ptr %112, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, %0
  br i1 %122, label %125, label %123

123:                                              ; preds = %115
  %124 = and i16 %118, -2177
  store i16 %124, ptr %117, align 4
  br label %125

125:                                              ; preds = %123, %115
  store ptr %0, ptr %120, align 4
  %126 = getelementptr inbounds %struct.bio, ptr %112, i32 0, i32 2
  store i32 %41, ptr %126, align 4
  %127 = trunc i64 %105 to i32
  %128 = getelementptr inbounds %struct.bio, ptr %112, i32 0, i32 8, i32 1
  store i32 %127, ptr %128, align 4
  %129 = add i64 %104, %84
  %130 = sub i64 %85, %104
  %131 = tail call i32 @__cond_resched() #6
  %132 = icmp eq i64 %130, 0
  br i1 %132, label %133, label %83

133:                                              ; preds = %125
  store ptr %112, ptr %5, align 4
  br label %134

134:                                              ; preds = %133, %67, %56, %37, %34, %24, %16, %12, %6
  %135 = phi i32 [ -95, %56 ], [ 0, %133 ], [ -6, %6 ], [ -1, %24 ], [ -95, %34 ], [ -95, %37 ], [ -22, %67 ], [ -1, %12 ], [ -1, %16 ]
  ret i32 %135
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdevname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blkdev_issue_discard(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca %struct.blk_plug, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store ptr null, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !10
  call void @blk_start_plug(ptr noundef nonnull %7) #6
  %8 = call i32 @__blkdev_issue_discard(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %6)
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %6, align 4
  %11 = icmp ne ptr %10, null
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = call i32 @submit_bio_wait(ptr noundef nonnull %10) #6
  %15 = icmp eq i32 %14, -95
  %16 = select i1 %15, i32 0, i32 %14
  call void @bio_put(ptr noundef nonnull %10) #6
  br label %17

17:                                               ; preds = %13, %5
  %18 = phi i32 [ %16, %13 ], [ %8, %5 ]
  call void @blk_finish_plug(ptr noundef nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blkdev_issue_write_same(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.blk_plug, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !10
  call void @blk_start_plug(ptr noundef nonnull %6) #6
  %7 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 18
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %101, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 4
  %12 = load i8, ptr %11, align 8, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %101

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.gendisk, ptr %16, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.block_device, ptr %18, i32 0, i32 4
  %20 = load i8, ptr %19, align 8, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %101

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.gendisk, ptr %16, i32 0, i32 12
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %101

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 32, i32 9
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  %31 = lshr i32 %29, 9
  %32 = add nsw i32 %31, -1
  %33 = select i1 %30, i32 0, i32 %32
  %34 = zext i32 %33 to i64
  %35 = or i64 %2, %1
  %36 = and i64 %35, %34
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %101

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 32, i32 15
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %101, label %42

42:                                               ; preds = %38
  %43 = icmp eq i64 %2, 0
  br i1 %43, label %101, label %44

44:                                               ; preds = %42
  %45 = select i1 %30, i32 512, i32 %29
  %46 = sub i32 0, %45
  %47 = lshr i32 %46, 9
  %48 = zext i32 %47 to i64
  %49 = and i32 %46, -512
  br label %50

50:                                               ; preds = %91, %44
  %51 = phi ptr [ null, %44 ], [ %54, %91 ]
  %52 = phi i64 [ %1, %44 ], [ %93, %91 ]
  %53 = phi i64 [ %2, %44 ], [ %92, %91 ]
  %54 = call ptr @bio_alloc_bioset(i32 noundef %3, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #6
  %55 = icmp eq ptr %51, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  call void @bio_chain(ptr noundef nonnull %51, ptr noundef %54) #6
  call void @submit_bio(ptr noundef nonnull %51) #6
  br label %57

57:                                               ; preds = %56, %50
  %58 = getelementptr inbounds %struct.bio, ptr %54, i32 0, i32 8
  store i64 %52, ptr %58, align 4
  %59 = getelementptr inbounds %struct.bio, ptr %54, i32 0, i32 3
  %60 = load i16, ptr %59, align 4
  %61 = and i16 %60, -2049
  store i16 %61, ptr %59, align 4
  %62 = getelementptr inbounds %struct.bio, ptr %54, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, %0
  br i1 %64, label %67, label %65

65:                                               ; preds = %57
  %66 = and i16 %60, -2177
  store i16 %66, ptr %59, align 4
  br label %67

67:                                               ; preds = %65, %57
  store ptr %0, ptr %62, align 4
  %68 = getelementptr inbounds %struct.bio, ptr %54, i32 0, i32 13
  store i16 1, ptr %68, align 4
  %69 = getelementptr inbounds %struct.bio, ptr %54, i32 0, i32 16
  %70 = load ptr, ptr %69, align 4
  store ptr %4, ptr %70, align 4
  %71 = load ptr, ptr %69, align 4
  %72 = getelementptr inbounds %struct.bio_vec, ptr %71, i32 0, i32 2
  store i32 0, ptr %72, align 4
  %73 = load ptr, ptr %7, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.request_queue, ptr %73, i32 0, i32 32, i32 9
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i32 512, i32 %77
  br label %80

80:                                               ; preds = %75, %67
  %81 = phi i32 [ 512, %67 ], [ %79, %75 ]
  %82 = load ptr, ptr %69, align 4
  %83 = getelementptr inbounds %struct.bio_vec, ptr %82, i32 0, i32 1
  store i32 %81, ptr %83, align 4
  %84 = getelementptr inbounds %struct.bio, ptr %54, i32 0, i32 2
  store i32 7, ptr %84, align 4
  %85 = icmp ugt i64 %53, %48
  br i1 %85, label %91, label %86

86:                                               ; preds = %80
  %87 = trunc i64 %53 to i32
  %88 = shl i32 %87, 9
  %89 = getelementptr inbounds %struct.bio, ptr %54, i32 0, i32 8, i32 1
  store i32 %88, ptr %89, align 4
  %90 = call i32 @__cond_resched() #6
  br label %97

91:                                               ; preds = %80
  %92 = sub i64 %53, %48
  %93 = add i64 %52, %48
  %94 = getelementptr inbounds %struct.bio, ptr %54, i32 0, i32 8, i32 1
  store i32 %49, ptr %94, align 4
  %95 = call i32 @__cond_resched() #6
  %96 = icmp eq i64 %92, 0
  br i1 %96, label %97, label %50

97:                                               ; preds = %91, %86
  %98 = icmp eq ptr %54, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %97
  %100 = call i32 @submit_bio_wait(ptr noundef nonnull %54) #6
  call void @bio_put(ptr noundef nonnull %54) #6
  br label %101

101:                                              ; preds = %99, %97, %42, %38, %27, %22, %14, %10, %5
  %102 = phi i32 [ %100, %99 ], [ 0, %97 ], [ 0, %42 ], [ -1, %14 ], [ -1, %10 ], [ -95, %38 ], [ -22, %27 ], [ -1, %22 ], [ -6, %5 ]
  call void @blk_finish_plug(ptr noundef nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #6
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__blkdev_issue_zeroout(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr nocapture noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 18
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 32, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = lshr i32 %12, 9
  %15 = add nsw i32 %14, -1
  %16 = select i1 %13, i32 0, i32 %15
  br label %17

17:                                               ; preds = %10, %6
  %18 = phi i32 [ 0, %6 ], [ %16, %10 ]
  %19 = zext i32 %18 to i64
  %20 = or i64 %2, %1
  %21 = and i64 %20, %19
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = tail call fastcc i32 @__blkdev_issue_write_zeroes(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5)
  %25 = icmp eq i32 %24, -95
  %26 = and i32 %5, 2
  %27 = icmp eq i32 %26, 0
  %28 = and i1 %27, %25
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = tail call fastcc i32 @__blkdev_issue_zero_pages(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4)
  br label %31

31:                                               ; preds = %29, %23, %17
  %32 = phi i32 [ %30, %29 ], [ -22, %17 ], [ %24, %23 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__blkdev_issue_write_zeroes(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr nocapture noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 18
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %70, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 4
  %13 = load i8, ptr %12, align 8, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %70

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.block_device, ptr %19, i32 0, i32 4
  %21 = load i8, ptr %20, align 8, !range !8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %70

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 12
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %70

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 32, i32 16
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %70, label %32

32:                                               ; preds = %28
  %33 = icmp eq i64 %2, 0
  br i1 %33, label %68, label %34

34:                                               ; preds = %32
  %35 = and i32 %5, 1
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 9, i32 8388617
  %38 = zext i32 %30 to i64
  br label %39

39:                                               ; preds = %56, %34
  %40 = phi i64 [ %1, %34 ], [ %63, %56 ]
  %41 = phi ptr [ %7, %34 ], [ %43, %56 ]
  %42 = phi i64 [ %2, %34 ], [ %61, %56 ]
  %43 = tail call ptr @bio_alloc_bioset(i32 noundef %3, i16 noundef zeroext 0, ptr noundef nonnull @fs_bio_set) #6
  %44 = icmp eq ptr %41, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  tail call void @bio_chain(ptr noundef nonnull %41, ptr noundef %43) #6
  tail call void @submit_bio(ptr noundef nonnull %41) #6
  br label %46

46:                                               ; preds = %45, %39
  %47 = getelementptr inbounds %struct.bio, ptr %43, i32 0, i32 8
  store i64 %40, ptr %47, align 4
  %48 = getelementptr inbounds %struct.bio, ptr %43, i32 0, i32 3
  %49 = load i16, ptr %48, align 4
  %50 = and i16 %49, -2049
  store i16 %50, ptr %48, align 4
  %51 = getelementptr inbounds %struct.bio, ptr %43, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %0
  br i1 %53, label %56, label %54

54:                                               ; preds = %46
  %55 = and i16 %49, -2177
  store i16 %55, ptr %48, align 4
  br label %56

56:                                               ; preds = %54, %46
  store ptr %0, ptr %51, align 4
  %57 = getelementptr inbounds %struct.bio, ptr %43, i32 0, i32 2
  store i32 %37, ptr %57, align 4
  %58 = icmp ugt i64 %42, %38
  %59 = trunc i64 %42 to i32
  %60 = select i1 %58, i32 %30, i32 %59
  %61 = call i64 @llvm.usub.sat.i64(i64 %42, i64 %38)
  %62 = select i1 %58, i64 %38, i64 0
  %63 = add i64 %40, %62
  %64 = shl i32 %60, 9
  %65 = getelementptr inbounds %struct.bio, ptr %43, i32 0, i32 8, i32 1
  store i32 %64, ptr %65, align 4
  %66 = tail call i32 @__cond_resched() #6
  %67 = icmp ugt i64 %42, %38
  br i1 %67, label %39, label %68

68:                                               ; preds = %56, %32
  %69 = phi ptr [ %7, %32 ], [ %43, %56 ]
  store ptr %69, ptr %4, align 4
  br label %70

70:                                               ; preds = %68, %28, %23, %15, %11, %6
  %71 = phi i32 [ 0, %68 ], [ -6, %6 ], [ -1, %23 ], [ -95, %28 ], [ -1, %11 ], [ -1, %15 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__blkdev_issue_zero_pages(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 18
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %72, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 4
  %12 = load i8, ptr %11, align 8, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %72

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.gendisk, ptr %16, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.block_device, ptr %18, i32 0, i32 4
  %20 = load i8, ptr %19, align 8, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %72

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.gendisk, ptr %16, i32 0, i32 12
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %72

27:                                               ; preds = %22
  %28 = icmp eq i64 %2, 0
  br i1 %28, label %70, label %29

29:                                               ; preds = %67, %27
  %30 = phi i64 [ %63, %67 ], [ %1, %27 ]
  %31 = phi i64 [ %62, %67 ], [ %2, %27 ]
  %32 = phi ptr [ %37, %67 ], [ %10, %27 ]
  %33 = add i64 %31, 7
  %34 = lshr i64 %33, 3
  %35 = tail call i64 @llvm.umin.i64(i64 %34, i64 256) #6
  %36 = trunc i64 %35 to i16
  %37 = tail call ptr @bio_alloc_bioset(i32 noundef %3, i16 noundef zeroext %36, ptr noundef nonnull @fs_bio_set) #6
  %38 = icmp eq ptr %32, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  tail call void @bio_chain(ptr noundef nonnull %32, ptr noundef %37) #6
  tail call void @submit_bio(ptr noundef nonnull %32) #6
  br label %40

40:                                               ; preds = %39, %29
  %41 = getelementptr inbounds %struct.bio, ptr %37, i32 0, i32 8
  store i64 %30, ptr %41, align 4
  %42 = getelementptr inbounds %struct.bio, ptr %37, i32 0, i32 3
  %43 = load i16, ptr %42, align 4
  %44 = and i16 %43, -2049
  store i16 %44, ptr %42, align 4
  %45 = getelementptr inbounds %struct.bio, ptr %37, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %0
  br i1 %47, label %50, label %48

48:                                               ; preds = %40
  %49 = and i16 %43, -2177
  store i16 %49, ptr %42, align 4
  br label %50

50:                                               ; preds = %48, %40
  store ptr %0, ptr %45, align 4
  %51 = getelementptr inbounds %struct.bio, ptr %37, i32 0, i32 2
  store i32 1, ptr %51, align 4
  br label %52

52:                                               ; preds = %52, %50
  %53 = phi i64 [ %31, %50 ], [ %62, %52 ]
  %54 = phi i64 [ %30, %50 ], [ %63, %52 ]
  %55 = shl i64 %53, 9
  %56 = tail call i64 @llvm.umin.i64(i64 %55, i64 4096)
  %57 = trunc i64 %56 to i32
  %58 = load ptr, ptr @empty_zero_page, align 4
  %59 = tail call i32 @bio_add_page(ptr noundef %37, ptr noundef %58, i32 noundef %57, i32 noundef 0) #6
  %60 = ashr i32 %59, 9
  %61 = sext i32 %60 to i64
  %62 = sub i64 %53, %61
  %63 = add i64 %54, %61
  %64 = icmp uge i32 %59, %57
  %65 = icmp ne i64 %62, 0
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %52, label %67

67:                                               ; preds = %52
  %68 = tail call i32 @__cond_resched() #6
  %69 = icmp eq i64 %62, 0
  br i1 %69, label %70, label %29

70:                                               ; preds = %67, %27
  %71 = phi ptr [ %10, %27 ], [ %37, %67 ]
  store ptr %71, ptr %4, align 4
  br label %72

72:                                               ; preds = %70, %22, %14, %9, %5
  %73 = phi i32 [ 0, %70 ], [ -6, %5 ], [ -1, %22 ], [ -1, %9 ], [ -1, %14 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blkdev_issue_zeroout(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca %struct.blk_plug, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !10
  %8 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 18
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 32, i32 16
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 32, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = lshr i32 %16, 9
  %19 = add nsw i32 %18, -1
  %20 = select i1 %17, i32 0, i32 %19
  br label %21

21:                                               ; preds = %11, %5
  %22 = phi i1 [ %14, %11 ], [ false, %5 ]
  %23 = phi i32 [ %20, %11 ], [ 0, %5 ]
  %24 = zext i32 %23 to i64
  %25 = or i64 %2, %1
  %26 = and i64 %25, %24
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %21
  %29 = and i32 %4, 2
  %30 = icmp eq i32 %29, 0
  br label %31

31:                                               ; preds = %51, %28
  %32 = phi i1 [ false, %51 ], [ %22, %28 ]
  store ptr null, ptr %6, align 4
  call void @blk_start_plug(ptr noundef nonnull %7) #6
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = call fastcc i32 @__blkdev_issue_write_zeroes(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef nonnull %6, i32 noundef %4)
  br label %38

35:                                               ; preds = %31
  br i1 %30, label %36, label %46

36:                                               ; preds = %35
  %37 = call fastcc i32 @__blkdev_issue_zero_pages(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef nonnull %6)
  br label %38

38:                                               ; preds = %36, %33
  %39 = phi i32 [ %34, %33 ], [ %37, %36 ]
  %40 = icmp eq i32 %39, 0
  %41 = load ptr, ptr %6, align 4
  %42 = icmp ne ptr %41, null
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 @submit_bio_wait(ptr noundef nonnull %41) #6
  call void @bio_put(ptr noundef nonnull %41) #6
  br label %46

46:                                               ; preds = %44, %38, %35
  %47 = phi i32 [ %45, %44 ], [ %39, %38 ], [ -95, %35 ]
  call void @blk_finish_plug(ptr noundef nonnull %7) #6
  %48 = icmp eq i32 %47, 0
  %49 = xor i1 %32, true
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %60, label %51

51:                                               ; preds = %46
  br i1 %30, label %31, label %52

52:                                               ; preds = %51
  %53 = load ptr, ptr %8, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.request_queue, ptr %53, i32 0, i32 32, i32 16
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %52
  br label %60

60:                                               ; preds = %59, %55, %46, %21
  %61 = phi i32 [ -22, %21 ], [ -95, %59 ], [ %47, %55 ], [ %47, %46 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"auto-init"}
