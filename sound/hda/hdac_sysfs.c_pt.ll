; ModuleID = '/llk/IR/sound/hda/hdac_sysfs.c_pt.bc'
source_filename = "../sound/hda/hdac_sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.widget_attribute = type { %struct.attribute, ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.hdac_device = type { %struct.device, i32, ptr, i32, %struct.list_head, i16, i16, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i32, i16, i16, %struct.atomic_t, %struct.mutex, ptr, ptr, %struct.mutex, %struct.snd_array, i8 }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.snd_array = type { i32, i32, i32, i32, ptr }
%struct.hdac_widget_tree = type { ptr, ptr, ptr }

@hdac_dev_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @hdac_dev_attrs, ptr null }, align 4
@hdac_dev_attr_groups = dso_local local_unnamed_addr global [2 x ptr] [ptr @hdac_dev_attr_group, ptr null], align 4
@widget_node_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @widget_node_attrs, ptr null }, align 4
@hdac_dev_attrs = internal global [10 x ptr] [ptr @dev_attr_type, ptr @dev_attr_vendor_id, ptr @dev_attr_subsystem_id, ptr @dev_attr_revision_id, ptr @dev_attr_afg, ptr @dev_attr_mfg, ptr @dev_attr_vendor_name, ptr @dev_attr_chip_name, ptr @dev_attr_modalias, ptr null], align 4
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str, i16 292 }, ptr @type_show, ptr null }, align 4
@dev_attr_vendor_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292 }, ptr @vendor_id_show, ptr null }, align 4
@dev_attr_subsystem_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292 }, ptr @subsystem_id_show, ptr null }, align 4
@dev_attr_revision_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @revision_id_show, ptr null }, align 4
@dev_attr_afg = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @afg_show, ptr null }, align 4
@dev_attr_mfg = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @mfg_show, ptr null }, align 4
@dev_attr_vendor_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @vendor_name_show, ptr null }, align 4
@dev_attr_chip_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292 }, ptr @chip_name_show, ptr null }, align 4
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @modalias_show, ptr null }, align 4
@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"vendor_id\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"subsystem_id\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"revision_id\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"afg\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"mfg\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"vendor_name\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"chip_name\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"widgets\00", align 1
@widget_afg_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @widget_afg_attrs, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@widget_afg_attrs = internal global [7 x ptr] [ptr @wid_attr_pcm_caps, ptr @wid_attr_pcm_formats, ptr @wid_attr_amp_in_caps, ptr @wid_attr_amp_out_caps, ptr @wid_attr_power_caps, ptr @wid_attr_gpio_caps, ptr null], align 4
@wid_attr_pcm_caps = internal global %struct.widget_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @pcm_caps_show, ptr null }, align 4
@wid_attr_pcm_formats = internal global %struct.widget_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @pcm_formats_show, ptr null }, align 4
@wid_attr_amp_in_caps = internal global %struct.widget_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @amp_in_caps_show, ptr null }, align 4
@wid_attr_amp_out_caps = internal global %struct.widget_attribute { %struct.attribute { ptr @.str.17, i16 292 }, ptr @amp_out_caps_show, ptr null }, align 4
@wid_attr_power_caps = internal global %struct.widget_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @power_caps_show, ptr null }, align 4
@wid_attr_gpio_caps = internal global %struct.widget_attribute { %struct.attribute { ptr @.str.19, i16 292 }, ptr @gpio_caps_show, ptr null }, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"pcm_caps\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"0x%08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"pcm_formats\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"amp_in_caps\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"amp_out_caps\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"power_caps\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"gpio_caps\00", align 1
@widget_node_attrs = internal global [10 x ptr] [ptr @wid_attr_caps, ptr @wid_attr_pin_caps, ptr @wid_attr_pin_cfg, ptr @wid_attr_pcm_caps, ptr @wid_attr_pcm_formats, ptr @wid_attr_amp_in_caps, ptr @wid_attr_amp_out_caps, ptr @wid_attr_power_caps, ptr @wid_attr_connections, ptr null], align 4
@wid_attr_caps = internal global %struct.widget_attribute { %struct.attribute { ptr @.str.20, i16 292 }, ptr @caps_show, ptr null }, align 4
@wid_attr_pin_caps = internal global %struct.widget_attribute { %struct.attribute { ptr @.str.21, i16 292 }, ptr @pin_caps_show, ptr null }, align 4
@wid_attr_pin_cfg = internal global %struct.widget_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @pin_cfg_show, ptr null }, align 4
@wid_attr_connections = internal global %struct.widget_attribute { %struct.attribute { ptr @.str.23, i16 292 }, ptr @connections_show, ptr null }, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"caps\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"pin_caps\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"pin_cfg\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"connections\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"%s0x%02x\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c" \00", align 1
@widget_ktype = internal global %struct.kobj_type { ptr @widget_release, ptr @widget_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.27 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@widget_sysfs_ops = internal constant %struct.sysfs_ops { ptr @widget_attr_show, ptr @widget_attr_store }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hda_widget_sysfs_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %84

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 12) #9
  store ptr %7, ptr %2, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %82, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.12, ptr noundef %0) #10
  store ptr %10, ptr %7, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %82, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 17
  %14 = load i32, ptr %13, align 8
  %15 = add i32 %14, 1
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 4) #10
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %18, label %20, !prof !8

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.hdac_widget_tree, ptr %7, i32 0, i32 2
  store ptr null, ptr %19, align 8
  br label %82

