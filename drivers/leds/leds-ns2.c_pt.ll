; ModuleID = '/llk/IR/drivers/leds/leds-ns2.c_pt.bc'
source_filename = "../drivers/leds/leds-ns2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ns2_led = type { %struct.led_classdev, ptr, ptr, i8, i8, %struct.rwlock_t, i32, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.ns2_led_modval = type { i32, i32, i32 }

@__initcall__kmod_leds_ns2__166_279_ns2_led_driver_init6 = internal global ptr @ns2_led_driver_init, section ".initcall6.init", align 4
@ns2_led_driver = internal global %struct.platform_driver { ptr @ns2_led_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_ns2_leds_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ns2_led_driver_exit = internal global ptr @ns2_led_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author167 = internal constant [49 x i8] c"leds_ns2.author=Simon Guinot <sguinot@lacie.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description168 = internal constant [49 x i8] c"leds_ns2.description=Network Space v2 LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file169 = internal constant [36 x i8] c"leds_ns2.file=drivers/leds/leds-ns2\00", section ".modinfo", align 1
@__UNIQUE_ID_license170 = internal constant [21 x i8] c"leds_ns2.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias171 = internal constant [33 x i8] c"leds_ns2.alias=platform:leds-ns2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"leds-ns2\00", align 1
@of_ns2_leds_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lacie,ns2-leds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"slow\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"modes-map\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Missing or malformed modes-map for %pfw\0A\00", align 1
@ns2_led_groups = internal global [2 x ptr] [ptr @ns2_led_group, ptr null], align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Failed to register LED for node %pfw\0A\00", align 1
@ns2_led_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ns2_led_attrs, ptr null }, align 4
@ns2_led_attrs = internal global [2 x ptr] [ptr @dev_attr_sata, ptr null], align 4
@dev_attr_sata = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 420 }, ptr @ns2_led_sata_show, ptr @ns2_led_sata_store }, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias171, ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_description168, ptr @__UNIQUE_ID_file169, ptr @__UNIQUE_ID_license170, ptr @__exitcall_ns2_led_driver_exit, ptr @__initcall__kmod_leds_ns2__166_279_ns2_led_driver_init6, ptr @ns2_led_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ns2_led_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ns2_led_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ns2_led_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ns2_led_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ns2_led_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.led_init_data, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call i32 @device_get_child_node_count(ptr noundef %3) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %114, label %6

6:                                                ; preds = %1
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 216) #9
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  %10 = select i1 %8, i32 -1, i32 %9
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %10, i32 noundef 3520) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %114, label %13

13:                                               ; preds = %6
  %14 = tail call ptr @device_get_next_child_node(ptr noundef %3, ptr noundef null) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %114, label %16

16:                                               ; preds = %100, %13
  %17 = phi ptr [ %101, %100 ], [ %11, %13 ]
  %18 = phi ptr [ %102, %100 ], [ %14, %13 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #9
  %19 = call ptr @fwnode_get_name(ptr noundef nonnull %18) #9
  %20 = call ptr @devm_fwnode_gpiod_get_index(ptr noundef %3, ptr noundef nonnull %18, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 0, ptr noundef %19) #9
  %21 = getelementptr inbounds %struct.ns2_led, ptr %17, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %109, label %23

23:                                               ; preds = %16
  %24 = call ptr @fwnode_get_name(ptr noundef nonnull %18) #9
  %25 = call ptr @devm_fwnode_gpiod_get_index(ptr noundef %3, ptr noundef nonnull %18, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 0, ptr noundef %24) #9
  %26 = getelementptr inbounds %struct.ns2_led, ptr %17, i32 0, i32 2
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %109, label %28

28:                                               ; preds = %23
  %29 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %18, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0) #9
  %30 = icmp sgt i32 %29, -1
  %31 = srem i32 %29, 3
  %32 = icmp eq i32 %31, 0
  %33 = and i1 %30, %32
  br i1 %33, label %34, label %104

34:                                               ; preds = %28
  %35 = udiv i32 %29, 3
  %36 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %35, i32 12) #9
  %37 = extractvalue { i32, i1 } %36, 1
  br i1 %37, label %107, label %38, !prof !8

38:                                               ; preds = %34
  %39 = extractvalue { i32, i1 } %36, 0
  %40 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %39, i32 noundef 3520) #9
  %41 = icmp eq ptr %40, null
  br i1 %41, label %107, label %42

