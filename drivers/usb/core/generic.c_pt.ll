; ModuleID = '/llk/IR/drivers/usb/core/generic.c_pt.bc'
source_filename = "../drivers/usb/core/generic.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_choose_configuration:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_choose_configuration\22\09\09\09\09\09"
module asm "__kstrtabns_usb_choose_configuration:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.usb_device_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usbdrv_wrap, ptr, i8 }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [69 x i8] c"rejected %d configuration%s due to insufficient available bus power\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"no configuration chosen from %d choice%s\0A\00", align 1
@__kstrtab_usb_choose_configuration = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_choose_configuration = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_choose_configuration = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_choose_configuration to i32), ptr @__kstrtab_usb_choose_configuration, ptr @__kstrtabns_usb_choose_configuration }, section "___ksymtab_gpl+usb_choose_configuration", align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Device is not authorized for usage\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"can't set config #%d, error %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@usb_generic_driver = dso_local global %struct.usb_device_driver { ptr @.str.4, ptr @usb_generic_driver_match, ptr @usb_generic_driver_probe, ptr @usb_generic_driver_disconnect, ptr @usb_generic_driver_suspend, ptr @usb_generic_driver_resume, ptr null, %struct.usbdrv_wrap zeroinitializer, ptr null, i8 1 }, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@usb_bus_type = external dso_local global %struct.bus_type, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_usb_choose_configuration], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_choose_configuration(ptr noundef %0) #0 {
  %2 = tail call zeroext i1 @usb_device_is_owned(ptr noundef %0) #3
  br i1 %2, label %110, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 13
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %106, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 19
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, 4
  %14 = select i1 %13, i32 8, i32 2
  %15 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 24
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = icmp ne i8 %5, 1
  %19 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 3
  br label %20

20:                                               ; preds = %86, %8
  %21 = phi ptr [ null, %8 ], [ %88, %86 ]
  %22 = phi ptr [ %10, %8 ], [ %90, %86 ]
  %23 = phi i32 [ 0, %8 ], [ %87, %86 ]
  %24 = phi i32 [ 0, %8 ], [ %89, %86 ]
  %25 = getelementptr inbounds %struct.usb_config_descriptor, ptr %22, i32 0, i32 3
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.usb_host_config, ptr %22, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.usb_interface_cache, ptr %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.usb_config_descriptor, ptr %22, i32 0, i32 7
  %33 = load i8, ptr %32, align 4
  %34 = zext i8 %33 to i32
  %35 = mul nuw nsw i32 %14, %34
  %36 = icmp ugt i32 %35, %17
  br i1 %36, label %43, label %45

37:                                               ; preds = %20
  %38 = getelementptr inbounds %struct.usb_config_descriptor, ptr %22, i32 0, i32 7
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i32
  %41 = mul nuw nsw i32 %14, %40
  %42 = icmp ugt i32 %41, %17
  br i1 %42, label %43, label %83

43:                                               ; preds = %37, %28
  %44 = add i32 %23, 1
  br label %86

45:                                               ; preds = %28
  %46 = icmp eq ptr %31, null
  br i1 %46, label %83, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %31, i32 0, i32 5
  %49 = load i8, ptr %48, align 1
  %50 = icmp eq i8 %49, 1
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %31, i32 0, i32 7
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, 48
  br i1 %54, label %92, label %55

55:                                               ; preds = %51
  %56 = icmp eq i32 %24, 0
  %57 = select i1 %56, ptr %22, ptr %21
  br label %86

58:                                               ; preds = %47
  %59 = icmp eq i32 %24, 0
  %60 = select i1 %59, i1 %18, i1 false
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  switch i8 %49, label %78 [
    i8 2, label %62
    i8 -17, label %70
  ]

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %31, i32 0, i32 6
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %64, 2
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %31, i32 0, i32 7
  %68 = load i8, ptr %67, align 1
  %69 = icmp eq i8 %68, -1
  br i1 %69, label %86, label %78

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %31, i32 0, i32 6
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 1
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %31, i32 0, i32 7
  %76 = load i8, ptr %75, align 1
  %77 = icmp eq i8 %76, 1
  br i1 %77, label %86, label %78

78:                                               ; preds = %74, %70, %66, %62, %61, %58
  %79 = load i8, ptr %19, align 4
  %80 = icmp eq i8 %79, -1
  %81 = icmp eq i8 %49, -1
  %82 = select i1 %80, i1 true, i1 %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %78, %45, %37
  %84 = icmp eq ptr %21, null
  %85 = select i1 %84, ptr %22, ptr %21
  br label %86

