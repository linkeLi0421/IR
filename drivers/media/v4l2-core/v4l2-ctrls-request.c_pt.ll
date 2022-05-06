; ModuleID = '/llk/IR/drivers/media/v4l2-core/v4l2-ctrls-request.c_pt.bc'
source_filename = "../drivers/media/v4l2-core/v4l2-ctrls-request.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_request_hdl_find:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_request_hdl_find\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_request_hdl_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_request_hdl_ctrl_find:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_request_hdl_ctrl_find\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_request_hdl_ctrl_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_request_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_request_complete\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_request_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_request_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_request_setup\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_request_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.media_request_object_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_request = type { ptr, %struct.kref, [27 x i8], i32, i32, i32, %struct.list_head, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.v4l2_ctrl_ref = type { %struct.list_head, ptr, ptr, ptr, i8, i8, i8, %union.v4l2_ctrl_ptr }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_ext_controls = type { %union.anon.77, i32, i32, i32, [1 x i32], ptr }
%union.anon.77 = type { i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.64 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.61], %struct.media_entity_enum, i32 }
%struct.anon.61 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.0, %union.anon.1, i32, ptr, i32, %struct.anon, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.0 = type { i64 }
%union.anon.1 = type { ptr }
%struct.anon = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"drivers/media/v4l2-core/v4l2-ctrls-request.c\00", align 1
@req_ops = internal constant %struct.media_request_object_ops { ptr null, ptr null, ptr @v4l2_ctrl_request_queue, ptr @v4l2_ctrl_request_unbind, ptr @v4l2_ctrl_request_release }, align 4
@__kstrtab_v4l2_ctrl_request_hdl_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_request_hdl_find = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_request_hdl_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_request_hdl_find to i32), ptr @__kstrtab_v4l2_ctrl_request_hdl_find, ptr @__kstrtabns_v4l2_ctrl_request_hdl_find }, section "___ksymtab_gpl+v4l2_ctrl_request_hdl_find", align 4
@__kstrtab_v4l2_ctrl_request_hdl_ctrl_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_request_hdl_ctrl_find = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_request_hdl_ctrl_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_request_hdl_ctrl_find to i32), ptr @__kstrtab_v4l2_ctrl_request_hdl_ctrl_find, ptr @__kstrtabns_v4l2_ctrl_request_hdl_ctrl_find }, section "___ksymtab_gpl+v4l2_ctrl_request_hdl_ctrl_find", align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"\017v4l2-ctrls: %s: %s: %s: missing media device\0A\00", align 1
@__func__.try_set_ext_ctrls_request = private unnamed_addr constant [26 x i8] c"try_set_ext_ctrls_request\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"\017v4l2-ctrls: %s: %s: %s: invalid request fd %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"\017v4l2-ctrls: %s: %s: %s: cannot find request fd %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"\017v4l2-ctrls: %s: %s: %s: cannot lock request fd %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"\017v4l2-ctrls: %s: %s: %s: cannot find request object for request fd %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"\017v4l2-ctrls: %s: %s: %s: try_set_ext_ctrls_common failed (%d)\0A\00", align 1
@__kstrtab_v4l2_ctrl_request_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_request_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_request_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_request_complete to i32), ptr @__kstrtab_v4l2_ctrl_request_complete, ptr @__kstrtabns_v4l2_ctrl_request_complete }, section "___ksymtab+v4l2_ctrl_request_complete", align 4
@__kstrtab_v4l2_ctrl_request_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_request_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_request_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_request_setup to i32), ptr @__kstrtab_v4l2_ctrl_request_setup, ptr @__kstrtabns_v4l2_ctrl_request_setup }, section "___ksymtab+v4l2_ctrl_request_setup", align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"include/media/media-request.h\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_v4l2_ctrl_request_complete, ptr @__ksymtab_v4l2_ctrl_request_hdl_ctrl_find, ptr @__ksymtab_v4l2_ctrl_request_hdl_find, ptr @__ksymtab_v4l2_ctrl_request_setup], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l2_ctrl_handler_init_request(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 11
  store volatile ptr %2, ptr %2, align 4
  %3 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 11, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 12
  store volatile ptr %4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 12, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 10
  store i8 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 13
  tail call void @media_request_object_init(ptr noundef %7) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_request_object_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l2_ctrl_handler_free_request(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 11
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  %9 = getelementptr i8, ptr %7, i32 -68
  %10 = icmp eq ptr %9, %0
  %11 = or i1 %8, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %12, %5
  %13 = phi ptr [ %14, %12 ], [ %7, %5 ]
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %13, i32 16
  tail call void @media_request_object_unbind(ptr noundef %15) #5
  tail call void @media_request_object_put(ptr noundef %15) #5
  %16 = getelementptr i8, ptr %14, i32 -68
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %12

18:                                               ; preds = %12, %5, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_request_object_unbind(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_request_object_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @v4l2_ctrl_request_hdl_find(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.media_request, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -3
  %6 = icmp ult i32 %5, -2
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 131, i32 noundef 9, ptr noundef null) #5
  br label %13

8:                                                ; preds = %2
  %9 = tail call ptr @media_request_object_find(ptr noundef %0, ptr noundef nonnull @req_ops, ptr noundef %1) #5
  %10 = icmp eq ptr %9, null
  %11 = getelementptr i8, ptr %9, i32 -84
  %12 = select i1 %10, ptr null, ptr %11
  br label %13

13:                                               ; preds = %8, %7
  %14 = phi ptr [ null, %7 ], [ %12, %8 ]
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_request_object_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @v4l2_ctrl_request_hdl_ctrl_find(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @find_ref_lock(ptr noundef %0, i32 noundef %1) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %3, i32 0, i32 6
  %7 = load i8, ptr %6, align 2, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %5, %2
  %13 = phi ptr [ %11, %9 ], [ null, %5 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_ref_lock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l2_g_ext_ctrls_request(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %53, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %3, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %53, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @media_request_get_by_fd(ptr noundef nonnull %2, i32 noundef %8) #5
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = ptrtoint ptr %11 to i32
  br label %53

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.media_request, ptr %11, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @media_request_put(ptr noundef %11) #5
  br label %53

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.media_request, ptr %11, i32 0, i32 9
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #5
  %23 = load i32, ptr %16, align 4
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #5
  tail call void @media_request_put(ptr noundef %11) #5
  br label %53

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.media_request, ptr %11, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #5
  %30 = tail call ptr @media_request_object_find(ptr noundef %11, ptr noundef nonnull @req_ops, ptr noundef %0) #5
  %31 = icmp eq ptr %30, null
  %32 = select i1 %31, ptr inttoptr (i32 -12 to ptr), ptr %30
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #5
  %36 = load i32, ptr %27, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39, !prof !8

38:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 116, i32 noundef 9, ptr noundef null) #5
  br label %41

39:                                               ; preds = %34
  %40 = add i32 %36, -1
  store i32 %40, ptr %27, align 4
  br label %41

41:                                               ; preds = %39, %38
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %35) #5
  tail call void @media_request_put(ptr noundef %11) #5
  %42 = ptrtoint ptr %32 to i32
  br label %53

43:                                               ; preds = %26
  %44 = getelementptr i8, ptr %32, i32 -84
  %45 = tail call i32 @v4l2_g_ext_ctrls_common(ptr noundef %44, ptr noundef %3, ptr noundef %1) #5
  %46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #5
  %47 = load i32, ptr %27, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50, !prof !8

49:                                               ; preds = %43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 116, i32 noundef 9, ptr noundef null) #5
  br label %52

50:                                               ; preds = %43
  %51 = add i32 %47, -1
  store i32 %51, ptr %27, align 4
  br label %52

52:                                               ; preds = %50, %49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %46) #5
  tail call void @media_request_object_put(ptr noundef %32) #5
  tail call void @media_request_put(ptr noundef %11) #5
  br label %53

53:                                               ; preds = %52, %41, %25, %19, %13, %6, %4
  %54 = phi i32 [ %14, %13 ], [ -13, %19 ], [ -16, %25 ], [ %42, %41 ], [ %45, %52 ], [ -22, %6 ], [ -22, %4 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_request_get_by_fd(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_request_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_g_ext_ctrls_common(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @try_set_ext_ctrls_request(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = icmp eq ptr %3, null
  br i1 %7, label %8, label %26

8:                                                ; preds = %6
  %9 = icmp eq ptr %2, null
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 273, i32 noundef 9, ptr noundef null) #5
  br label %211

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 21
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %211, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi ptr [ %22, %20 ], [ %18, %16 ]
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.try_set_ext_ctrls_request, ptr noundef %24, ptr noundef %24) #6
  br label %211

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %4, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = icmp eq ptr %2, null
  br i1 %31, label %32, label %33, !prof !8

32:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef null) #5
  br label %211

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 21
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %211, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  br label %45

45:                                               ; preds = %42, %38
  %46 = phi ptr [ %44, %42 ], [ %40, %38 ]
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.try_set_ext_ctrls_request, ptr noundef %46, ptr noundef %46, i32 noundef %28) #6
  br label %211

48:                                               ; preds = %26
  %49 = tail call ptr @media_request_get_by_fd(ptr noundef nonnull %3, i32 noundef %28) #5
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %72

51:                                               ; preds = %48
  %52 = icmp eq ptr %2, null
  br i1 %52, label %53, label %54, !prof !8

53:                                               ; preds = %51
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 286, i32 noundef 9, ptr noundef null) #5
  br label %70

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 21
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5
  %65 = load ptr, ptr %64, align 4
  br label %66

