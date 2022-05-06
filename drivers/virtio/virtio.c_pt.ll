; ModuleID = '/llk/IR/drivers/virtio/virtio.c_pt.bc'
source_filename = "../drivers/virtio/virtio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtio_check_driver_offered_feature:\09\09\09\09\09"
module asm "\09.asciz \09\22virtio_check_driver_offered_feature\22\09\09\09\09\09"
module asm "__kstrtabns_virtio_check_driver_offered_feature:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtio_config_changed:\09\09\09\09\09"
module asm "\09.asciz \09\22virtio_config_changed\22\09\09\09\09\09"
module asm "__kstrtabns_virtio_config_changed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtio_add_status:\09\09\09\09\09"
module asm "\09.asciz \09\22virtio_add_status\22\09\09\09\09\09"
module asm "__kstrtabns_virtio_add_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtio_reset_device:\09\09\09\09\09"
module asm "\09.asciz \09\22virtio_reset_device\22\09\09\09\09\09"
module asm "__kstrtabns_virtio_reset_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_virtio_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22register_virtio_driver\22\09\09\09\09\09"
module asm "__kstrtabns_register_virtio_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_virtio_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_virtio_driver\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_virtio_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_virtio_device:\09\09\09\09\09"
module asm "\09.asciz \09\22register_virtio_device\22\09\09\09\09\09"
module asm "__kstrtabns_register_virtio_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_is_virtio_device:\09\09\09\09\09"
module asm "\09.asciz \09\22is_virtio_device\22\09\09\09\09\09"
module asm "__kstrtabns_is_virtio_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_virtio_device:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_virtio_device\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_virtio_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtio_device_freeze:\09\09\09\09\09"
module asm "\09.asciz \09\22virtio_device_freeze\22\09\09\09\09\09"
module asm "__kstrtabns_virtio_device_freeze:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_virtio_device_restore:\09\09\09\09\09"
module asm "\09.asciz \09\22virtio_device_restore\22\09\09\09\09\09"
module asm "__kstrtabns_virtio_device_restore:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.virtio_device_id = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.virtio_driver = type { %struct.device_driver, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_virtio_check_driver_offered_feature = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtio_check_driver_offered_feature = external dso_local constant [0 x i8], align 1
@__ksymtab_virtio_check_driver_offered_feature = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtio_check_driver_offered_feature to i32), ptr @__kstrtab_virtio_check_driver_offered_feature, ptr @__kstrtabns_virtio_check_driver_offered_feature }, section "___ksymtab_gpl+virtio_check_driver_offered_feature", align 4
@__kstrtab_virtio_config_changed = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtio_config_changed = external dso_local constant [0 x i8], align 1
@__ksymtab_virtio_config_changed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtio_config_changed to i32), ptr @__kstrtab_virtio_config_changed, ptr @__kstrtabns_virtio_config_changed }, section "___ksymtab_gpl+virtio_config_changed", align 4
@__kstrtab_virtio_add_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtio_add_status = external dso_local constant [0 x i8], align 1
@__ksymtab_virtio_add_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtio_add_status to i32), ptr @__kstrtab_virtio_add_status, ptr @__kstrtabns_virtio_add_status }, section "___ksymtab_gpl+virtio_add_status", align 4
@__kstrtab_virtio_reset_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtio_reset_device = external dso_local constant [0 x i8], align 1
@__ksymtab_virtio_reset_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtio_reset_device to i32), ptr @__kstrtab_virtio_reset_device, ptr @__kstrtabns_virtio_reset_device }, section "___ksymtab_gpl+virtio_reset_device", align 4
@virtio_bus = internal global %struct.bus_type { ptr @.str.1, ptr null, ptr null, ptr null, ptr @virtio_dev_groups, ptr null, ptr @virtio_dev_match, ptr @virtio_uevent, ptr @virtio_dev_probe, ptr null, ptr @virtio_dev_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@__kstrtab_register_virtio_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_virtio_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_register_virtio_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_virtio_driver to i32), ptr @__kstrtab_register_virtio_driver, ptr @__kstrtabns_register_virtio_driver }, section "___ksymtab_gpl+register_virtio_driver", align 4
@__kstrtab_unregister_virtio_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_virtio_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_virtio_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_virtio_driver to i32), ptr @__kstrtab_unregister_virtio_driver, ptr @__kstrtabns_unregister_virtio_driver }, section "___ksymtab_gpl+unregister_virtio_driver", align 4
@virtio_index_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str = private unnamed_addr constant [9 x i8] c"virtio%u\00", align 1
@__kstrtab_register_virtio_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_virtio_device = external dso_local constant [0 x i8], align 1
@__ksymtab_register_virtio_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_virtio_device to i32), ptr @__kstrtab_register_virtio_device, ptr @__kstrtabns_register_virtio_device }, section "___ksymtab_gpl+register_virtio_device", align 4
@__kstrtab_is_virtio_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_is_virtio_device = external dso_local constant [0 x i8], align 1
@__ksymtab_is_virtio_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @is_virtio_device to i32), ptr @__kstrtab_is_virtio_device, ptr @__kstrtabns_is_virtio_device }, section "___ksymtab_gpl+is_virtio_device", align 4
@__kstrtab_unregister_virtio_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_virtio_device = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_virtio_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_virtio_device to i32), ptr @__kstrtab_unregister_virtio_device, ptr @__kstrtabns_unregister_virtio_device }, section "___ksymtab_gpl+unregister_virtio_device", align 4
@__kstrtab_virtio_device_freeze = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtio_device_freeze = external dso_local constant [0 x i8], align 1
@__ksymtab_virtio_device_freeze = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtio_device_freeze to i32), ptr @__kstrtab_virtio_device_freeze, ptr @__kstrtabns_virtio_device_freeze }, section "___ksymtab_gpl+virtio_device_freeze", align 4
@__kstrtab_virtio_device_restore = external dso_local constant [0 x i8], align 1
@__kstrtabns_virtio_device_restore = external dso_local constant [0 x i8], align 1
@__ksymtab_virtio_device_restore = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @virtio_device_restore to i32), ptr @__kstrtab_virtio_device_restore, ptr @__kstrtabns_virtio_device_restore }, section "___ksymtab_gpl+virtio_device_restore", align 4
@__initcall__kmod_virtio__222_555_virtio_init1 = internal global ptr @virtio_init, section ".initcall1.init", align 4
@__exitcall_virtio_exit = internal global ptr @virtio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file223 = internal constant [34 x i8] c"virtio.file=drivers/virtio/virtio\00", section ".modinfo", align 1
@__UNIQUE_ID_license224 = internal constant [19 x i8] c"virtio.license=GPL\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"virtio\00", align 1
@virtio_dev_groups = internal global [2 x ptr] [ptr @virtio_dev_group, ptr null], align 4
@virtio_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @virtio_dev_attrs, ptr null }, align 4
@virtio_dev_attrs = internal global [6 x ptr] [ptr @dev_attr_device, ptr @dev_attr_vendor, ptr @dev_attr_status, ptr @dev_attr_modalias, ptr @dev_attr_features, ptr null], align 4
@dev_attr_device = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292 }, ptr @device_show, ptr null }, align 4
@dev_attr_vendor = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @vendor_show, ptr null }, align 4
@dev_attr_status = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @status_show, ptr null }, align 4
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @modalias_show, ptr null }, align 4
@dev_attr_features = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @features_show, ptr null }, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"0x%04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"vendor\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"virtio:d%08Xv%08X\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"MODALIAS=virtio:d%08Xv%08X\00", align 1
@virtio_dev_remove.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"drivers/virtio/virtio.c\00", align 1
@__const.virtio_device_of_init.compat = private unnamed_addr constant [22 x i8] c"virtio,deviceXXXXXXXX\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"virtio,device%x\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"virtio: device refuses features: %x\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"virtio bus registration failed\00", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_file223, ptr @__UNIQUE_ID_license224, ptr @__exitcall_virtio_exit, ptr @__initcall__kmod_virtio__222_555_virtio_init1, ptr @__ksymtab_is_virtio_device, ptr @__ksymtab_register_virtio_device, ptr @__ksymtab_register_virtio_driver, ptr @__ksymtab_unregister_virtio_device, ptr @__ksymtab_unregister_virtio_driver, ptr @__ksymtab_virtio_add_status, ptr @__ksymtab_virtio_check_driver_offered_feature, ptr @__ksymtab_virtio_config_changed, ptr @__ksymtab_virtio_device_freeze, ptr @__ksymtab_virtio_device_restore, ptr @__ksymtab_virtio_reset_device, ptr @virtio_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @virtio_check_driver_offered_feature(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.virtio_driver, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.virtio_driver, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  br label %14

