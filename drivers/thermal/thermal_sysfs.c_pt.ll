; ModuleID = '/llk/IR/drivers/thermal/thermal_sysfs.c_pt.bc'
source_filename = "../drivers/thermal/thermal_sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_attr = type { %struct.device_attribute, [20 x i8] }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.thermal_zone_params = type { [20 x i8], i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@thermal_zone_attribute_groups = internal unnamed_addr constant [2 x ptr] [ptr @thermal_zone_attribute_group, ptr @thermal_zone_mode_attribute_group], align 8
@cooling_device_attr_groups = internal global [3 x ptr] [ptr @cooling_device_attr_group, ptr null, ptr null], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@thermal_zone_attribute_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @thermal_zone_dev_attrs, ptr null }, align 4
@thermal_zone_mode_attribute_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @thermal_zone_mode_attrs, ptr null }, align 4
@thermal_zone_dev_attrs = internal global [13 x ptr] [ptr @dev_attr_type, ptr @dev_attr_temp, ptr @dev_attr_policy, ptr @dev_attr_available_policies, ptr @dev_attr_sustainable_power, ptr @dev_attr_k_po, ptr @dev_attr_k_pu, ptr @dev_attr_k_i, ptr @dev_attr_k_d, ptr @dev_attr_integral_cutoff, ptr @dev_attr_slope, ptr @dev_attr_offset, ptr null], align 4
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292 }, ptr @type_show, ptr null }, align 4
@dev_attr_temp = internal global %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292 }, ptr @temp_show, ptr null }, align 4
@dev_attr_policy = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 420 }, ptr @policy_show, ptr @policy_store }, align 4
@dev_attr_available_policies = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @available_policies_show, ptr null }, align 4
@dev_attr_sustainable_power = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 420 }, ptr @sustainable_power_show, ptr @sustainable_power_store }, align 4
@dev_attr_k_po = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420 }, ptr @k_po_show, ptr @k_po_store }, align 4
@dev_attr_k_pu = internal global %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420 }, ptr @k_pu_show, ptr @k_pu_store }, align 4
@dev_attr_k_i = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420 }, ptr @k_i_show, ptr @k_i_store }, align 4
@dev_attr_k_d = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420 }, ptr @k_d_show, ptr @k_d_store }, align 4
@dev_attr_integral_cutoff = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420 }, ptr @integral_cutoff_show, ptr @integral_cutoff_store }, align 4
@dev_attr_slope = internal global %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420 }, ptr @slope_show, ptr @slope_store }, align 4
@dev_attr_offset = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420 }, ptr @offset_show, ptr @offset_store }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"available_policies\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"sustainable_power\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"k_po\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"k_pu\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"k_i\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"k_d\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"integral_cutoff\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"slope\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@thermal_zone_mode_attrs = internal global [2 x ptr] [ptr @dev_attr_mode, ptr null], align 4
@dev_attr_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420 }, ptr @mode_show, ptr @mode_store }, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"trip_point_%d_type\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"trip_point_%d_temp\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"trip_point_%d_hyst\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"critical\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"hot\0A\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"passive\0A\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1
@cooling_device_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cooling_device_attrs, ptr null }, align 4
@cooling_device_attrs = internal global [4 x ptr] [ptr @dev_attr_cdev_type, ptr @dev_attr_max_state, ptr @dev_attr_cur_state, ptr null], align 4
@dev_attr_cdev_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292 }, ptr @cdev_type_show, ptr null }, align 4
@dev_attr_max_state = internal global %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292 }, ptr @max_state_show, ptr null }, align 4
@dev_attr_cur_state = internal global %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420 }, ptr @cur_state_show, ptr @cur_state_store }, align 4
@.str.27 = private unnamed_addr constant [10 x i8] c"max_state\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"cur_state\00", align 1
@cur_state_store.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"Setting cooling device state is deprecated\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @thermal_zone_create_device_groups(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 16) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %161, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr @thermal_zone_attribute_groups, align 8
  store i64 %7, ptr %4, align 8
  %8 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 9
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %159, label %11

