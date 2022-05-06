; ModuleID = '/llk/IR/drivers/i2c/i2c-core-of.c_pt.bc'
source_filename = "../drivers/i2c/i2c-core-of.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_i2c_get_board_info:\09\09\09\09\09"
module asm "\09.asciz \09\22of_i2c_get_board_info\22\09\09\09\09\09"
module asm "__kstrtabns_of_i2c_get_board_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_find_i2c_device_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22of_find_i2c_device_by_node\22\09\09\09\09\09"
module asm "__kstrtabns_of_find_i2c_device_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_find_i2c_adapter_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22of_find_i2c_adapter_by_node\22\09\09\09\09\09"
module asm "__kstrtabns_of_find_i2c_adapter_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_i2c_adapter_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_i2c_adapter_by_node\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_i2c_adapter_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_of_match_device:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_of_match_device\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_of_match_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }

@.str = private unnamed_addr constant [34 x i8] c"of_i2c: modalias failure on %pOF\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"of_i2c: invalid reg on %pOF\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"host-notify\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@__kstrtab_of_i2c_get_board_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_i2c_get_board_info = external dso_local constant [0 x i8], align 1
@__ksymtab_of_i2c_get_board_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_i2c_get_board_info to i32), ptr @__kstrtab_of_i2c_get_board_info, ptr @__kstrtabns_of_i2c_get_board_info }, section "___ksymtab_gpl+of_i2c_get_board_info", align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"i2c-bus\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Failed to create I2C device for %pOF\0A\00", align 1
@i2c_bus_type = external dso_local global %struct.bus_type, align 4
@__kstrtab_of_find_i2c_device_by_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_find_i2c_device_by_node = external dso_local constant [0 x i8], align 1
@__ksymtab_of_find_i2c_device_by_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_find_i2c_device_by_node to i32), ptr @__kstrtab_of_find_i2c_device_by_node, ptr @__kstrtabns_of_find_i2c_device_by_node }, section "___ksymtab+of_find_i2c_device_by_node", align 4
@__kstrtab_of_find_i2c_adapter_by_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_find_i2c_adapter_by_node = external dso_local constant [0 x i8], align 1
@__ksymtab_of_find_i2c_adapter_by_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_find_i2c_adapter_by_node to i32), ptr @__kstrtab_of_find_i2c_adapter_by_node, ptr @__kstrtabns_of_find_i2c_adapter_by_node }, section "___ksymtab+of_find_i2c_adapter_by_node", align 4
@__kstrtab_of_get_i2c_adapter_by_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_i2c_adapter_by_node = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_i2c_adapter_by_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_i2c_adapter_by_node to i32), ptr @__kstrtab_of_get_i2c_adapter_by_node, ptr @__kstrtabns_of_get_i2c_adapter_by_node }, section "___ksymtab+of_get_i2c_adapter_by_node", align 4
@__kstrtab_i2c_of_match_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_of_match_device = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_of_match_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_of_match_device to i32), ptr @__kstrtab_i2c_of_match_device, ptr @__kstrtabns_i2c_of_match_device }, section "___ksymtab_gpl+i2c_of_match_device", align 4
@i2c_of_notifier = dso_local local_unnamed_addr global %struct.notifier_block { ptr @of_i2c_notify, ptr null, i32 0 }, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"of_i2c: Failure registering %pOF\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"failed to create client for '%pOF'\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_i2c_of_match_device, ptr @__ksymtab_of_find_i2c_adapter_by_node, ptr @__ksymtab_of_find_i2c_device_by_node, ptr @__ksymtab_of_get_i2c_adapter_by_node, ptr @__ksymtab_of_i2c_get_board_info], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_i2c_get_board_info(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %2, i8 0, i32 56, i1 false)
  %5 = tail call i32 @of_modalias_node(ptr noundef %1, ptr noundef %2, i32 noundef 20) #7
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %1) #8
  br label %51

8:                                                ; preds = %3
  %9 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #7
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %1) #8
  br label %51

12:                                               ; preds = %8
  %13 = load i32, ptr %4, align 4
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = and i32 %13, 2147483647
  store i32 %16, ptr %4, align 4
  %17 = getelementptr inbounds %struct.i2c_board_info, ptr %2, i32 0, i32 1
  %18 = load i16, ptr %17, align 4
  %19 = or i16 %18, 16
  store i16 %19, ptr %17, align 4
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i32 [ %16, %15 ], [ %13, %12 ]
  %22 = and i32 %21, 1073741824
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = and i32 %21, -1073741825
  store i32 %25, ptr %4, align 4
  %26 = getelementptr inbounds %struct.i2c_board_info, ptr %2, i32 0, i32 1
  %27 = load i16, ptr %26, align 4
  %28 = or i16 %27, 32
  store i16 %28, ptr %26, align 4
  br label %29