11:                                               ; preds = %14
  %12 = add nuw i32 %15, 1
  %13 = icmp eq i32 %12, %6
  br i1 %13, label %19, label %14

14:                                               ; preds = %11, %8
  %15 = phi i32 [ 0, %8 ], [ %12, %11 ]
  %16 = getelementptr i32, ptr %10, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %36, label %11

19:                                               ; preds = %11, %2
  %20 = getelementptr inbounds %struct.virtio_driver, ptr %4, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.virtio_driver, ptr %4, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %30

27:                                               ; preds = %30
  %28 = add nuw i32 %31, 1
  %29 = icmp eq i32 %28, %25
  br i1 %29, label %35, label %30

30:                                               ; preds = %27, %23
  %31 = phi i32 [ %28, %27 ], [ 0, %23 ]
  %32 = getelementptr i32, ptr %21, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %1
  br i1 %34, label %36, label %27

35:                                               ; preds = %27, %23, %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 121, 0\0A.popsection", ""() #13, !srcloc !8
  unreachable

36:                                               ; preds = %30, %14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @virtio_config_changed(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 4
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #13
  %4 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, i32 6
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 2
  %7 = load i8, ptr %6, align 1, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 3
  store i8 1, ptr %10, align 2
  br label %18

11:                                               ; preds = %1
  %12 = icmp eq ptr %5, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.virtio_driver, ptr %5, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void %15(ptr noundef %0) #13
  br label %18

18:                                               ; preds = %17, %13, %11, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @virtio_add_status(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.virtio_config_ops, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.virtio_config_ops, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call zeroext i8 %8(ptr noundef %0) #13
  %10 = trunc i32 %1 to i8
  %11 = or i8 %9, %10
  tail call void %6(ptr noundef %0, i8 noundef zeroext %11) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @virtio_reset_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.virtio_config_ops, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_virtio_driver(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.virtio_driver, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.virtio_driver, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !10

9:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 345, 0\0A.popsection", ""() #13, !srcloc !11
  unreachable

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1
  store ptr @virtio_bus, ptr %11, align 4
  %12 = tail call i32 @driver_register(ptr noundef %0) #13
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_virtio_driver(ptr noundef %0) #0 {
  tail call void @driver_unregister(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_virtio_device(ptr noundef %0) #0 {
  %2 = alloca [22 x i8], align 1
  %3 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, i32 5
  store ptr @virtio_bus, ptr %4, align 4
  tail call void @device_initialize(ptr noundef %3) #13
  %5 = tail call i32 @ida_alloc_range(ptr noundef nonnull @virtio_index_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #13
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %74, label %7

7:                                                ; preds = %1
  store i32 %5, ptr %0, align 8
  %8 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %5) #13
  %9 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %2) #13
  br label %48

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 25
  %15 = load ptr, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %2) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(22) %2, ptr noundef nonnull align 1 dereferenceable(22) @__const.virtio_device_of_init.compat, i32 22, i1 false) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %48, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %15, ptr noundef null) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %48, label %20