20:                                               ; preds = %12
  %21 = extractvalue { i32, i1 } %16, 0
  %22 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #11
  %23 = getelementptr inbounds %struct.hdac_widget_tree, ptr %7, i32 0, i32 2
  store ptr %22, ptr %23, align 8
  %24 = icmp eq ptr %22, null
  br i1 %24, label %82, label %25

25:                                               ; preds = %20
  %26 = load i32, ptr %13, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %60, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 18
  %30 = load i16, ptr %29, align 4
  %31 = load ptr, ptr %7, align 8
  %32 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %33 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 36) #9
  %34 = icmp eq ptr %33, null
  br i1 %34, label %82, label %35

35:                                               ; preds = %52, %28
  %36 = phi ptr [ %58, %52 ], [ %33, %28 ]
  %37 = phi ptr [ %56, %52 ], [ %22, %28 ]
  %38 = phi ptr [ %55, %52 ], [ %31, %28 ]
  %39 = phi i32 [ %49, %52 ], [ 0, %28 ]
  %40 = phi i16 [ %53, %52 ], [ %30, %28 ]
  tail call void @kobject_init(ptr noundef nonnull %36, ptr noundef nonnull @widget_ktype) #10
  %41 = zext i16 %40 to i32
  %42 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef nonnull %36, ptr noundef %38, ptr noundef nonnull @.str.27, i32 noundef %41) #10
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %82, label %44

44:                                               ; preds = %35
  %45 = tail call i32 @sysfs_create_group(ptr noundef nonnull %36, ptr noundef nonnull @widget_node_group) #10
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  tail call void @kobject_put(ptr noundef nonnull %36) #10
  br label %82

48:                                               ; preds = %44
  store ptr %36, ptr %37, align 4
  %49 = add nuw i32 %39, 1
  %50 = load i32, ptr %13, align 8
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = add i16 %40, 1
  %54 = load ptr, ptr %23, align 8
  %55 = load ptr, ptr %7, align 8
  %56 = getelementptr ptr, ptr %54, i32 %49
  %57 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %58 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3520, i32 noundef 36) #9
  %59 = icmp eq ptr %58, null
  br i1 %59, label %82, label %35

60:                                               ; preds = %48, %25
  %61 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 5
  %62 = load i16, ptr %61, align 4
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %79, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %7, align 8
  %66 = getelementptr inbounds %struct.hdac_widget_tree, ptr %7, i32 0, i32 1
  %67 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %68 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %67, i32 noundef 3520, i32 noundef 36) #9
  %69 = icmp eq ptr %68, null
  br i1 %69, label %82, label %70

70:                                               ; preds = %64
  tail call void @kobject_init(ptr noundef nonnull %68, ptr noundef nonnull @widget_ktype) #10
  %71 = zext i16 %62 to i32
  %72 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef nonnull %68, ptr noundef %65, ptr noundef nonnull @.str.27, i32 noundef %71) #10
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = tail call i32 @sysfs_create_group(ptr noundef nonnull %68, ptr noundef nonnull @widget_afg_group) #10
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  tail call void @kobject_put(ptr noundef nonnull %68) #10
  br label %82