66:                                               ; preds = %63, %59
  %67 = phi ptr [ %65, %63 ], [ %61, %59 ]
  %68 = load i32, ptr %27, align 4
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.try_set_ext_ctrls_request, ptr noundef %67, ptr noundef %67, i32 noundef %68) #6
  br label %70

70:                                               ; preds = %66, %54, %53
  %71 = ptrtoint ptr %49 to i32
  br label %211

72:                                               ; preds = %48
  %73 = getelementptr inbounds %struct.media_request, ptr %49, i32 0, i32 9
  %74 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %73) #5
  %75 = getelementptr inbounds %struct.media_request, ptr %49, i32 0, i32 3
  %76 = load i32, ptr %75, align 4
  switch i32 %76, label %77 [
    i32 0, label %97
    i32 5, label %97
  ]

77:                                               ; preds = %72
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %73, i32 noundef %74) #5
  %78 = icmp eq ptr %2, null
  br i1 %78, label %79, label %80, !prof !8

79:                                               ; preds = %77
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 293, i32 noundef 9, ptr noundef null) #5
  br label %96

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 21
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 3
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5
  %91 = load ptr, ptr %90, align 4
  br label %92

92:                                               ; preds = %89, %85
  %93 = phi ptr [ %91, %89 ], [ %87, %85 ]
  %94 = load i32, ptr %27, align 4
  %95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.try_set_ext_ctrls_request, ptr noundef %93, ptr noundef %93, i32 noundef %94) #6
  br label %96