20:                                               ; preds = %20, %17
  %21 = phi i32 [ %23, %20 ], [ 0, %17 ]
  %22 = phi ptr [ %24, %20 ], [ %18, %17 ]
  %23 = add i32 %21, 1
  %24 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %15, ptr noundef nonnull %22) #13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %20

26:                                               ; preds = %20
  %27 = icmp eq i32 %23, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %26
  %29 = icmp sgt i32 %23, 1
  br i1 %29, label %45, label %30, !prof !10

30:                                               ; preds = %28
  %31 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %15, ptr noundef null) #13
  %32 = icmp eq ptr %31, null
  br i1 %32, label %45, label %33, !prof !10

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 7
  %35 = load i32, ptr %34, align 8
  %36 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 22, ptr noundef nonnull @.str.14, i32 noundef %35) #13
  %37 = icmp ugt i32 %36, 21
  br i1 %37, label %38, label %39, !prof !10

38:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 379, 0\0A.popsection", ""() #13, !srcloc !12
  unreachable

39:                                               ; preds = %33
  %40 = call i32 @of_device_is_compatible(ptr noundef nonnull %31, ptr noundef nonnull %2) #13
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  call void @of_node_put(ptr noundef nonnull %31) #13
  br label %48

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, i32 25
  store ptr %31, ptr %44, align 8
  br label %48

