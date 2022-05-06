; ModuleID = '/llk/IR/drivers/usb/common/ulpi.c_pt.bc'
source_filename = "../drivers/usb/common/ulpi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ulpi_read:\09\09\09\09\09"
module asm "\09.asciz \09\22ulpi_read\22\09\09\09\09\09"
module asm "__kstrtabns_ulpi_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ulpi_write:\09\09\09\09\09"
module asm "\09.asciz \09\22ulpi_write\22\09\09\09\09\09"
module asm "__kstrtabns_ulpi_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ulpi_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22__ulpi_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns___ulpi_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ulpi_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22ulpi_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_ulpi_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ulpi_register_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22ulpi_register_interface\22\09\09\09\09\09"
module asm "__kstrtabns_ulpi_register_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ulpi_unregister_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22ulpi_unregister_interface\22\09\09\09\09\09"
module asm "__kstrtabns_ulpi_unregister_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.ulpi = type { %struct.ulpi_device_id, ptr, %struct.device }
%struct.ulpi_device_id = type { i16, i16, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.ulpi_ops = type { ptr, ptr }
%struct.ulpi_driver = type { ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_ulpi_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_ulpi_read = external dso_local constant [0 x i8], align 1
@__ksymtab_ulpi_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ulpi_read to i32), ptr @__kstrtab_ulpi_read, ptr @__kstrtabns_ulpi_read }, section "___ksymtab_gpl+ulpi_read", align 4
@__kstrtab_ulpi_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_ulpi_write = external dso_local constant [0 x i8], align 1
@__ksymtab_ulpi_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ulpi_write to i32), ptr @__kstrtab_ulpi_write, ptr @__kstrtabns_ulpi_write }, section "___ksymtab_gpl+ulpi_write", align 4
@ulpi_bus = internal global %struct.bus_type { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ulpi_match, ptr @ulpi_uevent, ptr @ulpi_probe, ptr null, ptr @ulpi_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@__kstrtab___ulpi_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns___ulpi_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab___ulpi_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ulpi_register_driver to i32), ptr @__kstrtab___ulpi_register_driver, ptr @__kstrtabns___ulpi_register_driver }, section "___ksymtab_gpl+__ulpi_register_driver", align 4
@__kstrtab_ulpi_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_ulpi_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_ulpi_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ulpi_unregister_driver to i32), ptr @__kstrtab_ulpi_unregister_driver, ptr @__kstrtabns_ulpi_unregister_driver }, section "___ksymtab_gpl+ulpi_unregister_driver", align 4
@__kstrtab_ulpi_register_interface = external dso_local constant [0 x i8], align 1
@__kstrtabns_ulpi_register_interface = external dso_local constant [0 x i8], align 1
@__ksymtab_ulpi_register_interface = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ulpi_register_interface to i32), ptr @__kstrtab_ulpi_register_interface, ptr @__kstrtabns_ulpi_register_interface }, section "___ksymtab_gpl+ulpi_register_interface", align 4
@__kstrtab_ulpi_unregister_interface = external dso_local constant [0 x i8], align 1
@__kstrtabns_ulpi_unregister_interface = external dso_local constant [0 x i8], align 1
@__ksymtab_ulpi_unregister_interface = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ulpi_unregister_interface to i32), ptr @__kstrtab_ulpi_unregister_interface, ptr @__kstrtabns_ulpi_unregister_interface }, section "___ksymtab_gpl+ulpi_unregister_interface", align 4
@__initcall__kmod_ulpi__166_317_ulpi_init4 = internal global ptr @ulpi_init, section ".initcall4.init", align 4
@__exitcall_ulpi_exit = internal global ptr @ulpi_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author167 = internal constant [30 x i8] c"ulpi.author=Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file168 = internal constant [34 x i8] c"ulpi.file=drivers/usb/common/ulpi\00", section ".modinfo", align 1
@__UNIQUE_ID_license169 = internal constant [20 x i8] c"ulpi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description170 = internal constant [34 x i8] c"ulpi.description=USB ULPI PHY bus\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [5 x i8] c"ulpi\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"MODALIAS=ulpi:v%04xp%04x\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ulpi_dev_type = internal constant %struct.device_type { ptr @.str.3, ptr @ulpi_dev_attr_groups, ptr null, ptr null, ptr @ulpi_dev_release, ptr null }, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"%s.ulpi\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ulpi_device\00", align 1
@ulpi_dev_attr_groups = internal global [2 x ptr] [ptr @ulpi_dev_attr_group, ptr null], align 4
@ulpi_dev_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ulpi_dev_attrs, ptr null }, align 4
@ulpi_dev_attrs = internal global [2 x ptr] [ptr @dev_attr_modalias, ptr null], align 4
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @modalias_show, ptr null }, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"ulpi:v%04xp%04x\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"ulpi:v%04xp%04x\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_description170, ptr @__UNIQUE_ID_file168, ptr @__UNIQUE_ID_license169, ptr @__exitcall_ulpi_exit, ptr @__initcall__kmod_ulpi__166_317_ulpi_init4, ptr @__ksymtab___ulpi_register_driver, ptr @__ksymtab_ulpi_read, ptr @__ksymtab_ulpi_register_interface, ptr @__ksymtab_ulpi_unregister_driver, ptr @__ksymtab_ulpi_unregister_interface, ptr @__ksymtab_ulpi_write, ptr @ulpi_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ulpi_read(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.ulpi, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ulpi, ptr %0, i32 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %5(ptr noundef %7, i8 noundef zeroext %1) #5
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ulpi_write(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.ulpi, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ulpi_ops, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ulpi, ptr %0, i32 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %7(ptr noundef %9, i8 noundef zeroext %1, i8 noundef zeroext %2) #5
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ulpi_register_driver(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ulpi_driver, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ulpi_driver, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.ulpi_driver, ptr %0, i32 0, i32 3, i32 2
  store ptr %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ulpi_driver, ptr %0, i32 0, i32 3, i32 1
  store ptr @ulpi_bus, ptr %9, align 4
  %10 = tail call i32 @driver_register(ptr noundef %7) #5
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ %10, %6 ], [ -22, %2 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ulpi_unregister_driver(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ulpi_driver, ptr %0, i32 0, i32 3
  tail call void @driver_unregister(ptr noundef %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ulpi_register_interface(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 488) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %102, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ulpi, ptr %4, i32 0, i32 1
  store ptr %1, ptr %7, align 8
  %8 = getelementptr inbounds %struct.ulpi, ptr %4, i32 0, i32 2
  %9 = getelementptr inbounds %struct.ulpi, ptr %4, i32 0, i32 2, i32 1
  store ptr %0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ulpi, ptr %4, i32 0, i32 2, i32 5
  store ptr @ulpi_bus, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ulpi, ptr %4, i32 0, i32 2, i32 4
  store ptr @ulpi_dev_type, ptr %11, align 8
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  %16 = load ptr, ptr %0, align 4
  br label %17

17:                                               ; preds = %15, %6
  %18 = phi ptr [ %16, %15 ], [ %13, %6 ]
  %19 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %8, ptr noundef nonnull @.str.2, ptr noundef %18) #5
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 25
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 25
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %28, %17
  %33 = phi ptr [ %22, %17 ], [ %30, %28 ]
  %34 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %33, ptr noundef nonnull @.str) #5
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %34, ptr noundef null) #5
  tail call void @of_node_put(ptr noundef nonnull %34) #5
  %38 = icmp eq ptr %37, null
  br i1 %38, label %99, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.ulpi, ptr %4, i32 0, i32 2, i32 25
  store ptr %37, ptr %40, align 8
  br label %41

41:                                               ; preds = %39, %32, %28, %24
  %42 = load ptr, ptr %7, align 8
  %43 = getelementptr inbounds %struct.ulpi_ops, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %9, align 4
  %46 = tail call i32 %44(ptr noundef %45, i8 noundef zeroext 22, i8 noundef zeroext -86) #5
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %90, label %48

48:                                               ; preds = %41
  %49 = load ptr, ptr %7, align 8
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %9, align 4
  %52 = tail call i32 %50(ptr noundef %51, i8 noundef zeroext 22) #5
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %92, label %54

54:                                               ; preds = %48
  %55 = icmp eq i32 %52, 170
  br i1 %55, label %56, label %90

56:                                               ; preds = %54
  %57 = load ptr, ptr %7, align 8
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %9, align 4
  %60 = tail call i32 %58(ptr noundef %59, i8 noundef zeroext 0) #5
  %61 = trunc i32 %60 to i16
  store i16 %61, ptr %4, align 8
  %62 = load ptr, ptr %7, align 8
  %63 = load ptr, ptr %62, align 4
  %64 = load ptr, ptr %9, align 4
  %65 = tail call i32 %63(ptr noundef %64, i8 noundef zeroext 1) #5
  %66 = load i16, ptr %4, align 8
  %67 = trunc i32 %65 to i16
  %68 = shl i16 %67, 8
  %69 = or i16 %68, %66
  store i16 %69, ptr %4, align 8
  %70 = load ptr, ptr %7, align 8
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %9, align 4
  %73 = tail call i32 %71(ptr noundef %72, i8 noundef zeroext 2) #5
  %74 = trunc i32 %73 to i16
  %75 = getelementptr inbounds %struct.ulpi_device_id, ptr %4, i32 0, i32 1
  store i16 %74, ptr %75, align 2
  %76 = load ptr, ptr %7, align 8
  %77 = load ptr, ptr %76, align 4
  %78 = load ptr, ptr %9, align 4
  %79 = tail call i32 %77(ptr noundef %78, i8 noundef zeroext 3) #5
  %80 = load i16, ptr %75, align 2
  %81 = trunc i32 %79 to i16
  %82 = shl i16 %81, 8
  %83 = or i16 %82, %80
  store i16 %83, ptr %75, align 2
  %84 = load i16, ptr %4, align 8
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %56
  %87 = zext i16 %84 to i32
  %88 = zext i16 %83 to i32
  %89 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.6, i32 noundef %87, i32 noundef %88) #5
  br label %95

90:                                               ; preds = %56, %54, %41
  %91 = tail call i32 @of_device_request_module(ptr noundef %8) #5
  br label %95

92:                                               ; preds = %48
  %93 = getelementptr inbounds %struct.ulpi, ptr %4, i32 0, i32 2, i32 25
  %94 = load ptr, ptr %93, align 8
  tail call void @of_node_put(ptr noundef %94) #5
  br label %99

95:                                               ; preds = %90, %86
  %96 = tail call i32 @device_register(ptr noundef %8) #5
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  tail call void @put_device(ptr noundef %8) #5
  br label %99

99:                                               ; preds = %98, %92, %36
  %100 = phi i32 [ -22, %36 ], [ %96, %98 ], [ %52, %92 ]
  tail call void @kfree(ptr noundef nonnull %4) #5
  %101 = inttoptr i32 %100 to ptr
  br label %102

102:                                              ; preds = %99, %95, %2
  %103 = phi ptr [ %101, %99 ], [ inttoptr (i32 -12 to ptr), %2 ], [ %4, %95 ]
  ret ptr %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ulpi_unregister_interface(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ulpi, ptr %0, i32 0, i32 2
  tail call void @device_unregister(ptr noundef %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ulpi_init() #2 section ".init.text" {
  %1 = tail call i32 @bus_register(ptr noundef nonnull @ulpi_bus) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ulpi_exit() #2 section ".exit.text" {
  tail call void @bus_unregister(ptr noundef nonnull @ulpi_bus) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ulpi_match(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = load i16, ptr %3, align 8
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %1, i32 -12
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = load i16, ptr %8, align 4
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %10
  %14 = getelementptr i8, ptr %0, i32 -14
  br label %21

15:                                               ; preds = %6, %2
  %16 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = tail call ptr @of_match_device(ptr noundef %17, ptr noundef %0) #5
  %19 = icmp ne ptr %18, null
  %20 = zext i1 %19 to i32
  br label %34

21:                                               ; preds = %30, %13
  %22 = phi i16 [ %11, %13 ], [ %32, %30 ]
  %23 = phi ptr [ %8, %13 ], [ %31, %30 ]
  %24 = icmp eq i16 %22, %4
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ulpi_device_id, ptr %23, i32 0, i32 1
  %27 = load i16, ptr %26, align 2
  %28 = load i16, ptr %14, align 2
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %25, %21
  %31 = getelementptr %struct.ulpi_device_id, ptr %23, i32 1
  %32 = load i16, ptr %31, align 4
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %21

34:                                               ; preds = %30, %25, %15, %10
  %35 = phi i32 [ %20, %15 ], [ 0, %10 ], [ 1, %25 ], [ 0, %30 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ulpi_uevent(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @of_device_uevent_modalias(ptr noundef %0, ptr noundef %1) #5
  %4 = icmp eq i32 %3, -19
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 -16
  %7 = load i16, ptr %6, align 8
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %0, i32 -14
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %8, i32 noundef %11) #5
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 0, i32 -12
  br label %15

15:                                               ; preds = %5, %2
  %16 = phi i32 [ %3, %2 ], [ %14, %5 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ulpi_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @of_clk_set_defaults(ptr noundef %5, i1 noundef zeroext false) #5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %3, i32 -8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %0, i32 -16
  %12 = tail call i32 %10(ptr noundef %11) #5
  br label %13

13:                                               ; preds = %8, %1
  %14 = phi i32 [ %12, %8 ], [ %6, %1 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ulpi_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -16
  tail call void %5(ptr noundef %8) #5
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_uevent_modalias(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_set_defaults(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ulpi_dev_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  tail call void @of_node_put(ptr noundef %3) #5
  %4 = getelementptr i8, ptr %0, i32 -16
  tail call void @kfree(ptr noundef %4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @modalias_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call i32 @of_device_modalias(ptr noundef %0, ptr noundef %2, i32 noundef 4096) #5
  %5 = icmp eq i32 %4, -19
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 -16
  %8 = load i16, ptr %7, align 8
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %0, i32 -14
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %9, i32 noundef %12)
  br label %14

14:                                               ; preds = %6, %3
  %15 = phi i32 [ %13, %6 ], [ %4, %3 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_modalias(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_request_module(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
