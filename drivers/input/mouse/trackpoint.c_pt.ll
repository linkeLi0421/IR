; ModuleID = '/llk/IR/drivers/input/mouse/trackpoint.c_pt.bc'
source_filename = "../drivers/input/mouse/trackpoint.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.trackpoint_attr_data = type { i32, i8, i8, i8, i8 }
%struct.psmouse_attribute = type { %struct.device_attribute, ptr, ptr, ptr, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.psmouse = type { ptr, ptr, %struct.ps2dev, %struct.delayed_work, ptr, ptr, ptr, [8 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [64 x i8], [32 x i8], i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ps2dev = type { ptr, %struct.mutex, %struct.wait_queue_head, i32, [8 x i8], i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.trackpoint_data = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@trackpoint_variants = internal unnamed_addr constant [7 x ptr] [ptr null, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], align 4
@.str = private unnamed_addr constant [11 x i8] c"TrackPoint\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"trackpoint: failed to get extended button data, assuming 3 buttons\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"trackpoint: got 0 in extended button data, assuming 3 buttons\0A\00", align 1
@trackpoint_attr_group = internal global %struct.attribute_group { ptr null, ptr @trackpoint_is_attr_visible, ptr null, ptr @trackpoint_attrs, ptr null }, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"trackpoint: failed to create sysfs attributes, error: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"trackpoint: %s TrackPoint firmware: 0x%02x, buttons: %d/%d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@trackpoint_attr_sensitivity = internal global %struct.trackpoint_attr_data { i32 2, i8 74, i8 0, i8 0, i8 -128 }, align 4
@trackpoint_attr_speed = internal global %struct.trackpoint_attr_data { i32 3, i8 96, i8 0, i8 0, i8 97 }, align 4
@trackpoint_attr_reach = internal global %struct.trackpoint_attr_data { i32 5, i8 87, i8 0, i8 0, i8 10 }, align 4
@trackpoint_attr_draghys = internal global %struct.trackpoint_attr_data { i32 6, i8 88, i8 0, i8 0, i8 -1 }, align 4
@trackpoint_attr_mindrag = internal global %struct.trackpoint_attr_data { i32 7, i8 89, i8 0, i8 0, i8 20 }, align 4
@trackpoint_attr_thresh = internal global %struct.trackpoint_attr_data { i32 8, i8 92, i8 0, i8 0, i8 8 }, align 4
@trackpoint_attr_upthresh = internal global %struct.trackpoint_attr_data { i32 9, i8 90, i8 0, i8 0, i8 -1 }, align 4
@trackpoint_attr_ztime = internal global %struct.trackpoint_attr_data { i32 10, i8 94, i8 0, i8 0, i8 38 }, align 4
@trackpoint_attr_jenks = internal global %struct.trackpoint_attr_data { i32 11, i8 93, i8 0, i8 0, i8 -121 }, align 4
@trackpoint_attr_drift_time = internal global %struct.trackpoint_attr_data { i32 12, i8 95, i8 0, i8 0, i8 5 }, align 4
@trackpoint_attr_inertia = internal global %struct.trackpoint_attr_data { i32 4, i8 77, i8 0, i8 0, i8 6 }, align 4
@trackpoint_attr_press_to_select = internal global %struct.trackpoint_attr_data { i32 13, i8 44, i8 1, i8 0, i8 0 }, align 4
@trackpoint_attr_skipback = internal global %struct.trackpoint_attr_data { i32 14, i8 45, i8 8, i8 0, i8 0 }, align 4
@trackpoint_attr_ext_dev = internal global %struct.trackpoint_attr_data { i32 15, i8 35, i8 2, i8 1, i8 0 }, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"IBM\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ALPS\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Elan\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"NXP\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"JYT_Synaptics\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Synaptics\00", align 1
@psmouse_attr_sensitivity = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_sensitivity, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, align 4
@psmouse_attr_inertia = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_inertia, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, align 4
@psmouse_attr_speed = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_speed, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, align 4
@psmouse_attr_reach = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_reach, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, align 4
@psmouse_attr_draghys = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_draghys, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, align 4
@psmouse_attr_mindrag = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_mindrag, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, align 4
@psmouse_attr_thresh = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_thresh, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, align 4
@psmouse_attr_upthresh = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_upthresh, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, align 4
@psmouse_attr_ztime = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_ztime, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, align 4
@psmouse_attr_jenks = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_jenks, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, align 4
@psmouse_attr_drift_time = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_drift_time, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, align 4
@psmouse_attr_press_to_select = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_press_to_select, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_bit_attr, i8 1 }, align 4
@psmouse_attr_skipback = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_skipback, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_bit_attr, i8 1 }, align 4
@psmouse_attr_ext_dev = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_ext_dev, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_bit_attr, i8 1 }, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"sensitivity\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"inertia\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"reach\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"draghys\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"mindrag\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"thresh\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"upthresh\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"ztime\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"jenks\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"drift_time\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"press_to_select\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"skipback\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"ext_dev\00", align 1
@trackpoint_attrs = internal global [15 x ptr] [ptr @psmouse_attr_sensitivity, ptr @psmouse_attr_speed, ptr @psmouse_attr_inertia, ptr @psmouse_attr_reach, ptr @psmouse_attr_draghys, ptr @psmouse_attr_mindrag, ptr @psmouse_attr_thresh, ptr @psmouse_attr_upthresh, ptr @psmouse_attr_ztime, ptr @psmouse_attr_jenks, ptr @psmouse_attr_drift_time, ptr @psmouse_attr_press_to_select, ptr @psmouse_attr_skipback, ptr @psmouse_attr_ext_dev, ptr null], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trackpoint_detect(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [2 x ptr], align 8
  %4 = alloca [2 x i8], align 2
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i16 0, ptr %4, align 2
  %7 = call i32 @ps2_command(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 737) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i8, ptr %4, align 2
  %11 = add i8 %10, -1
  %12 = icmp ult i8 %11, 6
  br i1 %12, label %15, label %13

13:                                               ; preds = %9, %2
  %14 = phi i32 [ -19, %9 ], [ %7, %2 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  br label %116

15:                                               ; preds = %9
  %16 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %17 = load i8, ptr %16, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  br i1 %1, label %18, label %116

18:                                               ; preds = %15
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %20 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 16) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %116, label %22

22:                                               ; preds = %18
  %23 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_sensitivity, i32 0, i32 4), align 1
  %24 = getelementptr inbounds %struct.trackpoint_data, ptr %20, i32 0, i32 2
  store i8 %23, ptr %24, align 2
  %25 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_speed, i32 0, i32 4), align 1
  %26 = getelementptr inbounds %struct.trackpoint_data, ptr %20, i32 0, i32 3
  store i8 %25, ptr %26, align 1
  %27 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_reach, i32 0, i32 4), align 1
  %28 = getelementptr inbounds %struct.trackpoint_data, ptr %20, i32 0, i32 5
  store i8 %27, ptr %28, align 1
  %29 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_draghys, i32 0, i32 4), align 1
  %30 = getelementptr inbounds %struct.trackpoint_data, ptr %20, i32 0, i32 6
  store i8 %29, ptr %30, align 2
  %31 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_mindrag, i32 0, i32 4), align 1
  %32 = getelementptr inbounds %struct.trackpoint_data, ptr %20, i32 0, i32 7
  store i8 %31, ptr %32, align 1
  %33 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_thresh, i32 0, i32 4), align 1
  %34 = getelementptr inbounds %struct.trackpoint_data, ptr %20, i32 0, i32 8
  store i8 %33, ptr %34, align 8
  %35 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_upthresh, i32 0, i32 4), align 1
  %36 = getelementptr inbounds %struct.trackpoint_data, ptr %20, i32 0, i32 9
  store i8 %35, ptr %36, align 1
  %37 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_ztime, i32 0, i32 4), align 1
  %38 = getelementptr inbounds %struct.trackpoint_data, ptr %20, i32 0, i32 10
  store i8 %37, ptr %38, align 2
  %39 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_jenks, i32 0, i32 4), align 1
  %40 = getelementptr inbounds %struct.trackpoint_data, ptr %20, i32 0, i32 11
  store i8 %39, ptr %40, align 1
  %41 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_drift_time, i32 0, i32 4), align 1
  %42 = getelementptr inbounds %struct.trackpoint_data, ptr %20, i32 0, i32 12
  store i8 %41, ptr %42, align 4
  %43 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_inertia, i32 0, i32 4), align 1
  %44 = getelementptr inbounds %struct.trackpoint_data, ptr %20, i32 0, i32 4
  store i8 %43, ptr %44, align 4
  %45 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_press_to_select, i32 0, i32 4), align 1
  %46 = icmp ne i8 %45, 0
  %47 = getelementptr inbounds %struct.trackpoint_data, ptr %20, i32 0, i32 13
  %48 = zext i1 %46 to i8
  store i8 %48, ptr %47, align 1
  %49 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_skipback, i32 0, i32 4), align 1
  %50 = icmp ne i8 %49, 0
  %51 = getelementptr inbounds %struct.trackpoint_data, ptr %20, i32 0, i32 14
  %52 = zext i1 %50 to i8
  store i8 %52, ptr %51, align 2
  %53 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_ext_dev, i32 0, i32 4), align 1
  %54 = icmp ne i8 %53, 0
  %55 = getelementptr inbounds %struct.trackpoint_data, ptr %20, i32 0, i32 15
  %56 = zext i1 %54 to i8
  store i8 %56, ptr %55, align 1
  store i8 %10, ptr %20, align 8
  %57 = getelementptr inbounds %struct.trackpoint_data, ptr %20, i32 0, i32 1
  store i8 %17, ptr %57, align 1
  store ptr %20, ptr %0, align 4
  %58 = zext i8 %10 to i32
  %59 = getelementptr [7 x ptr], ptr @trackpoint_variants, i32 0, i32 %58
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 4
  store ptr %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 5
  store ptr @.str, ptr %62, align 4
  %63 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 30
  store ptr @trackpoint_reconnect, ptr %63, align 4
  %64 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 32
  store ptr @trackpoint_disconnect, ptr %64, align 4
  %65 = icmp eq i8 %10, 1
  br i1 %65, label %67, label %66

