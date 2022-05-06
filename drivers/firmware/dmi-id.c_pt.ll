; ModuleID = '/llk/IR/drivers/firmware/dmi-id.c_pt.bc'
source_filename = "../drivers/firmware/dmi-id.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmi_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.mafield = type { ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.kobj_uevent_env = type { [3 x ptr], [64 x ptr], i32, [2048 x i8], i32 }

@__initcall__kmod_dmi_id__166_259_dmi_id_init3 = internal global ptr @dmi_id_init, section ".initcall3.init", align 4
@dmi_available = external dso_local local_unnamed_addr global i32, align 4
@dmi_id_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@dmi_class = internal global %struct.class { ptr @.str.40, ptr null, ptr null, ptr null, ptr null, ptr @dmi_dev_uevent, ptr null, ptr null, ptr @kfree, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@dmi_dev = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [3 x i8] c"id\00", align 1
@sys_dmi_attribute_groups = internal global [2 x ptr] [ptr @sys_dmi_attribute_group, ptr null], align 4
@sys_dmi_bios_vendor_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 1 }, align 4
@sys_dmi_attributes = internal global [25 x ptr] zeroinitializer, align 4
@sys_dmi_bios_version_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 2 }, align 4
@sys_dmi_bios_date_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 3 }, align 4
@sys_dmi_bios_release_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 4 }, align 4
@sys_dmi_ec_firmware_release_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 5 }, align 4
@sys_dmi_sys_vendor_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 6 }, align 4
@sys_dmi_product_name_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 7 }, align 4
@sys_dmi_product_version_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 8 }, align 4
@sys_dmi_product_serial_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 256 }, ptr @sys_dmi_field_show, ptr null }, i32 9 }, align 4
@sys_dmi_product_uuid_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 256 }, ptr @sys_dmi_field_show, ptr null }, i32 10 }, align 4
@sys_dmi_product_family_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 12 }, align 4
@sys_dmi_product_sku_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 11 }, align 4
@sys_dmi_board_vendor_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 13 }, align 4
@sys_dmi_board_name_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 14 }, align 4
@sys_dmi_board_version_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 15 }, align 4
@sys_dmi_board_serial_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 256 }, ptr @sys_dmi_field_show, ptr null }, i32 16 }, align 4
@sys_dmi_board_asset_tag_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 17 }, align 4
@sys_dmi_chassis_vendor_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 18 }, align 4
@sys_dmi_chassis_type_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 19 }, align 4
@sys_dmi_chassis_version_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 20 }, align 4
@sys_dmi_chassis_serial_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 256 }, ptr @sys_dmi_field_show, ptr null }, i32 21 }, align 4
@sys_dmi_chassis_asset_tag_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 22 }, align 4
@sys_dmi_modalias_attr = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @sys_dmi_modalias_show, ptr null }, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"bios_vendor\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"bios_version\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"bios_date\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"bios_release\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"ec_firmware_release\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"sys_vendor\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"product_name\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"product_version\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"product_serial\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"product_uuid\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"product_family\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"product_sku\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"board_vendor\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"board_name\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"board_version\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"board_serial\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"board_asset_tag\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"chassis_vendor\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"chassis_type\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"chassis_version\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"chassis_serial\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"chassis_asset_tag\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@get_modalias.fields = internal unnamed_addr constant [16 x %struct.mafield] [%struct.mafield { ptr @.str.25, i32 1 }, %struct.mafield { ptr @.str.26, i32 2 }, %struct.mafield { ptr @.str.27, i32 3 }, %struct.mafield { ptr @.str.28, i32 4 }, %struct.mafield { ptr @.str.29, i32 5 }, %struct.mafield { ptr @.str.30, i32 6 }, %struct.mafield { ptr @.str.31, i32 7 }, %struct.mafield { ptr @.str.32, i32 8 }, %struct.mafield { ptr @.str.33, i32 13 }, %struct.mafield { ptr @.str.34, i32 14 }, %struct.mafield { ptr @.str.35, i32 15 }, %struct.mafield { ptr @.str.36, i32 18 }, %struct.mafield { ptr @.str.37, i32 19 }, %struct.mafield { ptr @.str.38, i32 20 }, %struct.mafield { ptr @.str.39, i32 11 }, %struct.mafield zeroinitializer], align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"bvn\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"bvr\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"bd\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"br\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"efr\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"svn\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"pn\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"pvr\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"rvn\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"rn\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"rvr\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"cvn\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"ct\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"cvr\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"sku\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"dmi\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c":%s%s\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.42 = private unnamed_addr constant [10 x i8] c"MODALIAS=\00", align 1
@sys_dmi_attribute_group = internal global %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sys_dmi_attributes, ptr null }, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_dmi_id__166_259_dmi_id_init3], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dmi_id_init() #0 section ".init.text" {
  %1 = load i32, ptr @dmi_available, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %21, label %3

