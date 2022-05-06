; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-cros-ec-tunnel.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-cros-ec-tunnel.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ec_i2c_device = type { ptr, %struct.i2c_adapter, ptr, i16, [256 x i8], [256 x i8] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.ec_params_i2c_passthru = type { i8, i8, [0 x %struct.ec_params_i2c_passthru_msg] }
%struct.ec_params_i2c_passthru_msg = type { i16, i16 }

@cros_ec_i2c_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,cros-ec-i2c-tunnel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__mod_acpi__cros_ec_i2c_tunnel_acpi_id_device_table = dso_local local_unnamed_addr constant [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"GOOG0012\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 4
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [33 x i8] c"description=EC I2C tunnel driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias251 = internal constant [34 x i8] c"alias=platform:cros-ec-i2c-tunnel\00", section ".modinfo", align 1
@ec_i2c_tunnel_driver = internal global %struct.platform_driver { ptr @ec_i2c_probe, ptr @ec_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cros_ec_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [19 x i8] c"cros-ec-i2c-tunnel\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Missing sendrecv\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"google,remote-bus\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Couldn't read remote-bus property\0A\00", align 1
@ec_i2c_algorithm = internal constant %struct.i2c_algorithm { ptr @ec_i2c_xfer, ptr null, ptr null, ptr null, ptr @ec_i2c_functionality, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Error constructing message %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Error preparing response %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Error constructing EC i2c message %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Error transferring EC i2c message %d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_alias251, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

@__mod_of__cros_ec_i2c_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @cros_ec_i2c_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ec_i2c_tunnel_driver, ptr noundef nonnull @__this_module) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ec_i2c_tunnel_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ec_i2c_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.cros_ec_device, ptr %7, i32 0, i32 17
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #11
  br label %38

12:                                               ; preds = %1
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 1184, i32 noundef 3520) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %38, label %15

15:                                               ; preds = %12
  %16 = call i32 @device_property_read_u32_array(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull %2, i32 noundef 1) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #11
  br label %38

19:                                               ; preds = %15
  %20 = load i32, ptr %2, align 4
  %21 = trunc i32 %20 to i16
  %22 = getelementptr inbounds %struct.ec_i2c_device, ptr %13, i32 0, i32 3
  store i16 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ec_i2c_device, ptr %13, i32 0, i32 2
  store ptr %7, ptr %23, align 8
  store ptr %3, ptr %13, align 8
  %24 = getelementptr inbounds %struct.ec_i2c_device, ptr %13, i32 0, i32 1
  store ptr @__this_module, ptr %24, align 8
  %25 = getelementptr inbounds %struct.ec_i2c_device, ptr %13, i32 0, i32 1, i32 12
  %26 = call i32 @strlcpy(ptr noundef %25, ptr noundef nonnull @.str, i32 noundef 48) #10
  %27 = getelementptr inbounds %struct.ec_i2c_device, ptr %13, i32 0, i32 1, i32 2
  store ptr @ec_i2c_algorithm, ptr %27, align 8
  %28 = getelementptr inbounds %struct.ec_i2c_device, ptr %13, i32 0, i32 1, i32 3
  store ptr %13, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ec_i2c_device, ptr %13, i32 0, i32 1, i32 9, i32 1
  store ptr %3, ptr %29, align 4
  %30 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.ec_i2c_device, ptr %13, i32 0, i32 1, i32 9, i32 25
  store ptr %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.ec_i2c_device, ptr %13, i32 0, i32 1, i32 8
  store i32 3, ptr %33, align 8
  %34 = call i32 @i2c_add_adapter(ptr noundef %24) #10
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %19
  %37 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %13, ptr %37, align 8
  br label %38

38:                                               ; preds = %36, %19, %18, %12, %11
  %39 = phi i32 [ %16, %18 ], [ 0, %36 ], [ -22, %11 ], [ -12, %12 ], [ %34, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ec_i2c_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ec_i2c_device, ptr %3, i32 0, i32 1
  tail call void @i2c_del_adapter(ptr noundef %4) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ec_i2c_xfer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ec_i2c_device, ptr %5, i32 0, i32 3
  %8 = load i16, ptr %7, align 4
  %9 = shl i32 %2, 2
  %10 = or i32 %9, 2
  %11 = icmp sgt i32 %2, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %24, %3
  %13 = phi i32 [ %25, %24 ], [ %10, %3 ]
  %14 = phi i32 [ %26, %24 ], [ 0, %3 ]
  %15 = getelementptr %struct.i2c_msg, ptr %1, i32 %14, i32 1
  %16 = load i16, ptr %15, align 2
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = getelementptr %struct.i2c_msg, ptr %1, i32 %14, i32 2
  %21 = load i16, ptr %20, align 4
  %22 = zext i16 %21 to i32
  %23 = add i32 %13, %22
  br label %24

24:                                               ; preds = %19, %12
  %25 = phi i32 [ %13, %12 ], [ %23, %19 ]
  %26 = add nuw nsw i32 %14, 1
  %27 = icmp eq i32 %26, %2
  br i1 %27, label %28, label %12

28:                                               ; preds = %24
  %29 = icmp slt i32 %25, 0
  br i1 %29, label %32, label %34

30:                                               ; preds = %3
  %31 = icmp slt i32 %10, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %10, %30 ], [ %25, %28 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.4, i32 noundef %33) #11
  br label %148

34:                                               ; preds = %46, %28
  %35 = phi i32 [ %48, %46 ], [ 0, %28 ]
  %36 = phi i32 [ %47, %46 ], [ 2, %28 ]
  %37 = getelementptr %struct.i2c_msg, ptr %1, i32 %35, i32 1
  %38 = load i16, ptr %37, align 2
  %39 = and i16 %38, 1
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %34
  %42 = getelementptr %struct.i2c_msg, ptr %1, i32 %35, i32 2
  %43 = load i16, ptr %42, align 4
  %44 = zext i16 %43 to i32
  %45 = add i32 %36, %44
  br label %46

46:                                               ; preds = %41, %34
  %47 = phi i32 [ %45, %41 ], [ %36, %34 ]
  %48 = add nuw nsw i32 %35, 1
  %49 = icmp eq i32 %48, %2
  br i1 %49, label %50, label %34

50:                                               ; preds = %46
  %51 = icmp slt i32 %47, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %50
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.5, i32 noundef %47) #11
  br label %148

53:                                               ; preds = %50, %30
  %54 = phi i32 [ %47, %50 ], [ 2, %30 ]
  %55 = phi i32 [ %25, %50 ], [ %10, %30 ]
  %56 = tail call i32 @llvm.smax.i32(i32 %55, i32 %54)
  %57 = add nuw i32 %56, 20
  %58 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %57, i32 noundef 3264) #12
  %59 = icmp eq ptr %58, null
  br i1 %59, label %148, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.cros_ec_command, ptr %58, i32 0, i32 5
  %62 = trunc i16 %8 to i8
  store i8 %62, ptr %61, align 4
  %63 = trunc i32 %2 to i8
  %64 = getelementptr inbounds %struct.ec_params_i2c_passthru, ptr %61, i32 0, i32 1
  store i8 %63, ptr %64, align 1
  br i1 %11, label %65, label %99