66:                                               ; preds = %22
  store i8 51, ptr %5, align 1
  br label %82

67:                                               ; preds = %22
  store i8 75, ptr %5, align 1
  %68 = call i32 @ps2_command(ptr noundef %6, ptr noundef nonnull %5, i32 noundef 4578) #8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr %6, align 4
  %72 = getelementptr inbounds %struct.serio, ptr %71, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %72, ptr noundef nonnull @.str.1) #10
  store i8 51, ptr %5, align 1
  br label %82

73:                                               ; preds = %67
  %74 = load i8, ptr %5, align 1
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load ptr, ptr %6, align 4
  %78 = getelementptr inbounds %struct.serio, ptr %77, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %78, ptr noundef nonnull @.str.2) #10
  store i8 51, ptr %5, align 1
  br label %82

79:                                               ; preds = %73
  %80 = and i8 %74, 15
  %81 = icmp ugt i8 %80, 2
  br i1 %81, label %82, label %85

82:                                               ; preds = %79, %76, %70, %66
  %83 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  call void @input_set_capability(ptr noundef %84, i32 noundef 1, i32 noundef 274) #8
  br label %85

85:                                               ; preds = %82, %79
  %86 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.input_dev, ptr %87, i32 0, i32 4
  %89 = load i32, ptr %88, align 4
  %90 = or i32 %89, 1
  store i32 %90, ptr %88, align 4
  %91 = load ptr, ptr %86, align 4
  %92 = getelementptr inbounds %struct.input_dev, ptr %91, i32 0, i32 4
  %93 = load i32, ptr %92, align 4
  %94 = or i32 %93, 32
  store i32 %94, ptr %92, align 4
  br i1 %65, label %95, label %98

95:                                               ; preds = %85
  %96 = call fastcc i32 @trackpoint_power_on_reset(ptr noundef %6)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %95, %85
  call fastcc void @trackpoint_sync(ptr noundef %0, i1 noundef zeroext false)
  br label %99

99:                                               ; preds = %98, %95
  %100 = load ptr, ptr %6, align 4
  %101 = getelementptr inbounds %struct.serio, ptr %100, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store ptr @trackpoint_attr_group, ptr %3, align 8
  %102 = getelementptr inbounds ptr, ptr %3, i32 1
  store ptr null, ptr %102, align 4
  %103 = call i32 @device_add_groups(ptr noundef %101, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  %104 = icmp eq i32 %103, 0
  %105 = load ptr, ptr %6, align 4
  %106 = getelementptr inbounds %struct.serio, ptr %105, i32 0, i32 18
  br i1 %104, label %109, label %107

107:                                              ; preds = %99
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.3, i32 noundef %103) #10
  %108 = load ptr, ptr %0, align 4
  call void @kfree(ptr noundef %108) #8
  store ptr null, ptr %0, align 4
  br label %116

109:                                              ; preds = %99
  %110 = load ptr, ptr %61, align 4
  %111 = zext i8 %17 to i32
  %112 = load i8, ptr %5, align 1
  %113 = zext i8 %112 to i32
  %114 = lshr i32 %113, 4
  %115 = and i32 %113, 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %106, ptr noundef nonnull @.str.4, ptr noundef %110, i32 noundef %111, i32 noundef %114, i32 noundef %115) #10
  br label %116