3:                                                ; preds = %0
  tail call fastcc void @dmi_id_init_attr_table() #6
  %4 = tail call i32 @__class_register(ptr noundef nonnull @dmi_class, ptr noundef nonnull @dmi_id_init.__key) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 472) #8
  store ptr %8, ptr @dmi_dev, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 31
  store ptr @dmi_class, ptr %11, align 4
  %12 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %8, ptr noundef nonnull @.str) #7
  %13 = load ptr, ptr @dmi_dev, align 4
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 32
  store ptr @sys_dmi_attribute_groups, ptr %14, align 8
  %15 = tail call i32 @device_register(ptr noundef %13) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr @dmi_dev, align 4
  tail call void @put_device(ptr noundef %18) #7
  br label %19

19:                                               ; preds = %17, %6
  %20 = phi i32 [ %15, %17 ], [ -12, %6 ]
  tail call void @class_unregister(ptr noundef nonnull @dmi_class) #7
  br label %21

21:                                               ; preds = %19, %10, %3, %0
  %22 = phi i32 [ %20, %19 ], [ -19, %0 ], [ %4, %3 ], [ 0, %10 ]
  ret i32 %22
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @dmi_id_init_attr_table() unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @dmi_get_system_info(i32 noundef 1) #7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  store ptr @sys_dmi_bios_vendor_attr, ptr @sys_dmi_attributes, align 4
  br label %4

4:                                                ; preds = %3, %0
  %5 = phi i32 [ 1, %3 ], [ 0, %0 ]
  %6 = tail call ptr @dmi_get_system_info(i32 noundef 2) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = add nuw nsw i32 %5, 1
  %10 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i32 0, i32 %5
  store ptr @sys_dmi_bios_version_attr, ptr %10, align 4
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i32 [ %9, %8 ], [ %5, %4 ]
  %13 = tail call ptr @dmi_get_system_info(i32 noundef 3) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = add nuw nsw i32 %12, 1
  %17 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i32 0, i32 %12
  store ptr @sys_dmi_bios_date_attr, ptr %17, align 4
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi i32 [ %16, %15 ], [ %12, %11 ]
  %20 = tail call ptr @dmi_get_system_info(i32 noundef 4) #7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = add nuw nsw i32 %19, 1
  %24 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i32 0, i32 %19
  store ptr @sys_dmi_bios_release_attr, ptr %24, align 4
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i32 [ %23, %22 ], [ %19, %18 ]
  %27 = tail call ptr @dmi_get_system_info(i32 noundef 5) #7
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = add nuw nsw i32 %26, 1
  %31 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i32 0, i32 %26
  store ptr @sys_dmi_ec_firmware_release_attr, ptr %31, align 4
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi i32 [ %30, %29 ], [ %26, %25 ]
  %34 = tail call ptr @dmi_get_system_info(i32 noundef 6) #7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = add nuw nsw i32 %33, 1
  %38 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i32 0, i32 %33
  store ptr @sys_dmi_sys_vendor_attr, ptr %38, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i32 [ %37, %36 ], [ %33, %32 ]
  %41 = tail call ptr @dmi_get_system_info(i32 noundef 7) #7
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = add nuw nsw i32 %40, 1
  %45 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i32 0, i32 %40
  store ptr @sys_dmi_product_name_attr, ptr %45, align 4
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi i32 [ %44, %43 ], [ %40, %39 ]
  %48 = tail call ptr @dmi_get_system_info(i32 noundef 8) #7
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = add nuw nsw i32 %47, 1
  %52 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i32 0, i32 %47
  store ptr @sys_dmi_product_version_attr, ptr %52, align 4
  br label %53

53:                                               ; preds = %50, %46
  %54 = phi i32 [ %51, %50 ], [ %47, %46 ]
  %55 = tail call ptr @dmi_get_system_info(i32 noundef 9) #7
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = add nuw nsw i32 %54, 1
  %59 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i32 0, i32 %54
  store ptr @sys_dmi_product_serial_attr, ptr %59, align 4
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i32 [ %58, %57 ], [ %54, %53 ]
  %62 = tail call ptr @dmi_get_system_info(i32 noundef 10) #7
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = add nuw nsw i32 %61, 1
  %66 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i32 0, i32 %61
  store ptr @sys_dmi_product_uuid_attr, ptr %66, align 4
  br label %67

67:                                               ; preds = %64, %60
  %68 = phi i32 [ %65, %64 ], [ %61, %60 ]
  %69 = tail call ptr @dmi_get_system_info(i32 noundef 12) #7
  %70 = icmp eq ptr %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = add nuw nsw i32 %68, 1
  %73 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i32 0, i32 %68
  store ptr @sys_dmi_product_family_attr, ptr %73, align 4
  br label %74