96:                                               ; preds = %92, %80, %79
  tail call void @media_request_put(ptr noundef %49) #5
  br label %211

97:                                               ; preds = %72, %72
  store i32 5, ptr %75, align 4
  %98 = getelementptr inbounds %struct.media_request, ptr %49, i32 0, i32 4
  %99 = load i32, ptr %98, align 4
  %100 = add i32 %99, 1
  store i32 %100, ptr %98, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %73, i32 noundef %74) #5
  br i1 %5, label %101, label %108

101:                                              ; preds = %97
  %102 = load i32, ptr %75, align 4
  %103 = icmp eq i32 %102, 5
  br i1 %103, label %105, label %104, !prof !10

104:                                              ; preds = %101
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 181, i32 noundef 9, ptr noundef null) #5
  br label %144

105:                                              ; preds = %101
  %106 = tail call ptr @media_request_object_find(ptr noundef %49, ptr noundef nonnull @req_ops, ptr noundef %1) #5
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %141

108:                                              ; preds = %97
  %109 = tail call ptr @media_request_object_find(ptr noundef %49, ptr noundef nonnull @req_ops, ptr noundef %1) #5
  %110 = icmp eq ptr %109, null
  br i1 %110, label %144, label %141

111:                                              ; preds = %105
  %112 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %113 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %112, i32 noundef 3520, i32 noundef 112) #7
  %114 = icmp eq ptr %113, null
  br i1 %114, label %144, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %113, i32 0, i32 13
  %117 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %1, i32 0, i32 8
  %118 = load i16, ptr %117, align 4
  %119 = zext i16 %118 to i32
  %120 = shl nuw nsw i32 %119, 3
  %121 = add nsw i32 %120, -8
  %122 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef nonnull %113, i32 noundef %121, ptr noundef null, ptr noundef null) #5
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = tail call fastcc i32 @v4l2_ctrl_request_bind(ptr noundef %49, ptr noundef nonnull %113, ptr noundef %1) #5
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %124, %115
  %128 = phi i32 [ %125, %124 ], [ %122, %115 ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef nonnull %113) #5
  tail call void @kfree(ptr noundef nonnull %113) #5
  %129 = inttoptr i32 %128 to ptr
  br label %141

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %113, i32 0, i32 13, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %131) #5, !srcloc !11
  %132 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %131, ptr %131, i32 1, ptr elementtype(i32) %131) #5, !srcloc !12
  %133 = extractvalue { i32, i32, i32 } %132, 0
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %139, label %135, !prof !8