116:                                              ; preds = %109, %107, %18, %15, %13
  %117 = phi i32 [ -1, %107 ], [ 0, %109 ], [ 0, %15 ], [ -12, %18 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  ret i32 %117
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trackpoint_reconnect(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 0, ptr %3, align 2
  %5 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %6 = call i32 @ps2_command(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 737) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i8, ptr %3, align 2
  %10 = add i8 %9, -1
  %11 = icmp ult i8 %10, 6
  br i1 %11, label %14, label %12

12:                                               ; preds = %8, %1
  %13 = phi i32 [ -19, %8 ], [ %6, %1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  br label %33

14:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  %15 = load i8, ptr %4, align 1
  %16 = icmp eq i8 %15, 1
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 127, ptr %2, align 2
  %18 = call i32 @ps2_command(ptr noundef %5, ptr noundef nonnull %2, i32 noundef 4834) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i8, ptr %2, align 2
  %22 = icmp ne i8 %21, -86
  %23 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = icmp ne i8 %24, 0
  %26 = select i1 %22, i1 true, i1 %25
  %27 = select i1 %26, i32 -19, i32 0
  br label %28

28:                                               ; preds = %20, %17
  %29 = phi i32 [ %18, %17 ], [ %27, %20 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  %30 = icmp eq i32 %29, 0
  br label %31

31:                                               ; preds = %28, %14
  %32 = phi i1 [ false, %14 ], [ %30, %28 ]
  call fastcc void @trackpoint_sync(ptr noundef %0, i1 noundef zeroext %32)
  br label %33

33:                                               ; preds = %31, %12
  %34 = phi i32 [ 0, %31 ], [ %13, %12 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trackpoint_disconnect(ptr nocapture noundef %0) #0 {
  %2 = alloca [2 x ptr], align 8
  %3 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store ptr @trackpoint_attr_group, ptr %2, align 8
  %6 = getelementptr inbounds ptr, ptr %2, i32 1
  store ptr null, ptr %6, align 4
  call void @device_remove_groups(ptr noundef %5, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  %7 = load ptr, ptr %0, align 4
  call void @kfree(ptr noundef %7) #8
  store ptr null, ptr %0, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @trackpoint_power_on_reset(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 127, ptr %2, align 2
  %3 = call i32 @ps2_command(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 4834) #8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load i8, ptr %2, align 2
  %7 = icmp ne i8 %6, -86
  %8 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = icmp ne i8 %9, 0
  %11 = select i1 %7, i1 true, i1 %10
  %12 = select i1 %11, i32 -19, i32 0
  br label %13

13:                                               ; preds = %5, %1
  %14 = phi i32 [ %3, %1 ], [ %12, %5 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trackpoint_sync(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca i8, align 1
  %5 = alloca [3 x i8], align 1
  %6 = alloca [3 x i8], align 1
  %7 = alloca i8, align 1
  %8 = alloca [3 x i8], align 1
  %9 = alloca [3 x i8], align 1
  %10 = alloca i8, align 1
  %11 = alloca [3 x i8], align 1
  %12 = alloca [3 x i8], align 1
  %13 = alloca i8, align 1
  %14 = alloca [3 x i8], align 1
  %15 = alloca [3 x i8], align 1
  %16 = alloca i8, align 1
  %17 = alloca [3 x i8], align 1
  %18 = alloca [3 x i8], align 1
  %19 = alloca i8, align 1
  %20 = alloca [3 x i8], align 1
  %21 = alloca [3 x i8], align 1
  %22 = alloca i8, align 1
  %23 = alloca [3 x i8], align 1
  %24 = alloca [3 x i8], align 1
  %25 = alloca i8, align 1
  %26 = alloca [3 x i8], align 1
  %27 = alloca [3 x i8], align 1
  %28 = alloca i8, align 1
  %29 = alloca [3 x i8], align 1
  %30 = alloca [3 x i8], align 1
  %31 = alloca i8, align 1
  %32 = alloca [3 x i8], align 1
  %33 = alloca [3 x i8], align 1
  %34 = alloca i8, align 1
  %35 = alloca [3 x i8], align 1
  %36 = alloca [3 x i8], align 1
  %37 = alloca i8, align 1
  %38 = alloca [3 x i8], align 1
  %39 = alloca [3 x i8], align 1
  %40 = alloca i8, align 1
  %41 = alloca [3 x i8], align 1
  %42 = alloca [3 x i8], align 1
  %43 = alloca i8, align 1
  %44 = alloca [3 x i8], align 1
  %45 = alloca [3 x i8], align 1
  %46 = alloca i8, align 1
  %47 = alloca [3 x i8], align 1
  %48 = alloca i8, align 1
  %49 = alloca [3 x i8], align 1
  %50 = alloca i8, align 1
  %51 = load ptr, ptr %0, align 4
  br i1 %1, label %89, label %52

52:                                               ; preds = %2
  %53 = load i8, ptr %51, align 1
  %54 = icmp eq i8 %53, 1
  br i1 %54, label %55, label %94

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %50) #8
  store i8 45, ptr %50, align 1
  %57 = call i32 @ps2_command(ptr noundef %56, ptr noundef nonnull %50, i32 noundef 4578) #8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i8, ptr %50, align 1
  %61 = and i8 %60, 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %49) #8
  store i8 71, ptr %49, align 1
  %64 = getelementptr inbounds i8, ptr %49, i32 1
  store i8 45, ptr %64, align 1
  %65 = getelementptr inbounds i8, ptr %49, i32 2
  store i8 1, ptr %65, align 1
  %66 = call i32 @ps2_command(ptr noundef %56, ptr noundef nonnull %49, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %49) #8
  br label %67

67:                                               ; preds = %63, %59, %55
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %50) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %48) #8
  store i8 32, ptr %48, align 1
  %68 = call i32 @ps2_command(ptr noundef %56, ptr noundef nonnull %48, i32 noundef 4578) #8
  %69 = icmp eq i32 %68, 0
  %70 = load i8, ptr %48, align 1
  %71 = icmp slt i8 %70, 0
  %72 = select i1 %69, i1 %71, i1 false
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %47) #8
  store i8 71, ptr %47, align 1
  %74 = getelementptr inbounds i8, ptr %47, i32 1
  store i8 32, ptr %74, align 1
  %75 = getelementptr inbounds i8, ptr %47, i32 2
  store i8 -128, ptr %75, align 1
  %76 = call i32 @ps2_command(ptr noundef %56, ptr noundef nonnull %47, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %47) #8
  br label %77

77:                                               ; preds = %73, %67
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %48) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %46) #8
  store i8 35, ptr %46, align 1
  %78 = call i32 @ps2_command(ptr noundef %56, ptr noundef nonnull %46, i32 noundef 4578) #8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load i8, ptr %46, align 1
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %45) #8
  store i8 71, ptr %45, align 1
  %85 = getelementptr inbounds i8, ptr %45, i32 1
  store i8 35, ptr %85, align 1
  %86 = getelementptr inbounds i8, ptr %45, i32 2
  store i8 1, ptr %86, align 1
  %87 = call i32 @ps2_command(ptr noundef %56, ptr noundef nonnull %45, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %45) #8
  br label %88

88:                                               ; preds = %84, %80, %77
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %46) #8
  br label %94

89:                                               ; preds = %2
  %90 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 2
  %91 = load i8, ptr %90, align 1
  %92 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_sensitivity, i32 0, i32 4), align 1
  %93 = icmp eq i8 %91, %92
  br i1 %93, label %124, label %94

94:                                               ; preds = %89, %88, %52
  %95 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_sensitivity, i32 0, i32 2), align 1
  %96 = icmp eq i8 %95, 0
  %97 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %98 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_sensitivity, i32 0, i32 1), align 4
  %99 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 2
  %100 = load i8, ptr %99, align 1
  br i1 %96, label %101, label %105

101:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %44) #8
  store i8 -127, ptr %44, align 1
  %102 = getelementptr inbounds i8, ptr %44, i32 1
  store i8 %98, ptr %102, align 1
  %103 = getelementptr inbounds i8, ptr %44, i32 2
  store i8 %100, ptr %103, align 1
  %104 = call i32 @ps2_command(ptr noundef %97, ptr noundef nonnull %44, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %44) #8
  br label %123

105:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %43) #8
  store i8 %98, ptr %43, align 1
  %106 = call i32 @ps2_command(ptr noundef %97, ptr noundef nonnull %43, i32 noundef 4578) #8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  %109 = load i8, ptr %43, align 1
  %110 = and i8 %109, %95
  %111 = icmp ne i8 %110, %95
  %112 = icmp ne i8 %100, 0
  %113 = xor i1 %112, %111
  br i1 %113, label %122, label %114

114:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %42) #8
  store i8 71, ptr %42, align 1
  %115 = getelementptr inbounds i8, ptr %42, i32 1
  store i8 %98, ptr %115, align 1
  %116 = getelementptr inbounds i8, ptr %42, i32 2
  store i8 %95, ptr %116, align 1
  %117 = add i8 %98, -47
  %118 = icmp ult i8 %117, -15
  br i1 %118, label %121, label %119

119:                                              ; preds = %114
  %120 = call i32 @ps2_command(ptr noundef %97, ptr noundef nonnull %42, i32 noundef 12514) #8
  br label %121

121:                                              ; preds = %119, %114
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %42) #8
  br label %122

122:                                              ; preds = %121, %108, %105
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %43) #8
  br label %123

123:                                              ; preds = %122, %101
  br i1 %1, label %124, label %129

124:                                              ; preds = %123, %89
  %125 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 4
  %126 = load i8, ptr %125, align 1
  %127 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_inertia, i32 0, i32 4), align 1
  %128 = icmp eq i8 %126, %127
  br i1 %128, label %163, label %129

129:                                              ; preds = %124, %123
  %130 = load ptr, ptr %0, align 4
  %131 = load i8, ptr %130, align 1
  %132 = icmp eq i8 %131, 1
  br i1 %132, label %133, label %162

133:                                              ; preds = %129
  %134 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_inertia, i32 0, i32 2), align 1
  %135 = icmp eq i8 %134, 0
  %136 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %137 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_inertia, i32 0, i32 1), align 4
  %138 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 4
  %139 = load i8, ptr %138, align 1
  br i1 %135, label %140, label %144

140:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %41) #8
  store i8 -127, ptr %41, align 1
  %141 = getelementptr inbounds i8, ptr %41, i32 1
  store i8 %137, ptr %141, align 1
  %142 = getelementptr inbounds i8, ptr %41, i32 2
  store i8 %139, ptr %142, align 1
  %143 = call i32 @ps2_command(ptr noundef %136, ptr noundef nonnull %41, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %41) #8
  br label %162

144:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %40) #8
  store i8 %137, ptr %40, align 1
  %145 = call i32 @ps2_command(ptr noundef %136, ptr noundef nonnull %40, i32 noundef 4578) #8
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %144
  %148 = load i8, ptr %40, align 1
  %149 = and i8 %148, %134
  %150 = icmp ne i8 %149, %134
  %151 = icmp ne i8 %139, 0
  %152 = xor i1 %151, %150
  br i1 %152, label %161, label %153

153:                                              ; preds = %147
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %39) #8
  store i8 71, ptr %39, align 1
  %154 = getelementptr inbounds i8, ptr %39, i32 1
  store i8 %137, ptr %154, align 1
  %155 = getelementptr inbounds i8, ptr %39, i32 2
  store i8 %134, ptr %155, align 1
  %156 = add i8 %137, -47
  %157 = icmp ult i8 %156, -15
  br i1 %157, label %160, label %158

158:                                              ; preds = %153
  %159 = call i32 @ps2_command(ptr noundef %136, ptr noundef nonnull %39, i32 noundef 12514) #8
  br label %160

160:                                              ; preds = %158, %153
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %39) #8
  br label %161

161:                                              ; preds = %160, %147, %144
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %40) #8
  br label %162

162:                                              ; preds = %161, %140, %129
  br i1 %1, label %163, label %168

163:                                              ; preds = %162, %124
  %164 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 3
  %165 = load i8, ptr %164, align 1
  %166 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_speed, i32 0, i32 4), align 1
  %167 = icmp eq i8 %165, %166
  br i1 %167, label %202, label %168

168:                                              ; preds = %163, %162
  %169 = load ptr, ptr %0, align 4
  %170 = load i8, ptr %169, align 1
  %171 = icmp eq i8 %170, 1
  br i1 %171, label %172, label %201

172:                                              ; preds = %168
  %173 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_speed, i32 0, i32 2), align 1
  %174 = icmp eq i8 %173, 0
  %175 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %176 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_speed, i32 0, i32 1), align 4
  %177 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 3
  %178 = load i8, ptr %177, align 1
  br i1 %174, label %179, label %183

179:                                              ; preds = %172
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %38) #8
  store i8 -127, ptr %38, align 1
  %180 = getelementptr inbounds i8, ptr %38, i32 1
  store i8 %176, ptr %180, align 1
  %181 = getelementptr inbounds i8, ptr %38, i32 2
  store i8 %178, ptr %181, align 1
  %182 = call i32 @ps2_command(ptr noundef %175, ptr noundef nonnull %38, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %38) #8
  br label %201

183:                                              ; preds = %172
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %37) #8
  store i8 %176, ptr %37, align 1
  %184 = call i32 @ps2_command(ptr noundef %175, ptr noundef nonnull %37, i32 noundef 4578) #8
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %183
  %187 = load i8, ptr %37, align 1
  %188 = and i8 %187, %173
  %189 = icmp ne i8 %188, %173
  %190 = icmp ne i8 %178, 0
  %191 = xor i1 %190, %189
  br i1 %191, label %200, label %192

192:                                              ; preds = %186
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %36) #8
  store i8 71, ptr %36, align 1
  %193 = getelementptr inbounds i8, ptr %36, i32 1
  store i8 %176, ptr %193, align 1
  %194 = getelementptr inbounds i8, ptr %36, i32 2
  store i8 %173, ptr %194, align 1
  %195 = add i8 %176, -47
  %196 = icmp ult i8 %195, -15
  br i1 %196, label %199, label %197

197:                                              ; preds = %192
  %198 = call i32 @ps2_command(ptr noundef %175, ptr noundef nonnull %36, i32 noundef 12514) #8
  br label %199

199:                                              ; preds = %197, %192
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %36) #8
  br label %200

200:                                              ; preds = %199, %186, %183
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %37) #8
  br label %201

201:                                              ; preds = %200, %179, %168
  br i1 %1, label %202, label %207

202:                                              ; preds = %201, %163
  %203 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 5
  %204 = load i8, ptr %203, align 1
  %205 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_reach, i32 0, i32 4), align 1
  %206 = icmp eq i8 %204, %205
  br i1 %206, label %241, label %207

207:                                              ; preds = %202, %201
  %208 = load ptr, ptr %0, align 4
  %209 = load i8, ptr %208, align 1
  %210 = icmp eq i8 %209, 1
  br i1 %210, label %211, label %240

211:                                              ; preds = %207
  %212 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_reach, i32 0, i32 2), align 1
  %213 = icmp eq i8 %212, 0
  %214 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %215 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_reach, i32 0, i32 1), align 4
  %216 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 5
  %217 = load i8, ptr %216, align 1
  br i1 %213, label %218, label %222

218:                                              ; preds = %211
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %35) #8
  store i8 -127, ptr %35, align 1
  %219 = getelementptr inbounds i8, ptr %35, i32 1
  store i8 %215, ptr %219, align 1
  %220 = getelementptr inbounds i8, ptr %35, i32 2
  store i8 %217, ptr %220, align 1
  %221 = call i32 @ps2_command(ptr noundef %214, ptr noundef nonnull %35, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %35) #8
  br label %240

222:                                              ; preds = %211
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %34) #8
  store i8 %215, ptr %34, align 1
  %223 = call i32 @ps2_command(ptr noundef %214, ptr noundef nonnull %34, i32 noundef 4578) #8
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %239

225:                                              ; preds = %222
  %226 = load i8, ptr %34, align 1
  %227 = and i8 %226, %212
  %228 = icmp ne i8 %227, %212
  %229 = icmp ne i8 %217, 0
  %230 = xor i1 %229, %228
  br i1 %230, label %239, label %231