74:                                               ; preds = %71, %67
  %75 = phi i32 [ %72, %71 ], [ %68, %67 ]
  %76 = tail call ptr @dmi_get_system_info(i32 noundef 11) #7
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = add nuw nsw i32 %75, 1
  %80 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i32 0, i32 %75
  store ptr @sys_dmi_product_sku_attr, ptr %80, align 4
  br label %81

81:                                               ; preds = %78, %74
  %82 = phi i32 [ %79, %78 ], [ %75, %74 ]
  %83 = tail call ptr @dmi_get_system_info(i32 noundef 13) #7
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = add nuw nsw i32 %82, 1
  %87 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i32 0, i32 %82
  store ptr @sys_dmi_board_vendor_attr, ptr %87, align 4
  br label %88

88:                                               ; preds = %85, %81
  %89 = phi i32 [ %86, %85 ], [ %82, %81 ]
  %90 = tail call ptr @dmi_get_system_info(i32 noundef 14) #7
  %91 = icmp eq ptr %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = add nuw nsw i32 %89, 1
  %94 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i32 0, i32 %89
  store ptr @sys_dmi_board_name_attr, ptr %94, align 4
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ %93, %92 ], [ %89, %88 ]
  %97 = tail call ptr @dmi_get_system_info(i32 noundef 15) #7
  %98 = icmp eq ptr %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = add nuw nsw i32 %96, 1
  %101 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i32 0, i32 %96
  store ptr @sys_dmi_board_version_attr, ptr %101, align 4
  br label %102

102:                                              ; preds = %99, %95
  %103 = phi i32 [ %100, %99 ], [ %96, %95 ]
  %104 = tail call ptr @dmi_get_system_info(i32 noundef 16) #7
  %105 = icmp eq ptr %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = add nuw nsw i32 %103, 1
  %108 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i32 0, i32 %103
  store ptr @sys_dmi_board_serial_attr, ptr %108, align 4
  br label %109

109:                                              ; preds = %106, %102
  %110 = phi i32 [ %107, %106 ], [ %103, %102 ]
  %111 = tail call ptr @dmi_get_system_info(i32 noundef 17) #7
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %109
  %114 = add nuw nsw i32 %110, 1
  %115 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i32 0, i32 %110
  store ptr @sys_dmi_board_asset_tag_attr, ptr %115, align 4
  br label %116

116:                                              ; preds = %113, %109
  %117 = phi i32 [ %114, %113 ], [ %110, %109 ]
  %118 = tail call ptr @dmi_get_system_info(i32 noundef 18) #7
  %119 = icmp eq ptr %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = add nuw nsw i32 %117, 1
  %122 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i32 0, i32 %117
  store ptr @sys_dmi_chassis_vendor_attr, ptr %122, align 4
  br label %123

123:                                              ; preds = %120, %116
  %124 = phi i32 [ %121, %120 ], [ %117, %116 ]
  %125 = tail call ptr @dmi_get_system_info(i32 noundef 19) #7
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = add nuw nsw i32 %124, 1
  %129 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i32 0, i32 %124
  store ptr @sys_dmi_chassis_type_attr, ptr %129, align 4
  br label %130

130:                                              ; preds = %127, %123
  %131 = phi i32 [ %128, %127 ], [ %124, %123 ]
  %132 = tail call ptr @dmi_get_system_info(i32 noundef 20) #7
  %133 = icmp eq ptr %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %130
  %135 = add nuw nsw i32 %131, 1
  %136 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i32 0, i32 %131
  store ptr @sys_dmi_chassis_version_attr, ptr %136, align 4
  br label %137

137:                                              ; preds = %134, %130
  %138 = phi i32 [ %135, %134 ], [ %131, %130 ]
  %139 = tail call ptr @dmi_get_system_info(i32 noundef 21) #7
  %140 = icmp eq ptr %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %137
  %142 = add nuw nsw i32 %138, 1
  %143 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i32 0, i32 %138
  store ptr @sys_dmi_chassis_serial_attr, ptr %143, align 4
  br label %144

144:                                              ; preds = %141, %137
  %145 = phi i32 [ %142, %141 ], [ %138, %137 ]
  %146 = tail call ptr @dmi_get_system_info(i32 noundef 22) #7
  %147 = icmp eq ptr %146, null
  br i1 %147, label %151, label %148

148:                                              ; preds = %144
  %149 = add nuw nsw i32 %145, 1
  %150 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i32 0, i32 %145
  store ptr @sys_dmi_chassis_asset_tag_attr, ptr %150, align 4
  br label %151

