; ModuleID = '/llk/IR/block/blk-flush.c_pt.bc'
source_filename = "../block/blk-flush.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkdev_issue_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22blkdev_issue_flush\22\09\09\09\09\09"
module asm "__kstrtabns_blkdev_issue_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_hctx_set_fq_lock_class:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_hctx_set_fq_lock_class\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_hctx_set_fq_lock_class:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.73, ptr, i64, i64, i16, i16, i16, i16, i32, %struct.atomic_t, i32, %union.anon.74, %union.anon.75, %union.anon.76, %union.anon.79, ptr, ptr }
%union.anon.73 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%union.anon.74 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%union.anon.75 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.76 = type { %struct.anon.78 }
%struct.anon.78 = type { i32, %struct.list_head, ptr }
%union.anon.79 = type { i64, [8 x i8] }
%struct.blk_mq_ctx = type { %struct.anon.1, i32, [3 x i16], [3 x ptr], ptr, ptr, %struct.kobject, [60 x i8] }
%struct.anon.1 = type { %struct.spinlock, [3 x %struct.list_head], [36 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.blk_mq_hw_ctx = type { %struct.anon, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [16 x i8] }
%struct.anon = type { %struct.spinlock, %struct.list_head, i32, [48 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.blk_flush_queue = type { i8, i8, i32, [2 x %struct.list_head], %struct.list_head, ptr, %struct.spinlock }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.lockdep_map = type {}
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.disk_stats = type { [4 x i64], [4 x i32], [4 x i32], [4 x i32], i32, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic_t }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.36, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.36 = type {}
%struct.bio_vec = type { ptr, i32, i32 }

@__kstrtab_blkdev_issue_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkdev_issue_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_blkdev_issue_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkdev_issue_flush to i32), ptr @__kstrtab_blkdev_issue_flush, ptr @__kstrtabns_blkdev_issue_flush }, section "___ksymtab+blkdev_issue_flush", align 4
@__kstrtab_blk_mq_hctx_set_fq_lock_class = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_hctx_set_fq_lock_class = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_hctx_set_fq_lock_class = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_hctx_set_fq_lock_class to i32), ptr @__kstrtab_blk_mq_hctx_set_fq_lock_class, ptr @__kstrtabns_blk_mq_hctx_set_fq_lock_class }, section "___ksymtab_gpl+blk_mq_hctx_set_fq_lock_class", align 4
@req_ref_put_and_test.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [12 x i8] c"block/blk.h\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"block/blk-flush.c\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_blk_mq_hctx_set_fq_lock_class, ptr @__ksymtab_blkdev_issue_flush], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_flush_rq(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, @flush_end_io
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @flush_end_io(ptr noundef %0, i8 noundef zeroext %1) #1 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.blk_mq_ctx, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.blk_flush_queue, ptr %9, i32 0, i32 6
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #10
  %12 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 21
  %13 = load volatile i32, ptr %12, align 4
  %14 = add i32 %13, 127
  %15 = icmp ult i32 %14, 128
  %16 = load i1, ptr @req_ref_put_and_test.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !9

19:                                               ; preds = %2
  store i1 true, ptr @req_ref_put_and_test.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 495, i32 noundef 9, ptr noundef null) #10
  br label %20

20:                                               ; preds = %19, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #10, !srcloc !11
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #10, !srcloc !12
  %22 = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.blk_flush_queue, ptr %9, i32 0, i32 1
  store i8 %1, ptr %25, align 1
  br label %172