135:                                              ; preds = %130
  %136 = add i32 %133, 1
  %137 = or i32 %136, %133
  %138 = icmp sgt i32 %137, -1
  br i1 %138, label %141, label %139, !prof !10

139:                                              ; preds = %135, %130
  %140 = phi i32 [ 2, %130 ], [ 1, %135 ]
  tail call void @refcount_warn_saturate(ptr noundef %131, i32 noundef %140) #5
  br label %141

141:                                              ; preds = %139, %135, %127, %108, %105
  %142 = phi ptr [ %129, %127 ], [ %106, %105 ], [ %116, %135 ], [ %116, %139 ], [ %109, %108 ]
  %143 = icmp ugt ptr %142, inttoptr (i32 -4096 to ptr)
  br i1 %143, label %144, label %177

144:                                              ; preds = %141, %111, %108, %104
  %145 = phi ptr [ %142, %141 ], [ inttoptr (i32 -12 to ptr), %111 ], [ inttoptr (i32 -16 to ptr), %104 ], [ inttoptr (i32 -12 to ptr), %108 ]
  %146 = icmp eq ptr %2, null
  br i1 %146, label %147, label %148, !prof !8

147:                                              ; preds = %144
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 303, i32 noundef 9, ptr noundef null) #5
  br label %164

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 21
  %150 = load i32, ptr %149, align 4
  %151 = and i32 %150, 32
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %164, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 3
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5
  %159 = load ptr, ptr %158, align 4
  br label %160

160:                                              ; preds = %157, %153
  %161 = phi ptr [ %159, %157 ], [ %155, %153 ]
  %162 = load i32, ptr %27, align 4
  %163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.try_set_ext_ctrls_request, ptr noundef %161, ptr noundef %161, i32 noundef %162) #6
  br label %164

164:                                              ; preds = %160, %148, %147
  %165 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %73) #5
  %166 = load i32, ptr %98, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %170, !prof !8

168:                                              ; preds = %164
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 164, i32 noundef 9, ptr noundef null) #5
  %169 = load i32, ptr %98, align 4
  br label %170

170:                                              ; preds = %168, %164
  %171 = phi i32 [ %169, %168 ], [ %166, %164 ]
  %172 = add i32 %171, -1
  store i32 %172, ptr %98, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  store i32 0, ptr %75, align 4
  br label %175

175:                                              ; preds = %174, %170
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %73, i32 noundef %165) #5
  tail call void @media_request_put(ptr noundef %49) #5
  %176 = ptrtoint ptr %145 to i32
  br label %211

177:                                              ; preds = %141
  %178 = getelementptr i8, ptr %142, i32 -84
  %179 = tail call i32 @try_set_ext_ctrls_common(ptr noundef %0, ptr noundef %178, ptr noundef %4, ptr noundef %2, i1 noundef zeroext %5) #5
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %199, label %181

181:                                              ; preds = %177
  %182 = icmp eq ptr %2, null
  br i1 %182, label %183, label %184, !prof !8

183:                                              ; preds = %181
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 315, i32 noundef 9, ptr noundef null) #5
  br label %199

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 21
  %186 = load i32, ptr %185, align 4
  %187 = and i32 %186, 32
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %199, label %189

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 3
  %191 = load ptr, ptr %190, align 4
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5
  %195 = load ptr, ptr %194, align 4
  br label %196

