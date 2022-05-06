; ModuleID = '/llk/IR/drivers/media/v4l2-core/v4l2-i2c.c_pt.bc'
source_filename = "../drivers/media/v4l2-core/v4l2-i2c.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_i2c_subdev_set_name:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_i2c_subdev_set_name\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_i2c_subdev_set_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_i2c_subdev_init:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_i2c_subdev_init\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_i2c_subdev_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_i2c_new_subdev_board:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_i2c_new_subdev_board\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_i2c_new_subdev_board:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_i2c_new_subdev:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_i2c_new_subdev\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_i2c_new_subdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_i2c_subdev_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_i2c_subdev_addr\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_i2c_subdev_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_i2c_tuner_addrs:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_i2c_tuner_addrs\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_i2c_tuner_addrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%s%s %d-%04x\00", align 1
@__kstrtab_v4l2_i2c_subdev_set_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_i2c_subdev_set_name = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_i2c_subdev_set_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_i2c_subdev_set_name to i32), ptr @__kstrtab_v4l2_i2c_subdev_set_name, ptr @__kstrtabns_v4l2_i2c_subdev_set_name }, section "___ksymtab_gpl+v4l2_i2c_subdev_set_name", align 4
@__kstrtab_v4l2_i2c_subdev_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_i2c_subdev_init = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_i2c_subdev_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_i2c_subdev_init to i32), ptr @__kstrtab_v4l2_i2c_subdev_init, ptr @__kstrtabns_v4l2_i2c_subdev_init }, section "___ksymtab_gpl+v4l2_i2c_subdev_init", align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"i2c:%s\00", align 1
@__kstrtab_v4l2_i2c_new_subdev_board = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_i2c_new_subdev_board = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_i2c_new_subdev_board = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_i2c_new_subdev_board to i32), ptr @__kstrtab_v4l2_i2c_new_subdev_board, ptr @__kstrtabns_v4l2_i2c_new_subdev_board }, section "___ksymtab_gpl+v4l2_i2c_new_subdev_board", align 4
@__kstrtab_v4l2_i2c_new_subdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_i2c_new_subdev = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_i2c_new_subdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_i2c_new_subdev to i32), ptr @__kstrtab_v4l2_i2c_new_subdev, ptr @__kstrtabns_v4l2_i2c_new_subdev }, section "___ksymtab_gpl+v4l2_i2c_new_subdev", align 4
@__kstrtab_v4l2_i2c_subdev_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_i2c_subdev_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_i2c_subdev_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_i2c_subdev_addr to i32), ptr @__kstrtab_v4l2_i2c_subdev_addr, ptr @__kstrtabns_v4l2_i2c_subdev_addr }, section "___ksymtab_gpl+v4l2_i2c_subdev_addr", align 4
@v4l2_i2c_tuner_addrs.radio_addrs = internal constant [3 x i16] [i16 16, i16 96, i16 -2], align 2
@v4l2_i2c_tuner_addrs.demod_addrs = internal constant [5 x i16] [i16 66, i16 67, i16 74, i16 75, i16 -2], align 2
@v4l2_i2c_tuner_addrs.tv_addrs = internal constant [10 x i16] [i16 66, i16 67, i16 74, i16 75, i16 96, i16 97, i16 98, i16 99, i16 100, i16 -2], align 2
@__kstrtab_v4l2_i2c_tuner_addrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_i2c_tuner_addrs = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_i2c_tuner_addrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_i2c_tuner_addrs to i32), ptr @__kstrtab_v4l2_i2c_tuner_addrs, ptr @__kstrtabns_v4l2_i2c_tuner_addrs }, section "___ksymtab_gpl+v4l2_i2c_tuner_addrs", align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_v4l2_i2c_new_subdev, ptr @__ksymtab_v4l2_i2c_new_subdev_board, ptr @__ksymtab_v4l2_i2c_subdev_addr, ptr @__ksymtab_v4l2_i2c_subdev_init, ptr @__ksymtab_v4l2_i2c_subdev_set_name, ptr @__ksymtab_v4l2_i2c_tuner_addrs], section "llvm.metadata"
@switch.table.v4l2_i2c_tuner_addrs = private unnamed_addr constant [4 x ptr] [ptr @v4l2_i2c_tuner_addrs.radio_addrs, ptr @v4l2_i2c_tuner_addrs.demod_addrs, ptr @v4l2_i2c_tuner_addrs.tv_addrs, ptr getelementptr inbounds ([10 x i16], ptr @v4l2_i2c_tuner_addrs.tv_addrs, i32 0, i32 4)], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l2_i2c_subdev_unregister(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 26
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @i2c_unregister_device(ptr noundef nonnull %3) #8
  br label %14

14:                                               ; preds = %13, %9, %5, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l2_i2c_subdev_set_name(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) #3 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi ptr [ %2, %4 ], [ %9, %6 ]
  %12 = icmp eq ptr %3, null
  %13 = select i1 %12, ptr @.str, ptr %3
  %14 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %15 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %14, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %11, ptr noundef %13, i32 noundef %18, i32 noundef %21)
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l2_i2c_subdev_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @v4l2_subdev_init(ptr noundef %0, ptr noundef %2) #8
  %4 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = or i32 %5, 1
  store i32 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %8 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.device_driver, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 2
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 14
  store ptr %7, ptr %13, align 4
  %14 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  store ptr %1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  store ptr %0, ptr %15, align 8
  %16 = load ptr, ptr %8, align 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %19 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.i2c_adapter, ptr %20, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  %26 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %18, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %17, ptr noundef nonnull @.str, i32 noundef %22, i32 noundef %25) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @v4l2_i2c_new_subdev_board(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %4
  %7 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.2, ptr noundef %2) #8
  %8 = getelementptr inbounds %struct.i2c_board_info, ptr %2, i32 0, i32 2
  %9 = load i16, ptr %8, align 2
  %10 = icmp eq i16 %9, 0
  %11 = icmp ne ptr %3, null
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = tail call ptr @i2c_new_scanned_device(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef null) #8
  br label %17