231:                                              ; preds = %225
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %33) #8
  store i8 71, ptr %33, align 1
  %232 = getelementptr inbounds i8, ptr %33, i32 1
  store i8 %215, ptr %232, align 1
  %233 = getelementptr inbounds i8, ptr %33, i32 2
  store i8 %212, ptr %233, align 1
  %234 = add i8 %215, -47
  %235 = icmp ult i8 %234, -15
  br i1 %235, label %238, label %236

236:                                              ; preds = %231
  %237 = call i32 @ps2_command(ptr noundef %214, ptr noundef nonnull %33, i32 noundef 12514) #8
  br label %238

238:                                              ; preds = %236, %231
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %33) #8
  br label %239

239:                                              ; preds = %238, %225, %222
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %34) #8
  br label %240

240:                                              ; preds = %239, %218, %207
  br i1 %1, label %241, label %246

241:                                              ; preds = %240, %202
  %242 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 6
  %243 = load i8, ptr %242, align 1
  %244 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_draghys, i32 0, i32 4), align 1
  %245 = icmp eq i8 %243, %244
  br i1 %245, label %280, label %246

246:                                              ; preds = %241, %240
  %247 = load ptr, ptr %0, align 4
  %248 = load i8, ptr %247, align 1
  %249 = icmp eq i8 %248, 1
  br i1 %249, label %250, label %279

250:                                              ; preds = %246
  %251 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_draghys, i32 0, i32 2), align 1
  %252 = icmp eq i8 %251, 0
  %253 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %254 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_draghys, i32 0, i32 1), align 4
  %255 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 6
  %256 = load i8, ptr %255, align 1
  br i1 %252, label %257, label %261

257:                                              ; preds = %250
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %32) #8
  store i8 -127, ptr %32, align 1
  %258 = getelementptr inbounds i8, ptr %32, i32 1
  store i8 %254, ptr %258, align 1
  %259 = getelementptr inbounds i8, ptr %32, i32 2
  store i8 %256, ptr %259, align 1
  %260 = call i32 @ps2_command(ptr noundef %253, ptr noundef nonnull %32, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %32) #8
  br label %279

261:                                              ; preds = %250
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %31) #8
  store i8 %254, ptr %31, align 1
  %262 = call i32 @ps2_command(ptr noundef %253, ptr noundef nonnull %31, i32 noundef 4578) #8
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %278

264:                                              ; preds = %261
  %265 = load i8, ptr %31, align 1
  %266 = and i8 %265, %251
  %267 = icmp ne i8 %266, %251
  %268 = icmp ne i8 %256, 0
  %269 = xor i1 %268, %267
  br i1 %269, label %278, label %270

270:                                              ; preds = %264
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %30) #8
  store i8 71, ptr %30, align 1
  %271 = getelementptr inbounds i8, ptr %30, i32 1
  store i8 %254, ptr %271, align 1
  %272 = getelementptr inbounds i8, ptr %30, i32 2
  store i8 %251, ptr %272, align 1
  %273 = add i8 %254, -47
  %274 = icmp ult i8 %273, -15
  br i1 %274, label %277, label %275

275:                                              ; preds = %270
  %276 = call i32 @ps2_command(ptr noundef %253, ptr noundef nonnull %30, i32 noundef 12514) #8
  br label %277

277:                                              ; preds = %275, %270
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %30) #8
  br label %278

278:                                              ; preds = %277, %264, %261
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %31) #8
  br label %279

279:                                              ; preds = %278, %257, %246
  br i1 %1, label %280, label %285

280:                                              ; preds = %279, %241
  %281 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 7
  %282 = load i8, ptr %281, align 1
  %283 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_mindrag, i32 0, i32 4), align 1
  %284 = icmp eq i8 %282, %283
  br i1 %284, label %319, label %285

285:                                              ; preds = %280, %279
  %286 = load ptr, ptr %0, align 4
  %287 = load i8, ptr %286, align 1
  %288 = icmp eq i8 %287, 1
  br i1 %288, label %289, label %318

289:                                              ; preds = %285
  %290 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_mindrag, i32 0, i32 2), align 1
  %291 = icmp eq i8 %290, 0
  %292 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %293 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_mindrag, i32 0, i32 1), align 4
  %294 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 7
  %295 = load i8, ptr %294, align 1
  br i1 %291, label %296, label %300

296:                                              ; preds = %289
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %29) #8
  store i8 -127, ptr %29, align 1
  %297 = getelementptr inbounds i8, ptr %29, i32 1
  store i8 %293, ptr %297, align 1
  %298 = getelementptr inbounds i8, ptr %29, i32 2
  store i8 %295, ptr %298, align 1
  %299 = call i32 @ps2_command(ptr noundef %292, ptr noundef nonnull %29, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %29) #8
  br label %318

300:                                              ; preds = %289
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %28) #8
  store i8 %293, ptr %28, align 1
  %301 = call i32 @ps2_command(ptr noundef %292, ptr noundef nonnull %28, i32 noundef 4578) #8
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %317

303:                                              ; preds = %300
  %304 = load i8, ptr %28, align 1
  %305 = and i8 %304, %290
  %306 = icmp ne i8 %305, %290
  %307 = icmp ne i8 %295, 0
  %308 = xor i1 %307, %306
  br i1 %308, label %317, label %309

309:                                              ; preds = %303
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %27) #8
  store i8 71, ptr %27, align 1
  %310 = getelementptr inbounds i8, ptr %27, i32 1
  store i8 %293, ptr %310, align 1
  %311 = getelementptr inbounds i8, ptr %27, i32 2
  store i8 %290, ptr %311, align 1
  %312 = add i8 %293, -47
  %313 = icmp ult i8 %312, -15
  br i1 %313, label %316, label %314

314:                                              ; preds = %309
  %315 = call i32 @ps2_command(ptr noundef %292, ptr noundef nonnull %27, i32 noundef 12514) #8
  br label %316

316:                                              ; preds = %314, %309
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %27) #8
  br label %317

317:                                              ; preds = %316, %303, %300
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %28) #8
  br label %318

318:                                              ; preds = %317, %296, %285
  br i1 %1, label %319, label %324

319:                                              ; preds = %318, %280
  %320 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 8
  %321 = load i8, ptr %320, align 1
  %322 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_thresh, i32 0, i32 4), align 1
  %323 = icmp eq i8 %321, %322
  br i1 %323, label %358, label %324

324:                                              ; preds = %319, %318
  %325 = load ptr, ptr %0, align 4
  %326 = load i8, ptr %325, align 1
  %327 = icmp eq i8 %326, 1
  br i1 %327, label %328, label %357

328:                                              ; preds = %324
  %329 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_thresh, i32 0, i32 2), align 1
  %330 = icmp eq i8 %329, 0
  %331 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %332 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_thresh, i32 0, i32 1), align 4
  %333 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 8
  %334 = load i8, ptr %333, align 1
  br i1 %330, label %335, label %339

335:                                              ; preds = %328
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %26) #8
  store i8 -127, ptr %26, align 1
  %336 = getelementptr inbounds i8, ptr %26, i32 1
  store i8 %332, ptr %336, align 1
  %337 = getelementptr inbounds i8, ptr %26, i32 2
  store i8 %334, ptr %337, align 1
  %338 = call i32 @ps2_command(ptr noundef %331, ptr noundef nonnull %26, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %26) #8
  br label %357