196:                                              ; preds = %193, %189
  %197 = phi ptr [ %195, %193 ], [ %191, %189 ]
  %198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.try_set_ext_ctrls_request, ptr noundef %197, ptr noundef %197, i32 noundef %179) #6
  br label %199

199:                                              ; preds = %196, %184, %183, %177
  %200 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %73) #5
  %201 = load i32, ptr %98, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %205, !prof !8

203:                                              ; preds = %199
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 164, i32 noundef 9, ptr noundef null) #5
  %204 = load i32, ptr %98, align 4
  br label %205

205:                                              ; preds = %203, %199
  %206 = phi i32 [ %204, %203 ], [ %201, %199 ]
  %207 = add i32 %206, -1
  store i32 %207, ptr %98, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %205
  store i32 0, ptr %75, align 4
  br label %210

210:                                              ; preds = %209, %205
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %73, i32 noundef %200) #5
  tail call void @media_request_object_put(ptr noundef %142) #5
  tail call void @media_request_put(ptr noundef %49) #5
  br label %211

211:                                              ; preds = %210, %175, %96, %70, %45, %33, %32, %23, %11, %10
  %212 = phi i32 [ %71, %70 ], [ -16, %96 ], [ %176, %175 ], [ %179, %210 ], [ -22, %10 ], [ -22, %23 ], [ -22, %11 ], [ -22, %32 ], [ -22, %45 ], [ -22, %33 ]
  ret i32 %212
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_set_ext_ctrls_common(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l2_ctrl_request_complete(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %103

6:                                                ; preds = %2
  %7 = tail call ptr @media_request_object_find(ptr noundef nonnull %0, ptr noundef nonnull @req_ops, ptr noundef nonnull %1) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %6
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 112) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %103, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %1, i32 0, i32 8
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = shl nuw nsw i32 %16, 3
  %18 = add nsw i32 %17, -8
  %19 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef nonnull %11, i32 noundef %18, ptr noundef null, ptr noundef null) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = tail call fastcc i32 @v4l2_ctrl_request_bind(ptr noundef nonnull %0, ptr noundef nonnull %11, ptr noundef nonnull %1)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %13
  tail call void @v4l2_ctrl_handler_free(ptr noundef nonnull %11) #5
  tail call void @kfree(ptr noundef nonnull %11) #5
  br label %103

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %11, i32 0, i32 10
  store i8 1, ptr %26, align 8
  %27 = tail call ptr @media_request_object_find(ptr noundef nonnull %0, ptr noundef nonnull @req_ops, ptr noundef nonnull %1) #5
  br label %28

28:                                               ; preds = %25, %6
  %29 = phi ptr [ %7, %6 ], [ %27, %25 ]
  %30 = getelementptr i8, ptr %29, i32 -52
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %89, label %33

33:                                               ; preds = %86, %28
  %34 = phi ptr [ %87, %86 ], [ %31, %28 ]
  %35 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.v4l2_ctrl, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.v4l2_ctrl, ptr %36, i32 0, i32 20
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 128
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %72, label %44

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.v4l2_ctrl, ptr %39, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  tail call void @mutex_lock(ptr noundef %48) #5
  %49 = getelementptr inbounds %struct.v4l2_ctrl, ptr %39, i32 0, i32 4
  %50 = load i32, ptr %49, align 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.v4l2_ctrl, ptr %39, i32 0, i32 3
  br label %54

54:                                               ; preds = %54, %52
  %55 = phi i32 [ 0, %52 ], [ %59, %54 ]
  %56 = load ptr, ptr %53, align 4
  %57 = getelementptr ptr, ptr %56, i32 %55
  %58 = load ptr, ptr %57, align 4
  tail call void @cur_to_new(ptr noundef %58) #5
  %59 = add nuw i32 %55, 1
  %60 = load i32, ptr %49, align 8
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %54, label %62

62:                                               ; preds = %54, %44
  %63 = getelementptr inbounds %struct.v4l2_ctrl, ptr %39, i32 0, i32 6
  %64 = load ptr, ptr %63, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %64, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = tail call i32 %67(ptr noundef %39) #5
  br label %71

71:                                               ; preds = %69, %66, %62
  tail call void @new_to_req(ptr noundef %34) #5
  br label %81