29:                                               ; preds = %24, %20
  %30 = phi i32 [ %25, %24 ], [ %21, %20 ]
  %31 = trunc i32 %30 to i16
  %32 = getelementptr inbounds %struct.i2c_board_info, ptr %2, i32 0, i32 2
  store i16 %31, ptr %32, align 2
  %33 = getelementptr inbounds %struct.i2c_board_info, ptr %2, i32 0, i32 5
  store ptr %1, ptr %33, align 4
  %34 = icmp eq ptr %1, null
  %35 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %36 = select i1 %34, ptr null, ptr %35
  %37 = getelementptr inbounds %struct.i2c_board_info, ptr %2, i32 0, i32 6
  store ptr %36, ptr %37, align 4
  %38 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef null) #7
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.i2c_board_info, ptr %2, i32 0, i32 1
  %42 = load i16, ptr %41, align 4
  %43 = or i16 %42, 64
  store i16 %43, ptr %41, align 4
  br label %44

44:                                               ; preds = %40, %29
  %45 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef null) #7
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.i2c_board_info, ptr %2, i32 0, i32 1
  %49 = load i16, ptr %48, align 4
  %50 = or i16 %49, 128
  store i16 %50, ptr %48, align 4
  br label %51

51:                                               ; preds = %47, %44, %11, %7
  %52 = phi i32 [ -22, %7 ], [ %9, %11 ], [ 0, %47 ], [ 0, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %52
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_modalias_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_i2c_register_devices(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.i2c_board_info, align 4
  %3 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %5, ptr noundef nonnull @.str.5) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 8
  %12 = tail call ptr @of_node_get(ptr noundef %11) #7
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi ptr [ %8, %7 ], [ %12, %10 ]
  %15 = tail call ptr @of_get_next_available_child(ptr noundef %14, ptr noundef null) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %38, label %17

17:                                               ; preds = %35, %13
  %18 = phi ptr [ %36, %35 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.device_node, ptr %18, i32 0, i32 10
  %20 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %19) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %2, i8 0, i32 56, i1 false) #7, !annotation !8
  %23 = call i32 @of_i2c_get_board_info(ptr noundef %3, ptr noundef nonnull %18, ptr noundef nonnull %2) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = inttoptr i32 %23 to ptr
  br label %31

27:                                               ; preds = %22
  %28 = call ptr @i2c_new_client_device(ptr noundef %0, ptr noundef nonnull %2) #7
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, ptr noundef nonnull %18) #8
  br label %31

31:                                               ; preds = %30, %27, %25
  %32 = phi ptr [ %26, %25 ], [ %28, %30 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #7
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef nonnull %18) #8
  call void @_clear_bit(i32 noundef 3, ptr noundef %19) #7
  br label %35

35:                                               ; preds = %34, %31, %17
  %36 = call ptr @of_get_next_available_child(ptr noundef %14, ptr noundef nonnull %18) #7
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %17

38:                                               ; preds = %35, %13
  call void @of_node_put(ptr noundef %14) #7
  br label %39