15:                                               ; preds = %6
  %16 = tail call ptr @i2c_new_client_device(ptr noundef %1, ptr noundef %2) #8
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %14, %13 ], [ %16, %15 ]
  %19 = icmp eq ptr %18, null
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  %21 = or i1 %19, %20
  br i1 %21, label %39, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4, i32 6
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.device_driver, ptr %24, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = tail call zeroext i1 @try_module_get(ptr noundef %28) #8
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4, i32 8
  %32 = load ptr, ptr %31, align 8
  %33 = tail call i32 @v4l2_device_register_subdev(ptr noundef nonnull %0, ptr noundef %32) #8
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, ptr %32, ptr null
  %36 = load ptr, ptr %23, align 8
  %37 = getelementptr inbounds %struct.device_driver, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  tail call void @module_put(ptr noundef %38) #8
  br label %39

39:                                               ; preds = %30, %26, %22, %17
  %40 = phi ptr [ %35, %30 ], [ null, %26 ], [ null, %22 ], [ null, %17 ]
  %41 = icmp ne ptr %40, null
  %42 = or i1 %20, %41
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @i2c_unregister_device(ptr noundef %18) #8
  br label %44

44:                                               ; preds = %43, %39, %4
  %45 = phi ptr [ null, %4 ], [ null, %43 ], [ %40, %39 ]
  ret ptr %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_scanned_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @v4l2_i2c_new_subdev(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4) #0 {
  %6 = alloca %struct.i2c_board_info, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %7 = call i32 @strscpy(ptr noundef nonnull %6, ptr noundef %2, i32 noundef 20) #8
  %8 = zext i8 %3 to i16
  %9 = getelementptr inbounds %struct.i2c_board_info, ptr %6, i32 0, i32 2
  store i16 %8, ptr %9, align 2
  %10 = call ptr @v4l2_i2c_new_subdev_board(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %4)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #8
  ret ptr %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @v4l2_i2c_subdev_addr(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %7 = load i16, ptr %6, align 2
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i16 [ %7, %5 ], [ -2, %1 ]
  ret i16 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @v4l2_i2c_tuner_addrs(i32 noundef %0) #6 {
  %2 = icmp ult i32 %0, 4
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = getelementptr inbounds [4 x ptr], ptr @switch.table.v4l2_i2c_tuner_addrs, i32 0, i32 %0
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }

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