11:                                               ; preds = %6
  %12 = icmp slt i32 %9, 1
  br i1 %12, label %150, label %13

13:                                               ; preds = %11
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 36) #15
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %16, label %18, !prof !8

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 5
  store ptr null, ptr %17, align 8
  br label %150

18:                                               ; preds = %13
  %19 = extractvalue { i32, i1 } %14, 0
  %20 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #16
  %21 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 5
  store ptr %20, ptr %21, align 8
  %22 = icmp eq ptr %20, null
  br i1 %22, label %150, label %23

23:                                               ; preds = %18
  %24 = load i32, ptr %8, align 8
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 36) #15
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %27, label %29, !prof !8

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 4
  store ptr null, ptr %28, align 4
  br label %36

29:                                               ; preds = %23
  %30 = extractvalue { i32, i1 } %25, 0
  %31 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %30, i32 noundef 3520) #16
  %32 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 4
  store ptr %31, ptr %32, align 4
  %33 = icmp eq ptr %31, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load ptr, ptr %21, align 8
  br label %36

36:                                               ; preds = %34, %27
  %37 = phi ptr [ %35, %34 ], [ %20, %27 ]
  tail call void @kfree(ptr noundef %37) #15
  br label %150

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 20
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %40, i32 0, i32 8
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %58, label %44

44:                                               ; preds = %38
  %45 = load i32, ptr %8, align 8
  %46 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %45, i32 36) #15
  %47 = extractvalue { i32, i1 } %46, 1
  br i1 %47, label %48, label %50, !prof !8

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 6
  store ptr null, ptr %49, align 4
  br label %55

50:                                               ; preds = %44
  %51 = extractvalue { i32, i1 } %46, 0
  %52 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %51, i32 noundef 3520) #16
  %53 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 6
  store ptr %52, ptr %53, align 4
  %54 = icmp eq ptr %52, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %50, %48
  %56 = load ptr, ptr %21, align 8
  tail call void @kfree(ptr noundef %56) #15
  %57 = load ptr, ptr %32, align 4
  tail call void @kfree(ptr noundef %57) #15
  br label %150

58:                                               ; preds = %50, %38
  %59 = load i32, ptr %8, align 8
  %60 = mul i32 %59, 3
  %61 = add i32 %60, 1
  %62 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %61, i32 4) #15
  %63 = extractvalue { i32, i1 } %62, 1
  br i1 %63, label %73, label %64, !prof !8

64:                                               ; preds = %58
  %65 = extractvalue { i32, i1 } %62, 0
  %66 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %65, i32 noundef 3520) #16
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = load i32, ptr %8, align 8
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %152

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 6
  br label %83

73:                                               ; preds = %64, %58
  %74 = load ptr, ptr %21, align 8
  tail call void @kfree(ptr noundef %74) #15
  %75 = load ptr, ptr %32, align 4
  tail call void @kfree(ptr noundef %75) #15
  %76 = load ptr, ptr %39, align 4
  %77 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %76, i32 0, i32 8
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %150, label %80

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 6
  %82 = load ptr, ptr %81, align 4
  tail call void @kfree(ptr noundef %82) #15
  br label %150