339:                                              ; preds = %328
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %25) #8
  store i8 %332, ptr %25, align 1
  %340 = call i32 @ps2_command(ptr noundef %331, ptr noundef nonnull %25, i32 noundef 4578) #8
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %356

342:                                              ; preds = %339
  %343 = load i8, ptr %25, align 1
  %344 = and i8 %343, %329
  %345 = icmp ne i8 %344, %329
  %346 = icmp ne i8 %334, 0
  %347 = xor i1 %346, %345
  br i1 %347, label %356, label %348

348:                                              ; preds = %342
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %24) #8
  store i8 71, ptr %24, align 1
  %349 = getelementptr inbounds i8, ptr %24, i32 1
  store i8 %332, ptr %349, align 1
  %350 = getelementptr inbounds i8, ptr %24, i32 2
  store i8 %329, ptr %350, align 1
  %351 = add i8 %332, -47
  %352 = icmp ult i8 %351, -15
  br i1 %352, label %355, label %353

353:                                              ; preds = %348
  %354 = call i32 @ps2_command(ptr noundef %331, ptr noundef nonnull %24, i32 noundef 12514) #8
  br label %355

355:                                              ; preds = %353, %348
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %24) #8
  br label %356

356:                                              ; preds = %355, %342, %339
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25) #8
  br label %357

357:                                              ; preds = %356, %335, %324
  br i1 %1, label %358, label %363

358:                                              ; preds = %357, %319
  %359 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 9
  %360 = load i8, ptr %359, align 1
  %361 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_upthresh, i32 0, i32 4), align 1
  %362 = icmp eq i8 %360, %361
  br i1 %362, label %397, label %363

363:                                              ; preds = %358, %357
  %364 = load ptr, ptr %0, align 4
  %365 = load i8, ptr %364, align 1
  %366 = icmp eq i8 %365, 1
  br i1 %366, label %367, label %396

367:                                              ; preds = %363
  %368 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_upthresh, i32 0, i32 2), align 1
  %369 = icmp eq i8 %368, 0
  %370 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %371 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_upthresh, i32 0, i32 1), align 4
  %372 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 9
  %373 = load i8, ptr %372, align 1
  br i1 %369, label %374, label %378

374:                                              ; preds = %367
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %23) #8
  store i8 -127, ptr %23, align 1
  %375 = getelementptr inbounds i8, ptr %23, i32 1
  store i8 %371, ptr %375, align 1
  %376 = getelementptr inbounds i8, ptr %23, i32 2
  store i8 %373, ptr %376, align 1
  %377 = call i32 @ps2_command(ptr noundef %370, ptr noundef nonnull %23, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %23) #8
  br label %396

378:                                              ; preds = %367
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %22) #8
  store i8 %371, ptr %22, align 1
  %379 = call i32 @ps2_command(ptr noundef %370, ptr noundef nonnull %22, i32 noundef 4578) #8
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %395

381:                                              ; preds = %378
  %382 = load i8, ptr %22, align 1
  %383 = and i8 %382, %368
  %384 = icmp ne i8 %383, %368
  %385 = icmp ne i8 %373, 0
  %386 = xor i1 %385, %384
  br i1 %386, label %395, label %387

387:                                              ; preds = %381
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %21) #8
  store i8 71, ptr %21, align 1
  %388 = getelementptr inbounds i8, ptr %21, i32 1
  store i8 %371, ptr %388, align 1
  %389 = getelementptr inbounds i8, ptr %21, i32 2
  store i8 %368, ptr %389, align 1
  %390 = add i8 %371, -47
  %391 = icmp ult i8 %390, -15
  br i1 %391, label %394, label %392

392:                                              ; preds = %387
  %393 = call i32 @ps2_command(ptr noundef %370, ptr noundef nonnull %21, i32 noundef 12514) #8
  br label %394

394:                                              ; preds = %392, %387
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %21) #8
  br label %395

395:                                              ; preds = %394, %381, %378
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %22) #8
  br label %396

396:                                              ; preds = %395, %374, %363
  br i1 %1, label %397, label %402

397:                                              ; preds = %396, %358
  %398 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 10
  %399 = load i8, ptr %398, align 1
  %400 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_ztime, i32 0, i32 4), align 1
  %401 = icmp eq i8 %399, %400
  br i1 %401, label %436, label %402

402:                                              ; preds = %397, %396
  %403 = load ptr, ptr %0, align 4
  %404 = load i8, ptr %403, align 1
  %405 = icmp eq i8 %404, 1
  br i1 %405, label %406, label %435

406:                                              ; preds = %402
  %407 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_ztime, i32 0, i32 2), align 1
  %408 = icmp eq i8 %407, 0
  %409 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %410 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_ztime, i32 0, i32 1), align 4
  %411 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 10
  %412 = load i8, ptr %411, align 1
  br i1 %408, label %413, label %417

413:                                              ; preds = %406
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %20) #8
  store i8 -127, ptr %20, align 1
  %414 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 %410, ptr %414, align 1
  %415 = getelementptr inbounds i8, ptr %20, i32 2
  store i8 %412, ptr %415, align 1
  %416 = call i32 @ps2_command(ptr noundef %409, ptr noundef nonnull %20, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %20) #8
  br label %435

417:                                              ; preds = %406
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #8
  store i8 %410, ptr %19, align 1
  %418 = call i32 @ps2_command(ptr noundef %409, ptr noundef nonnull %19, i32 noundef 4578) #8
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %434

420:                                              ; preds = %417
  %421 = load i8, ptr %19, align 1
  %422 = and i8 %421, %407
  %423 = icmp ne i8 %422, %407
  %424 = icmp ne i8 %412, 0
  %425 = xor i1 %424, %423
  br i1 %425, label %434, label %426

426:                                              ; preds = %420
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %18) #8
  store i8 71, ptr %18, align 1
  %427 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 %410, ptr %427, align 1
  %428 = getelementptr inbounds i8, ptr %18, i32 2
  store i8 %407, ptr %428, align 1
  %429 = add i8 %410, -47
  %430 = icmp ult i8 %429, -15
  br i1 %430, label %433, label %431

431:                                              ; preds = %426
  %432 = call i32 @ps2_command(ptr noundef %409, ptr noundef nonnull %18, i32 noundef 12514) #8
  br label %433

433:                                              ; preds = %431, %426
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %18) #8
  br label %434

434:                                              ; preds = %433, %420, %417
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #8
  br label %435

435:                                              ; preds = %434, %413, %402
  br i1 %1, label %436, label %441

436:                                              ; preds = %435, %397
  %437 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 11
  %438 = load i8, ptr %437, align 1
  %439 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_jenks, i32 0, i32 4), align 1
  %440 = icmp eq i8 %438, %439
  br i1 %440, label %475, label %441

441:                                              ; preds = %436, %435
  %442 = load ptr, ptr %0, align 4
  %443 = load i8, ptr %442, align 1
  %444 = icmp eq i8 %443, 1
  br i1 %444, label %445, label %474

445:                                              ; preds = %441
  %446 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_jenks, i32 0, i32 2), align 1
  %447 = icmp eq i8 %446, 0
  %448 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %449 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_jenks, i32 0, i32 1), align 4
  %450 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 11
  %451 = load i8, ptr %450, align 1
  br i1 %447, label %452, label %456