26:                                               ; preds = %20
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr inbounds %struct.request_queue, ptr %27, i32 0, i32 15
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.gendisk, ptr %29, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %32 = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr %struct.disk_stats, ptr %33, i32 0, i32 2, i32 3
  %35 = ptrtoint ptr %34 to i32
  %36 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %37 = inttoptr i32 %36 to ptr
  %38 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %37) #6, !srcloc !15
  %39 = add i32 %38, %35
  %40 = inttoptr i32 %39 to ptr
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 4
  %43 = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 15
  %44 = load i8, ptr %43, align 8
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %26
  %47 = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 17
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.gendisk, ptr %48, i32 0, i32 7
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.block_device, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr %struct.disk_stats, ptr %52, i32 0, i32 2, i32 3
  %54 = ptrtoint ptr %53 to i32
  %55 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %56 = inttoptr i32 %55 to ptr
  %57 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %56) #6, !srcloc !15
  %58 = add i32 %57, %54
  %59 = inttoptr i32 %58 to ptr
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %59, align 4
  br label %62

62:                                               ; preds = %46, %26
  %63 = tail call i64 @ktime_get() #10
  %64 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 14
  %65 = load i64, ptr %64, align 8
  %66 = sub i64 %63, %65
  %67 = load ptr, ptr %32, align 8
  %68 = getelementptr [4 x i64], ptr %67, i32 0, i32 3
  %69 = ptrtoint ptr %68 to i32
  %70 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %71 = inttoptr i32 %70 to ptr
  %72 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %71) #6, !srcloc !15
  %73 = add i32 %72, %69
  %74 = inttoptr i32 %73 to ptr
  %75 = load i64, ptr %74, align 8
  %76 = add i64 %66, %75
  store i64 %76, ptr %74, align 8
  %77 = load i8, ptr %43, align 8
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %98, label %79

79:                                               ; preds = %62
  %80 = tail call i64 @ktime_get() #10
  %81 = load i64, ptr %64, align 8
  %82 = sub i64 %80, %81
  %83 = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 17
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.gendisk, ptr %84, i32 0, i32 7
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.block_device, ptr %86, i32 0, i32 2
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr [4 x i64], ptr %88, i32 0, i32 3
  %90 = ptrtoint ptr %89 to i32
  %91 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %92 = inttoptr i32 %91 to ptr
  %93 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %92) #6, !srcloc !15
  %94 = add i32 %93, %90
  %95 = inttoptr i32 %94 to ptr
  %96 = load i64, ptr %95, align 8
  %97 = add i64 %82, %96
  store i64 %97, ptr %95, align 8
  br label %98

98:                                               ; preds = %79, %62
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %99 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 20
  store volatile i32 0, ptr %99, align 8
  %100 = getelementptr inbounds %struct.blk_flush_queue, ptr %9, i32 0, i32 1
  %101 = load i8, ptr %100, align 1
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  store i8 0, ptr %100, align 1
  br label %104

104:                                              ; preds = %103, %98
  %105 = phi i8 [ %101, %103 ], [ %1, %98 ]
  %106 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  %109 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 5
  br i1 %108, label %110, label %111

110:                                              ; preds = %104
  store i32 -1, ptr %109, align 4
  br label %144

111:                                              ; preds = %104
  %112 = load i32, ptr %109, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %142, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 6
  %116 = load i32, ptr %115, align 8
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %142, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 2
  %120 = load ptr, ptr %119, align 8
  %121 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %120, i32 0, i32 19
  %122 = load ptr, ptr %121, align 16
  %123 = load ptr, ptr %4, align 4
  tail call void @blk_mq_put_tag(ptr noundef %122, ptr noundef %123, i32 noundef %112) #10
  store i32 -1, ptr %109, align 4
  %124 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %125 = load i32, ptr %124, align 8
  %126 = and i32 %125, 64
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %142, label %128

128:                                              ; preds = %118
  %129 = and i32 %125, -65
  store i32 %129, ptr %124, align 8
  %130 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %120, i32 0, i32 5
  %131 = load i32, ptr %130, align 8
  %132 = and i32 %131, 8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %120, i32 0, i32 7
  %136 = load ptr, ptr %135, align 64
  %137 = getelementptr inbounds %struct.request_queue, ptr %136, i32 0, i32 29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %137) #10, !srcloc !11
  %138 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %137, ptr %137, i32 1, ptr elementtype(i32) %137) #10, !srcloc !17
  br label %142