42:                                               ; preds = %38
  %43 = mul nuw nsw i32 %35, 3
  %44 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %18, ptr noundef nonnull @.str.3, ptr noundef nonnull %40, i32 noundef %43) #9
  %45 = getelementptr inbounds %struct.ns2_led, ptr %17, i32 0, i32 5
  store i32 0, ptr %45, align 4
  %46 = getelementptr inbounds %struct.led_classdev, ptr %17, i32 0, i32 8
  store ptr null, ptr %46, align 4
  %47 = getelementptr inbounds %struct.led_classdev, ptr %17, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = or i32 %48, 65536
  store i32 %49, ptr %47, align 4
  %50 = getelementptr inbounds %struct.led_classdev, ptr %17, i32 0, i32 12
  store ptr @ns2_led_groups, ptr %50, align 4
  %51 = load ptr, ptr %21, align 4
  %52 = call i32 @gpiod_cansleep(ptr noundef %51) #9
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %42
  %55 = load ptr, ptr %26, align 4
  %56 = call i32 @gpiod_cansleep(ptr noundef %55) #9
  %57 = icmp ne i32 %56, 0
  %58 = getelementptr inbounds %struct.ns2_led, ptr %17, i32 0, i32 3
  %59 = zext i1 %57 to i8
  store i8 %59, ptr %58, align 4
  br i1 %57, label %62, label %64

60:                                               ; preds = %42
  %61 = getelementptr inbounds %struct.ns2_led, ptr %17, i32 0, i32 3
  store i8 1, ptr %61, align 4
  br label %62

62:                                               ; preds = %60, %54
  %63 = getelementptr inbounds %struct.led_classdev, ptr %17, i32 0, i32 6
  store ptr @ns2_led_set_blocking, ptr %63, align 4
  br label %66

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.led_classdev, ptr %17, i32 0, i32 5
  store ptr @ns2_led_set, ptr %65, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = getelementptr inbounds %struct.ns2_led, ptr %17, i32 0, i32 6
  store i32 %35, ptr %67, align 4
  %68 = getelementptr inbounds %struct.ns2_led, ptr %17, i32 0, i32 7
  store ptr %40, ptr %68, align 4
  %69 = load ptr, ptr %21, align 4
  %70 = call i32 @gpiod_get_value_cansleep(ptr noundef %69) #9
  %71 = load ptr, ptr %26, align 4
  %72 = call i32 @gpiod_get_value_cansleep(ptr noundef %71) #9
  %73 = load i32, ptr %67, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %107

75:                                               ; preds = %66
  %76 = load ptr, ptr %68, align 4
  br label %77

77:                                               ; preds = %86, %75
  %78 = phi i32 [ 0, %75 ], [ %87, %86 ]
  %79 = getelementptr %struct.ns2_led_modval, ptr %76, i32 %78, i32 1
  %80 = load i32, ptr %79, align 1
  %81 = icmp eq i32 %70, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = getelementptr %struct.ns2_led_modval, ptr %76, i32 %78, i32 2
  %84 = load i32, ptr %83, align 1
  %85 = icmp eq i32 %72, %84
  br i1 %85, label %89, label %86

86:                                               ; preds = %82, %77
  %87 = add nuw nsw i32 %78, 1
  %88 = icmp eq i32 %87, %73
  br i1 %88, label %107, label %77

89:                                               ; preds = %82
  %90 = getelementptr %struct.ns2_led_modval, ptr %76, i32 %78
  %91 = load i32, ptr %90, align 1
  %92 = icmp eq i32 %91, 2
  %93 = zext i1 %92 to i8
  %94 = getelementptr inbounds %struct.ns2_led, ptr %17, i32 0, i32 4
  store i8 %93, ptr %94, align 1
  %95 = icmp eq i32 %91, 0
  %96 = select i1 %95, i32 0, i32 255
  %97 = getelementptr inbounds %struct.led_classdev, ptr %17, i32 0, i32 1
  store i32 %96, ptr %97, align 4
  store ptr %18, ptr %2, align 4
  %98 = call i32 @devm_led_classdev_register_ext(ptr noundef %3, ptr noundef %17, ptr noundef nonnull %2) #9
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %89
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  %101 = getelementptr %struct.ns2_led, ptr %17, i32 1
  %102 = call ptr @device_get_next_child_node(ptr noundef %3, ptr noundef nonnull %18) #9
  %103 = icmp eq ptr %102, null
  br i1 %103, label %114, label %16

104:                                              ; preds = %89, %28
  %105 = phi ptr [ @.str.4, %28 ], [ @.str.5, %89 ]
  %106 = phi i32 [ -22, %28 ], [ %98, %89 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %105, ptr noundef nonnull %18) #10
  br label %107