452:                                              ; preds = %445
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %17) #8
  store i8 -127, ptr %17, align 1
  %453 = getelementptr inbounds i8, ptr %17, i32 1
  store i8 %449, ptr %453, align 1
  %454 = getelementptr inbounds i8, ptr %17, i32 2
  store i8 %451, ptr %454, align 1
  %455 = call i32 @ps2_command(ptr noundef %448, ptr noundef nonnull %17, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %17) #8
  br label %474

456:                                              ; preds = %445
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #8
  store i8 %449, ptr %16, align 1
  %457 = call i32 @ps2_command(ptr noundef %448, ptr noundef nonnull %16, i32 noundef 4578) #8
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %459, label %473

459:                                              ; preds = %456
  %460 = load i8, ptr %16, align 1
  %461 = and i8 %460, %446
  %462 = icmp ne i8 %461, %446
  %463 = icmp ne i8 %451, 0
  %464 = xor i1 %463, %462
  br i1 %464, label %473, label %465

465:                                              ; preds = %459
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %15) #8
  store i8 71, ptr %15, align 1
  %466 = getelementptr inbounds i8, ptr %15, i32 1
  store i8 %449, ptr %466, align 1
  %467 = getelementptr inbounds i8, ptr %15, i32 2
  store i8 %446, ptr %467, align 1
  %468 = add i8 %449, -47
  %469 = icmp ult i8 %468, -15
  br i1 %469, label %472, label %470

470:                                              ; preds = %465
  %471 = call i32 @ps2_command(ptr noundef %448, ptr noundef nonnull %15, i32 noundef 12514) #8
  br label %472

472:                                              ; preds = %470, %465
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %15) #8
  br label %473

473:                                              ; preds = %472, %459, %456
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #8
  br label %474

474:                                              ; preds = %473, %452, %441
  br i1 %1, label %475, label %480

475:                                              ; preds = %474, %436
  %476 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 12
  %477 = load i8, ptr %476, align 1
  %478 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_drift_time, i32 0, i32 4), align 1
  %479 = icmp eq i8 %477, %478
  br i1 %479, label %514, label %480

480:                                              ; preds = %475, %474
  %481 = load ptr, ptr %0, align 4
  %482 = load i8, ptr %481, align 1
  %483 = icmp eq i8 %482, 1
  br i1 %483, label %484, label %513

484:                                              ; preds = %480
  %485 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_drift_time, i32 0, i32 2), align 1
  %486 = icmp eq i8 %485, 0
  %487 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %488 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_drift_time, i32 0, i32 1), align 4
  %489 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 12
  %490 = load i8, ptr %489, align 1
  br i1 %486, label %491, label %495

491:                                              ; preds = %484
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %14) #8
  store i8 -127, ptr %14, align 1
  %492 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 %488, ptr %492, align 1
  %493 = getelementptr inbounds i8, ptr %14, i32 2
  store i8 %490, ptr %493, align 1
  %494 = call i32 @ps2_command(ptr noundef %487, ptr noundef nonnull %14, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %14) #8
  br label %513

495:                                              ; preds = %484
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #8
  store i8 %488, ptr %13, align 1
  %496 = call i32 @ps2_command(ptr noundef %487, ptr noundef nonnull %13, i32 noundef 4578) #8
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %498, label %512

498:                                              ; preds = %495
  %499 = load i8, ptr %13, align 1
  %500 = and i8 %499, %485
  %501 = icmp ne i8 %500, %485
  %502 = icmp ne i8 %490, 0
  %503 = xor i1 %502, %501
  br i1 %503, label %512, label %504

504:                                              ; preds = %498
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %12) #8
  store i8 71, ptr %12, align 1
  %505 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 %488, ptr %505, align 1
  %506 = getelementptr inbounds i8, ptr %12, i32 2
  store i8 %485, ptr %506, align 1
  %507 = add i8 %488, -47
  %508 = icmp ult i8 %507, -15
  br i1 %508, label %511, label %509

509:                                              ; preds = %504
  %510 = call i32 @ps2_command(ptr noundef %487, ptr noundef nonnull %12, i32 noundef 12514) #8
  br label %511

511:                                              ; preds = %509, %504
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %12) #8
  br label %512

512:                                              ; preds = %511, %498, %495
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #8
  br label %513

513:                                              ; preds = %512, %491, %480
  br i1 %1, label %514, label %519

514:                                              ; preds = %513, %475
  %515 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 13
  %516 = load i8, ptr %515, align 1, !range !8
  %517 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_press_to_select, i32 0, i32 4), align 1
  %518 = icmp eq i8 %516, %517
  br i1 %518, label %549, label %519

519:                                              ; preds = %514, %513
  %520 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_press_to_select, i32 0, i32 2), align 1
  %521 = icmp eq i8 %520, 0
  %522 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %523 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_press_to_select, i32 0, i32 1), align 4
  %524 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 13
  %525 = load i8, ptr %524, align 1, !range !8
  br i1 %521, label %526, label %530

526:                                              ; preds = %519
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %11) #8
  store i8 -127, ptr %11, align 1
  %527 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 %523, ptr %527, align 1
  %528 = getelementptr inbounds i8, ptr %11, i32 2
  store i8 %525, ptr %528, align 1
  %529 = call i32 @ps2_command(ptr noundef %522, ptr noundef nonnull %11, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %11) #8
  br label %548

530:                                              ; preds = %519
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #8
  store i8 %523, ptr %10, align 1
  %531 = call i32 @ps2_command(ptr noundef %522, ptr noundef nonnull %10, i32 noundef 4578) #8
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %533, label %547

533:                                              ; preds = %530
  %534 = load i8, ptr %10, align 1
  %535 = and i8 %534, %520
  %536 = icmp ne i8 %535, %520
  %537 = icmp ne i8 %525, 0
  %538 = xor i1 %537, %536
  br i1 %538, label %547, label %539

539:                                              ; preds = %533
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #8
  store i8 71, ptr %9, align 1
  %540 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 %523, ptr %540, align 1
  %541 = getelementptr inbounds i8, ptr %9, i32 2
  store i8 %520, ptr %541, align 1
  %542 = add i8 %523, -47
  %543 = icmp ult i8 %542, -15
  br i1 %543, label %546, label %544

544:                                              ; preds = %539
  %545 = call i32 @ps2_command(ptr noundef %522, ptr noundef nonnull %9, i32 noundef 12514) #8
  br label %546

546:                                              ; preds = %544, %539
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #8
  br label %547

547:                                              ; preds = %546, %533, %530
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #8
  br label %548

548:                                              ; preds = %547, %526
  br i1 %1, label %549, label %554

549:                                              ; preds = %548, %514
  %550 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 14
  %551 = load i8, ptr %550, align 1, !range !8
  %552 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_skipback, i32 0, i32 4), align 1
  %553 = icmp eq i8 %551, %552
  br i1 %553, label %588, label %554

554:                                              ; preds = %549, %548
  %555 = load ptr, ptr %0, align 4
  %556 = load i8, ptr %555, align 1
  %557 = icmp eq i8 %556, 1
  br i1 %557, label %558, label %587

558:                                              ; preds = %554
  %559 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_skipback, i32 0, i32 2), align 1
  %560 = icmp eq i8 %559, 0
  %561 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %562 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_skipback, i32 0, i32 1), align 4
  %563 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 14
  %564 = load i8, ptr %563, align 1, !range !8
  br i1 %560, label %565, label %569