139:                                              ; preds = %128
  %140 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %120, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %140) #10, !srcloc !11
  %141 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %140, ptr %140, i32 1, ptr elementtype(i32) %140) #10, !srcloc !17
  br label %142

142:                                              ; preds = %139, %134, %118, %114, %111
  %143 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 6
  store i32 -1, ptr %143, align 8
  br label %144

144:                                              ; preds = %142, %110
  %145 = load i8, ptr %9, align 4
  %146 = lshr i8 %145, 1
  %147 = and i8 %146, 1
  %148 = zext i8 %147 to i32
  %149 = getelementptr %struct.blk_flush_queue, ptr %9, i32 0, i32 3, i32 %148
  %150 = and i8 %145, 1
  %151 = icmp eq i8 %150, %147
  br i1 %151, label %152, label %153, !prof !9

152:                                              ; preds = %144
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-flush.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 258, 0\0A.popsection", ""() #10, !srcloc !18
  unreachable

153:                                              ; preds = %144
  %154 = shl nuw nsw i8 %147, 1
  %155 = and i8 %145, -3
  %156 = or i8 %154, %155
  %157 = xor i8 %156, 2
  store i8 %157, ptr %9, align 4
  %158 = load ptr, ptr %149, align 4
  %159 = icmp eq ptr %158, %149
  br i1 %159, label %172, label %160

160:                                              ; preds = %168, %153
  %161 = phi ptr [ %170, %168 ], [ %158, %153 ]
  %162 = getelementptr i8, ptr %161, i32 -4
  %163 = load i32, ptr %162, align 8
  %164 = xor i32 %163, -1
  %165 = tail call i32 @llvm.cttz.i32(i32 %164, i1 false) #10, !range !19
  %166 = shl nuw i32 1, %165
  switch i32 %166, label %167 [
    i32 4, label %168
    i32 1, label %168
  ]

167:                                              ; preds = %160
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-flush.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 267, 0\0A.popsection", ""() #10, !srcloc !20
  unreachable

168:                                              ; preds = %160, %160
  %169 = getelementptr i8, ptr %161, i32 -132
  %170 = load ptr, ptr %161, align 4
  tail call fastcc void @blk_flush_complete_seq(ptr noundef %169, ptr noundef %9, i32 noundef %166, i8 noundef zeroext %105)
  %171 = icmp eq ptr %170, %149
  br i1 %171, label %172, label %160