107:                                              ; preds = %104, %86, %66, %38, %34
  %108 = phi i32 [ %106, %104 ], [ -22, %86 ], [ -22, %66 ], [ -12, %34 ], [ -12, %38 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  br label %112

109:                                              ; preds = %23, %16
  %110 = phi ptr [ %20, %16 ], [ %25, %23 ]
  %111 = ptrtoint ptr %110 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  br label %112

112:                                              ; preds = %109, %107
  %113 = phi i32 [ %108, %107 ], [ %111, %109 ]
  call void @fwnode_handle_put(ptr noundef nonnull %18) #9
  br label %114

114:                                              ; preds = %112, %100, %13, %6, %1
  %115 = phi i32 [ %113, %112 ], [ -19, %1 ], [ -12, %6 ], [ 0, %13 ], [ 0, %100 ]
  ret i32 %115
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_fwnode_gpiod_get_index(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ns2_led_set_blocking(ptr noundef %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ns2_led, ptr %0, i32 0, i32 4
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i32 1, i32 2
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi i32 [ 0, %2 ], [ %8, %4 ]
  tail call fastcc void @ns2_led_set_mode(ptr noundef %0, i32 noundef %10) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ns2_led_set(ptr noundef %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ns2_led, ptr %0, i32 0, i32 4
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i32 1, i32 2
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi i32 [ 0, %2 ], [ %8, %4 ]
  tail call fastcc void @ns2_led_set_mode(ptr noundef %0, i32 noundef %10)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ns2_led_sata_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ns2_led, ptr %5, i32 0, i32 4
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ns2_led_sata_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !9
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, ptr %5, align 4
  %14 = getelementptr inbounds %struct.ns2_led, ptr %7, i32 0, i32 4
  %15 = load i8, ptr %14, align 1
  %16 = zext i1 %12 to i8
  %17 = icmp eq i8 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %10
  store i8 %16, ptr %14, align 1
  %19 = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = select i1 %12, i32 2, i32 1
  call fastcc void @ns2_led_set_mode(ptr noundef %7, i32 noundef %23)
  br label %24

24:                                               ; preds = %22, %18, %10, %4
  %25 = phi i32 [ %8, %4 ], [ %3, %18 ], [ %3, %10 ], [ %3, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %25
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ns2_led_set_mode(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ns2_led, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ns2_led, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %14, %6
  %10 = phi i32 [ 0, %6 ], [ %15, %14 ]
  %11 = getelementptr %struct.ns2_led_modval, ptr %8, i32 %10
  %12 = load i32, ptr %11, align 1
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = add nuw nsw i32 %10, 1
  %16 = icmp eq i32 %15, %4
  br i1 %16, label %45, label %9

17:                                               ; preds = %9, %2
  %18 = phi i32 [ 0, %2 ], [ %10, %9 ]
  %19 = icmp eq i32 %18, %4
  br i1 %19, label %45, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.ns2_led, ptr %0, i32 0, i32 5
  %22 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %21) #9
  %23 = getelementptr inbounds %struct.ns2_led, ptr %0, i32 0, i32 3
  %24 = load i8, ptr %23, align 4, !range !10
  %25 = icmp eq i8 %24, 0
  %26 = getelementptr inbounds %struct.ns2_led, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ns2_led, ptr %0, i32 0, i32 7
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr %struct.ns2_led_modval, ptr %29, i32 %18, i32 1
  %31 = load i32, ptr %30, align 1
  br i1 %25, label %32, label %38

32:                                               ; preds = %20
  tail call void @gpiod_set_value(ptr noundef %27, i32 noundef %31) #9
  %33 = getelementptr inbounds %struct.ns2_led, ptr %0, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %28, align 4
  %36 = getelementptr %struct.ns2_led_modval, ptr %35, i32 %18, i32 2
  %37 = load i32, ptr %36, align 1
  tail call void @gpiod_set_value(ptr noundef %34, i32 noundef %37) #9
  br label %44

38:                                               ; preds = %20
  tail call void @gpiod_set_value_cansleep(ptr noundef %27, i32 noundef %31) #9
  %39 = getelementptr inbounds %struct.ns2_led, ptr %0, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %28, align 4
  %42 = getelementptr %struct.ns2_led_modval, ptr %41, i32 %18, i32 2
  %43 = load i32, ptr %42, align 1
  tail call void @gpiod_set_value_cansleep(ptr noundef %40, i32 noundef %43) #9
  br label %44

44:                                               ; preds = %38, %32
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #9
  br label %45

45:                                               ; preds = %44, %17, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