45:                                               ; preds = %30, %28
  %46 = phi i32 [ 371, %28 ], [ 375, %30 ]
  %47 = phi i32 [ -22, %28 ], [ -19, %30 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef %46, i32 noundef 9, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %2) #13
  br label %71

48:                                               ; preds = %43, %42, %26, %17, %13, %12
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %2) #13
  %49 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 4
  store i32 0, ptr %49, align 8
  %50 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 2
  store i8 0, ptr %50, align 1
  %51 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 3
  store i8 0, ptr %51, align 2
  %52 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.virtio_config_ops, ptr %53, i32 0, i32 6
  %55 = load ptr, ptr %54, align 4
  call void %55(ptr noundef %0) #13
  %56 = load ptr, ptr %52, align 8
  %57 = getelementptr inbounds %struct.virtio_config_ops, ptr %56, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.virtio_config_ops, ptr %56, i32 0, i32 4
  %60 = load ptr, ptr %59, align 4
  %61 = call zeroext i8 %60(ptr noundef %0) #13
  %62 = or i8 %61, 1
  call void %58(ptr noundef %0, i8 noundef zeroext %62) #13
  %63 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 10
  store volatile ptr %63, ptr %63, align 4
  %64 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 10, i32 1
  store ptr %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 5
  store i32 0, ptr %65, align 4
  %66 = call i32 @device_add(ptr noundef %3) #13
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %84, label %68

68:                                               ; preds = %48
  %69 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, i32 25
  %70 = load ptr, ptr %69, align 8
  call void @of_node_put(ptr noundef %70) #13
  br label %71

71:                                               ; preds = %68, %45
  %72 = phi i32 [ %47, %45 ], [ %66, %68 ]
  %73 = load i32, ptr %0, align 8
  call void @ida_free(ptr noundef nonnull @virtio_index_ida, i32 noundef %73) #13
  br label %74

74:                                               ; preds = %71, %1
  %75 = phi i32 [ %5, %1 ], [ %72, %71 ]
  %76 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.virtio_config_ops, ptr %77, i32 0, i32 5
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.virtio_config_ops, ptr %77, i32 0, i32 4
  %81 = load ptr, ptr %80, align 4
  %82 = call zeroext i8 %81(ptr noundef %0) #13
  %83 = or i8 %82, -128
  call void %79(ptr noundef %0, i8 noundef zeroext %83) #13
  br label %84