172:                                              ; preds = %168, %153, %24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_insert_flush(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 11
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = icmp ult i32 %6, 512
  %8 = select i1 %7, i32 0, i32 2
  %9 = and i32 %4, 131072
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  br i1 %10, label %38, label %13

13:                                               ; preds = %1
  %14 = lshr i32 %12, 18
  %15 = and i32 %14, 1
  %16 = or i32 %15, %8
  %17 = and i32 %4, 262144
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.blk_mq_ctx, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %23, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  br label %52

27:                                               ; preds = %13
  %28 = lshr i32 %12, 15
  %29 = and i32 %28, 4
  %30 = or i32 %16, %29
  %31 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.blk_mq_ctx, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %34, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  br label %48

38:                                               ; preds = %1
  %39 = and i32 %4, 262144
  %40 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.blk_mq_ctx, ptr %41, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %43, i32 0, i32 8
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %47 = icmp eq i32 %39, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %38, %27
  %49 = phi ptr [ %37, %27 ], [ %46, %38 ]
  %50 = phi ptr [ %36, %27 ], [ %45, %38 ]
  %51 = phi i32 [ %30, %27 ], [ %8, %38 ]
  br label %52

52:                                               ; preds = %48, %38, %19
  %53 = phi ptr [ %49, %48 ], [ %46, %38 ], [ %26, %19 ]
  %54 = phi ptr [ %50, %48 ], [ %45, %38 ], [ %25, %19 ]
  %55 = phi i32 [ %51, %48 ], [ %8, %38 ], [ %16, %19 ]
  %56 = phi i32 [ -395265, %48 ], [ -264193, %38 ], [ -264193, %19 ]
  %57 = and i32 %12, %56
  %58 = or i32 %57, 2048
  store i32 %58, ptr %53, align 4
  %59 = icmp eq i32 %55, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  tail call void @blk_mq_end_request(ptr noundef %0, i8 noundef zeroext 0) #10
  br label %86

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 10
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 11
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %63, %65
  br i1 %66, label %68, label %67, !prof !21

67:                                               ; preds = %61
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-flush.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #10, !srcloc !22
  unreachable

68:                                               ; preds = %61
  %69 = and i32 %55, 7
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  tail call void @blk_mq_request_bypass_insert(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br label %86

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 25
  store i64 0, ptr %73, align 8
  %74 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 25, i32 0, i32 1
  store volatile ptr %74, ptr %74, align 4
  %75 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 25, i32 0, i32 1, i32 1
  store ptr %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %77 = load i32, ptr %76, align 8
  %78 = or i32 %77, 16
  store i32 %78, ptr %76, align 8
  %79 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 27
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 25, i32 0, i32 2
  store ptr %80, ptr %81, align 4
  store ptr @mq_flush_data_end_io, ptr %79, align 8
  %82 = getelementptr inbounds %struct.blk_flush_queue, ptr %54, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %82) #10
  %83 = xor i32 %69, 7
  tail call fastcc void @blk_flush_complete_seq(ptr noundef %0, ptr noundef %54, i32 noundef %83, i8 noundef zeroext 0)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !23
  %84 = load i16, ptr %82, align 4
  %85 = add i16 %84, 1
  store i16 %85, ptr %82, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !25
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !27
  br label %86

86:                                               ; preds = %72, %71, %60
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_request_bypass_insert(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mq_flush_data_end_io(ptr noundef %0, i8 noundef zeroext %1) #1 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.blk_mq_ctx, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %50, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22, !prof !9

19:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 366, i32 noundef 9, ptr noundef null) #10
  %20 = load i32, ptr %16, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %50, label %22

22:                                               ; preds = %19, %15
  %23 = phi i32 [ %20, %19 ], [ %17, %15 ]
  %24 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 6
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %50, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %28, i32 0, i32 19
  %30 = load ptr, ptr %29, align 16
  %31 = load ptr, ptr %6, align 4
  tail call void @blk_mq_put_tag(ptr noundef %30, ptr noundef %31, i32 noundef %23) #10
  store i32 -1, ptr %16, align 4
  %32 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 64
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %27
  %37 = and i32 %33, -65
  store i32 %37, ptr %32, align 8
  %38 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %28, i32 0, i32 5
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %28, i32 0, i32 7
  %44 = load ptr, ptr %43, align 64
  %45 = getelementptr inbounds %struct.request_queue, ptr %44, i32 0, i32 29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #10, !srcloc !11
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #10, !srcloc !17
  br label %50

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %28, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #10, !srcloc !11
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #10, !srcloc !17
  br label %50

50:                                               ; preds = %47, %42, %27, %22, %19, %2
  %51 = getelementptr inbounds %struct.blk_flush_queue, ptr %11, i32 0, i32 6
  %52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %51) #10
  tail call fastcc void @blk_flush_complete_seq(ptr noundef %0, ptr noundef %11, i32 noundef 2, i8 noundef zeroext %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %51, i32 noundef %52) #10
  %53 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 2
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %54, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  tail call void @__blk_mq_sched_restart(ptr noundef %5) #10
  br label %58