151:                                              ; preds = %148, %144
  %152 = phi i32 [ %149, %148 ], [ %145, %144 ]
  %153 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i32 0, i32 %152
  store ptr @sys_dmi_modalias_attr, ptr %153, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmi_get_system_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sys_dmi_field_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.dmi_device_attribute, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = tail call ptr @dmi_get_system_info(i32 noundef %5) #7
  %7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef %6) #7
  %8 = add i32 %7, -1
  %9 = getelementptr i8, ptr %2, i32 %8
  store i8 10, ptr %9, align 1
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sys_dmi_modalias_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call fastcc i32 @get_modalias(ptr noundef %2, i32 noundef 4095)
  %5 = getelementptr i8, ptr %2, i32 %4
  store i8 10, ptr %5, align 1
  %6 = add i32 %4, 1
  %7 = getelementptr i8, ptr %2, i32 %6
  store i8 0, ptr %7, align 1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @get_modalias(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  store i32 6909284, ptr %0, align 1
  %3 = getelementptr i8, ptr %0, i32 3
  %4 = add i32 %1, -4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %51

6:                                                ; preds = %43, %2
  %7 = phi ptr [ %46, %43 ], [ @get_modalias.fields, %2 ]
  %8 = phi ptr [ %45, %43 ], [ %3, %2 ]
  %9 = phi i32 [ %44, %43 ], [ %4, %2 ]
  %10 = getelementptr inbounds %struct.mafield, ptr %7, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = tail call ptr @dmi_get_system_info(i32 noundef %11) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %43, label %14

14:                                               ; preds = %6
  %15 = tail call i32 @strlen(ptr noundef nonnull %12)
  %16 = add i32 %15, 1
  %17 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %16, i32 noundef 3264) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %51, label %19

19:                                               ; preds = %14
  %20 = load i8, ptr %12, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %32, %19
  %23 = phi i8 [ %35, %32 ], [ %20, %19 ]
  %24 = phi ptr [ %34, %32 ], [ %12, %19 ]
  %25 = phi ptr [ %33, %32 ], [ %17, %19 ]
  %26 = add i8 %23, -127
  %27 = icmp ult i8 %26, -94
  %28 = icmp eq i8 %23, 58
  %29 = or i1 %28, %27
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = getelementptr i8, ptr %25, i32 1
  store i8 %23, ptr %25, align 1
  br label %32

32:                                               ; preds = %30, %22
  %33 = phi ptr [ %31, %30 ], [ %25, %22 ]
  %34 = getelementptr i8, ptr %24, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %22

37:                                               ; preds = %32, %19
  %38 = phi ptr [ %17, %19 ], [ %33, %32 ]
  store i8 0, ptr %38, align 1
  %39 = load ptr, ptr %7, align 4
  %40 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %8, i32 noundef %9, ptr noundef nonnull @.str.41, ptr noundef %39, ptr noundef nonnull %17) #7
  tail call void @kfree(ptr noundef nonnull %17) #7
  %41 = getelementptr i8, ptr %8, i32 %40
  %42 = sub i32 %9, %40
  br label %43

43:                                               ; preds = %37, %6
  %44 = phi i32 [ %9, %6 ], [ %42, %37 ]
  %45 = phi ptr [ %8, %6 ], [ %41, %37 ]
  %46 = getelementptr %struct.mafield, ptr %7, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = icmp ne ptr %47, null
  %49 = icmp sgt i32 %44, 0
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %6, label %51

51:                                               ; preds = %43, %14, %2
  %52 = phi ptr [ %3, %2 ], [ %8, %14 ], [ %45, %43 ]
  store i8 58, ptr %52, align 1
  %53 = getelementptr i8, ptr %52, i32 1
  store i8 0, ptr %53, align 1
  %54 = ptrtoint ptr %52 to i32
  %55 = ptrtoint ptr %0 to i32
  %56 = sub i32 1, %55
  %57 = add i32 %56, %54
  ret i32 %57
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dmi_dev_uevent(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.42) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.kobj_uevent_env, ptr %1, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -1
  %9 = getelementptr %struct.kobj_uevent_env, ptr %1, i32 0, i32 3, i32 %8
  %10 = sub i32 2048, %7
  %11 = tail call fastcc i32 @get_modalias(ptr noundef %9, i32 noundef %10)
  %12 = load i32, ptr %6, align 4
  %13 = sub i32 2048, %12
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = add i32 %12, %11
  store i32 %16, ptr %6, align 4
  br label %17

17:                                               ; preds = %15, %5, %2
  %18 = phi i32 [ 0, %15 ], [ -12, %2 ], [ -12, %5 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind allocsize(0) }

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