84:                                               ; preds = %74, %48
  %85 = phi i32 [ %75, %74 ], [ 0, %48 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_virtio_device(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @virtio_bus
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_virtio_device(ptr noundef %0) #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6
  tail call void @device_unregister(ptr noundef %3) #13
  tail call void @ida_free(ptr noundef nonnull @virtio_index_ida, i32 noundef %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @virtio_device_freeze(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 2
  store i8 0, ptr %5, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  %6 = load i16, ptr %4, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  %8 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.virtio_config_ops, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call zeroext i8 %11(ptr noundef %0) #13
  %13 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 1
  %14 = lshr i8 %12, 7
  store i8 %14, ptr %13, align 4
  %15 = icmp eq ptr %3, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.virtio_driver, ptr %3, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call i32 %18(ptr noundef %0) #13
  br label %22

22:                                               ; preds = %20, %16, %1
  %23 = phi i32 [ %21, %20 ], [ 0, %16 ], [ 0, %1 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @virtio_device_restore(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.virtio_config_ops, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %0) #13
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %struct.virtio_config_ops, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.virtio_config_ops, ptr %8, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call zeroext i8 %12(ptr noundef %0) #13
  %14 = or i8 %13, 1
  tail call void %10(ptr noundef %0, i8 noundef zeroext %14) #13
  %15 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 1
  %16 = load i8, ptr %15, align 4, !range !9
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %1
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.virtio_config_ops, ptr %19, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.virtio_config_ops, ptr %19, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = tail call zeroext i8 %23(ptr noundef %0) #13
  %25 = or i8 %24, -128
  tail call void %21(ptr noundef %0, i8 noundef zeroext %25) #13
  br label %26

26:                                               ; preds = %18, %1
  %27 = icmp eq ptr %3, null
  br i1 %27, label %103, label %28

28:                                               ; preds = %26
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds %struct.virtio_config_ops, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.virtio_config_ops, ptr %29, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = tail call zeroext i8 %33(ptr noundef %0) #13
  %35 = or i8 %34, 2
  tail call void %31(ptr noundef %0, i8 noundef zeroext %35) #13
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds %struct.virtio_config_ops, ptr %36, i32 0, i32 10
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 %38(ptr noundef %0) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %94

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 11
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 4294967296
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %63, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr %4, align 8
  %48 = getelementptr inbounds %struct.virtio_config_ops, ptr %47, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.virtio_config_ops, ptr %47, i32 0, i32 4
  %51 = load ptr, ptr %50, align 4
  %52 = tail call zeroext i8 %51(ptr noundef %0) #13
  %53 = or i8 %52, 8
  tail call void %49(ptr noundef %0, i8 noundef zeroext %53) #13
  %54 = load ptr, ptr %4, align 8
  %55 = getelementptr inbounds %struct.virtio_config_ops, ptr %54, i32 0, i32 4
  %56 = load ptr, ptr %55, align 4
  %57 = tail call zeroext i8 %56(ptr noundef %0) #13
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %46
  %62 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.17, i32 noundef %58) #14
  br label %94

63:                                               ; preds = %46, %41
  %64 = getelementptr inbounds %struct.virtio_driver, ptr %3, i32 0, i32 12
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = tail call i32 %65(ptr noundef %0) #13
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %67, %63
  %71 = load ptr, ptr %4, align 8
  %72 = getelementptr inbounds %struct.virtio_config_ops, ptr %71, i32 0, i32 5
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.virtio_config_ops, ptr %71, i32 0, i32 4
  %75 = load ptr, ptr %74, align 4
  %76 = tail call zeroext i8 %75(ptr noundef %0) #13
  %77 = or i8 %76, 4
  tail call void %73(ptr noundef %0, i8 noundef zeroext %77) #13
  %78 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %78) #13
  %79 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 2
  store i8 1, ptr %79, align 1
  %80 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 3
  %81 = load i8, ptr %80, align 2, !range !9
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %70
  %84 = load ptr, ptr %2, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.virtio_driver, ptr %84, i32 0, i32 10
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  tail call void %88(ptr noundef %0) #13
  br label %91

91:                                               ; preds = %90, %86, %83, %70
  store i8 0, ptr %80, align 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  %92 = load i16, ptr %78, align 4
  %93 = add i16 %92, 1
  store i16 %93, ptr %78, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  br label %103

94:                                               ; preds = %67, %61, %28
  %95 = phi i32 [ %39, %28 ], [ -19, %61 ], [ %68, %67 ]
  %96 = load ptr, ptr %4, align 8
  %97 = getelementptr inbounds %struct.virtio_config_ops, ptr %96, i32 0, i32 5
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.virtio_config_ops, ptr %96, i32 0, i32 4
  %100 = load ptr, ptr %99, align 4
  %101 = tail call zeroext i8 %100(ptr noundef %0) #13
  %102 = or i8 %101, -128
  tail call void %98(ptr noundef %0, i8 noundef zeroext %102) #13
  br label %103

103:                                              ; preds = %94, %91, %26
  %104 = phi i32 [ %95, %94 ], [ 0, %91 ], [ 0, %26 ]
  ret i32 %104
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @virtio_exit() #5 section ".exit.text" {
  tail call void @bus_unregister(ptr noundef nonnull @virtio_bus) #13
  tail call void @ida_destroy(ptr noundef nonnull @virtio_index_ida) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtio_init() #0 {
  %1 = tail call i32 @bus_register(ptr noundef nonnull @virtio_bus) #13
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.18) #15
  unreachable

4:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @virtio_dev_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.virtio_driver, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 476
  %6 = load i32, ptr %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 472
  %10 = load i32, ptr %9, align 8
  br label %11

11:                                               ; preds = %24, %8
  %12 = phi i32 [ %6, %8 ], [ %27, %24 ]
  %13 = phi i32 [ 0, %8 ], [ %25, %24 ]
  %14 = icmp eq i32 %12, %10
  %15 = icmp eq i32 %12, -1
  %16 = or i1 %15, %14
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = getelementptr %struct.virtio_device_id, ptr %4, i32 %13, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %5, align 4
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %21, %11
  %25 = add i32 %13, 1
  %26 = getelementptr %struct.virtio_device_id, ptr %4, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %11

29:                                               ; preds = %24, %21, %17, %2
  %30 = phi i32 [ 0, %2 ], [ 1, %17 ], [ 0, %24 ], [ 1, %21 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtio_uevent(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 472
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i32 476
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %4, i32 noundef %6) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtio_dev_probe(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = getelementptr i8, ptr %0, i32 56
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i32 480
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.virtio_config_ops, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.virtio_config_ops, ptr %6, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call zeroext i8 %10(ptr noundef %2) #13
  %12 = or i8 %11, 2
  tail call void %8(ptr noundef %2, i8 noundef zeroext %12) #13
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds %struct.virtio_config_ops, ptr %13, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i64 %15(ptr noundef %2) #13
  %17 = getelementptr inbounds %struct.virtio_driver, ptr %4, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.virtio_driver, ptr %4, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %30, %20
  %24 = phi i64 [ 0, %20 ], [ %33, %30 ]
  %25 = phi i32 [ 0, %20 ], [ %34, %30 ]
  %26 = getelementptr i32, ptr %22, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, 63
  br i1 %28, label %29, label %30, !prof !10

29:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 246, 0\0A.popsection", ""() #13, !srcloc !18
  unreachable

30:                                               ; preds = %23
  %31 = zext i32 %27 to i64
  %32 = shl nuw i64 1, %31
  %33 = or i64 %32, %24
  %34 = add nuw i32 %25, 1
  %35 = icmp eq i32 %34, %18
  br i1 %35, label %36, label %23

36:                                               ; preds = %30, %1
  %37 = phi i64 [ 0, %1 ], [ %33, %30 ]
  %38 = getelementptr inbounds %struct.virtio_driver, ptr %4, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %58, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.virtio_driver, ptr %4, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %52, %41
  %46 = phi i64 [ %55, %52 ], [ 0, %41 ]
  %47 = phi i32 [ %56, %52 ], [ 0, %41 ]
  %48 = getelementptr i32, ptr %39, i32 %47
  %49 = load i32, ptr %48, align 4
  %50 = icmp ugt i32 %49, 63
  br i1 %50, label %51, label %52, !prof !10

51:                                               ; preds = %45
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 255, 0\0A.popsection", ""() #13, !srcloc !19
  unreachable

52:                                               ; preds = %45
  %53 = zext i32 %49 to i64
  %54 = shl nuw i64 1, %53
  %55 = or i64 %54, %46
  %56 = add nuw i32 %47, 1
  %57 = icmp eq i32 %56, %43
  br i1 %57, label %58, label %45

58:                                               ; preds = %52, %41, %36
  %59 = phi i64 [ %37, %36 ], [ 0, %41 ], [ %55, %52 ]
  %60 = and i64 %16, 4294967296
  %61 = icmp eq i64 %60, 0
  %62 = select i1 %61, i64 %59, i64 %37
  %63 = and i64 %62, %16
  %64 = getelementptr i8, ptr %0, i32 496
  %65 = and i64 %16, 274609471488
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %87, label %67

67:                                               ; preds = %58
  %68 = and i64 %16, 137438953472
  %69 = and i64 %16, 68719476736
  %70 = and i64 %16, 34359738368
  %71 = and i64 %16, 17179869184
  %72 = and i64 %16, 8589934592
  %73 = and i64 %16, 2147483648
  %74 = and i64 %16, 1073741824
  %75 = and i64 %16, 536870912
  %76 = and i64 %16, 268435456
  %77 = or i64 %76, %63
  %78 = or i64 %75, %77
  %79 = or i64 %74, %78
  %80 = or i64 %73, %79
  %81 = or i64 %60, %80
  %82 = or i64 %72, %81
  %83 = or i64 %71, %82
  %84 = or i64 %70, %83
  %85 = or i64 %69, %84
  %86 = or i64 %68, %85
  br label %87

87:                                               ; preds = %67, %58
  %88 = phi i64 [ %86, %67 ], [ %63, %58 ]
  store i64 %88, ptr %64, align 8
  %89 = load ptr, ptr %5, align 8
  %90 = getelementptr inbounds %struct.virtio_config_ops, ptr %89, i32 0, i32 10
  %91 = load ptr, ptr %90, align 4
  %92 = tail call i32 %91(ptr noundef %2) #13
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %166

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.virtio_driver, ptr %4, i32 0, i32 6
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %111, label %98

98:                                               ; preds = %94
  %99 = load i64, ptr %64, align 8
  %100 = tail call i32 %96(ptr noundef %2) #13
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %166

102:                                              ; preds = %98
  %103 = load i64, ptr %64, align 8
  %104 = icmp eq i64 %99, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %102
  %106 = load ptr, ptr %5, align 8
  %107 = getelementptr inbounds %struct.virtio_config_ops, ptr %106, i32 0, i32 10
  %108 = load ptr, ptr %107, align 4
  %109 = tail call i32 %108(ptr noundef %2) #13
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %166

111:                                              ; preds = %105, %102, %94
  %112 = load i64, ptr %64, align 8
  %113 = and i64 %112, 4294967296
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %131, label %115

115:                                              ; preds = %111
  %116 = load ptr, ptr %5, align 8
  %117 = getelementptr inbounds %struct.virtio_config_ops, ptr %116, i32 0, i32 5
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.virtio_config_ops, ptr %116, i32 0, i32 4
  %120 = load ptr, ptr %119, align 4
  %121 = tail call zeroext i8 %120(ptr noundef %2) #13
  %122 = or i8 %121, 8
  tail call void %118(ptr noundef %2, i8 noundef zeroext %122) #13
  %123 = load ptr, ptr %5, align 8
  %124 = getelementptr inbounds %struct.virtio_config_ops, ptr %123, i32 0, i32 4
  %125 = load ptr, ptr %124, align 4
  %126 = tail call zeroext i8 %125(ptr noundef %2) #13
  %127 = zext i8 %126 to i32
  %128 = and i32 %127, 8
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %115
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %127) #14
  br label %166

131:                                              ; preds = %115, %111
  %132 = getelementptr inbounds %struct.virtio_driver, ptr %4, i32 0, i32 7
  %133 = load ptr, ptr %132, align 4
  %134 = tail call i32 %133(ptr noundef %2) #13
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %166

136:                                              ; preds = %131
  %137 = load ptr, ptr %5, align 8
  %138 = getelementptr inbounds %struct.virtio_config_ops, ptr %137, i32 0, i32 4
  %139 = load ptr, ptr %138, align 4
  %140 = tail call zeroext i8 %139(ptr noundef %2) #13
  %141 = and i8 %140, 4
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  tail call fastcc void @virtio_device_ready(ptr noundef %2)
  br label %144

144:                                              ; preds = %143, %136
  %145 = getelementptr inbounds %struct.virtio_driver, ptr %4, i32 0, i32 8
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %144
  tail call void %146(ptr noundef %2) #13
  br label %149

149:                                              ; preds = %148, %144
  %150 = getelementptr i8, ptr %0, i32 -8
  tail call void @_raw_spin_lock_irq(ptr noundef %150) #13
  %151 = getelementptr i8, ptr %0, i32 -11
  store i8 1, ptr %151, align 1
  %152 = getelementptr i8, ptr %0, i32 -10
  %153 = load i8, ptr %152, align 2, !range !9
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %163, label %155

155:                                              ; preds = %149
  %156 = load ptr, ptr %3, align 8
  %157 = icmp eq ptr %156, null
  br i1 %157, label %163, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.virtio_driver, ptr %156, i32 0, i32 10
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %158
  tail call void %160(ptr noundef %2) #13
  br label %163

163:                                              ; preds = %162, %158, %155, %149
  store i8 0, ptr %152, align 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  %164 = load i16, ptr %150, align 4
  %165 = add i16 %164, 1
  store i16 %165, ptr %150, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  br label %175

166:                                              ; preds = %131, %130, %105, %98, %87
  %167 = phi i32 [ %92, %87 ], [ -19, %130 ], [ %134, %131 ], [ %109, %105 ], [ %100, %98 ]
  %168 = load ptr, ptr %5, align 8
  %169 = getelementptr inbounds %struct.virtio_config_ops, ptr %168, i32 0, i32 5
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.virtio_config_ops, ptr %168, i32 0, i32 4
  %172 = load ptr, ptr %171, align 4
  %173 = tail call zeroext i8 %172(ptr noundef %2) #13
  %174 = or i8 %173, -128
  tail call void %170(ptr noundef %2, i8 noundef zeroext %174) #13
  br label %175

175:                                              ; preds = %166, %163
  %176 = phi i32 [ %167, %166 ], [ 0, %163 ]
  ret i32 %176
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @virtio_dev_remove(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = getelementptr i8, ptr %0, i32 56
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i32 -8
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #13
  %6 = getelementptr i8, ptr %0, i32 -11
  store i8 0, ptr %6, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  %7 = load i16, ptr %5, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  %9 = getelementptr inbounds %struct.virtio_driver, ptr %4, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  tail call void %10(ptr noundef %2) #13
  %11 = getelementptr i8, ptr %0, i32 480
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.virtio_config_ops, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i8 %14(ptr noundef %2) #13
  %16 = icmp ne i8 %15, 0
  %17 = load i1, ptr @virtio_dev_remove.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !10

20:                                               ; preds = %1
  store i1 true, ptr @virtio_dev_remove.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 325, i32 noundef 9, ptr noundef null) #13
  br label %21

21:                                               ; preds = %20, %1
  %22 = load ptr, ptr %11, align 8
  %23 = getelementptr inbounds %struct.virtio_config_ops, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.virtio_config_ops, ptr %22, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = tail call zeroext i8 %26(ptr noundef %2) #13
  %28 = or i8 %27, 1
  tail call void %24(ptr noundef %2, i8 noundef zeroext %28) #13
  %29 = getelementptr i8, ptr %0, i32 416
  %30 = load ptr, ptr %29, align 8
  tail call void @of_node_put(ptr noundef %30) #13
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @device_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 472
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vendor_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 476
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @status_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = getelementptr i8, ptr %0, i32 480
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.virtio_config_ops, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call zeroext i8 %8(ptr noundef %4) #13
  %10 = zext i8 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %10)
  ret i32 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @modalias_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 472
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr i8, ptr %0, i32 476
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %5, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @features_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr i8, ptr %0, i32 496
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi i32 [ 0, %3 ], [ %15, %5 ]
  %7 = getelementptr i8, ptr %2, i32 %6
  %8 = load i64, ptr %4, align 8
  %9 = zext i32 %6 to i64
  %10 = shl nuw i64 1, %9
  %11 = and i64 %8, %10
  %12 = icmp eq i64 %11, 0
  %13 = select i1 %12, i8 48, i8 49
  store i8 %13, ptr %7, align 1
  %14 = getelementptr i8, ptr %7, i32 1
  store i8 0, ptr %14, align 1
  %15 = add nuw nsw i32 %6, 1
  %16 = icmp eq i32 %15, 64
  br i1 %16, label %17, label %5

17:                                               ; preds = %5
  %18 = getelementptr i8, ptr %2, i32 64
  store i16 10, ptr %18, align 1
  ret i32 65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @virtio_device_ready(ptr noundef %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.virtio_config_ops, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call zeroext i8 %5(ptr noundef %0) #13
  %7 = load ptr, ptr %2, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void %8(ptr noundef %0) #13
  br label %11

11:                                               ; preds = %10, %1
  %12 = and i8 %6, 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14, !prof !20

14:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #13, !srcloc !21
  unreachable

15:                                               ; preds = %11
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.virtio_config_ops, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = or i8 %6, 4
  tail call void %18(ptr noundef %0, i8 noundef zeroext %19) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { cold noreturn nounwind }

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
!8 = !{i64 2152668132, i64 2152668620, i64 2152668169, i64 2152668225, i64 2152668259, i64 2152668283, i64 2152668324, i64 2152668345, i64 2152668373, i64 2152668407}
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2152680388, i64 2152680876, i64 2152680425, i64 2152680481, i64 2152680515, i64 2152680539, i64 2152680580, i64 2152680601, i64 2152680629, i64 2152680663}
!12 = !{i64 2152689301, i64 2152689789, i64 2152689338, i64 2152689394, i64 2152689428, i64 2152689452, i64 2152689493, i64 2152689514, i64 2152689542, i64 2152689576}
!13 = !{i64 2149044573}
!14 = !{i64 2149040397}
!15 = !{i64 2149040472, i64 2149040499, i64 2149040546, i64 2149040568, i64 2149040596, i64 2149040616}
!16 = !{i64 797241}
!17 = !{i64 2149068717}
!18 = !{i64 2152677216, i64 2152677704, i64 2152677253, i64 2152677309, i64 2152677343, i64 2152677367, i64 2152677408, i64 2152677429, i64 2152677457, i64 2152677491}
!19 = !{i64 2152678234, i64 2152678722, i64 2152678271, i64 2152678327, i64 2152678361, i64 2152678385, i64 2152678426, i64 2152678447, i64 2152678475, i64 2152678509}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2152578164, i64 2152578658, i64 2152578201, i64 2152578257, i64 2152578291, i64 2152578315, i64 2152578356, i64 2152578377, i64 2152578405, i64 2152578439}