86:                                               ; preds = %83, %74, %66, %55, %43
  %87 = phi i32 [ %23, %66 ], [ %23, %74 ], [ %23, %83 ], [ %23, %55 ], [ %44, %43 ]
  %88 = phi ptr [ %21, %66 ], [ %21, %74 ], [ %85, %83 ], [ %57, %55 ], [ %21, %43 ]
  %89 = add nuw nsw i32 %24, 1
  %90 = getelementptr %struct.usb_host_config, ptr %22, i32 1
  %91 = icmp eq i32 %89, %6
  br i1 %91, label %92, label %20

92:                                               ; preds = %86, %78, %51
  %93 = phi i32 [ %87, %86 ], [ %23, %51 ], [ %23, %78 ]
  %94 = phi ptr [ %88, %86 ], [ %22, %51 ], [ %22, %78 ]
  %95 = icmp sgt i32 %93, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  %98 = icmp eq i32 %93, 1
  %99 = select i1 %98, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %97, ptr noundef nonnull @.str, i32 noundef %93, ptr noundef nonnull %99) #4
  br label %100

100:                                              ; preds = %96, %92
  %101 = icmp eq ptr %94, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.usb_config_descriptor, ptr %94, i32 0, i32 4
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  br label %110

106:                                              ; preds = %100, %3
  %107 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  %108 = icmp eq i8 %5, 1
  %109 = select i1 %108, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %107, ptr noundef nonnull @.str.1, i32 noundef %6, ptr noundef nonnull %109) #4
  br label %110

110:                                              ; preds = %106, %102, %1
  %111 = phi i32 [ 0, %1 ], [ %105, %102 ], [ -1, %106 ]
  ret i32 %111
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @usb_device_is_owned(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_generic_driver_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 28
  %3 = load i16, ptr %2, align 1
  %4 = and i16 %3, 8
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2) #4
  br label %15

8:                                                ; preds = %1
  %9 = tail call i32 @usb_choose_configuration(ptr noundef %0)
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = tail call i32 @usb_set_configuration(ptr noundef %0, i32 noundef %9) #3
  switch i32 %12, label %13 [
    i32 -19, label %15
    i32 0, label %15
  ]

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.3, i32 noundef %9, i32 noundef %12) #4
  br label %15

15:                                               ; preds = %13, %11, %11, %8, %6
  tail call void @usb_notify_add_device(ptr noundef %0) #3
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_configuration(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_notify_add_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_generic_driver_disconnect(ptr noundef %0) #0 {
  tail call void @usb_notify_remove_device(ptr noundef %0) #3
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @usb_set_configuration(ptr noundef %0, i32 noundef -1) #3
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_notify_remove_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_generic_driver_suspend(ptr noundef %0, [1 x i32] %1) #0 {
  %3 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 @hcd_bus_suspend(ptr noundef %0, [1 x i32] %1) #3
  br label %16

8:                                                ; preds = %2
  %9 = extractvalue [1 x i32] %1, 0
  switch i32 %9, label %14 [
    i32 8, label %10
    i32 1, label %10
  ]

10:                                               ; preds = %8, %8
  %11 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %12, 5
  br i1 %13, label %19, label %14

14:                                               ; preds = %10, %8
  %15 = tail call i32 @usb_port_suspend(ptr noundef %0, [1 x i32] %1) #3
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %15, %14 ], [ %7, %6 ]
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %10
  tail call void @usbfs_notify_suspend(ptr noundef %0) #3
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32 [ 0, %19 ], [ %17, %16 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hcd_bus_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_port_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbfs_notify_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_generic_driver_resume(ptr noundef %0, [1 x i32] %1) #0 {
  %3 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 @hcd_bus_resume(ptr noundef %0, [1 x i32] %1) #3
  br label %10

8:                                                ; preds = %2
  %9 = tail call i32 @usb_port_resume(ptr noundef %0, [1 x i32] %1) #3
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %9, %8 ], [ %7, %6 ]
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void @usbfs_notify_resume(ptr noundef %0) #3
  br label %14

14:                                               ; preds = %13, %10
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hcd_bus_resume(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_port_resume(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbfs_notify_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @usb_generic_driver_match(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 49
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = tail call i32 @bus_for_each_drv(ptr noundef nonnull @usb_bus_type, ptr noundef null, ptr noundef %0, ptr noundef nonnull @__check_for_non_generic_match) #3
  %8 = icmp eq i32 %7, 0
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i1 [ true, %1 ], [ %8, %6 ]
  ret i1 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_drv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__check_for_non_generic_match(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usbdrv_wrap, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -28
  %8 = icmp eq ptr %7, @usb_generic_driver
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = tail call zeroext i1 @usb_driver_applicable(ptr noundef %1, ptr noundef %7) #3
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %9, %6, %2
  %13 = phi i32 [ %11, %9 ], [ 0, %2 ], [ 0, %6 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @usb_driver_applicable(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