65:                                               ; preds = %60
  %66 = getelementptr i8, ptr %61, i32 2
  %67 = getelementptr i8, ptr %66, i32 %9
  br label %68

68:                                               ; preds = %94, %65
  %69 = phi i32 [ %96, %94 ], [ 0, %65 ]
  %70 = phi ptr [ %95, %94 ], [ %67, %65 ]
  %71 = getelementptr %struct.i2c_msg, ptr %1, i32 %69
  %72 = getelementptr %struct.ec_params_i2c_passthru, ptr %61, i32 0, i32 2, i32 %69
  %73 = getelementptr %struct.i2c_msg, ptr %1, i32 %69, i32 2
  %74 = load i16, ptr %73, align 4
  %75 = getelementptr %struct.ec_params_i2c_passthru, ptr %61, i32 0, i32 2, i32 %69, i32 1
  store i16 %74, ptr %75, align 4
  %76 = load i16, ptr %71, align 4
  store i16 %76, ptr %72, align 2
  %77 = getelementptr %struct.i2c_msg, ptr %1, i32 %69, i32 1
  %78 = load i16, ptr %77, align 2
  %79 = zext i16 %78 to i32
  %80 = and i32 %79, 16
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %68
  %83 = and i32 %79, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = or i16 %76, -32768
  store i16 %86, ptr %72, align 2
  br label %94