83:                                               ; preds = %146, %71
  %84 = phi i32 [ 0, %71 ], [ %147, %146 ]
  %85 = load ptr, ptr %21, align 8
  %86 = getelementptr %struct.thermal_attr, ptr %85, i32 %84, i32 1
  %87 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %86, i32 noundef 20, ptr noundef nonnull @.str.19, i32 noundef %84) #15
  %88 = load ptr, ptr %21, align 8
  %89 = getelementptr %struct.thermal_attr, ptr %88, i32 %84
  %90 = getelementptr %struct.thermal_attr, ptr %88, i32 %84, i32 1
  store ptr %90, ptr %89, align 4
  %91 = load ptr, ptr %21, align 8
  %92 = getelementptr %struct.thermal_attr, ptr %91, i32 %84, i32 0, i32 0, i32 1
  store i16 292, ptr %92, align 4
  %93 = load ptr, ptr %21, align 8
  %94 = getelementptr %struct.thermal_attr, ptr %93, i32 %84, i32 0, i32 1
  store ptr @trip_point_type_show, ptr %94, align 4
  %95 = load ptr, ptr %21, align 8
  %96 = getelementptr %struct.thermal_attr, ptr %95, i32 %84
  %97 = getelementptr ptr, ptr %66, i32 %84
  store ptr %96, ptr %97, align 4
  %98 = load ptr, ptr %32, align 4
  %99 = getelementptr %struct.thermal_attr, ptr %98, i32 %84, i32 1
  %100 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %99, i32 noundef 20, ptr noundef nonnull @.str.20, i32 noundef %84) #15
  %101 = load ptr, ptr %32, align 4
  %102 = getelementptr %struct.thermal_attr, ptr %101, i32 %84
  %103 = getelementptr %struct.thermal_attr, ptr %101, i32 %84, i32 1
  store ptr %103, ptr %102, align 4
  %104 = load ptr, ptr %32, align 4
  %105 = getelementptr %struct.thermal_attr, ptr %104, i32 %84, i32 0, i32 0, i32 1
  store i16 292, ptr %105, align 4
  %106 = load ptr, ptr %32, align 4
  %107 = getelementptr %struct.thermal_attr, ptr %106, i32 %84, i32 0, i32 1
  store ptr @trip_point_temp_show, ptr %107, align 4
  %108 = load ptr, ptr %32, align 4
  %109 = getelementptr %struct.thermal_attr, ptr %108, i32 %84
  %110 = load i32, ptr %8, align 8
  %111 = add i32 %110, %84
  %112 = getelementptr ptr, ptr %66, i32 %111
  store ptr %109, ptr %112, align 4
  %113 = load ptr, ptr %39, align 4
  %114 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %113, i32 0, i32 8
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %146, label %117

117:                                              ; preds = %83
  %118 = load ptr, ptr %72, align 4
  %119 = getelementptr %struct.thermal_attr, ptr %118, i32 %84, i32 1
  %120 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %119, i32 noundef 20, ptr noundef nonnull @.str.21, i32 noundef %84) #15
  %121 = load ptr, ptr %72, align 4
  %122 = getelementptr %struct.thermal_attr, ptr %121, i32 %84
  %123 = getelementptr %struct.thermal_attr, ptr %121, i32 %84, i32 1
  store ptr %123, ptr %122, align 4
  %124 = load ptr, ptr %72, align 4
  %125 = getelementptr %struct.thermal_attr, ptr %124, i32 %84, i32 0, i32 0, i32 1
  store i16 292, ptr %125, align 4
  %126 = load ptr, ptr %72, align 4
  %127 = getelementptr %struct.thermal_attr, ptr %126, i32 %84, i32 0, i32 1
  store ptr @trip_point_hyst_show, ptr %127, align 4
  %128 = load ptr, ptr %39, align 4
  %129 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %128, i32 0, i32 9
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %139, label %132

132:                                              ; preds = %117
  %133 = load ptr, ptr %72, align 4
  %134 = getelementptr %struct.thermal_attr, ptr %133, i32 %84, i32 0, i32 0, i32 1
  %135 = load i16, ptr %134, align 4
  %136 = or i16 %135, 128
  store i16 %136, ptr %134, align 4
  %137 = load ptr, ptr %72, align 4
  %138 = getelementptr %struct.thermal_attr, ptr %137, i32 %84, i32 0, i32 2
  store ptr @trip_point_hyst_store, ptr %138, align 4
  br label %139

139:                                              ; preds = %132, %117
  %140 = load ptr, ptr %72, align 4
  %141 = getelementptr %struct.thermal_attr, ptr %140, i32 %84
  %142 = load i32, ptr %8, align 8
  %143 = shl i32 %142, 1
  %144 = add i32 %143, %84
  %145 = getelementptr ptr, ptr %66, i32 %144
  store ptr %141, ptr %145, align 4
  br label %146

146:                                              ; preds = %139, %83
  %147 = add nuw nsw i32 %84, 1
  %148 = load i32, ptr %8, align 8
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %83, label %152

