; ModuleID = '/llk/IR/drivers/of/device.c_pt.bc'
source_filename = "../drivers/of/device.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_match_device:\09\09\09\09\09"
module asm "\09.asciz \09\22of_match_device\22\09\09\09\09\09"
module asm "__kstrtabns_of_match_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_dma_configure_id:\09\09\09\09\09"
module asm "\09.asciz \09\22of_dma_configure_id\22\09\09\09\09\09"
module asm "__kstrtabns_of_dma_configure_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22of_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_of_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22of_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_of_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_device_get_match_data:\09\09\09\09\09"
module asm "\09.asciz \09\22of_device_get_match_data\22\09\09\09\09\09"
module asm "__kstrtabns_of_device_get_match_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_device_request_module:\09\09\09\09\09"
module asm "\09.asciz \09\22of_device_request_module\22\09\09\09\09\09"
module asm "__kstrtabns_of_device_request_module:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_device_modalias:\09\09\09\09\09"
module asm "\09.asciz \09\22of_device_modalias\22\09\09\09\09\09"
module asm "__kstrtabns_of_device_modalias:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_device_uevent_modalias:\09\09\09\09\09"
module asm "\09.asciz \09\22of_device_uevent_modalias\22\09\09\09\09\09"
module asm "__kstrtabns_of_device_uevent_modalias:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.bus_dma_region = type { i32, i32, i64, i64 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.alias_prop = type { %struct.list_head, ptr, ptr, i32, [0 x i8] }
%struct.kobj_uevent_env = type { [3 x ptr], [64 x ptr], i32, [2048 x i8], i32 }

@__kstrtab_of_match_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_match_device = external dso_local constant [0 x i8], align 1
@__ksymtab_of_match_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_match_device to i32), ptr @__kstrtab_of_match_device, ptr @__kstrtabns_of_match_device }, section "___ksymtab+of_match_device", align 4
@.str = private unnamed_addr constant [38 x i8] c"Invalid size 0x%llx for dma-range(s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Adjusted size 0x%llx invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"DMA mask not set\0A\00", align 1
@__kstrtab_of_dma_configure_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_dma_configure_id = external dso_local constant [0 x i8], align 1
@__ksymtab_of_dma_configure_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_dma_configure_id to i32), ptr @__kstrtab_of_dma_configure_id, ptr @__kstrtabns_of_dma_configure_id }, section "___ksymtab_gpl+of_dma_configure_id", align 4
@__kstrtab_of_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_of_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_device_register to i32), ptr @__kstrtab_of_device_register, ptr @__kstrtabns_of_device_register }, section "___ksymtab+of_device_register", align 4
@__kstrtab_of_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_of_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_device_unregister to i32), ptr @__kstrtab_of_device_unregister, ptr @__kstrtabns_of_device_unregister }, section "___ksymtab+of_device_unregister", align 4
@__kstrtab_of_device_get_match_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_device_get_match_data = external dso_local constant [0 x i8], align 1
@__ksymtab_of_device_get_match_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_device_get_match_data to i32), ptr @__kstrtab_of_device_get_match_data, ptr @__kstrtabns_of_device_get_match_data }, section "___ksymtab+of_device_get_match_data", align 4
@__kstrtab_of_device_request_module = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_device_request_module = external dso_local constant [0 x i8], align 1
@__ksymtab_of_device_request_module = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_device_request_module to i32), ptr @__kstrtab_of_device_request_module, ptr @__kstrtabns_of_device_request_module }, section "___ksymtab_gpl+of_device_request_module", align 4
@__kstrtab_of_device_modalias = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_device_modalias = external dso_local constant [0 x i8], align 1
@__ksymtab_of_device_modalias = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_device_modalias to i32), ptr @__kstrtab_of_device_modalias, ptr @__kstrtabns_of_device_modalias }, section "___ksymtab_gpl+of_device_modalias", align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"OF_NAME=%pOFn\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"OF_FULLNAME=%pOF\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"OF_TYPE=%s\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"OF_COMPATIBLE_%d=%s\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"OF_COMPATIBLE_N=%d\00", align 1
@of_mutex = external dso_local global %struct.mutex, align 4
@aliases_lookup = external dso_local global %struct.list_head, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"OF_ALIAS_%d=%s\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"MODALIAS=\00", align 1
@__kstrtab_of_device_uevent_modalias = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_device_uevent_modalias = external dso_local constant [0 x i8], align 1
@__ksymtab_of_device_uevent_modalias = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_device_uevent_modalias to i32), ptr @__kstrtab_of_device_uevent_modalias, ptr @__kstrtabns_of_device_uevent_modalias }, section "___ksymtab_gpl+of_device_uevent_modalias", align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"of:N%pOFn%c%s\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"C%s\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_of_device_get_match_data, ptr @__ksymtab_of_device_modalias, ptr @__ksymtab_of_device_register, ptr @__ksymtab_of_device_request_module, ptr @__ksymtab_of_device_uevent_modalias, ptr @__ksymtab_of_device_unregister, ptr @__ksymtab_of_dma_configure_id, ptr @__ksymtab_of_match_device], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_match_device(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 37
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = tail call ptr @of_match_node(ptr noundef nonnull %0, ptr noundef nonnull %6) #8
  br label %15

15:                                               ; preds = %13, %8, %4, %2
  %16 = phi ptr [ %14, %13 ], [ null, %8 ], [ null, %4 ], [ null, %2 ]
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_device_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/of/device.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 39, 0\0A.popsection", ""() #8, !srcloc !9
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 4
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi ptr [ %12, %11 ], [ %9, %6 ]
  store ptr %14, ptr %0, align 8
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  store i32 -1, ptr %15, align 4
  %16 = tail call i32 @device_add(ptr noundef %7) #8
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_dma_configure_id(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store ptr null, ptr %5, align 4
  %6 = call i32 @of_dma_get_range(ptr noundef %1, ptr noundef nonnull %5) #8
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  br i1 %2, label %45, label %9

9:                                                ; preds = %8
  %10 = icmp eq i32 %6, -19
  %11 = select i1 %10, i32 0, i32 %6
  br label %108

12:                                               ; preds = %4
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.bus_dma_region, ptr %13, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %17, %12
  %18 = phi i64 [ %30, %17 ], [ %15, %12 ]
  %19 = phi i64 [ %25, %17 ], [ -1, %12 ]
  %20 = phi i64 [ %27, %17 ], [ 0, %12 ]
  %21 = phi ptr [ %28, %17 ], [ %13, %12 ]
  %22 = getelementptr inbounds %struct.bus_dma_region, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = zext i32 %23 to i64
  %25 = call i64 @llvm.umin.i64(i64 %19, i64 %24)
  %26 = add i64 %18, %24
  %27 = call i64 @llvm.umax.i64(i64 %26, i64 %20)
  %28 = getelementptr %struct.bus_dma_region, ptr %21, i32 1
  %29 = getelementptr %struct.bus_dma_region, ptr %21, i32 1, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %17

32:                                               ; preds = %17, %12
  %33 = phi i64 [ 0, %12 ], [ %27, %17 ]
  %34 = phi i64 [ -1, %12 ], [ %25, %17 ]
  %35 = sub i64 %33, %34
  %36 = and i64 %35, 1
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str, i64 noundef %35) #9
  %39 = add i64 %35, 1
  br label %40

40:                                               ; preds = %38, %32
  %41 = phi i64 [ %39, %38 ], [ %35, %32 ]
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1, i64 noundef 0) #9
  %44 = load ptr, ptr %5, align 4
  call void @kfree(ptr noundef %44) #8
  br label %108