78:                                               ; preds = %74
  store ptr %68, ptr %66, align 4
  br label %79

79:                                               ; preds = %78, %60
  %80 = load ptr, ptr %7, align 8
  %81 = tail call i32 @kobject_uevent(ptr noundef %80, i32 noundef 2) #10
  br label %84

82:                                               ; preds = %77, %70, %64, %52, %47, %35, %28, %20, %18, %9, %5
  %83 = phi i32 [ %75, %77 ], [ -12, %64 ], [ %72, %70 ], [ %45, %47 ], [ -12, %18 ], [ -12, %20 ], [ -12, %9 ], [ -12, %5 ], [ -12, %28 ], [ %42, %35 ], [ -12, %52 ]
  tail call fastcc void @widget_tree_free(ptr noundef %0)
  br label %84

84:                                               ; preds = %82, %79, %1
  %85 = phi i32 [ %83, %82 ], [ 0, %1 ], [ 0, %79 ]
  ret i32 %85
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @widget_tree_free(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hdac_widget_tree, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @sysfs_remove_group(ptr noundef nonnull %7, ptr noundef nonnull @widget_afg_group) #10
  tail call void @kobject_put(ptr noundef nonnull %7) #10
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.hdac_widget_tree, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %17, %14
  %18 = phi ptr [ %21, %17 ], [ %15, %14 ]
  %19 = phi ptr [ %20, %17 ], [ %12, %14 ]
  tail call void @sysfs_remove_group(ptr noundef nonnull %18, ptr noundef nonnull @widget_node_group) #10
  tail call void @kobject_put(ptr noundef nonnull %18) #10
  %20 = getelementptr ptr, ptr %19, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %17

23:                                               ; preds = %17
  %24 = load ptr, ptr %11, align 4
  br label %25

25:                                               ; preds = %23, %14
  %26 = phi ptr [ %24, %23 ], [ %12, %14 ]
  tail call void @kfree(ptr noundef %26) #10
  br label %27

27:                                               ; preds = %25, %10
  %28 = load ptr, ptr %3, align 4
  tail call void @kobject_put(ptr noundef %28) #10
  tail call void @kfree(ptr noundef nonnull %3) #10
  store ptr null, ptr %2, align 8
  br label %29

29:                                               ; preds = %27, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hda_widget_sysfs_exit(ptr nocapture noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @widget_tree_free(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hda_widget_sysfs_reinit(ptr nocapture noundef %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = trunc i32 %2 to i16
  %5 = add i16 %4, %1
  %6 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 22
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %101, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @kmemdup(ptr noundef nonnull %7, i32 noundef 12, i32 noundef 3264) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %101, label %12

12:                                               ; preds = %9
  %13 = add i32 %2, 1
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 4) #10
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %16, label %18, !prof !8

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.hdac_widget_tree, ptr %10, i32 0, i32 2
  store ptr null, ptr %17, align 4
  br label %23

18:                                               ; preds = %12
  %19 = extractvalue { i32, i1 } %14, 0
  %20 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #11
  %21 = getelementptr inbounds %struct.hdac_widget_tree, ptr %10, i32 0, i32 2
  store ptr %20, ptr %21, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %16
  tail call void @kfree(ptr noundef nonnull %10) #10
  br label %101

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 18
  %26 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 17
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i16, ptr %25, align 4
  br label %35

31:                                               ; preds = %51, %24
  %32 = icmp sgt i32 %2, 0
  br i1 %32, label %33, label %94

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 19
  br label %56

35:                                               ; preds = %51, %29
  %36 = phi i32 [ %52, %51 ], [ %27, %29 ]
  %37 = phi i32 [ %53, %51 ], [ 0, %29 ]
  %38 = phi i16 [ %54, %51 ], [ %30, %29 ]
  %39 = icmp uge i16 %38, %1
  %40 = icmp ult i16 %38, %5
  %41 = and i1 %39, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr %6, align 8
  %44 = getelementptr inbounds %struct.hdac_widget_tree, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr ptr, ptr %45, i32 %37
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %42
  tail call void @sysfs_remove_group(ptr noundef nonnull %47, ptr noundef nonnull @widget_node_group) #10
  tail call void @kobject_put(ptr noundef nonnull %47) #10
  %50 = load i32, ptr %26, align 8
  br label %51

51:                                               ; preds = %49, %42, %35
  %52 = phi i32 [ %50, %49 ], [ %36, %42 ], [ %36, %35 ]
  %53 = add nuw i32 %37, 1
  %54 = add i16 %38, 1
  %55 = icmp ult i32 %53, %52
  br i1 %55, label %35, label %31

56:                                               ; preds = %90, %33
  %57 = phi i32 [ 0, %33 ], [ %91, %90 ]
  %58 = phi i16 [ %1, %33 ], [ %92, %90 ]
  %59 = zext i16 %58 to i32
  %60 = load i16, ptr %25, align 4
  %61 = zext i16 %60 to i32
  %62 = icmp ult i16 %58, %60
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = load i16, ptr %34, align 2
  %65 = icmp ult i16 %58, %64
  br i1 %65, label %81, label %66

66:                                               ; preds = %63, %56
  %67 = load ptr, ptr %10, align 4
  %68 = load ptr, ptr %21, align 4
  %69 = getelementptr ptr, ptr %68, i32 %57
  %70 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %71 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3520, i32 noundef 36) #9
  %72 = icmp eq ptr %71, null
  br i1 %72, label %90, label %73

73:                                               ; preds = %66
  tail call void @kobject_init(ptr noundef nonnull %71, ptr noundef nonnull @widget_ktype) #10
  %74 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef nonnull %71, ptr noundef %67, ptr noundef nonnull @.str.27, i32 noundef %59) #10
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %73
  %77 = tail call i32 @sysfs_create_group(ptr noundef nonnull %71, ptr noundef nonnull @widget_node_group) #10
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  tail call void @kobject_put(ptr noundef nonnull %71) #10
  br label %90

80:                                               ; preds = %76
  store ptr %71, ptr %69, align 4
  br label %90

81:                                               ; preds = %63
  %82 = load ptr, ptr %6, align 8
  %83 = getelementptr inbounds %struct.hdac_widget_tree, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = sub nsw i32 %59, %61
  %86 = getelementptr ptr, ptr %84, i32 %85
  %87 = load ptr, ptr %86, align 4
  %88 = load ptr, ptr %21, align 4
  %89 = getelementptr ptr, ptr %88, i32 %57
  store ptr %87, ptr %89, align 4
  br label %90

90:                                               ; preds = %81, %80, %79, %73, %66
  %91 = add nuw nsw i32 %57, 1
  %92 = add i16 %58, 1
  %93 = icmp eq i32 %91, %2
  br i1 %93, label %94, label %56

94:                                               ; preds = %90, %31
  %95 = load ptr, ptr %6, align 8
  %96 = getelementptr inbounds %struct.hdac_widget_tree, ptr %95, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  tail call void @kfree(ptr noundef %97) #10
  %98 = load ptr, ptr %6, align 8
  tail call void @kfree(ptr noundef %98) #10
  store ptr %10, ptr %6, align 8
  %99 = load ptr, ptr %10, align 4
  %100 = tail call i32 @kobject_uevent(ptr noundef %99, i32 noundef 2) #10
  br label %101

101:                                              ; preds = %94, %23, %9, %3
  %102 = phi i32 [ 0, %94 ], [ -12, %23 ], [ 0, %3 ], [ -12, %9 ]
  ret i32 %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vendor_id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @subsystem_id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @revision_id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 9
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @afg_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 5
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mfg_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 6
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vendor_name_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @.str.9, ptr %5
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef nonnull %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @chip_name_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @.str.9, ptr %5
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef nonnull %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @modalias_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call i32 @snd_hdac_codec_modalias(ptr noundef %0, ptr noundef %2, i32 noundef 256) #10
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_modalias(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcm_caps_show(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 5
  %8 = load i16, ptr %7, align 4
  %9 = icmp eq i16 %8, %1
  br i1 %9, label %23, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 6
  %12 = load i16, ptr %11, align 2
  %13 = icmp eq i16 %12, %1
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !9
  %15 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 9, ptr noundef nonnull %6) #10
  %16 = load i32, ptr %6, align 4
  %17 = icmp sgt i32 %15, -1
  %18 = select i1 %17, i32 %16, i32 -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %19 = icmp ne i32 %18, 0
  %20 = and i32 %18, 14680064
  %21 = icmp eq i32 %20, 0
  %22 = and i1 %19, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %14, %10, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %24 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 10, ptr noundef nonnull %5) #10
  %25 = load i32, ptr %5, align 4
  %26 = icmp sgt i32 %24, -1
  %27 = select i1 %26, i32 %25, i32 -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %28 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %27)
  br label %29

