; ModuleID = '/llk/IR/block/elevator.c_pt.bc'
source_filename = "../block/elevator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_elv_bio_merge_ok:\09\09\09\09\09"
module asm "\09.asciz \09\22elv_bio_merge_ok\22\09\09\09\09\09"
module asm "__kstrtabns_elv_bio_merge_ok:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_elevator_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22elevator_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_elevator_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_elv_rqhash_del:\09\09\09\09\09"
module asm "\09.asciz \09\22elv_rqhash_del\22\09\09\09\09\09"
module asm "__kstrtabns_elv_rqhash_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_elv_rqhash_add:\09\09\09\09\09"
module asm "\09.asciz \09\22elv_rqhash_add\22\09\09\09\09\09"
module asm "__kstrtabns_elv_rqhash_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_elv_rb_add:\09\09\09\09\09"
module asm "\09.asciz \09\22elv_rb_add\22\09\09\09\09\09"
module asm "__kstrtabns_elv_rb_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_elv_rb_del:\09\09\09\09\09"
module asm "\09.asciz \09\22elv_rb_del\22\09\09\09\09\09"
module asm "__kstrtabns_elv_rb_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_elv_rb_find:\09\09\09\09\09"
module asm "\09.asciz \09\22elv_rb_find\22\09\09\09\09\09"
module asm "__kstrtabns_elv_rb_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_elv_register:\09\09\09\09\09"
module asm "\09.asciz \09\22elv_register\22\09\09\09\09\09"
module asm "__kstrtabns_elv_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_elv_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22elv_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_elv_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_elv_rb_former_request:\09\09\09\09\09"
module asm "\09.asciz \09\22elv_rb_former_request\22\09\09\09\09\09"
module asm "__kstrtabns_elv_rb_former_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_elv_rb_latter_request:\09\09\09\09\09"
module asm "\09.asciz \09\22elv_rb_latter_request\22\09\09\09\09\09"
module asm "__kstrtabns_elv_rb_latter_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.sysfs_ops = type { ptr, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.elevator_type = type { ptr, %struct.elevator_mq_ops, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.elevator_queue = type { ptr, ptr, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.hlist_head = type { ptr }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.77, ptr, i64, i64, i16, i16, i16, i16, i32, %struct.atomic_t, i32, %union.anon.78, %union.anon.79, %union.anon.80, %union.anon.83, ptr, ptr }
%union.anon.77 = type { %struct.list_head }
%union.anon.78 = type { %struct.hlist_node }
%union.anon.79 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.80 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, %struct.list_head, ptr }
%union.anon.83 = type { i64, [8 x i8] }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.41, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.41 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.elv_fs_entry = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }

@__kstrtab_elv_bio_merge_ok = external dso_local constant [0 x i8], align 1
@__kstrtabns_elv_bio_merge_ok = external dso_local constant [0 x i8], align 1
@__ksymtab_elv_bio_merge_ok = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @elv_bio_merge_ok to i32), ptr @__kstrtab_elv_bio_merge_ok, ptr @__kstrtabns_elv_bio_merge_ok }, section "___ksymtab+elv_bio_merge_ok", align 4
@elv_ktype = internal global %struct.kobj_type { ptr @elevator_release, ptr @elv_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@elevator_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [16 x i8] c"&eq->sysfs_lock\00", align 1
@__kstrtab_elevator_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_elevator_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_elevator_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @elevator_alloc to i32), ptr @__kstrtab_elevator_alloc, ptr @__kstrtabns_elevator_alloc }, section "___ksymtab+elevator_alloc", align 4
@__kstrtab_elv_rqhash_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_elv_rqhash_del = external dso_local constant [0 x i8], align 1
@__ksymtab_elv_rqhash_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @elv_rqhash_del to i32), ptr @__kstrtab_elv_rqhash_del, ptr @__kstrtabns_elv_rqhash_del }, section "___ksymtab_gpl+elv_rqhash_del", align 4
@__kstrtab_elv_rqhash_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_elv_rqhash_add = external dso_local constant [0 x i8], align 1
@__ksymtab_elv_rqhash_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @elv_rqhash_add to i32), ptr @__kstrtab_elv_rqhash_add, ptr @__kstrtabns_elv_rqhash_add }, section "___ksymtab_gpl+elv_rqhash_add", align 4
@__kstrtab_elv_rb_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_elv_rb_add = external dso_local constant [0 x i8], align 1
@__ksymtab_elv_rb_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @elv_rb_add to i32), ptr @__kstrtab_elv_rb_add, ptr @__kstrtabns_elv_rb_add }, section "___ksymtab+elv_rb_add", align 4
@__kstrtab_elv_rb_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_elv_rb_del = external dso_local constant [0 x i8], align 1
@__ksymtab_elv_rb_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @elv_rb_del to i32), ptr @__kstrtab_elv_rb_del, ptr @__kstrtabns_elv_rb_del }, section "___ksymtab+elv_rb_del", align 4
@__kstrtab_elv_rb_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_elv_rb_find = external dso_local constant [0 x i8], align 1
@__ksymtab_elv_rb_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @elv_rb_find to i32), ptr @__kstrtab_elv_rb_find, ptr @__kstrtabns_elv_rb_find }, section "___ksymtab+elv_rb_find", align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"iosched\00", align 1
@elv_register.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"block/elevator.c\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s_io_cq\00", align 1
@elv_list_lock = internal global %struct.spinlock zeroinitializer, align 4
@elv_list = internal global %struct.list_head { ptr @elv_list, ptr @elv_list }, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"\016io scheduler %s registered\0A\00", align 1
@__kstrtab_elv_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_elv_register = external dso_local constant [0 x i8], align 1
@__ksymtab_elv_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @elv_register to i32), ptr @__kstrtab_elv_register, ptr @__kstrtabns_elv_register }, section "___ksymtab_gpl+elv_register", align 4
@__kstrtab_elv_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_elv_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_elv_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @elv_unregister to i32), ptr @__kstrtab_elv_unregister, ptr @__kstrtabns_elv_unregister }, section "___ksymtab_gpl+elv_unregister", align 4
@elevator_init_mq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"\014\22%s\22 elevator initialization failed, falling back to \22none\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@__kstrtab_elv_rb_former_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_elv_rb_former_request = external dso_local constant [0 x i8], align 1
@__ksymtab_elv_rb_former_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @elv_rb_former_request to i32), ptr @__kstrtab_elv_rb_former_request, ptr @__kstrtabns_elv_rb_former_request }, section "___ksymtab+elv_rb_former_request", align 4
@__kstrtab_elv_rb_latter_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_elv_rb_latter_request = external dso_local constant [0 x i8], align 1
@__ksymtab_elv_rb_latter_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @elv_rb_latter_request to i32), ptr @__kstrtab_elv_rb_latter_request, ptr @__kstrtabns_elv_rb_latter_request }, section "___ksymtab+elv_rb_latter_request", align 4
@__setup_str_elevator_setup = internal constant [10 x i8] c"elevator=\00", section ".init.rodata", align 1
@__setup_elevator_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_elevator_setup, ptr @elevator_setup, i32 0 }, section ".init.setup", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@elv_sysfs_ops = internal constant %struct.sysfs_ops { ptr @elv_attr_show, ptr @elv_attr_store }, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"mq-deadline\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"%s-iosched\00", align 1
@.str.15 = private unnamed_addr constant [125 x i8] c"\014Kernel parameter elevator= does not have any effect anymore.\0APlease use sysfs to set IO scheduler for individual devices.\0A\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_elevator_alloc, ptr @__ksymtab_elv_bio_merge_ok, ptr @__ksymtab_elv_rb_add, ptr @__ksymtab_elv_rb_del, ptr @__ksymtab_elv_rb_find, ptr @__ksymtab_elv_rb_former_request, ptr @__ksymtab_elv_rb_latter_request, ptr @__ksymtab_elv_register, ptr @__ksymtab_elv_rqhash_add, ptr @__ksymtab_elv_rqhash_del, ptr @__ksymtab_elv_unregister, ptr @__setup_elevator_setup], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @elv_bio_merge_ok(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call zeroext i1 @blk_rq_merge_ok(ptr noundef %0, ptr noundef %1) #13
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.elevator_type, ptr %8, i32 0, i32 1, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = tail call zeroext i1 %10(ptr noundef %5, ptr noundef %0, ptr noundef %1) #13
  br label %14