72:                                               ; preds = %33
  %73 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %34, i32 0, i32 6
  %74 = load i8, ptr %73, align 2, !range !9
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.v4l2_ctrl, ptr %36, i32 0, i32 2
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  tail call void @mutex_lock(ptr noundef %80) #5
  tail call void @cur_to_req(ptr noundef %34) #5
  br label %81

81:                                               ; preds = %76, %71
  %82 = phi ptr [ %77, %76 ], [ %45, %71 ]
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %83, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  tail call void @mutex_unlock(ptr noundef %85) #5
  br label %86

86:                                               ; preds = %81, %72
  %87 = load ptr, ptr %34, align 4
  %88 = icmp eq ptr %87, %30
  br i1 %88, label %89, label %33

89:                                               ; preds = %86, %28
  %90 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %1, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  tail call void @mutex_lock(ptr noundef %91) #5
  %92 = getelementptr i8, ptr %29, i32 -20
  %93 = load i8, ptr %92, align 4, !range !9
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %96, !prof !8

95:                                               ; preds = %89
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 386, i32 noundef 9, ptr noundef null) #5
  br label %96

96:                                               ; preds = %95, %89
  %97 = getelementptr i8, ptr %29, i32 -8
  %98 = getelementptr i8, ptr %29, i32 -4
  %99 = load ptr, ptr %98, align 4
  %100 = load ptr, ptr %97, align 4
  %101 = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  store ptr %99, ptr %101, align 4
  store volatile ptr %100, ptr %99, align 4
  store volatile ptr %97, ptr %97, align 4
  store ptr %97, ptr %98, align 4
  store i8 0, ptr %92, align 4
  %102 = load ptr, ptr %90, align 4
  tail call void @mutex_unlock(ptr noundef %102) #5
  tail call void @media_request_object_complete(ptr noundef %29) #5
  tail call void @media_request_object_put(ptr noundef %29) #5
  br label %103

103:                                              ; preds = %96, %24, %9, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @v4l2_ctrl_request_bind(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = icmp eq ptr %1, null
  %6 = icmp eq ptr %1, %2
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef null) #5
  br label %52

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %1, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %52

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %18, label %17, !prof !10

17:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 65, i32 noundef 9, ptr noundef null) #5
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %2, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void @mutex_lock(ptr noundef %20) #5
  %21 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %2, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %39, label %24