29:                                               ; preds = %23, %14
  %30 = phi i32 [ %28, %23 ], [ 0, %14 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_hdac_read_parm(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcm_formats_show(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 5
  %8 = load i16, ptr %7, align 4
  %9 = icmp eq i16 %8, %1
  br i1 %9, label %23, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 6
  %12 = load i16, ptr %11, align 2
  %13 = icmp eq i16 %12, %1
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !9
  %15 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 9, ptr noundef nonnull %6) #10
  %16 = load i32, ptr %6, align 4
  %17 = icmp sgt i32 %15, -1
  %18 = select i1 %17, i32 %16, i32 -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %19 = icmp ne i32 %18, 0
  %20 = and i32 %18, 14680064
  %21 = icmp eq i32 %20, 0
  %22 = and i1 %19, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %14, %10, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %24 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 11, ptr noundef nonnull %5) #10
  %25 = load i32, ptr %5, align 4
  %26 = icmp sgt i32 %24, -1
  %27 = select i1 %26, i32 %25, i32 -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %28 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %27)
  br label %29

29:                                               ; preds = %23, %14
  %30 = phi i32 [ %28, %23 ], [ 0, %14 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @amp_in_caps_show(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 5
  %8 = load i16, ptr %7, align 4
  %9 = icmp eq i16 %8, %1
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !9
  %11 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 9, ptr noundef nonnull %6) #10
  %12 = load i32, ptr %6, align 4
  %13 = icmp sgt i32 %11, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %14 = and i32 %12, 2
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %23, label %17

17:                                               ; preds = %10, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %18 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 13, ptr noundef nonnull %5) #10
  %19 = load i32, ptr %5, align 4
  %20 = icmp sgt i32 %18, -1
  %21 = select i1 %20, i32 %19, i32 -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %22 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %21)
  br label %23