565:                                              ; preds = %558
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %8) #8
  store i8 -127, ptr %8, align 1
  %566 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 %562, ptr %566, align 1
  %567 = getelementptr inbounds i8, ptr %8, i32 2
  store i8 %564, ptr %567, align 1
  %568 = call i32 @ps2_command(ptr noundef %561, ptr noundef nonnull %8, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #8
  br label %587

569:                                              ; preds = %558
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  store i8 %562, ptr %7, align 1
  %570 = call i32 @ps2_command(ptr noundef %561, ptr noundef nonnull %7, i32 noundef 4578) #8
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %572, label %586

572:                                              ; preds = %569
  %573 = load i8, ptr %7, align 1
  %574 = and i8 %573, %559
  %575 = icmp ne i8 %574, %559
  %576 = icmp ne i8 %564, 0
  %577 = xor i1 %576, %575
  br i1 %577, label %586, label %578

578:                                              ; preds = %572
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #8
  store i8 71, ptr %6, align 1
  %579 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 %562, ptr %579, align 1
  %580 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 %559, ptr %580, align 1
  %581 = add i8 %562, -47
  %582 = icmp ult i8 %581, -15
  br i1 %582, label %585, label %583

583:                                              ; preds = %578
  %584 = call i32 @ps2_command(ptr noundef %561, ptr noundef nonnull %6, i32 noundef 12514) #8
  br label %585

585:                                              ; preds = %583, %578
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #8
  br label %586

586:                                              ; preds = %585, %572, %569
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  br label %587

587:                                              ; preds = %586, %565, %554
  br i1 %1, label %588, label %593

588:                                              ; preds = %587, %549
  %589 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 15
  %590 = load i8, ptr %589, align 1, !range !8
  %591 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_ext_dev, i32 0, i32 4), align 1
  %592 = icmp eq i8 %590, %591
  br i1 %592, label %626, label %593

593:                                              ; preds = %588, %587
  %594 = load ptr, ptr %0, align 4
  %595 = load i8, ptr %594, align 1
  %596 = icmp eq i8 %595, 1
  br i1 %596, label %597, label %626

597:                                              ; preds = %593
  %598 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_ext_dev, i32 0, i32 2), align 1
  %599 = icmp eq i8 %598, 0
  %600 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %601 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_ext_dev, i32 0, i32 1), align 4
  %602 = getelementptr inbounds %struct.trackpoint_data, ptr %51, i32 0, i32 15
  %603 = load i8, ptr %602, align 1, !range !8
  br i1 %599, label %604, label %608

604:                                              ; preds = %597
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #8
  store i8 -127, ptr %5, align 1
  %605 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %601, ptr %605, align 1
  %606 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 %603, ptr %606, align 1
  %607 = call i32 @ps2_command(ptr noundef %600, ptr noundef nonnull %5, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #8
  br label %626

608:                                              ; preds = %597
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 %601, ptr %4, align 1
  %609 = call i32 @ps2_command(ptr noundef %600, ptr noundef nonnull %4, i32 noundef 4578) #8
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %611, label %625

611:                                              ; preds = %608
  %612 = load i8, ptr %4, align 1
  %613 = and i8 %612, %598
  %614 = icmp ne i8 %613, %598
  %615 = icmp ne i8 %603, 0
  %616 = xor i1 %615, %614
  br i1 %616, label %625, label %617

617:                                              ; preds = %611
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #8
  store i8 71, ptr %3, align 1
  %618 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %601, ptr %618, align 1
  %619 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %598, ptr %619, align 1
  %620 = add i8 %601, -47
  %621 = icmp ult i8 %620, -15
  br i1 %621, label %624, label %622

622:                                              ; preds = %617
  %623 = call i32 @ps2_command(ptr noundef %600, ptr noundef nonnull %3, i32 noundef 12514) #8
  br label %624

624:                                              ; preds = %622, %617
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #8
  br label %625

625:                                              ; preds = %624, %611, %608
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  br label %626

626:                                              ; preds = %625, %604, %593, %588
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_attr_show_helper(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_attr_set_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trackpoint_show_int_attr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = load ptr, ptr %0, align 4
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr i8, ptr %4, i32 %5
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %1, i32 0, i32 3
  %9 = load i8, ptr %8, align 2, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = icmp eq i8 %7, 0
  %12 = zext i1 %11 to i8
  %13 = select i1 %10, i8 %7, i8 %12
  %14 = zext i8 %13 to i32
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %14)
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trackpoint_set_int_attr(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca [3 x i8], align 1
  %6 = alloca i8, align 1
  %7 = load ptr, ptr %0, align 4
  %8 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 0, ptr %6, align 1, !annotation !9
  %9 = call i32 @kstrtou8(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %6) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %4
  %12 = getelementptr i8, ptr %7, i32 %8
  %13 = load i8, ptr %6, align 1
  store i8 %13, ptr %12, align 1
  %14 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %15 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %1, i32 0, i32 1
  %16 = load i8, ptr %15, align 4
  %17 = load i8, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #8
  store i8 -127, ptr %5, align 1
  %18 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %16, ptr %18, align 1
  %19 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 %17, ptr %19, align 1
  %20 = call i32 @ps2_command(ptr noundef %14, ptr noundef nonnull %5, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #8
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 %3, i32 %20
  br label %23

23:                                               ; preds = %11, %4
  %24 = phi i32 [ %22, %11 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  ret i32 %24
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trackpoint_set_bit_attr(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca [3 x i8], align 1
  %6 = alloca i8, align 1
  %7 = load ptr, ptr %0, align 4
  %8 = load i32, ptr %1, align 4
  %9 = getelementptr i8, ptr %7, i32 %8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 0, ptr %6, align 1, !annotation !9
  %10 = call i32 @kstrtobool(ptr noundef %2, ptr noundef nonnull %6) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %1, i32 0, i32 3
  %14 = load i8, ptr %13, align 2, !range !8
  %15 = icmp eq i8 %14, 0
  %16 = load i8, ptr %6, align 1, !range !8
  br i1 %15, label %19, label %17

17:                                               ; preds = %12
  %18 = xor i8 %16, 1
  store i8 %18, ptr %6, align 1
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i8 [ %18, %17 ], [ %16, %12 ]
  %21 = load i8, ptr %9, align 1, !range !8
  %22 = icmp eq i8 %21, %20
  br i1 %22, label %37, label %23

23:                                               ; preds = %19
  store i8 %20, ptr %9, align 1
  %24 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %1, i32 0, i32 1
  %25 = load i8, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trackpoint_attr_data, ptr %1, i32 0, i32 2
  %27 = load i8, ptr %26, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #8
  store i8 71, ptr %5, align 1
  %28 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %25, ptr %28, align 1
  %29 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 %27, ptr %29, align 1
  %30 = add i8 %25, -47
  %31 = icmp ult i8 %30, -15
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #8
  br label %38

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %35 = call i32 @ps2_command(ptr noundef %34, ptr noundef nonnull %5, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %19
  br label %38

38:                                               ; preds = %37, %33, %32, %4
  %39 = phi i32 [ %10, %4 ], [ %3, %37 ], [ %35, %33 ], [ -22, %32 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_groups(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @trackpoint_is_attr_visible(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 1
  %9 = icmp eq ptr %1, @psmouse_attr_sensitivity
  %10 = or i1 %9, %8
  %11 = icmp eq ptr %1, @psmouse_attr_press_to_select
  %12 = or i1 %11, %10
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %15 = load i16, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %3
  %17 = phi i16 [ %15, %13 ], [ 0, %3 ]
  ret i16 %17
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