45:                                               ; preds = %40, %8
  %46 = phi i64 [ 0, %8 ], [ %41, %40 ]
  %47 = phi i64 [ 0, %8 ], [ %34, %40 ]
  %48 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 16
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.2) #9
  %52 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 17
  store ptr %52, ptr %48, align 4
  br label %53

53:                                               ; preds = %51, %45
  %54 = phi ptr [ %52, %51 ], [ %49, %45 ]
  %55 = icmp eq i64 %46, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 17
  %58 = load i64, ptr %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = add i64 %58, 1
  %62 = call i64 @llvm.umax.i64(i64 %58, i64 %61)
  br label %63

63:                                               ; preds = %60, %56, %53
  %64 = phi i64 [ %62, %60 ], [ 4294967296, %56 ], [ %46, %53 ]
  %65 = add nsw i64 %47, -1
  %66 = add i64 %65, %64
  %67 = lshr i64 %66, 32
  %68 = trunc i64 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %63
  %71 = icmp slt i64 %66, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %70
  %73 = call i32 @llvm.ctlz.i32(i32 %68, i1 true) #8, !range !10
  %74 = sub nuw nsw i32 64, %73
  br label %81

75:                                               ; preds = %63
  %76 = trunc i64 %66 to i32
  %77 = icmp eq i32 %76, 0
  %78 = call i32 @llvm.ctlz.i32(i32 %76, i1 false) #8, !range !10
  %79 = sub nuw nsw i32 32, %78
  %80 = select i1 %77, i32 0, i32 %79
  br label %81

81:                                               ; preds = %75, %72
  %82 = phi i32 [ %74, %72 ], [ %80, %75 ]
  %83 = zext i32 %82 to i64
  %84 = shl nsw i64 -1, %83
  %85 = xor i64 %84, -1
  br label %86