24:                                               ; preds = %34, %18
  %25 = phi ptr [ %35, %34 ], [ %22, %18 ]
  %26 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store ptr null, ptr %4, align 4, !annotation !13
  %28 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %25, i32 0, i32 4
  %29 = load i8, ptr %28, align 4, !range !9
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = call i32 @handler_new_ref(ptr noundef %1, ptr noundef %27, ptr noundef nonnull %4, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  %35 = load ptr, ptr %25, align 4
  %36 = icmp eq ptr %35, %21
  br i1 %36, label %39, label %24

37:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  %38 = load ptr, ptr %19, align 4
  call void @mutex_unlock(ptr noundef %38) #5
  br label %52

39:                                               ; preds = %34, %18
  %40 = load ptr, ptr %19, align 4
  call void @mutex_unlock(ptr noundef %40) #5
  %41 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %1, i32 0, i32 13
  %42 = call i32 @media_request_object_bind(ptr noundef %0, ptr noundef nonnull @req_ops, ptr noundef %2, i1 noundef zeroext false, ptr noundef %41) #5
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load ptr, ptr %19, align 4
  call void @mutex_lock(ptr noundef %45) #5
  %46 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %1, i32 0, i32 11
  %47 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %2, i32 0, i32 11
  %48 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %2, i32 0, i32 11, i32 1
  %49 = load ptr, ptr %48, align 4
  store ptr %46, ptr %48, align 4
  store ptr %47, ptr %46, align 4
  %50 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %1, i32 0, i32 11, i32 1
  store ptr %49, ptr %50, align 4
  store volatile ptr %46, ptr %49, align 4
  %51 = load ptr, ptr %19, align 4
  call void @mutex_unlock(ptr noundef %51) #5
  br label %52

52:                                               ; preds = %44, %39, %37, %9, %8
  %53 = phi i32 [ %32, %37 ], [ %42, %39 ], [ 0, %44 ], [ %11, %9 ], [ -22, %8 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cur_to_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @new_to_req(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cur_to_req(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_request_object_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l2_ctrl_request_setup(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %133

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.media_request, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %11, label %10, !prof !10

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 406, i32 noundef 9, ptr noundef null) #5
  br label %133

11:                                               ; preds = %6
  %12 = tail call ptr @media_request_object_find(ptr noundef nonnull %0, ptr noundef nonnull @req_ops, ptr noundef nonnull %1) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %133, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.media_request_object, ptr %12, i32 0, i32 5
  %16 = load i8, ptr %15, align 4, !range !9
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @media_request_object_put(ptr noundef nonnull %12) #5
  br label %133

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %12, i32 -84
  %21 = getelementptr i8, ptr %12, i32 -52
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %24, label %27

24:                                               ; preds = %27, %19
  %25 = load ptr, ptr %21, align 4
  %26 = icmp eq ptr %25, %21
  br i1 %26, label %131, label %32

27:                                               ; preds = %27, %19
  %28 = phi ptr [ %30, %27 ], [ %22, %19 ]
  %29 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %28, i32 0, i32 5
  store i8 0, ptr %29, align 1
  %30 = load ptr, ptr %28, align 4
  %31 = icmp eq ptr %30, %21
  br i1 %31, label %24, label %27

32:                                               ; preds = %128, %24
  %33 = phi ptr [ %129, %128 ], [ %25, %24 ]
  %34 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.v4l2_ctrl, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %33, i32 0, i32 5
  %40 = load i8, ptr %39, align 1, !range !9
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %128

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.v4l2_ctrl, ptr %35, i32 0, i32 20
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %128

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.v4l2_ctrl, ptr %38, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  tail call void @mutex_lock(ptr noundef %51) #5
  %52 = getelementptr inbounds %struct.v4l2_ctrl, ptr %38, i32 0, i32 4
  %53 = load i32, ptr %52, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %78, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.v4l2_ctrl, ptr %38, i32 0, i32 3
  br label %57

57:                                               ; preds = %74, %55
  %58 = phi i32 [ %53, %55 ], [ %75, %74 ]
  %59 = phi i32 [ 0, %55 ], [ %76, %74 ]
  %60 = load ptr, ptr %56, align 4
  %61 = getelementptr ptr, ptr %60, i32 %59
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %74, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.v4l2_ctrl, ptr %62, i32 0, i32 8
  %66 = load i32, ptr %65, align 8
  %67 = tail call ptr @find_ref(ptr noundef %20, i32 noundef %66) #5
  %68 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %67, i32 0, i32 6
  %69 = load i8, ptr %68, align 2, !range !9
  %70 = icmp eq i8 %69, 0
  %71 = load i32, ptr %52, align 8
  br i1 %70, label %74, label %72

72:                                               ; preds = %64
  %73 = icmp eq i32 %71, 0
  br i1 %73, label %105, label %82

74:                                               ; preds = %64, %57
  %75 = phi i32 [ %58, %57 ], [ %71, %64 ]
  %76 = add nuw i32 %59, 1
  %77 = icmp ult i32 %76, %75
  br i1 %77, label %57, label %78

78:                                               ; preds = %74, %47
  %79 = load ptr, ptr %48, align 8
  %80 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %79, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  tail call void @mutex_unlock(ptr noundef %81) #5
  br label %128

82:                                               ; preds = %101, %72
  %83 = phi i32 [ %102, %101 ], [ %71, %72 ]
  %84 = phi i32 [ %103, %101 ], [ 0, %72 ]
  %85 = load ptr, ptr %56, align 4
  %86 = getelementptr ptr, ptr %85, i32 %84
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %101, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.v4l2_ctrl, ptr %87, i32 0, i32 8
  %91 = load i32, ptr %90, align 8
  %92 = tail call ptr @find_ref(ptr noundef %20, i32 noundef %91) #5
  tail call void @req_to_new(ptr noundef %92) #5
  %93 = load ptr, ptr %56, align 4
  %94 = getelementptr ptr, ptr %93, i32 %84
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.v4l2_ctrl, ptr %95, i32 0, i32 5
  %97 = load i32, ptr %96, align 4
  %98 = or i32 %97, 2
  store i32 %98, ptr %96, align 4
  %99 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %92, i32 0, i32 5
  store i8 1, ptr %99, align 1
  %100 = load i32, ptr %52, align 8
  br label %101

101:                                              ; preds = %89, %82
  %102 = phi i32 [ %83, %82 ], [ %100, %89 ]
  %103 = add nuw i32 %84, 1
  %104 = icmp ult i32 %103, %102
  br i1 %104, label %82, label %105

105:                                              ; preds = %101, %72
  %106 = getelementptr inbounds %struct.v4l2_ctrl, ptr %38, i32 0, i32 5
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, 528
  %109 = icmp eq i32 %108, 528
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.v4l2_ctrl, ptr %38, i32 0, i32 23
  %112 = load i32, ptr %111, align 8
  %113 = lshr i32 %107, 11
  %114 = and i32 %113, 255
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.v4l2_ctrl, ptr %38, i32 0, i32 25
  %118 = load ptr, ptr %117, align 8
  %119 = load i32, ptr %118, align 4
  %120 = icmp eq i32 %119, %114
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  tail call void @update_from_auto_cluster(ptr noundef %38) #5
  br label %122

122:                                              ; preds = %121, %116, %110, %105
  %123 = tail call i32 @try_or_set_cluster(ptr noundef null, ptr noundef %38, i1 noundef zeroext true, i32 noundef 0) #5
  %124 = load ptr, ptr %48, align 8
  %125 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %124, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  tail call void @mutex_unlock(ptr noundef %126) #5
  %127 = icmp eq i32 %123, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %122, %78, %42, %32
  %129 = load ptr, ptr %33, align 4
  %130 = icmp eq ptr %129, %21
  br i1 %130, label %131, label %32

131:                                              ; preds = %128, %122, %24
  %132 = phi i32 [ 0, %24 ], [ 0, %128 ], [ %123, %122 ]
  tail call void @media_request_object_put(ptr noundef nonnull %12) #5
  br label %133

133:                                              ; preds = %131, %18, %11, %10, %2
  %134 = phi i32 [ -16, %10 ], [ -16, %18 ], [ %132, %131 ], [ 0, %2 ], [ 0, %11 ]
  ret i32 %134
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_ref(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @req_to_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_from_auto_cluster(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_or_set_cluster(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l2_ctrl_request_queue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.media_request_object, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @mutex_lock(ptr noundef %5) #5
  %6 = getelementptr i8, ptr %0, i32 -8
  %7 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %3, i32 0, i32 12
  %8 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %3, i32 0, i32 12, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %6, ptr %8, align 4
  store ptr %7, ptr %6, align 4
  %10 = getelementptr i8, ptr %0, i32 -4
  store ptr %9, ptr %10, align 4
  store volatile ptr %6, ptr %9, align 4
  %11 = getelementptr i8, ptr %0, i32 -20
  store i8 1, ptr %11, align 4
  %12 = load ptr, ptr %4, align 4
  tail call void @mutex_unlock(ptr noundef %12) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l2_ctrl_request_unbind(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.media_request_object, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @mutex_lock(ptr noundef %5) #5
  %6 = getelementptr i8, ptr %0, i32 -16
  %7 = getelementptr i8, ptr %0, i32 -12
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %7, align 4
  %11 = getelementptr i8, ptr %0, i32 -20
  %12 = load i8, ptr %11, align 4, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = getelementptr i8, ptr %0, i32 -8
  %16 = getelementptr i8, ptr %0, i32 -4
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store volatile ptr %15, ptr %15, align 4
  store ptr %15, ptr %16, align 4
  store i8 0, ptr %11, align 4
  br label %20

20:                                               ; preds = %14, %1
  %21 = load ptr, ptr %4, align 4
  tail call void @mutex_unlock(ptr noundef %21) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l2_ctrl_request_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -84
  tail call void @v4l2_ctrl_handler_free(ptr noundef %2) #5
  tail call void @kfree(ptr noundef %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_request_object_bind(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @handler_new_ref(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind allocsize(2) }

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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 766060, i64 2148256031, i64 2148256057, i64 2148256104, i64 2148256126, i64 2148256154, i64 2148256174}
!12 = !{i64 2148268904, i64 2148268936, i64 2148268965, i64 2148268999, i64 2148269030, i64 2148269053}
!13 = !{!"auto-init"}