23:                                               ; preds = %17, %10
  %24 = phi i32 [ %22, %17 ], [ 0, %10 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @amp_out_caps_show(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 5
  %8 = load i16, ptr %7, align 4
  %9 = icmp eq i16 %8, %1
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !9
  %11 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 9, ptr noundef nonnull %6) #10
  %12 = load i32, ptr %6, align 4
  %13 = icmp sgt i32 %11, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %14 = and i32 %12, 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %23, label %17

17:                                               ; preds = %10, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %18 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 18, ptr noundef nonnull %5) #10
  %19 = load i32, ptr %5, align 4
  %20 = icmp sgt i32 %18, -1
  %21 = select i1 %20, i32 %19, i32 -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %22 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %21)
  br label %23

23:                                               ; preds = %17, %10
  %24 = phi i32 [ %22, %17 ], [ 0, %10 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @power_caps_show(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 5
  %8 = load i16, ptr %7, align 4
  %9 = icmp eq i16 %8, %1
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !9
  %11 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 9, ptr noundef nonnull %6) #10
  %12 = load i32, ptr %6, align 4
  %13 = icmp sgt i32 %11, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %14 = and i32 %12, 1024
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %23, label %17

17:                                               ; preds = %10, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %18 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 15, ptr noundef nonnull %5) #10
  %19 = load i32, ptr %5, align 4
  %20 = icmp sgt i32 %18, -1
  %21 = select i1 %20, i32 %19, i32 -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %22 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %21)
  br label %23