39:                                               ; preds = %38, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_find_i2c_device_by_node(ptr noundef %0) #0 {
  %2 = tail call ptr @bus_find_device(ptr noundef nonnull @i2c_bus_type, ptr noundef null, ptr noundef %0, ptr noundef nonnull @device_match_of_node) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @i2c_verify_client(ptr noundef nonnull %2) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @put_device(ptr noundef nonnull %2) #7
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi ptr [ null, %1 ], [ null, %7 ], [ %5, %4 ]
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_verify_client(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_find_i2c_adapter_by_node(ptr noundef %0) #0 {
  %2 = tail call ptr @bus_find_device(ptr noundef nonnull @i2c_bus_type, ptr noundef null, ptr noundef %0, ptr noundef nonnull @of_dev_or_parent_node_match) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @i2c_verify_adapter(ptr noundef nonnull %2) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @put_device(ptr noundef nonnull %2) #7
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi ptr [ null, %1 ], [ null, %7 ], [ %5, %4 ]
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @of_dev_or_parent_node_match(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #5 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, %1
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %10, %6, %2
  %16 = phi i32 [ %14, %10 ], [ 1, %2 ], [ 0, %6 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_verify_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_get_i2c_adapter_by_node(ptr noundef %0) #0 {
  %2 = tail call ptr @bus_find_device(ptr noundef nonnull @i2c_bus_type, ptr noundef null, ptr noundef %0, ptr noundef nonnull @of_dev_or_parent_node_match) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @i2c_verify_adapter(ptr noundef nonnull %2) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @put_device(ptr noundef nonnull %2) #7
  br label %13

8:                                                ; preds = %4
  %9 = load ptr, ptr %5, align 8
  %10 = tail call zeroext i1 @try_module_get(ptr noundef %9) #7
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 9
  tail call void @put_device(ptr noundef %12) #7
  br label %13

13:                                               ; preds = %11, %8, %7, %1
  %14 = phi ptr [ %5, %8 ], [ null, %11 ], [ null, %1 ], [ null, %7 ]
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @i2c_of_match_device(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %1, null
  %4 = icmp ne ptr %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %31

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %8 = tail call ptr @of_match_device(ptr noundef nonnull %0, ptr noundef %7) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %31

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.of_device_id, ptr %0, i32 0, i32 2
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 2
  br label %16

16:                                               ; preds = %26, %14
  %17 = phi ptr [ %11, %14 ], [ %28, %26 ]
  %18 = phi ptr [ %0, %14 ], [ %27, %26 ]
  %19 = tail call zeroext i1 @sysfs_streq(ptr noundef %15, ptr noundef %17) #7
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @strchr(ptr noundef %17, i32 noundef 44) #7
  %22 = icmp eq ptr %21, null
  %23 = getelementptr i8, ptr %21, i32 1
  %24 = select i1 %22, ptr %17, ptr %23
  %25 = tail call zeroext i1 @sysfs_streq(ptr noundef %15, ptr noundef %24) #7
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = getelementptr %struct.of_device_id, ptr %18, i32 1
  %28 = getelementptr %struct.of_device_id, ptr %18, i32 1, i32 2
  %29 = load i8, ptr %28, align 4
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %16

31:                                               ; preds = %26, %20, %16, %10, %6, %2
  %32 = phi ptr [ null, %2 ], [ %8, %6 ], [ null, %10 ], [ %18, %16 ], [ %18, %20 ], [ null, %26 ]
  ret ptr %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_i2c_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.i2c_board_info, align 4
  %5 = tail call i32 @of_reconfig_get_state_change(i32 noundef %1, ptr noundef %2) #7
  switch i32 %5, label %60 [
    i32 1, label %6
    i32 2, label %45
  ]

6:                                                ; preds = %3
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.device_node, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @bus_find_device(ptr noundef nonnull @i2c_bus_type, ptr noundef null, ptr noundef %9, ptr noundef nonnull @of_dev_or_parent_node_match) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %60, label %12

12:                                               ; preds = %6
  %13 = tail call ptr @i2c_verify_adapter(ptr noundef nonnull %10) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @put_device(ptr noundef nonnull %10) #7
  br label %60

16:                                               ; preds = %12
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds %struct.device_node, ptr %17, i32 0, i32 10
  %19 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %18) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 9
  tail call void @put_device(ptr noundef %22) #7
  br label %60

23:                                               ; preds = %16
  %24 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %4, i8 0, i32 56, i1 false) #7, !annotation !8
  %25 = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 9
  %26 = call i32 @of_i2c_get_board_info(ptr noundef %25, ptr noundef %24, ptr noundef nonnull %4) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = inttoptr i32 %26 to ptr
  br label %34

30:                                               ; preds = %23
  %31 = call ptr @i2c_new_client_device(ptr noundef nonnull %13, ptr noundef nonnull %4) #7
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.7, ptr noundef %24) #8
  br label %34

34:                                               ; preds = %33, %30, %28
  %35 = phi ptr [ %29, %28 ], [ %31, %33 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #7
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load ptr, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.8, ptr noundef %38) #8
  call void @put_device(ptr noundef %25) #7
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr inbounds %struct.device_node, ptr %39, i32 0, i32 10
  call void @_clear_bit(i32 noundef 3, ptr noundef %40) #7
  %41 = ptrtoint ptr %35 to i32
  %42 = sub i32 1, %41
  %43 = or i32 %42, 32768
  br label %60

44:                                               ; preds = %34
  call void @put_device(ptr noundef %25) #7
  br label %60

45:                                               ; preds = %3
  %46 = load ptr, ptr %2, align 4
  %47 = getelementptr inbounds %struct.device_node, ptr %46, i32 0, i32 10
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %45
  %52 = tail call ptr @bus_find_device(ptr noundef nonnull @i2c_bus_type, ptr noundef null, ptr noundef %46, ptr noundef nonnull @device_match_of_node) #7
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = tail call ptr @i2c_verify_client(ptr noundef nonnull %52) #7
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  tail call void @put_device(ptr noundef nonnull %52) #7
  br label %60

58:                                               ; preds = %54
  tail call void @i2c_unregister_device(ptr noundef nonnull %55) #7
  %59 = getelementptr inbounds %struct.i2c_client, ptr %55, i32 0, i32 4
  tail call void @put_device(ptr noundef %59) #7
  br label %60

60:                                               ; preds = %58, %57, %51, %45, %44, %37, %21, %15, %6, %3
  %61 = phi i32 [ 1, %21 ], [ %43, %37 ], [ 1, %45 ], [ 1, %3 ], [ 1, %58 ], [ 1, %44 ], [ 1, %6 ], [ 1, %15 ], [ 1, %51 ], [ 1, %57 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_of_node(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reconfig_get_state_change(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