14:                                               ; preds = %12, %4, %2
  %15 = phi i1 [ false, %2 ], [ true, %4 ], [ %13, %12 ]
  ret i1 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_rq_merge_ok(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @elevator_alloc(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 324) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !8

6:                                                ; preds = %2
  store ptr %1, ptr %4, align 8
  %7 = getelementptr inbounds %struct.elevator_queue, ptr %4, i32 0, i32 2
  tail call void @kobject_init(ptr noundef %7, ptr noundef nonnull @elv_ktype) #13
  %8 = getelementptr inbounds %struct.elevator_queue, ptr %4, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull @elevator_alloc.__key) #13
  %9 = getelementptr inbounds %struct.elevator_queue, ptr %4, i32 0, i32 5
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(256) %9, i8 0, i32 256, i1 false) #13
  br label %10

10:                                               ; preds = %6, %2
  ret ptr %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @elevator_exit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #13
  tail call void @blk_mq_exit_sched(ptr noundef %0, ptr noundef %3) #13
  tail call void @mutex_unlock(ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %5) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_exit_sched(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @elv_rqhash_del(ptr nocapture readnone %0, ptr nocapture noundef %1) #3 {
  %3 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65536
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 23
  %9 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 23, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
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
  %18 = load i32, ptr %3, align 8
  br label %19

19:                                               ; preds = %17, %7
  %20 = phi i32 [ %4, %7 ], [ %18, %17 ]
  %21 = and i32 %20, -65537
  store i32 %21, ptr %3, align 8
  br label %22

22:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @elv_rqhash_add(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65536
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !9

7:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/elevator.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 219, 0\0A.popsection", ""() #13, !srcloc !10
  unreachable

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 23
  %12 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 9
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 8
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 9
  %17 = trunc i64 %13 to i32
  %18 = add i32 %16, %17
  %19 = mul i32 %18, 1640531527
  %20 = lshr i32 %19, 26
  %21 = getelementptr %struct.elevator_queue, ptr %10, i32 0, i32 5, i32 %20
  %22 = load ptr, ptr %21, align 4
  store volatile ptr %22, ptr %11, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %8
  %25 = getelementptr inbounds %struct.hlist_node, ptr %22, i32 0, i32 1
  store volatile ptr %11, ptr %25, align 4
  br label %26

26:                                               ; preds = %24, %8
  store volatile ptr %11, ptr %21, align 4
  %27 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 23, i32 0, i32 1
  store volatile ptr %21, ptr %27, align 4
  %28 = load i32, ptr %3, align 8
  %29 = or i32 %28, 65536
  store i32 %29, ptr %3, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @elv_rqhash_reposition(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 23
  %4 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 23, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 4
  store volatile ptr %8, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  store volatile ptr %5, ptr %11, align 4
  br label %12

12:                                               ; preds = %10, %7
  store ptr null, ptr %3, align 4
  store ptr null, ptr %4, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, -65537
  store i32 %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 9
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 8
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 9
  %24 = trunc i64 %20 to i32
  %25 = add i32 %23, %24
  %26 = mul i32 %25, 1640531527
  %27 = lshr i32 %26, 26
  %28 = getelementptr %struct.elevator_queue, ptr %18, i32 0, i32 5, i32 %27
  %29 = load ptr, ptr %28, align 4
  store volatile ptr %29, ptr %3, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %13
  %32 = getelementptr inbounds %struct.hlist_node, ptr %29, i32 0, i32 1
  store volatile ptr %3, ptr %32, align 4
  br label %33

33:                                               ; preds = %31, %13
  store volatile ptr %3, ptr %28, align 4
  store volatile ptr %28, ptr %4, align 4
  %34 = load i32, ptr %14, align 8
  %35 = or i32 %34, 65536
  store i32 %35, ptr %14, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @elv_rqhash_find(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = trunc i64 %1 to i32
  %6 = mul i32 %5, 1640531527
  %7 = lshr i32 %6, 26
  %8 = getelementptr %struct.elevator_queue, ptr %4, i32 0, i32 5, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = getelementptr i8, ptr %9, i32 -108
  %12 = icmp eq ptr %11, null
  %13 = or i1 %10, %12
  br i1 %13, label %63, label %14

14:                                               ; preds = %58, %2
  %15 = phi ptr [ %60, %58 ], [ %11, %2 ]
  %16 = getelementptr inbounds %struct.request, ptr %15, i32 0, i32 23
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.request, ptr %15, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65536
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23, !prof !8

22:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/elevator.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 238, 0\0A.popsection", ""() #13, !srcloc !11
  unreachable

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.request, ptr %15, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 254
  %27 = icmp eq i32 %26, 34
  br i1 %27, label %36, label %28, !prof !12

28:                                               ; preds = %23
  %29 = trunc i32 %25 to i8
  switch i8 %29, label %30 [
    i8 2, label %36
    i8 9, label %36
    i8 13, label %36
  ]

30:                                               ; preds = %28
  %31 = and i32 %25, 409600
  %32 = icmp eq i32 %31, 0
  %33 = and i32 %19, 262170
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %49, label %36, !prof !13

36:                                               ; preds = %30, %28, %28, %28, %23
  %37 = getelementptr inbounds %struct.request, ptr %15, i32 0, i32 23, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  store volatile ptr %17, ptr %38, align 4
  %41 = icmp eq ptr %17, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1
  store volatile ptr %38, ptr %43, align 4
  br label %44

44:                                               ; preds = %42, %40
  store ptr null, ptr %16, align 4
  store ptr null, ptr %37, align 4
  %45 = load i32, ptr %18, align 8
  br label %46

46:                                               ; preds = %44, %36
  %47 = phi i32 [ %19, %36 ], [ %45, %44 ]
  %48 = and i32 %47, -65537
  store i32 %48, ptr %18, align 8
  br label %58

49:                                               ; preds = %30
  %50 = getelementptr inbounds %struct.request, ptr %15, i32 0, i32 9
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds %struct.request, ptr %15, i32 0, i32 8
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 9
  %55 = zext i32 %54 to i64
  %56 = add i64 %51, %55
  %57 = icmp eq i64 %56, %1
  br i1 %57, label %63, label %58

58:                                               ; preds = %49, %46
  %59 = icmp eq ptr %17, null
  %60 = getelementptr i8, ptr %17, i32 -108
  %61 = icmp eq ptr %60, null
  %62 = or i1 %59, %61
  br i1 %62, label %63, label %14

63:                                               ; preds = %58, %49, %2
  %64 = phi ptr [ null, %2 ], [ null, %58 ], [ %15, %49 ]
  ret ptr %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @elv_rb_add(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 9
  %7 = load i64, ptr %6, align 8
  br label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %3, %5 ], [ %16, %8 ]
  %10 = getelementptr i8, ptr %9, i32 -76
  %11 = load i64, ptr %10, align 8
  %12 = icmp ult i64 %7, %11
  %13 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2
  %14 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1
  %15 = select i1 %12, ptr %13, ptr %14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8

18:                                               ; preds = %8
  %19 = ptrtoint ptr %9 to i32
  br label %20

20:                                               ; preds = %18, %2
  %21 = phi i32 [ %19, %18 ], [ 0, %2 ]
  %22 = phi ptr [ %15, %18 ], [ %0, %2 ]
  %23 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 24
  store i32 %21, ptr %23, align 4
  %24 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 24, i32 0, i32 1
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 24, i32 0, i32 2
  store ptr null, ptr %25, align 4
  store ptr %23, ptr %22, align 4
  tail call void @rb_insert_color(ptr noundef %23, ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @elv_rb_del(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 24
  %4 = load i32, ptr %3, align 4
  %5 = ptrtoint ptr %3 to i32
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/elevator.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 279, 0\0A.popsection", ""() #13, !srcloc !14
  unreachable

8:                                                ; preds = %2
  tail call void @rb_erase(ptr noundef %3, ptr noundef %0) #13
  store i32 %5, ptr %3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @elv_rb_find(ptr nocapture noundef readonly %0, i64 noundef %1) #4 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %16, %2
  %6 = phi ptr [ %18, %16 ], [ %3, %2 ]
  %7 = getelementptr i8, ptr %6, i32 -76
  %8 = load i64, ptr %7, align 8
  %9 = icmp ugt i64 %8, %1
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 2
  br label %16

12:                                               ; preds = %5
  %13 = icmp ult i64 %8, %1
  br i1 %13, label %14, label %20

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 1
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %11, %10 ], [ %15, %14 ]
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %5

20:                                               ; preds = %12
  %21 = getelementptr i8, ptr %6, i32 -116
  br label %22

22:                                               ; preds = %20, %16, %2
  %23 = phi ptr [ %21, %20 ], [ null, %2 ], [ null, %16 ]
  ret ptr %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @elv_merge(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 11
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %132

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 409600
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %132

15:                                               ; preds = %10
  %16 = load ptr, ptr %0, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %36, label %18

18:                                               ; preds = %15
  %19 = tail call zeroext i1 @blk_rq_merge_ok(ptr noundef nonnull %16, ptr noundef %2) #13
  br i1 %19, label %20, label %36

20:                                               ; preds = %18
  %21 = load ptr, ptr %16, align 8
  %22 = getelementptr inbounds %struct.request_queue, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.elevator_type, ptr %24, i32 0, i32 1, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %20
  %29 = tail call zeroext i1 %26(ptr noundef %21, ptr noundef nonnull %16, ptr noundef %2) #13
  br i1 %29, label %30, label %36

30:                                               ; preds = %28, %20
  %31 = load ptr, ptr %0, align 8
  %32 = tail call i32 @blk_try_merge(ptr noundef %31, ptr noundef %2) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 8
  store ptr %35, ptr %1, align 4
  br label %132

36:                                               ; preds = %30, %28, %18, %15
  %37 = load volatile i32, ptr %6, align 4
  %38 = and i32 %37, 512
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %132

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 8
  %42 = load i64, ptr %41, align 4
  %43 = load ptr, ptr %4, align 4
  %44 = trunc i64 %42 to i32
  %45 = mul i32 %44, 1640531527
  %46 = lshr i32 %45, 26
  %47 = getelementptr %struct.elevator_queue, ptr %43, i32 0, i32 5, i32 %46
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  %50 = getelementptr i8, ptr %48, i32 -108
  %51 = icmp eq ptr %50, null
  %52 = or i1 %49, %51
  br i1 %52, label %125, label %53

53:                                               ; preds = %97, %40
  %54 = phi ptr [ %99, %97 ], [ %50, %40 ]
  %55 = getelementptr inbounds %struct.request, ptr %54, i32 0, i32 23
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.request, ptr %54, i32 0, i32 4
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 65536
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62, !prof !8

61:                                               ; preds = %53
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/elevator.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 238, 0\0A.popsection", ""() #13, !srcloc !11
  unreachable

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.request, ptr %54, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 254
  %66 = icmp eq i32 %65, 34
  br i1 %66, label %75, label %67, !prof !12

67:                                               ; preds = %62
  %68 = trunc i32 %64 to i8
  switch i8 %68, label %69 [
    i8 2, label %75
    i8 9, label %75
    i8 13, label %75
  ]

69:                                               ; preds = %67
  %70 = and i32 %64, 409600
  %71 = icmp eq i32 %70, 0
  %72 = and i32 %58, 262170
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %88, label %75, !prof !13

75:                                               ; preds = %69, %67, %67, %67, %62
  %76 = getelementptr inbounds %struct.request, ptr %54, i32 0, i32 23, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %75
  store volatile ptr %56, ptr %77, align 4
  %80 = icmp eq ptr %56, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.hlist_node, ptr %56, i32 0, i32 1
  store volatile ptr %77, ptr %82, align 4
  br label %83

83:                                               ; preds = %81, %79
  store ptr null, ptr %55, align 4
  store ptr null, ptr %76, align 4
  %84 = load i32, ptr %57, align 8
  br label %85

85:                                               ; preds = %83, %75
  %86 = phi i32 [ %58, %75 ], [ %84, %83 ]
  %87 = and i32 %86, -65537
  store i32 %87, ptr %57, align 8
  br label %97

88:                                               ; preds = %69
  %89 = getelementptr inbounds %struct.request, ptr %54, i32 0, i32 9
  %90 = load i64, ptr %89, align 8
  %91 = getelementptr inbounds %struct.request, ptr %54, i32 0, i32 8
  %92 = load i32, ptr %91, align 8
  %93 = lshr i32 %92, 9
  %94 = zext i32 %93 to i64
  %95 = add i64 %90, %94
  %96 = icmp eq i64 %95, %42
  br i1 %96, label %102, label %97

97:                                               ; preds = %88, %85
  %98 = icmp eq ptr %56, null
  %99 = getelementptr i8, ptr %56, i32 -108
  %100 = icmp eq ptr %99, null
  %101 = or i1 %98, %100
  br i1 %101, label %125, label %53

102:                                              ; preds = %88
  %103 = getelementptr inbounds %struct.request, ptr %54, i32 0, i32 3
  %104 = tail call zeroext i1 @blk_rq_merge_ok(ptr noundef nonnull %54, ptr noundef %2) #13
  br i1 %104, label %105, label %125

105:                                              ; preds = %102
  %106 = load ptr, ptr %54, align 8
  %107 = getelementptr inbounds %struct.request_queue, ptr %106, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.elevator_type, ptr %109, i32 0, i32 1, i32 5
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %105
  %114 = tail call zeroext i1 %111(ptr noundef %106, ptr noundef nonnull %54, ptr noundef %2) #13
  br i1 %114, label %115, label %125

115:                                              ; preds = %113, %105
  store ptr %54, ptr %1, align 4
  %116 = load i32, ptr %103, align 4
  %117 = and i32 %116, 255
  %118 = icmp eq i32 %117, 3
  br i1 %118, label %119, label %132

119:                                              ; preds = %115
  %120 = load ptr, ptr %54, align 8
  %121 = getelementptr inbounds %struct.request_queue, ptr %120, i32 0, i32 32, i32 23
  %122 = load i16, ptr %121, align 4
  %123 = icmp ugt i16 %122, 1
  %124 = select i1 %123, i32 3, i32 2
  br label %132

125:                                              ; preds = %113, %102, %97, %40
  %126 = load ptr, ptr %5, align 4
  %127 = getelementptr inbounds %struct.elevator_type, ptr %126, i32 0, i32 1, i32 7
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %125
  %131 = tail call i32 %128(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  br label %132

132:                                              ; preds = %130, %125, %119, %115, %36, %34, %10, %3
  %133 = phi i32 [ %131, %130 ], [ 0, %10 ], [ 0, %3 ], [ %32, %34 ], [ 0, %36 ], [ 0, %125 ], [ 2, %115 ], [ %124, %119 ]
  ret i32 %133
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_try_merge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @elv_attempt_insert_merge(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 11
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %108

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @blk_attempt_req_merge(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %1) #13
  br i1 %12, label %13, label %18

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 12
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store ptr %15, ptr %14, align 4
  %17 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 12, i32 0, i32 1
  store ptr %2, ptr %17, align 4
  store volatile ptr %14, ptr %2, align 4
  br label %108

18:                                               ; preds = %11, %8
  %19 = load volatile i32, ptr %4, align 4
  %20 = and i32 %19, 512
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %108

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %24 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 9
  %25 = load i64, ptr %24, align 8
  %26 = load ptr, ptr %23, align 4
  %27 = trunc i64 %25 to i32
  %28 = mul i32 %27, 1640531527
  %29 = lshr i32 %28, 26
  %30 = getelementptr %struct.elevator_queue, ptr %26, i32 0, i32 5, i32 %29
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  %33 = getelementptr i8, ptr %31, i32 -108
  %34 = icmp eq ptr %33, null
  %35 = or i1 %32, %34
  br i1 %35, label %108, label %36

36:                                               ; preds = %92, %22
  %37 = phi ptr [ %105, %92 ], [ %33, %22 ]
  %38 = phi i64 [ %97, %92 ], [ %25, %22 ]
  %39 = phi i1 [ true, %92 ], [ false, %22 ]
  %40 = phi ptr [ %42, %92 ], [ %1, %22 ]
  br label %41

41:                                               ; preds = %85, %36
  %42 = phi ptr [ %87, %85 ], [ %37, %36 ]
  %43 = getelementptr inbounds %struct.request, ptr %42, i32 0, i32 23
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.request, ptr %42, i32 0, i32 4
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65536
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50, !prof !8

49:                                               ; preds = %41
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/elevator.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 238, 0\0A.popsection", ""() #13, !srcloc !11
  unreachable

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.request, ptr %42, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 254
  %54 = icmp eq i32 %53, 34
  br i1 %54, label %63, label %55, !prof !12

55:                                               ; preds = %50
  %56 = trunc i32 %52 to i8
  switch i8 %56, label %57 [
    i8 2, label %63
    i8 9, label %63
    i8 13, label %63
  ]

57:                                               ; preds = %55
  %58 = and i32 %52, 409600
  %59 = icmp eq i32 %58, 0
  %60 = and i32 %46, 262170
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %76, label %63, !prof !13

63:                                               ; preds = %57, %55, %55, %55, %50
  %64 = getelementptr inbounds %struct.request, ptr %42, i32 0, i32 23, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  store volatile ptr %44, ptr %65, align 4
  %68 = icmp eq ptr %44, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.hlist_node, ptr %44, i32 0, i32 1
  store volatile ptr %65, ptr %70, align 4
  br label %71

71:                                               ; preds = %69, %67
  store ptr null, ptr %43, align 4
  store ptr null, ptr %64, align 4
  %72 = load i32, ptr %45, align 8
  br label %73

73:                                               ; preds = %71, %63
  %74 = phi i32 [ %46, %63 ], [ %72, %71 ]
  %75 = and i32 %74, -65537
  store i32 %75, ptr %45, align 8
  br label %85

76:                                               ; preds = %57
  %77 = getelementptr inbounds %struct.request, ptr %42, i32 0, i32 9
  %78 = load i64, ptr %77, align 8
  %79 = getelementptr inbounds %struct.request, ptr %42, i32 0, i32 8
  %80 = load i32, ptr %79, align 8
  %81 = lshr i32 %80, 9
  %82 = zext i32 %81 to i64
  %83 = add i64 %78, %82
  %84 = icmp eq i64 %83, %38
  br i1 %84, label %90, label %85

85:                                               ; preds = %76, %73
  %86 = icmp eq ptr %44, null
  %87 = getelementptr i8, ptr %44, i32 -108
  %88 = icmp eq ptr %87, null
  %89 = or i1 %86, %88
  br i1 %89, label %108, label %41

90:                                               ; preds = %76
  %91 = tail call zeroext i1 @blk_attempt_req_merge(ptr noundef %0, ptr noundef nonnull %42, ptr noundef %40) #13
  br i1 %91, label %92, label %108

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.request, ptr %40, i32 0, i32 12
  %94 = load ptr, ptr %2, align 4
  %95 = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  store ptr %93, ptr %95, align 4
  store ptr %94, ptr %93, align 4
  %96 = getelementptr inbounds %struct.request, ptr %40, i32 0, i32 12, i32 0, i32 1
  store ptr %2, ptr %96, align 4
  store volatile ptr %93, ptr %2, align 4
  %97 = load i64, ptr %77, align 8
  %98 = load ptr, ptr %23, align 4
  %99 = trunc i64 %97 to i32
  %100 = mul i32 %99, 1640531527
  %101 = lshr i32 %100, 26
  %102 = getelementptr %struct.elevator_queue, ptr %98, i32 0, i32 5, i32 %101
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  %105 = getelementptr i8, ptr %103, i32 -108
  %106 = icmp eq ptr %105, null
  %107 = or i1 %104, %106
  br i1 %107, label %108, label %36

108:                                              ; preds = %92, %90, %85, %22, %18, %13, %3
  %109 = phi i1 [ true, %13 ], [ false, %3 ], [ false, %18 ], [ false, %22 ], [ %39, %85 ], [ %39, %90 ], [ true, %92 ]
  ret i1 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_attempt_req_merge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @elv_merged_request(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.elevator_type, ptr %6, i32 0, i32 1, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void %8(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  br label %11

11:                                               ; preds = %10, %3
  %12 = icmp eq i32 %2, 2
  br i1 %12, label %13, label %46

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 23
  %15 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 23, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 4
  store volatile ptr %19, ptr %16, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  store volatile ptr %16, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %18
  store ptr null, ptr %14, align 4
  store ptr null, ptr %15, align 4
  br label %24

24:                                               ; preds = %23, %13
  %25 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 4
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, -65537
  store i32 %27, ptr %25, align 8
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 9
  %30 = load i64, ptr %29, align 8
  %31 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 8
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 9
  %34 = trunc i64 %30 to i32
  %35 = add i32 %33, %34
  %36 = mul i32 %35, 1640531527
  %37 = lshr i32 %36, 26
  %38 = getelementptr %struct.elevator_queue, ptr %28, i32 0, i32 5, i32 %37
  %39 = load ptr, ptr %38, align 4
  store volatile ptr %39, ptr %14, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.hlist_node, ptr %39, i32 0, i32 1
  store volatile ptr %14, ptr %42, align 4
  br label %43

43:                                               ; preds = %41, %24
  store volatile ptr %14, ptr %38, align 4
  store volatile ptr %38, ptr %15, align 4
  %44 = load i32, ptr %25, align 8
  %45 = or i32 %44, 65536
  store i32 %45, ptr %25, align 8
  br label %46

46:                                               ; preds = %43, %11
  store ptr %1, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @elv_merge_requests(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.elevator_type, ptr %6, i32 0, i32 1, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void %8(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  br label %11

11:                                               ; preds = %10, %3
  %12 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 23
  %13 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 23, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %12, align 4
  store volatile ptr %17, ptr %14, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1
  store volatile ptr %14, ptr %20, align 4
  br label %21

21:                                               ; preds = %19, %16
  store ptr null, ptr %12, align 4
  store ptr null, ptr %13, align 4
  br label %22

22:                                               ; preds = %21, %11
  %23 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 4
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, -65537
  store i32 %25, ptr %23, align 8
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 9
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 8
  %30 = load i32, ptr %29, align 8
  %31 = lshr i32 %30, 9
  %32 = trunc i64 %28 to i32
  %33 = add i32 %31, %32
  %34 = mul i32 %33, 1640531527
  %35 = lshr i32 %34, 26
  %36 = getelementptr %struct.elevator_queue, ptr %26, i32 0, i32 5, i32 %35
  %37 = load ptr, ptr %36, align 4
  store volatile ptr %37, ptr %12, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %22
  %40 = getelementptr inbounds %struct.hlist_node, ptr %37, i32 0, i32 1
  store volatile ptr %12, ptr %40, align 4
  br label %41

41:                                               ; preds = %39, %22
  store volatile ptr %12, ptr %36, align 4
  store volatile ptr %36, ptr %13, align 4
  %42 = load i32, ptr %23, align 8
  %43 = or i32 %42, 65536
  store i32 %43, ptr %23, align 8
  store ptr %1, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @elv_latter_request(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.elevator_type, ptr %5, i32 0, i32 1, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call ptr %7(ptr noundef %0, ptr noundef %1) #13
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi ptr [ %10, %9 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @elv_former_request(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.elevator_type, ptr %5, i32 0, i32 1, i32 18
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call ptr %7(ptr noundef %0, ptr noundef %1) #13
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi ptr [ %10, %9 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @elv_register_queue(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 16
  %7 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %5, ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.elevator_type, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %12, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %21

17:                                               ; preds = %21
  %18 = getelementptr %struct.elv_fs_entry, ptr %22, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17, %14
  %22 = phi ptr [ %18, %17 ], [ %12, %14 ]
  %23 = tail call i32 @sysfs_create_file_ns(ptr noundef %5, ptr noundef %22, ptr noundef null) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %17, label %25

25:                                               ; preds = %21, %17, %14, %9
  br i1 %1, label %26, label %28

26:                                               ; preds = %25
  %27 = tail call i32 @kobject_uevent(ptr noundef %5, i32 noundef 0) #13
  br label %28

28:                                               ; preds = %26, %25
  %29 = getelementptr inbounds %struct.elevator_queue, ptr %4, i32 0, i32 4
  %30 = load i8, ptr %29, align 4
  %31 = or i8 %30, 1
  store i8 %31, ptr %29, align 4
  br label %32

32:                                               ; preds = %28, %2
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @elv_unregister_queue(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.elevator_queue, ptr %5, i32 0, i32 2
  %7 = tail call i32 @kobject_uevent(ptr noundef %6, i32 noundef 1) #13
  tail call void @kobject_del(ptr noundef %6) #13
  %8 = getelementptr inbounds %struct.elevator_queue, ptr %5, i32 0, i32 4
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, -2
  store i8 %10, ptr %8, align 4
  br label %11

11:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @elv_register(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.elevator_type, ptr %0, i32 0, i32 1, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.elevator_type, ptr %0, i32 0, i32 1, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i1 [ true, %1 ], [ %8, %5 ]
  %11 = load i1, ptr @elv_register.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %9
  store i1 true, ptr @elv_register.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 534, i32 noundef 9, ptr noundef null) #13
  br label %15

15:                                               ; preds = %14, %9
  br i1 %10, label %73, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.elevator_type, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  %21 = icmp ult i32 %18, 28
  br i1 %21, label %22, label %23, !prof !8

22:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 539, i32 noundef 9, ptr noundef null) #13
  br label %73

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.elevator_type, ptr %0, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %25, 4
  br i1 %26, label %27, label %28, !prof !8

27:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 540, i32 noundef 9, ptr noundef null) #13
  br label %73

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.elevator_type, ptr %0, i32 0, i32 11
  %30 = getelementptr inbounds %struct.elevator_type, ptr %0, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %29, i32 noundef 22, ptr noundef nonnull @.str.4, ptr noundef %31)
  %33 = load i32, ptr %17, align 4
  %34 = load i32, ptr %24, align 4
  %35 = tail call ptr @kmem_cache_create(ptr noundef %29, i32 noundef %33, i32 noundef %34, i32 noundef 0, ptr noundef null) #13
  store ptr %35, ptr %0, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %73, label %37

37:                                               ; preds = %28, %16
  tail call void @_raw_spin_lock(ptr noundef nonnull @elv_list_lock) #13
  %38 = getelementptr inbounds %struct.elevator_type, ptr %0, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr @elv_list, align 4
  %41 = icmp eq ptr %40, @elv_list
  br i1 %41, label %65, label %42

42:                                               ; preds = %55, %37
  %43 = phi ptr [ %56, %55 ], [ %40, %37 ]
  %44 = getelementptr i8, ptr %43, i32 -48
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 @strcmp(ptr noundef %45, ptr noundef %39) #13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %42
  %49 = getelementptr i8, ptr %43, i32 -44
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = tail call i32 @strcmp(ptr noundef nonnull %50, ptr noundef %39) #13
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52, %48
  %56 = load ptr, ptr %43, align 4
  %57 = icmp eq ptr %56, @elv_list
  br i1 %57, label %65, label %42

58:                                               ; preds = %52, %42
  %59 = getelementptr i8, ptr %43, i32 -152
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !15
  %62 = load i16, ptr @elv_list_lock, align 4
  %63 = add i16 %62, 1
  store i16 %63, ptr @elv_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %64 = load ptr, ptr %0, align 4
  tail call void @kmem_cache_destroy(ptr noundef %64) #13
  br label %73

65:                                               ; preds = %58, %55, %37
  %66 = getelementptr inbounds %struct.elevator_type, ptr %0, i32 0, i32 12
  %67 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @elv_list, i32 0, i32 1), align 4
  store ptr %66, ptr getelementptr inbounds (%struct.list_head, ptr @elv_list, i32 0, i32 1), align 4
  store ptr @elv_list, ptr %66, align 4
  %68 = getelementptr inbounds %struct.elevator_type, ptr %0, i32 0, i32 12, i32 1
  store ptr %67, ptr %68, align 4
  store volatile ptr %66, ptr %67, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !15
  %69 = load i16, ptr @elv_list_lock, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr @elv_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %71 = load ptr, ptr %38, align 4
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %71) #15
  br label %73

73:                                               ; preds = %65, %61, %28, %27, %22, %15
  %74 = phi i32 [ -16, %61 ], [ 0, %65 ], [ -22, %15 ], [ -22, %27 ], [ -22, %22 ], [ -12, %28 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @elv_unregister(ptr noundef %0) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @elv_list_lock) #13
  %2 = getelementptr inbounds %struct.elevator_type, ptr %0, i32 0, i32 12
  %3 = getelementptr inbounds %struct.elevator_type, ptr %0, i32 0, i32 12, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store volatile ptr %2, ptr %2, align 4
  store ptr %2, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !15
  %7 = load i16, ptr @elv_list_lock, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr @elv_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %9 = load ptr, ptr %0, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  tail call void @rcu_barrier() #13
  %12 = load ptr, ptr %0, align 4
  tail call void @kmem_cache_destroy(ptr noundef %12) #13
  store ptr null, ptr %0, align 4
  br label %13

13:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @elevator_switch_mq(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.elevator_queue, ptr %4, i32 0, i32 4
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  %11 = icmp eq ptr %0, null
  %12 = or i1 %11, %10
  br i1 %12, label %18, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.elevator_queue, ptr %4, i32 0, i32 2
  %15 = tail call i32 @kobject_uevent(ptr noundef %14, i32 noundef 1) #13
  tail call void @kobject_del(ptr noundef %14) #13
  %16 = load i8, ptr %7, align 4
  %17 = and i8 %16, -2
  store i8 %17, ptr %7, align 4
  br label %18

18:                                               ; preds = %13, %6
  tail call void @blk_mq_sched_free_rqs(ptr noundef %0) #13
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.elevator_queue, ptr %19, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %20) #13
  tail call void @blk_mq_exit_sched(ptr noundef %0, ptr noundef %19) #13
  tail call void @mutex_unlock(ptr noundef %20) #13
  %21 = getelementptr inbounds %struct.elevator_queue, ptr %19, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %21) #13
  br label %22

22:                                               ; preds = %18, %2
  %23 = tail call i32 @blk_mq_init_sched(ptr noundef %0, ptr noundef %1) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %68

25:                                               ; preds = %22
  %26 = icmp eq ptr %1, null
  br i1 %26, label %68, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr inbounds %struct.elevator_queue, ptr %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 16
  %31 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %29, ptr noundef %30, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %27
  %34 = load ptr, ptr %28, align 4
  %35 = getelementptr inbounds %struct.elevator_type, ptr %34, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %58, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %36, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %63, label %45

41:                                               ; preds = %45
  %42 = getelementptr %struct.elv_fs_entry, ptr %46, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41, %38
  %46 = phi ptr [ %42, %41 ], [ %36, %38 ]
  %47 = tail call i32 @sysfs_create_file_ns(ptr noundef %29, ptr noundef %46, ptr noundef null) #13
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %41, label %49

49:                                               ; preds = %45, %41
  %50 = tail call i32 @kobject_uevent(ptr noundef %29, i32 noundef 0) #13
  %51 = getelementptr inbounds %struct.elevator_queue, ptr %28, i32 0, i32 4
  %52 = load i8, ptr %51, align 4
  %53 = or i8 %52, 1
  store i8 %53, ptr %51, align 4
  br label %68

54:                                               ; preds = %27
  tail call void @blk_mq_sched_free_rqs(ptr noundef %0) #13
  %55 = load ptr, ptr %3, align 4
  %56 = getelementptr inbounds %struct.elevator_queue, ptr %55, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %56) #13
  tail call void @blk_mq_exit_sched(ptr noundef %0, ptr noundef %55) #13
  tail call void @mutex_unlock(ptr noundef %56) #13
  %57 = getelementptr inbounds %struct.elevator_queue, ptr %55, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %57) #13
  br label %68

58:                                               ; preds = %33
  %59 = tail call i32 @kobject_uevent(ptr noundef %29, i32 noundef 0) #13
  %60 = getelementptr inbounds %struct.elevator_queue, ptr %28, i32 0, i32 4
  %61 = load i8, ptr %60, align 4
  %62 = or i8 %61, 1
  store i8 %62, ptr %60, align 4
  br label %68

63:                                               ; preds = %38
  %64 = tail call i32 @kobject_uevent(ptr noundef %29, i32 noundef 0) #13
  %65 = getelementptr inbounds %struct.elevator_queue, ptr %28, i32 0, i32 4
  %66 = load i8, ptr %65, align 4
  %67 = or i8 %66, 1
  store i8 %67, ptr %65, align 4
  br label %68

68:                                               ; preds = %63, %58, %54, %49, %25, %22
  %69 = phi i32 [ %23, %22 ], [ %31, %54 ], [ 0, %49 ], [ 0, %25 ], [ 0, %58 ], [ 0, %63 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_sched_free_rqs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_init_sched(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @elevator_init_mq(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %85, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 49
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %7, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 64
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %85

14:                                               ; preds = %9, %5
  %15 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 11
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 4194304
  %18 = icmp ne i32 %17, 0
  %19 = load i1, ptr @elevator_init_mq.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %23, !prof !8

22:                                               ; preds = %14
  store i1 true, ptr @elevator_init_mq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 687, i32 noundef 9, ptr noundef null) #13
  br label %23

23:                                               ; preds = %22, %14
  %24 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %85, !prof !9

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 33
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = load ptr, ptr %6, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %32, i32 0, i32 9
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 128
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %85

39:                                               ; preds = %34, %31
  %40 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 9
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %32, i32 0, i32 9
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %85, label %48

48:                                               ; preds = %43, %39
  %49 = tail call fastcc ptr @elevator_get(ptr noundef %0, ptr noundef nonnull @.str.13, i1 noundef zeroext false) #13
  br label %73

50:                                               ; preds = %27
  tail call void @_raw_spin_lock(ptr noundef nonnull @elv_list_lock) #13
  br label %51

51:                                               ; preds = %55, %50
  %52 = phi ptr [ @elv_list, %50 ], [ %53, %55 ]
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, @elv_list
  br i1 %54, label %69, label %55

55:                                               ; preds = %51
  %56 = getelementptr i8, ptr %53, i32 -40
  %57 = load i32, ptr %56, align 4
  %58 = load i32, ptr %28, align 8
  %59 = and i32 %58, %57
  %60 = icmp eq i32 %59, %58
  br i1 %60, label %61, label %51

61:                                               ; preds = %55
  %62 = getelementptr i8, ptr %53, i32 -152
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = getelementptr i8, ptr %53, i32 -36
  %66 = load ptr, ptr %65, align 4
  %67 = tail call zeroext i1 @try_module_get(ptr noundef %66) #13
  %68 = select i1 %67, ptr %62, ptr null
  br label %69

69:                                               ; preds = %64, %61, %51
  %70 = phi ptr [ null, %61 ], [ %68, %64 ], [ null, %51 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !15
  %71 = load i16, ptr @elv_list_lock, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr @elv_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  br label %73

73:                                               ; preds = %69, %48
  %74 = phi ptr [ %70, %69 ], [ %49, %48 ]
  %75 = icmp eq ptr %74, null
  br i1 %75, label %85, label %76

76:                                               ; preds = %73
  tail call void @blk_mq_freeze_queue(ptr noundef %0) #13
  tail call void @blk_mq_cancel_work_sync(ptr noundef %0) #13
  %77 = tail call i32 @blk_mq_init_sched(ptr noundef %0, ptr noundef nonnull %74) #13
  tail call void @blk_mq_unfreeze_queue(ptr noundef %0) #13
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.elevator_type, ptr %74, i32 0, i32 5
  %81 = load ptr, ptr %80, align 4
  %82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %81) #15
  %83 = getelementptr inbounds %struct.elevator_type, ptr %74, i32 0, i32 8
  %84 = load ptr, ptr %83, align 4
  tail call void @module_put(ptr noundef %84) #13
  br label %85

85:                                               ; preds = %79, %76, %73, %43, %34, %23, %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @elv_iosched_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [16 x i8], align 1
  %5 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %65, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 49
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %10, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 64
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %65

17:                                               ; preds = %12, %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false) #13, !annotation !19
  %18 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 11
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 4194304
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %59, label %22

22:                                               ; preds = %17
  %23 = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(5) @.str.11, i32 noundef 4) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %58, label %29

29:                                               ; preds = %25
  tail call void @blk_mq_freeze_queue(ptr noundef %0) #13
  tail call void @blk_mq_quiesce_queue(ptr noundef %0) #13
  %30 = tail call i32 @elevator_switch_mq(ptr noundef %0, ptr noundef null) #13
  tail call void @blk_mq_unquiesce_queue(ptr noundef %0) #13
  tail call void @blk_mq_unfreeze_queue(ptr noundef %0) #13
  br label %61

31:                                               ; preds = %22
  %32 = call i32 @strlcpy(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 16) #13
  %33 = call ptr @strim(ptr noundef nonnull %4) #13
  %34 = call fastcc ptr @elevator_get(ptr noundef %0, ptr noundef %33, i1 noundef zeroext true) #13
  %35 = icmp eq ptr %34, null
  br i1 %35, label %59, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %56, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %38, align 4
  %42 = getelementptr inbounds %struct.elevator_type, ptr %41, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 @strcmp(ptr noundef %43, ptr noundef nonnull %4) #13
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.elevator_type, ptr %41, i32 0, i32 6
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = call i32 @strcmp(ptr noundef nonnull %48, ptr noundef nonnull %4) #13
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50, %40
  %54 = getelementptr inbounds %struct.elevator_type, ptr %34, i32 0, i32 8
  %55 = load ptr, ptr %54, align 4
  call void @module_put(ptr noundef %55) #13
  br label %58

56:                                               ; preds = %50, %46, %36
  call void @blk_mq_freeze_queue(ptr noundef %0) #13
  call void @blk_mq_quiesce_queue(ptr noundef %0) #13
  %57 = call i32 @elevator_switch_mq(ptr noundef %0, ptr noundef nonnull %34) #13
  call void @blk_mq_unquiesce_queue(ptr noundef %0) #13
  call void @blk_mq_unfreeze_queue(ptr noundef %0) #13
  br label %61

58:                                               ; preds = %53, %25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  br label %64

59:                                               ; preds = %31, %17
  %60 = phi i32 [ -22, %31 ], [ -2, %17 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  br label %65

61:                                               ; preds = %56, %29
  %62 = phi i32 [ %57, %56 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %64, %61, %59, %12, %3
  %66 = phi i32 [ %2, %64 ], [ %62, %61 ], [ %60, %59 ], [ %2, %12 ], [ %2, %3 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @elv_iosched_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) @.str.7, i32 6, i1 false)
  br label %84

9:                                                ; preds = %2
  %10 = icmp eq ptr %4, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  store i64 9109889480617563, ptr %1, align 1
  br label %14

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 4
  br label %14

14:                                               ; preds = %12, %11
  %15 = phi i32 [ 0, %12 ], [ 7, %11 ]
  %16 = phi ptr [ %13, %12 ], [ null, %11 ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @elv_list_lock) #13
  %17 = load ptr, ptr @elv_list, align 4
  %18 = icmp eq ptr %17, @elv_list
  br i1 %18, label %71, label %19

19:                                               ; preds = %14
  %20 = icmp eq ptr %16, null
  %21 = getelementptr inbounds %struct.elevator_type, ptr %16, i32 0, i32 5
  %22 = getelementptr inbounds %struct.elevator_type, ptr %16, i32 0, i32 6
  %23 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 49
  %24 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 33
  br label %25

25:                                               ; preds = %67, %19
  %26 = phi ptr [ %17, %19 ], [ %69, %67 ]
  %27 = phi i32 [ %15, %19 ], [ %68, %67 ]
  br i1 %20, label %44, label %28

28:                                               ; preds = %25
  %29 = getelementptr i8, ptr %26, i32 -48
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %21, align 4
  %32 = tail call i32 @strcmp(ptr noundef %31, ptr noundef %30) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %22, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @strcmp(ptr noundef nonnull %35, ptr noundef %30) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37, %28
  %41 = getelementptr i8, ptr %1, i32 %27
  %42 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %41, ptr noundef nonnull @.str.9, ptr noundef %31)
  %43 = add i32 %42, %27
  br label %67

44:                                               ; preds = %37, %34, %25
  %45 = load ptr, ptr %5, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %67, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %23, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %48, i32 0, i32 9
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 64
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %50, %47
  %56 = load i32, ptr %24, align 8
  %57 = getelementptr i8, ptr %26, i32 -40
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, %56
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = getelementptr i8, ptr %26, i32 -48
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %1, i32 %27
  %65 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %64, ptr noundef nonnull @.str.10, ptr noundef %63)
  %66 = add i32 %65, %27
  br label %67

67:                                               ; preds = %61, %55, %50, %44, %40
  %68 = phi i32 [ %43, %40 ], [ %66, %61 ], [ %27, %55 ], [ %27, %50 ], [ %27, %44 ]
  %69 = load ptr, ptr %26, align 4
  %70 = icmp eq ptr %69, @elv_list
  br i1 %70, label %71, label %25

71:                                               ; preds = %67, %14
  %72 = phi i32 [ %15, %14 ], [ %68, %67 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !15
  %73 = load i16, ptr @elv_list_lock, align 4
  %74 = add i16 %73, 1
  store i16 %74, ptr @elv_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %75 = load ptr, ptr %3, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = getelementptr i8, ptr %1, i32 %72
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %78, ptr noundef nonnull align 1 dereferenceable(5) @.str.11, i32 5, i1 false)
  %79 = add i32 %72, 4
  br label %80

80:                                               ; preds = %77, %71
  %81 = phi i32 [ %79, %77 ], [ %72, %71 ]
  %82 = getelementptr i8, ptr %1, i32 %81
  store i16 10, ptr %82, align 1
  %83 = add i32 %81, 1
  br label %84

84:                                               ; preds = %80, %8
  %85 = phi i32 [ %83, %80 ], [ 5, %8 ]
  ret i32 %85
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @elv_rb_former_request(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 24
  %4 = tail call ptr @rb_prev(ptr noundef %3) #13
  %5 = icmp eq ptr %4, null
  %6 = getelementptr i8, ptr %4, i32 -116
  %7 = select i1 %5, ptr null, ptr %6
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @elv_rb_latter_request(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 24
  %4 = tail call ptr @rb_next(ptr noundef %3) #13
  %5 = icmp eq ptr %4, null
  %6 = getelementptr i8, ptr %4, i32 -116
  %7 = select i1 %5, ptr null, ptr %6
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @elevator_setup(ptr nocapture noundef readnone %0) #7 section ".init.text" {
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #15
  ret i32 1
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @elevator_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.elevator_type, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  tail call void @module_put(ptr noundef %5) #13
  tail call void @kfree(ptr noundef %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elv_attr_show(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.elv_fs_entry, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -8
  %9 = getelementptr i8, ptr %0, i32 36
  tail call void @mutex_lock(ptr noundef %9) #13
  %10 = load ptr, ptr %8, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %4, align 4
  %14 = tail call i32 %13(ptr noundef %8, ptr noundef %2) #13
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi i32 [ %14, %12 ], [ -2, %7 ]
  tail call void @mutex_unlock(ptr noundef %9) #13
  br label %17

17:                                               ; preds = %15, %3
  %18 = phi i32 [ %16, %15 ], [ -5, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elv_attr_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.elv_fs_entry, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -8
  %10 = getelementptr i8, ptr %0, i32 36
  tail call void @mutex_lock(ptr noundef %10) #13
  %11 = load ptr, ptr %9, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %5, align 4
  %15 = tail call i32 %14(ptr noundef %9, ptr noundef %2, i32 noundef %3) #13
  br label %16

16:                                               ; preds = %13, %8
  %17 = phi i32 [ %15, %13 ], [ -2, %8 ]
  tail call void @mutex_unlock(ptr noundef %10) #13
  br label %18

18:                                               ; preds = %16, %4
  %19 = phi i32 [ %17, %16 ], [ -5, %4 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @elevator_get(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @elv_list_lock) #13
  %4 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 33
  %5 = load i32, ptr %4, align 8
  %6 = load ptr, ptr @elv_list, align 4
  %7 = icmp eq ptr %6, @elv_list
  br i1 %7, label %33, label %8

8:                                                ; preds = %26, %3
  %9 = phi ptr [ %27, %26 ], [ %6, %3 ]
  %10 = getelementptr i8, ptr %9, i32 -40
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, %5
  %13 = icmp eq i32 %12, %5
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %9, i32 -48
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @strcmp(ptr noundef %16, ptr noundef %1) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %9, i32 -44
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @strcmp(ptr noundef nonnull %21, ptr noundef %1) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23, %19, %8
  %27 = load ptr, ptr %9, align 4
  %28 = icmp eq ptr %27, @elv_list
  br i1 %28, label %33, label %8

29:                                               ; preds = %23
  %30 = getelementptr i8, ptr %9, i32 -152
  br label %33

31:                                               ; preds = %14
  %32 = getelementptr i8, ptr %9, i32 -152
  br label %33

33:                                               ; preds = %31, %29, %26, %3
  %34 = phi ptr [ %30, %29 ], [ %32, %31 ], [ null, %3 ], [ null, %26 ]
  %35 = icmp eq ptr %34, null
  %36 = and i1 %35, %2
  br i1 %36, label %37, label %69

37:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !15
  %38 = load i16, ptr @elv_list_lock, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr @elv_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %40 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.14, ptr noundef %1) #13
  tail call void @_raw_spin_lock(ptr noundef nonnull @elv_list_lock) #13
  %41 = load i32, ptr %4, align 8
  %42 = load ptr, ptr @elv_list, align 4
  %43 = icmp eq ptr %42, @elv_list
  br i1 %43, label %77, label %44

44:                                               ; preds = %62, %37
  %45 = phi ptr [ %63, %62 ], [ %42, %37 ]
  %46 = getelementptr i8, ptr %45, i32 -40
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, %41
  %49 = icmp eq i32 %48, %41
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = getelementptr i8, ptr %45, i32 -48
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 @strcmp(ptr noundef %52, ptr noundef %1) #13
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %50
  %56 = getelementptr i8, ptr %45, i32 -44
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = tail call i32 @strcmp(ptr noundef nonnull %57, ptr noundef %1) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59, %55, %44
  %63 = load ptr, ptr %45, align 4
  %64 = icmp eq ptr %63, @elv_list
  br i1 %64, label %77, label %44

65:                                               ; preds = %59
  %66 = getelementptr i8, ptr %45, i32 -152
  br label %69

67:                                               ; preds = %50
  %68 = getelementptr i8, ptr %45, i32 -152
  br label %69

69:                                               ; preds = %67, %65, %33
  %70 = phi ptr [ %34, %33 ], [ %66, %65 ], [ %68, %67 ]
  %71 = icmp eq ptr %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.elevator_type, ptr %70, i32 0, i32 8
  %74 = load ptr, ptr %73, align 4
  %75 = tail call zeroext i1 @try_module_get(ptr noundef %74) #13
  %76 = select i1 %75, ptr %70, ptr null
  br label %77

77:                                               ; preds = %72, %69, %62, %37
  %78 = phi ptr [ null, %69 ], [ %76, %72 ], [ null, %37 ], [ null, %62 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !15
  %79 = load i16, ptr @elv_list_lock, align 4
  %80 = add i16 %79, 1
  store i16 %80, ptr @elv_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  ret ptr %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_quiesce_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unquiesce_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2154310348, i64 2154310829, i64 2154310385, i64 2154310441, i64 2154310475, i64 2154310499, i64 2154310540, i64 2154310561, i64 2154310589, i64 2154310623}
!11 = !{i64 2154334050, i64 2154334531, i64 2154334087, i64 2154334143, i64 2154334177, i64 2154334201, i64 2154334242, i64 2154334263, i64 2154334291, i64 2154334325}
!12 = !{!"branch_weights", i32 1073205, i32 2146410443}
!13 = !{!"branch_weights", i32 -102759400, i32 4193255}
!14 = !{i64 2154337698, i64 2154338179, i64 2154337735, i64 2154337791, i64 2154337825, i64 2154337849, i64 2154337890, i64 2154337911, i64 2154337939, i64 2154337973}
!15 = !{i64 2149013751}
!16 = !{i64 2149009575}
!17 = !{i64 2149009650, i64 2149009677, i64 2149009724, i64 2149009746, i64 2149009774, i64 2149009794}
!18 = !{i64 2149036754}
!19 = !{!"auto-init"}