150:                                              ; preds = %80, %73, %55, %36, %18, %16, %11
  %151 = phi i32 [ -12, %16 ], [ -12, %73 ], [ -12, %80 ], [ -12, %18 ], [ -22, %11 ], [ -12, %36 ], [ -12, %55 ]
  tail call void @kfree(ptr noundef nonnull %4) #15
  br label %161

152:                                              ; preds = %146, %68
  %153 = phi i32 [ %69, %68 ], [ %148, %146 ]
  %154 = mul i32 %153, 3
  %155 = getelementptr ptr, ptr %66, i32 %154
  store ptr null, ptr %155, align 4
  %156 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 3, i32 3
  store ptr %66, ptr %156, align 4
  %157 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 3
  %158 = getelementptr ptr, ptr %4, i32 2
  store ptr %157, ptr %158, align 8
  br label %159

159:                                              ; preds = %152, %6
  %160 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 2, i32 32
  store ptr %4, ptr %160, align 8
  br label %161

161:                                              ; preds = %159, %150, %2
  %162 = phi i32 [ %151, %150 ], [ 0, %159 ], [ -12, %2 ]
  ret i32 %162
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @thermal_zone_destroy_device_groups(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %26, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 9
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  tail call void @kfree(ptr noundef %9) #15
  %10 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %11) #15
  %12 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 20
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  tail call void @kfree(ptr noundef %19) #15
  br label %20

20:                                               ; preds = %17, %7
  %21 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 3, i32 3
  %22 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %22) #15
  br label %23

23:                                               ; preds = %20, %3
  %24 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 2, i32 32
  %25 = load ptr, ptr %24, align 8
  tail call void @kfree(ptr noundef %25) #15
  br label %26

26:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @thermal_cooling_device_setup_sysfs(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 2, i32 32
  store ptr @cooling_device_attr_groups, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @thermal_cooling_device_destroy_sysfs(ptr nocapture noundef %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trip_point_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #5 {
  %4 = getelementptr i8, ptr %1, i32 -40
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @weight_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #5 {
  %4 = getelementptr i8, ptr %1, i32 32
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @weight_store(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = call i32 @kstrtoint(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4
  %10 = getelementptr i8, ptr %1, i32 32
  store i32 %9, ptr %10, align 4
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i32 [ %3, %8 ], [ %6, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @type_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 -20
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @temp_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 -24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !9
  %6 = call i32 @thermal_zone_get_temp(ptr noundef %5, ptr noundef nonnull %4) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = load i32, ptr %4, align 4
  %10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %9)
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i32 [ %10, %8 ], [ %6, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_get_temp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @policy_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 564
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @policy_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca [20 x i8], align 1
  %6 = getelementptr i8, ptr %0, i32 -24
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !9
  %7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 20, ptr noundef nonnull @.str.5, ptr noundef %2)
  %8 = call i32 @thermal_zone_device_set_policy(ptr noundef %6, ptr noundef nonnull %5) #15
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 %3, i32 %8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  ret i32 %10
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_set_policy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @available_policies_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call i32 @thermal_build_list_of_policies(ptr noundef %2) #15
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_build_list_of_policies(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sustainable_power_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 560
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.thermal_zone_params, ptr %5, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %9)
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ -5, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sustainable_power_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr i8, ptr %0, i32 560
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, ptr %5, align 4
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds %struct.thermal_zone_params, ptr %14, i32 0, i32 4
  store i32 %13, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %9, %4
  %17 = phi i32 [ %3, %12 ], [ -5, %4 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @k_po_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 560
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.thermal_zone_params, ptr %5, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %9)
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ -5, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @k_po_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr i8, ptr %0, i32 560
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = call i32 @kstrtoint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, ptr %5, align 4
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds %struct.thermal_zone_params, ptr %14, i32 0, i32 5
  store i32 %13, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %9, %4
  %17 = phi i32 [ %3, %12 ], [ -5, %4 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @k_pu_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 560
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.thermal_zone_params, ptr %5, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %9)
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ -5, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @k_pu_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr i8, ptr %0, i32 560
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = call i32 @kstrtoint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, ptr %5, align 4
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds %struct.thermal_zone_params, ptr %14, i32 0, i32 6
  store i32 %13, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %9, %4
  %17 = phi i32 [ %3, %12 ], [ -5, %4 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @k_i_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 560
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.thermal_zone_params, ptr %5, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %9)
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ -5, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @k_i_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr i8, ptr %0, i32 560
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = call i32 @kstrtoint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, ptr %5, align 4
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds %struct.thermal_zone_params, ptr %14, i32 0, i32 7
  store i32 %13, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %9, %4
  %17 = phi i32 [ %3, %12 ], [ -5, %4 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @k_d_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 560
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.thermal_zone_params, ptr %5, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %9)
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ -5, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @k_d_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr i8, ptr %0, i32 560
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = call i32 @kstrtoint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, ptr %5, align 4
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds %struct.thermal_zone_params, ptr %14, i32 0, i32 8
  store i32 %13, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %9, %4
  %17 = phi i32 [ %3, %12 ], [ -5, %4 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @integral_cutoff_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 560
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.thermal_zone_params, ptr %5, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %9)
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ -5, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @integral_cutoff_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr i8, ptr %0, i32 560
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = call i32 @kstrtoint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, ptr %5, align 4
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds %struct.thermal_zone_params, ptr %14, i32 0, i32 9
  store i32 %13, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %9, %4
  %17 = phi i32 [ %3, %12 ], [ -5, %4 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @slope_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 560
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.thermal_zone_params, ptr %5, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %9)
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ -5, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @slope_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr i8, ptr %0, i32 560
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = call i32 @kstrtoint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, ptr %5, align 4
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds %struct.thermal_zone_params, ptr %14, i32 0, i32 10
  store i32 %13, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %9, %4
  %17 = phi i32 [ %3, %12 ], [ -5, %4 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @offset_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 560
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.thermal_zone_params, ptr %5, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %9)
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ -5, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @offset_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr i8, ptr %0, i32 560
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = call i32 @kstrtoint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, ptr %5, align 4
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds %struct.thermal_zone_params, ptr %14, i32 0, i32 11
  store i32 %13, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %9, %4
  %17 = phi i32 [ %3, %12 ], [ -5, %4 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mode_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -24
  %5 = tail call i32 @thermal_zone_device_is_enabled(ptr noundef %4) #15
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, ptr @.str.18, ptr @.str.17
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef nonnull %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mode_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -24
  %6 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(8) @.str.17, i32 noundef 7)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call i32 @thermal_zone_device_enable(ptr noundef %5) #15
  br label %15

10:                                               ; preds = %4
  %11 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(9) @.str.18, i32 noundef 8)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = tail call i32 @thermal_zone_device_disable(ptr noundef %5) #15
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i32 [ %14, %13 ], [ %9, %8 ]
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 %3, i32 %16
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi i32 [ -22, %10 ], [ %18, %15 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_is_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trip_point_type_show(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !9
  %7 = getelementptr i8, ptr %0, i32 556
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %1, align 4
  %14 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %13, ptr noundef nonnull @.str.19, ptr noundef nonnull %5)
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %5, align 4
  %21 = call i32 %19(ptr noundef %6, i32 noundef %20, ptr noundef nonnull %4) #15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load i32, ptr %4, align 4
  switch i32 %24, label %29 [
    i32 3, label %25
    i32 2, label %26
    i32 1, label %27
    i32 0, label %28
  ]

25:                                               ; preds = %23
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %2, ptr noundef nonnull align 1 dereferenceable(10) @.str.22, i32 10, i1 false)
  br label %30

26:                                               ; preds = %23
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %2, ptr noundef nonnull align 1 dereferenceable(5) @.str.23, i32 5, i1 false)
  br label %30

27:                                               ; preds = %23
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %2, ptr noundef nonnull align 1 dereferenceable(9) @.str.24, i32 9, i1 false)
  br label %30

28:                                               ; preds = %23
  store i64 2926309016888161, ptr %2, align 1
  br label %30

29:                                               ; preds = %23
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %2, ptr noundef nonnull align 1 dereferenceable(9) @.str.26, i32 9, i1 false)
  br label %30