58:                                               ; preds = %57, %50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @blk_flush_complete_seq(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #1 {
  %5 = load ptr, ptr %0, align 8
  %6 = load i8, ptr %1, align 4
  %7 = and i8 %6, 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr %struct.blk_flush_queue, ptr %1, i32 0, i32 3, i32 %8
  %10 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 25
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14, !prof !21

14:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-flush.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 178, 0\0A.popsection", ""() #10, !srcloc !28
  unreachable

15:                                               ; preds = %4
  %16 = or i32 %11, %2
  store i32 %16, ptr %10, align 8
  %17 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i8 %3, 0
  br i1 %19, label %20, label %47, !prof !21

20:                                               ; preds = %15
  %21 = xor i32 %16, -1
  %22 = tail call i32 @llvm.cttz.i32(i32 %21, i1 false) #10, !range !19
  %23 = shl nuw i32 1, %22
  switch i32 %23, label %67 [
    i32 1, label %24
    i32 4, label %24
    i32 2, label %38
    i32 8, label %47
  ]

24:                                               ; preds = %20, %20
  %25 = load volatile ptr, ptr %9, align 4
  %26 = icmp eq ptr %25, %9
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load volatile i32, ptr @jiffies, align 64
  %29 = getelementptr inbounds %struct.blk_flush_queue, ptr %1, i32 0, i32 2
  store i32 %28, ptr %29, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 25, i32 0, i32 1
  %32 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 25, i32 0, i32 1, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %31, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %33, ptr %35, align 4
  store volatile ptr %34, ptr %33, align 4
  %36 = getelementptr %struct.blk_flush_queue, ptr %1, i32 0, i32 3, i32 %8, i32 1
  %37 = load ptr, ptr %36, align 4
  store ptr %31, ptr %36, align 4
  store ptr %9, ptr %31, align 4
  store ptr %37, ptr %32, align 4
  store volatile ptr %31, ptr %37, align 4
  br label %68

38:                                               ; preds = %20
  %39 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 25, i32 0, i32 1
  %40 = getelementptr inbounds %struct.blk_flush_queue, ptr %1, i32 0, i32 4
  %41 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 25, i32 0, i32 1, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %39, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %42, ptr %44, align 4
  store volatile ptr %43, ptr %42, align 4
  %45 = getelementptr inbounds %struct.blk_flush_queue, ptr %1, i32 0, i32 4, i32 1
  %46 = load ptr, ptr %45, align 4
  store ptr %39, ptr %45, align 4
  store ptr %40, ptr %39, align 4
  store ptr %46, ptr %41, align 4
  store volatile ptr %39, ptr %46, align 4
  tail call void @blk_mq_add_to_requeue_list(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext true) #10
  br label %68

47:                                               ; preds = %20, %15
  %48 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 12
  %49 = load volatile ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %52, label %51, !prof !21

51:                                               ; preds = %47
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-flush.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 208, 0\0A.popsection", ""() #10, !srcloc !29
  unreachable

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 25, i32 0, i32 1
  %54 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 25, i32 0, i32 1, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %53, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %55, ptr %57, align 4
  store volatile ptr %56, ptr %55, align 4
  store volatile ptr %53, ptr %53, align 4
  store ptr %53, ptr %54, align 4
  %58 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 11
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 10
  store ptr %59, ptr %60, align 8
  %61 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, -17
  store i32 %63, ptr %61, align 8
  %64 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 25, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 27
  store ptr %65, ptr %66, align 8
  tail call void @blk_mq_end_request(ptr noundef %0, i8 noundef zeroext %3) #10
  br label %68

67:                                               ; preds = %20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-flush.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 215, 0\0A.popsection", ""() #10, !srcloc !30
  unreachable

68:                                               ; preds = %52, %38, %30
  %69 = load i8, ptr %1, align 4
  %70 = and i8 %69, 1
  %71 = zext i8 %70 to i32
  %72 = getelementptr %struct.blk_flush_queue, ptr %1, i32 0, i32 3, i32 %71
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.blk_flush_queue, ptr %1, i32 0, i32 5
  %75 = load ptr, ptr %74, align 4
  %76 = lshr i8 %69, 1
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %70, %77
  br i1 %78, label %79, label %126

79:                                               ; preds = %68
  %80 = load volatile ptr, ptr %72, align 4
  %81 = icmp eq ptr %80, %72
  br i1 %81, label %126, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.blk_flush_queue, ptr %1, i32 0, i32 4
  %84 = load volatile ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, %83
  br i1 %85, label %93, label %86

86:                                               ; preds = %82
  %87 = load volatile i32, ptr @jiffies, align 64
  %88 = getelementptr inbounds %struct.blk_flush_queue, ptr %1, i32 0, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %87, -500
  %91 = sub i32 %90, %89
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %126, label %93

93:                                               ; preds = %86, %82
  %94 = xor i8 %69, 1
  store i8 %94, ptr %1, align 4
  tail call void @blk_rq_init(ptr noundef %5, ptr noundef %75) #10
  %95 = getelementptr i8, ptr %73, i32 -128
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.request, ptr %75, i32 0, i32 1
  store ptr %96, ptr %97, align 4
  %98 = getelementptr i8, ptr %73, i32 -124
  %99 = load ptr, ptr %98, align 8
  %100 = getelementptr inbounds %struct.request, ptr %75, i32 0, i32 2
  store ptr %99, ptr %100, align 8
  %101 = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %93
  %105 = getelementptr i8, ptr %73, i32 -112
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr inbounds %struct.request, ptr %75, i32 0, i32 5
  store i32 %106, ptr %107, align 4
  %108 = getelementptr inbounds %struct.request, ptr %75, i32 0, i32 4
  %109 = load i32, ptr %108, align 8
  %110 = or i32 %109, 64
  br label %117

111:                                              ; preds = %93
  %112 = getelementptr i8, ptr %73, i32 -108
  %113 = load i32, ptr %112, align 8
  %114 = getelementptr inbounds %struct.request, ptr %75, i32 0, i32 6
  store i32 %113, ptr %114, align 8
  %115 = getelementptr inbounds %struct.request, ptr %75, i32 0, i32 4
  %116 = load i32, ptr %115, align 8
  br label %117

117:                                              ; preds = %111, %104
  %118 = phi i32 [ %116, %111 ], [ %110, %104 ]
  %119 = getelementptr inbounds %struct.request, ptr %75, i32 0, i32 3
  %120 = and i32 %18, 33556224
  %121 = or i32 %120, 262146
  store i32 %121, ptr %119, align 4
  %122 = getelementptr inbounds %struct.request, ptr %75, i32 0, i32 4
  %123 = or i32 %118, 16
  store i32 %123, ptr %122, align 8
  %124 = getelementptr inbounds %struct.request, ptr %75, i32 0, i32 27
  store ptr @flush_end_io, ptr %124, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !31
  %125 = getelementptr inbounds %struct.request, ptr %75, i32 0, i32 21
  store volatile i32 1, ptr %125, align 4
  tail call void @blk_mq_add_to_requeue_list(ptr noundef %75, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br label %126

126:                                              ; preds = %117, %86, %79, %68
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blkdev_issue_flush(ptr noundef %0) #1 {
  %2 = alloca %struct.bio, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false), !annotation !32
  call void @bio_init(ptr noundef nonnull %2, ptr noundef null, i16 noundef zeroext 0) #10
  %3 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 3
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, -2049
  store i16 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = and i16 %4, -2177
  store i16 %10, ptr %3, align 4
  br label %11

11:                                               ; preds = %9, %1
  store ptr %0, ptr %6, align 4
  %12 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 2
  store i32 262145, ptr %12, align 4
  %13 = call i32 @submit_bio_wait(ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #10
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_init(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @blk_alloc_flush_queue(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = or i32 %2, 256
  %5 = and i32 %2, 17
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7, !prof !21

7:                                                ; preds = %3
  %8 = and i32 %2, 1
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 1, i32 2
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ 0, %3 ], [ %10, %7 ]
  %13 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %12, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef %4, i32 noundef 40) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.blk_flush_queue, ptr %15, i32 0, i32 6
  store i32 0, ptr %18, align 4
  %19 = add i32 %1, 167
  %20 = or i32 %19, 63
  %21 = add i32 %20, 1
  %22 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef %4) #12
  %23 = getelementptr inbounds %struct.blk_flush_queue, ptr %15, i32 0, i32 5
  store ptr %22, ptr %23, align 8
  %24 = icmp eq ptr %22, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.blk_flush_queue, ptr %15, i32 0, i32 3
  store volatile ptr %26, ptr %26, align 8
  %27 = getelementptr inbounds %struct.blk_flush_queue, ptr %15, i32 0, i32 3, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  %28 = getelementptr %struct.blk_flush_queue, ptr %15, i32 0, i32 3, i32 1
  store volatile ptr %28, ptr %28, align 8
  %29 = getelementptr %struct.blk_flush_queue, ptr %15, i32 0, i32 3, i32 1, i32 1
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.blk_flush_queue, ptr %15, i32 0, i32 4
  store volatile ptr %30, ptr %30, align 8
  %31 = getelementptr inbounds %struct.blk_flush_queue, ptr %15, i32 0, i32 4, i32 1
  store ptr %30, ptr %31, align 4
  br label %33

32:                                               ; preds = %17
  tail call void @kfree(ptr noundef nonnull %15) #10
  br label %33

33:                                               ; preds = %32, %25, %11
  %34 = phi ptr [ %15, %25 ], [ null, %11 ], [ null, %32 ]
  ret ptr %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_free_flush_queue(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.blk_flush_queue, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #10
  tail call void @kfree(ptr noundef nonnull %0) #10
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @blk_mq_hctx_set_fq_lock_class(ptr nocapture %0, ptr nocapture %1) #5 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_put_tag(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_mq_sched_restart(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_add_to_requeue_list(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_rq_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2148027095}
!11 = !{i64 424257, i64 2147914228, i64 2147914254, i64 2147914301, i64 2147914323, i64 2147914351, i64 2147914371}
!12 = !{i64 2147929481, i64 2147929513, i64 2147929542, i64 2147929576, i64 2147929607, i64 2147929630}
!13 = !{i64 2148027298}
!14 = !{i64 2153231385}
!15 = !{i64 338196}
!16 = !{i64 2153259521}
!17 = !{i64 2147928797, i64 2147928823, i64 2147928852, i64 2147928886, i64 2147928917, i64 2147928940}
!18 = !{i64 2153265434, i64 2153265916, i64 2153265471, i64 2153265527, i64 2153265561, i64 2153265585, i64 2153265626, i64 2153265647, i64 2153265675, i64 2153265709}
!19 = !{i32 0, i32 33}
!20 = !{i64 2153271433, i64 2153271915, i64 2153271470, i64 2153271526, i64 2153271560, i64 2153271584, i64 2153271625, i64 2153271646, i64 2153271674, i64 2153271708}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2153275798, i64 2153276280, i64 2153275835, i64 2153275891, i64 2153275925, i64 2153275949, i64 2153275990, i64 2153276011, i64 2153276039, i64 2153276073}
!23 = !{i64 2148940175}
!24 = !{i64 2148935999}
!25 = !{i64 2148936074, i64 2148936101, i64 2148936148, i64 2148936170, i64 2148936198, i64 2148936218}
!26 = !{i64 319741}
!27 = !{i64 2148964319}
!28 = !{i64 2153259821, i64 2153260303, i64 2153259858, i64 2153259914, i64 2153259948, i64 2153259972, i64 2153260013, i64 2153260034, i64 2153260062, i64 2153260096}
!29 = !{i64 2153260895, i64 2153261377, i64 2153260932, i64 2153260988, i64 2153261022, i64 2153261046, i64 2153261087, i64 2153261108, i64 2153261136, i64 2153261170}
!30 = !{i64 2153261803, i64 2153262285, i64 2153261840, i64 2153261896, i64 2153261930, i64 2153261954, i64 2153261995, i64 2153262016, i64 2153262044, i64 2153262078}
!31 = !{i64 2153274541}
!32 = !{!"auto-init"}