86:                                               ; preds = %81, %70
  %87 = phi i64 [ %85, %81 ], [ -1, %70 ]
  %88 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 17
  %89 = load i64, ptr %88, align 8
  %90 = and i64 %89, %87
  store i64 %90, ptr %88, align 8
  %91 = load i64, ptr %54, align 8
  %92 = and i64 %91, %87
  store i64 %92, ptr %54, align 8
  %93 = icmp eq i32 %6, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 18
  store i64 %66, ptr %95, align 8
  %96 = load ptr, ptr %5, align 4
  %97 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  store ptr %96, ptr %97, align 8
  br label %98

98:                                               ; preds = %94, %86
  %99 = call zeroext i1 @of_dma_is_coherent(ptr noundef %1) #8
  %100 = call ptr @of_iommu_configure(ptr noundef %0, ptr noundef %1, ptr noundef %3) #8
  %101 = icmp eq ptr %100, inttoptr (i32 -517 to ptr)
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  br i1 %93, label %103, label %105

103:                                              ; preds = %102
  %104 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  store ptr null, ptr %104, align 8
  br label %105

105:                                              ; preds = %103, %102
  %106 = load ptr, ptr %5, align 4
  call void @kfree(ptr noundef %106) #8
  br label %108

107:                                              ; preds = %98
  call void @arch_setup_dma_ops(ptr noundef %0, i64 noundef %47, i64 noundef %64, ptr noundef %100, i1 noundef zeroext %99) #8
  br label %108