23:                                               ; preds = %17, %10
  %24 = phi i32 [ %22, %17 ], [ 0, %10 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_caps_show(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 17, ptr noundef nonnull %5) #10
  %7 = load i32, ptr %5, align 4
  %8 = icmp sgt i32 %6, -1
  %9 = select i1 %8, i32 %7, i32 -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @caps_show(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 9, ptr noundef nonnull %5) #10
  %7 = load i32, ptr %5, align 4
  %8 = icmp sgt i32 %6, -1
  %9 = select i1 %8, i32 %7, i32 -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pin_caps_show(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 9, ptr noundef nonnull %6) #10
  %8 = load i32, ptr %6, align 4
  %9 = icmp sgt i32 %7, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %10 = and i32 %8, 15728640
  %11 = icmp eq i32 %10, 4194304
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %14 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 12, ptr noundef nonnull %5) #10
  %15 = load i32, ptr %5, align 4
  %16 = icmp sgt i32 %14, -1
  %17 = select i1 %16, i32 %15, i32 -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %18 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %17)
  br label %19

19:                                               ; preds = %13, %4
  %20 = phi i32 [ %18, %13 ], [ 0, %4 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pin_cfg_show(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %7 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 9, ptr noundef nonnull %5) #10
  %8 = load i32, ptr %5, align 4
  %9 = icmp sgt i32 %7, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %10 = and i32 %8, 15728640
  %11 = icmp eq i32 %10, 4194304
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = call i32 @snd_hdac_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 3868, i32 noundef 0, ptr noundef nonnull %6) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4
  %18 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %17)
  br label %19

19:                                               ; preds = %16, %13, %4
  %20 = phi i32 [ %18, %16 ], [ 0, %4 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_read(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @connections_show(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca [32 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !9
  %6 = call i32 @snd_hdac_get_connections(ptr noundef %0, i16 noundef zeroext %1, ptr noundef nonnull %5, i32 noundef 32) #10
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %24, label %8

8:                                                ; preds = %8, %4
  %9 = phi i32 [ %18, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %19, %8 ], [ 0, %4 ]
  %11 = getelementptr i8, ptr %3, i32 %9
  %12 = icmp eq i32 %10, 0
  %13 = select i1 %12, ptr @.str.9, ptr @.str.25
  %14 = getelementptr [32 x i16], ptr %5, i32 0, i32 %10
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %11, ptr noundef nonnull @.str.24, ptr noundef nonnull %13, i32 noundef %16)
  %18 = add i32 %17, %9
  %19 = add nuw nsw i32 %10, 1
  %20 = icmp eq i32 %19, %6
  br i1 %20, label %21, label %8

21:                                               ; preds = %8
  %22 = getelementptr i8, ptr %3, i32 %18
  store i16 10, ptr %22, align 1
  %23 = add i32 %18, 1
  br label %24

24:                                               ; preds = %21, %4
  %25 = phi i32 [ %23, %21 ], [ %6, %4 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  ret i32 %25
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_get_connections(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @widget_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @widget_attr_show(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.widget_attribute, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.kobject, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !9
  %13 = load ptr, ptr %0, align 4
  %14 = call i32 @kstrtoint(ptr noundef %13, i32 noundef 16, ptr noundef nonnull %4) #10
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %24

17:                                               ; preds = %8
  %18 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %5, align 4
  %22 = trunc i32 %18 to i16
  %23 = call i32 %21(ptr noundef %12, i16 noundef zeroext %22, ptr noundef %1, ptr noundef %2) #10
  br label %24

24:                                               ; preds = %20, %17, %16, %3
  %25 = phi i32 [ %23, %20 ], [ -5, %3 ], [ %18, %17 ], [ %14, %16 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @widget_attr_store(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.widget_attribute, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.kobject, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %14 = load ptr, ptr %0, align 4
  %15 = call i32 @kstrtoint(ptr noundef %14, i32 noundef 16, ptr noundef nonnull %5) #10
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %25

18:                                               ; preds = %9
  %19 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %6, align 4
  %23 = trunc i32 %19 to i16
  %24 = call i32 %22(ptr noundef %13, i16 noundef zeroext %23, ptr noundef %1, ptr noundef %2, i32 noundef %3) #10
  br label %25

25:                                               ; preds = %21, %18, %17, %4
  %26 = phi i32 [ %24, %21 ], [ -5, %4 ], [ %19, %18 ], [ %15, %17 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }

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