87:                                               ; preds = %82
  %88 = getelementptr %struct.i2c_msg, ptr %1, i32 %69, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = zext i16 %74 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %70, ptr align 1 %89, i32 %90, i1 false) #10
  %91 = load i16, ptr %75, align 4
  %92 = zext i16 %91 to i32
  %93 = getelementptr i8, ptr %70, i32 %92
  br label %94

94:                                               ; preds = %87, %85
  %95 = phi ptr [ %93, %87 ], [ %70, %85 ]
  %96 = add nuw nsw i32 %69, 1
  %97 = icmp eq i32 %96, %2
  br i1 %97, label %99, label %68

98:                                               ; preds = %68
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6, i32 noundef -22) #11
  br label %146

99:                                               ; preds = %94, %60
  store i32 0, ptr %58, align 64
  %100 = getelementptr inbounds %struct.cros_ec_command, ptr %58, i32 0, i32 1
  store i32 158, ptr %100, align 4
  %101 = getelementptr inbounds %struct.cros_ec_command, ptr %58, i32 0, i32 2
  store i32 %55, ptr %101, align 8
  %102 = getelementptr inbounds %struct.cros_ec_command, ptr %58, i32 0, i32 3
  store i32 %54, ptr %102, align 4
  %103 = getelementptr inbounds %struct.ec_i2c_device, ptr %5, i32 0, i32 2
  %104 = load ptr, ptr %103, align 8
  %105 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %104, ptr noundef nonnull %58) #10
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7, i32 noundef %105) #11
  br label %146

108:                                              ; preds = %99
  %109 = getelementptr i8, ptr %61, i32 2
  %110 = load i8, ptr %61, align 4
  %111 = zext i8 %110 to i32
  %112 = and i32 %111, 2
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %146

114:                                              ; preds = %108
  %115 = and i32 %111, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %146

117:                                              ; preds = %114
  %118 = and i32 %111, 3
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %146

120:                                              ; preds = %117
  %121 = load i8, ptr %64, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp sgt i32 %122, %2
  br i1 %123, label %146, label %124

124:                                              ; preds = %120
  %125 = icmp eq i8 %121, 0
  br i1 %125, label %146, label %126

126:                                              ; preds = %142, %124
  %127 = phi i32 [ %144, %142 ], [ 0, %124 ]
  %128 = phi ptr [ %143, %142 ], [ %109, %124 ]
  %129 = getelementptr %struct.i2c_msg, ptr %1, i32 %127, i32 1
  %130 = load i16, ptr %129, align 2
  %131 = and i16 %130, 1
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %142, label %133

133:                                              ; preds = %126
  %134 = getelementptr %struct.i2c_msg, ptr %1, i32 %127, i32 3
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr %struct.i2c_msg, ptr %1, i32 %127, i32 2
  %137 = load i16, ptr %136, align 4
  %138 = zext i16 %137 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %135, ptr align 1 %128, i32 %138, i1 false) #10
  %139 = load i16, ptr %136, align 4
  %140 = zext i16 %139 to i32
  %141 = getelementptr i8, ptr %128, i32 %140
  br label %142

142:                                              ; preds = %133, %126
  %143 = phi ptr [ %141, %133 ], [ %128, %126 ]
  %144 = add nuw nsw i32 %127, 1
  %145 = icmp eq i32 %144, %122
  br i1 %145, label %146, label %126

146:                                              ; preds = %142, %124, %120, %117, %114, %108, %107, %98
  %147 = phi i32 [ -22, %98 ], [ %105, %107 ], [ 0, %124 ], [ -71, %120 ], [ -5, %117 ], [ -6, %114 ], [ -110, %108 ], [ %122, %142 ]
  tail call void @kfree(ptr noundef nonnull %58) #10
  br label %148

148:                                              ; preds = %146, %53, %52, %32
  %149 = phi i32 [ %33, %32 ], [ %47, %52 ], [ %147, %146 ], [ -12, %53 ]
  ret i32 %149
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ec_i2c_functionality(ptr nocapture noundef readnone %0) #6 {
  ret i32 251592713
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

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