108:                                              ; preds = %107, %105, %43, %9
  %109 = phi i32 [ -517, %105 ], [ %11, %9 ], [ -22, %43 ], [ 0, %107 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %109
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_get_range(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_dma_is_coherent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iommu_configure(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_setup_dma_ops(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_device_register(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @device_initialize(ptr noundef %2) #8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/of/device.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 39, 0\0A.popsection", ""() #8, !srcloc !9
  unreachable

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load ptr, ptr %2, align 4
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ %9, %7 ]
  store ptr %14, ptr %0, align 8
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  store i32 -1, ptr %15, align 4
  %16 = tail call i32 @device_add(ptr noundef %2) #8
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_device_unregister(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @device_unregister(ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_device_get_match_data(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 37
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = tail call ptr @of_match_node(ptr noundef nonnull %5, ptr noundef nonnull %9) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.of_device_id, ptr %17, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %16, %11, %7, %1
  %23 = phi ptr [ %21, %19 ], [ null, %16 ], [ null, %11 ], [ null, %7 ], [ null, %1 ]
  ret ptr %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_device_request_module(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @of_device_get_modalias(ptr noundef %0, ptr noundef null, i32 noundef 0)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = add nuw i32 %2, 1
  %6 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = tail call fastcc i32 @of_device_get_modalias(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %2)
  %10 = getelementptr i8, ptr %6, i32 %2
  store i8 0, ptr %10, align 1
  %11 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %6) #8
  tail call void @kfree(ptr noundef nonnull %6) #8
  br label %12

12:                                               ; preds = %8, %4, %1
  %13 = phi i32 [ %11, %8 ], [ %2, %1 ], [ -12, %4 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @of_device_get_modalias(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %48, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %48, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @of_get_property(ptr noundef nonnull %7, ptr noundef nonnull @.str.13, ptr noundef null) #8
  %11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.11, ptr noundef nonnull %7, i32 noundef 84, ptr noundef %10)
  %12 = load ptr, ptr %6, align 8
  %13 = tail call ptr @of_find_property(ptr noundef %12, ptr noundef nonnull @.str.6, ptr noundef null) #8
  %14 = tail call ptr @of_prop_next_string(ptr noundef %13, ptr noundef null) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %48, label %16

16:                                               ; preds = %9
  %17 = icmp eq ptr %1, null
  %18 = getelementptr i8, ptr %1, i32 %11
  %19 = select i1 %17, ptr null, ptr %18
  %20 = sub i32 %2, %11
  br label %21

21:                                               ; preds = %43, %16
  %22 = phi i32 [ %28, %43 ], [ %11, %16 ]
  %23 = phi ptr [ %46, %43 ], [ %14, %16 ]
  %24 = phi i32 [ %45, %43 ], [ %20, %16 ]
  %25 = phi ptr [ %44, %43 ], [ %19, %16 ]
  %26 = tail call i32 @strlen(ptr noundef nonnull %23)
  %27 = add i32 %26, 1
  %28 = add i32 %27, %22
  %29 = icmp sgt i32 %27, %24
  br i1 %29, label %43, label %30

30:                                               ; preds = %21
  %31 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %25, i32 noundef %24, ptr noundef nonnull @.str.12, ptr noundef nonnull %23)
  %32 = icmp eq ptr %25, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %37, %30
  %34 = phi ptr [ %38, %37 ], [ %25, %30 ]
  %35 = tail call ptr @strchr(ptr noundef nonnull %34, i32 noundef 32)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %35, i32 1
  store i8 95, ptr %35, align 1
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %33

40:                                               ; preds = %37, %33, %30
  %41 = sub i32 %24, %31
  %42 = getelementptr i8, ptr %25, i32 %31
  br label %43

43:                                               ; preds = %40, %21
  %44 = phi ptr [ %25, %21 ], [ %42, %40 ]
  %45 = phi i32 [ %24, %21 ], [ %41, %40 ]
  %46 = tail call ptr @of_prop_next_string(ptr noundef %13, ptr noundef nonnull %23) #8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %21

48:                                               ; preds = %43, %9, %5, %3
  %49 = phi i32 [ -19, %5 ], [ -19, %3 ], [ %11, %9 ], [ %28, %43 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_device_modalias(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = add i32 %2, -2
  %5 = tail call fastcc i32 @of_device_get_modalias(ptr noundef %0, ptr noundef %1, i32 noundef %4)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = icmp sgt i32 %5, %4
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = add nuw i32 %5, 1
  %11 = getelementptr i8, ptr %1, i32 %5
  store i8 10, ptr %11, align 1
  %12 = getelementptr i8, ptr %1, i32 %10
  store i8 0, ptr %12, align 1
  br label %13

13:                                               ; preds = %9, %7, %3
  %14 = phi i32 [ %10, %9 ], [ %5, %3 ], [ -12, %7 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_device_uevent(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %51, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %51, label %8

8:                                                ; preds = %4
  %9 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #8
  %10 = load ptr, ptr %5, align 8
  %11 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef %10) #8
  %12 = load ptr, ptr %5, align 8
  %13 = tail call ptr @of_get_property(ptr noundef %12, ptr noundef nonnull @.str.13, ptr noundef null) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %13) #8
  br label %17

17:                                               ; preds = %15, %8
  %18 = load ptr, ptr %5, align 8
  %19 = tail call ptr @of_find_property(ptr noundef %18, ptr noundef nonnull @.str.6, ptr noundef null) #8
  %20 = tail call ptr @of_prop_next_string(ptr noundef %19, ptr noundef null) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %22, %17
  %23 = phi ptr [ %27, %22 ], [ %20, %17 ]
  %24 = phi i32 [ %26, %22 ], [ 0, %17 ]
  %25 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %24, ptr noundef nonnull %23) #8
  %26 = add i32 %24, 1
  %27 = tail call ptr @of_prop_next_string(ptr noundef %19, ptr noundef nonnull %23) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %22

29:                                               ; preds = %22, %17
  %30 = phi i32 [ 0, %17 ], [ %26, %22 ]
  %31 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %30) #8
  tail call void @mutex_lock(ptr noundef nonnull @of_mutex) #8
  %32 = load ptr, ptr @aliases_lookup, align 4
  %33 = icmp eq ptr %32, @aliases_lookup
  br i1 %33, label %50, label %34

34:                                               ; preds = %46, %29
  %35 = phi ptr [ %48, %46 ], [ %32, %29 ]
  %36 = phi i32 [ %47, %46 ], [ 0, %29 ]
  %37 = load ptr, ptr %5, align 8
  %38 = getelementptr inbounds %struct.alias_prop, ptr %35, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %37, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.alias_prop, ptr %35, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %36, ptr noundef %43) #8
  %45 = add i32 %36, 1
  br label %46

46:                                               ; preds = %41, %34
  %47 = phi i32 [ %45, %41 ], [ %36, %34 ]
  %48 = load ptr, ptr %35, align 4
  %49 = icmp eq ptr %48, @aliases_lookup
  br i1 %49, label %50, label %34

50:                                               ; preds = %46, %29
  tail call void @mutex_unlock(ptr noundef nonnull @of_mutex) #8
  br label %51

51:                                               ; preds = %50, %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_device_uevent_modalias(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.10) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.kobj_uevent_env, ptr %1, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  %15 = getelementptr %struct.kobj_uevent_env, ptr %1, i32 0, i32 3, i32 %14
  %16 = sub i32 2048, %13
  %17 = tail call fastcc i32 @of_device_get_modalias(ptr noundef nonnull %0, ptr noundef %15, i32 noundef %16)
  %18 = load i32, ptr %12, align 4
  %19 = sub i32 2048, %18
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = add i32 %18, %17
  store i32 %22, ptr %12, align 4
  br label %23

23:                                               ; preds = %21, %11, %8, %4, %2
  %24 = phi i32 [ 0, %21 ], [ -19, %4 ], [ -19, %2 ], [ -12, %8 ], [ -12, %11 ]
  ret i32 %24
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!9 = !{i64 2152842571, i64 2152843054, i64 2152842608, i64 2152842664, i64 2152842698, i64 2152842722, i64 2152842763, i64 2152842784, i64 2152842812, i64 2152842846}
!10 = !{i32 0, i32 33}