30:                                               ; preds = %29, %28, %27, %26, %25, %16, %12, %3
  %31 = phi i32 [ 8, %29 ], [ 7, %28 ], [ 8, %27 ], [ 4, %26 ], [ 9, %25 ], [ -1, %3 ], [ -22, %12 ], [ %21, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trip_point_temp_show(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !9
  %7 = getelementptr i8, ptr %0, i32 556
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %1, align 4
  %14 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %13, ptr noundef nonnull @.str.20, ptr noundef nonnull %4)
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %17, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %4, align 4
  %21 = call i32 %19(ptr noundef %6, i32 noundef %20, ptr noundef nonnull %5) #15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, ptr %5, align 4
  %25 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %24)
  br label %26

26:                                               ; preds = %23, %16, %12, %3
  %27 = phi i32 [ %25, %23 ], [ -1, %3 ], [ -22, %12 ], [ %21, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trip_point_hyst_show(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !9
  %7 = getelementptr i8, ptr %0, i32 556
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %1, align 4
  %14 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %13, ptr noundef nonnull @.str.21, ptr noundef nonnull %4)
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %17, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %4, align 4
  %21 = call i32 %19(ptr noundef %6, i32 noundef %20, ptr noundef nonnull %5) #15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, ptr %5, align 4
  %25 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %24)
  br label %26

26:                                               ; preds = %23, %16, %12, %3
  %27 = phi i32 [ -1, %3 ], [ -22, %12 ], [ %25, %23 ], [ %21, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trip_point_hyst_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr i8, ptr %0, i32 -24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !annotation !9
  %8 = getelementptr i8, ptr %0, i32 556
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %1, align 4
  %15 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %14, ptr noundef nonnull @.str.21, ptr noundef nonnull %5)
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = call i32 @kstrtoint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %6) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %21, i32 0, i32 9
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %5, align 4
  %25 = load i32, ptr %6, align 4
  %26 = call i32 %23(ptr noundef %7, i32 noundef %24, i32 noundef %25) #15
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  call void @thermal_zone_set_trips(ptr noundef %7) #15
  br label %29

29:                                               ; preds = %28, %20, %17, %13, %4
  %30 = phi i32 [ -1, %4 ], [ -22, %13 ], [ -22, %17 ], [ %3, %28 ], [ %26, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %30
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_set_trips(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdev_type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_state_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !9
  %6 = getelementptr i8, ptr %0, i32 484
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 %8(ptr noundef %5, ptr noundef nonnull %4) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, ptr %4, align 4
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef %12)
  br label %14

14:                                               ; preds = %11, %3
  %15 = phi i32 [ %13, %11 ], [ %9, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cur_state_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !9
  %6 = getelementptr i8, ptr %0, i32 484
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 %9(ptr noundef %5, ptr noundef nonnull %4) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, ptr %4, align 4
  %14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef %13)
  br label %15

15:                                               ; preds = %12, %3
  %16 = phi i32 [ %14, %12 ], [ %10, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cur_state_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !9
  %7 = load i1, ptr @cur_state_store.__print_once, align 1
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  store i1 true, ptr @cur_state_store.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.30) #17
  br label %9

9:                                                ; preds = %8, %4
  %10 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.28, ptr noundef nonnull %5)
  %11 = icmp ne i32 %10, 1
  %12 = load i32, ptr %5, align 4
  %13 = icmp slt i32 %12, 0
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr i8, ptr %0, i32 492
  call void @mutex_lock(ptr noundef %16) #15
  %17 = getelementptr i8, ptr %0, i32 484
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %5, align 4
  %22 = call i32 %20(ptr noundef %6, i32 noundef %21) #15
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 %3, i32 %22
  call void @mutex_unlock(ptr noundef %16) #15
  br label %25

25:                                               ; preds = %15, %9
  %26 = phi i32 [ %24, %15 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %26
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind willreturn }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold nounwind }

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
!9 = !{!"auto-init"}
