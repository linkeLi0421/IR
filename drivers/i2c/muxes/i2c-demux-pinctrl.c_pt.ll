; ModuleID = '/llk/IR/drivers/i2c/muxes/i2c-demux-pinctrl.c_pt.bc'
source_filename = "../drivers/i2c/muxes/i2c-demux-pinctrl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.i2c_demux_pinctrl_priv = type { i32, i32, ptr, ptr, %struct.i2c_adapter, %struct.i2c_algorithm, [0 x %struct.i2c_demux_pinctrl_chan] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_demux_pinctrl_chan = type { ptr, ptr, %struct.of_changeset }
%struct.of_changeset = type { %struct.list_head }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_i2c_demux_pinctrl__248_316_i2c_demux_pinctrl_driver_init6 = internal global ptr @i2c_demux_pinctrl_driver_init, section ".initcall6.init", align 4
@i2c_demux_pinctrl_driver = internal global %struct.platform_driver { ptr @i2c_demux_pinctrl_probe, ptr @i2c_demux_pinctrl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @i2c_demux_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_i2c_demux_pinctrl_driver_exit = internal global ptr @i2c_demux_pinctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description249 = internal constant [61 x i8] c"i2c_demux_pinctrl.description=pinctrl-based I2C demux driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [65 x i8] c"i2c_demux_pinctrl.author=Wolfram Sang <wsa@sang-engineering.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [59 x i8] c"i2c_demux_pinctrl.file=drivers/i2c/muxes/i2c-demux-pinctrl\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [33 x i8] c"i2c_demux_pinctrl.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias253 = internal constant [51 x i8] c"i2c_demux_pinctrl.alias=platform:i2c-demux-pinctrl\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [18 x i8] c"i2c-demux-pinctrl\00", align 1
@i2c_demux_pinctrl_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"i2c-demux-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"i2c-parent\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Need at least two I2C masters to switch\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"i2c-bus-name\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"can't get phandle for parent %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@dev_attr_available_masters = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @available_masters_show, ptr null }, align 4
@dev_attr_current_master = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420 }, ptr @current_master_show, ptr @current_master_store }, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"i2c-demux (master i2c-%d)\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"failed to setup demux-adapter %d (%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"available_masters\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"%d:%pOF%c\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"current_master\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias253, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_i2c_demux_pinctrl_driver_exit, ptr @__initcall__kmod_i2c_demux_pinctrl__248_316_i2c_demux_pinctrl_driver_init6, ptr @i2c_demux_pinctrl_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @i2c_demux_pinctrl_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @i2c_demux_pinctrl_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @i2c_demux_pinctrl_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @i2c_demux_pinctrl_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_demux_pinctrl_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @of_count_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef null) #9
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #10
  br label %78

9:                                                ; preds = %1
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 16) #9
  %11 = extractvalue { i32, i1 } %10, 1
  %12 = extractvalue { i32, i1 } %10, 0
  %13 = tail call i32 @llvm.uadd.sat.i32(i32 %12, i32 704) #9
  %14 = select i1 %11, i32 -1, i32 %13
  %15 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %14, i32 noundef 3520) #9
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 52) #9
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %78, label %18, !prof !8

18:                                               ; preds = %9
  %19 = extractvalue { i32, i1 } %16, 0
  %20 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %19, i32 noundef 3520) #9
  %21 = icmp ne ptr %15, null
  %22 = icmp ne ptr %20, null
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %78

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %15, i32 0, i32 3
  %26 = tail call i32 @of_property_read_string(ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef %25) #9
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %78

28:                                               ; preds = %36, %24
  %29 = phi i32 [ %45, %36 ], [ 0, %24 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #9, !annotation !9
  %30 = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef %29, ptr noundef nonnull %2) #9
  %31 = icmp ne i32 %30, 0
  %32 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #9
  %33 = icmp eq ptr %32, null
  %34 = select i1 %31, i1 true, i1 %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %29) #10
  br label %58

36:                                               ; preds = %28
  %37 = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %15, i32 0, i32 6, i32 %29
  store ptr %32, ptr %37, align 4
  %38 = call noalias ptr @devm_kstrdup(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef 3264) #9
  %39 = getelementptr %struct.property, ptr %20, i32 %29
  store ptr %38, ptr %39, align 4
  %40 = call noalias ptr @devm_kstrdup(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef 3264) #9
  %41 = getelementptr %struct.property, ptr %20, i32 %29, i32 2
  store ptr %40, ptr %41, align 4
  %42 = getelementptr %struct.property, ptr %20, i32 %29, i32 1
  store i32 3, ptr %42, align 4
  %43 = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %15, i32 0, i32 6, i32 %29, i32 2
  call void @of_changeset_init(ptr noundef %43) #9
  %44 = call i32 @of_changeset_action(ptr noundef %43, i32 noundef 5, ptr noundef nonnull %32, ptr noundef %39) #9
  %45 = add nuw nsw i32 %29, 1
  %46 = icmp eq i32 %45, %6
  br i1 %46, label %47, label %28

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %15, i32 0, i32 1
  store i32 %6, ptr %48, align 4
  %49 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %15, i32 0, i32 2
  store ptr %3, ptr %49, align 8
  %50 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %15, ptr %50, align 8
  call void @pm_runtime_no_callbacks(ptr noundef %3) #9
  %51 = call fastcc i32 @i2c_demux_activate_master(ptr noundef nonnull %15, i32 noundef 0)
  %52 = call i32 @device_create_file(ptr noundef %3, ptr noundef nonnull @dev_attr_available_masters) #9
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = call i32 @device_create_file(ptr noundef %3, ptr noundef nonnull @dev_attr_current_master) #9
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %54
  call void @device_remove_file(ptr noundef %3, ptr noundef nonnull @dev_attr_available_masters) #9
  br label %58

58:                                               ; preds = %57, %47, %35
  %59 = phi i32 [ %29, %35 ], [ %6, %47 ], [ %6, %57 ]
  %60 = phi i32 [ -2, %35 ], [ %52, %47 ], [ %55, %57 ]
  %61 = load i32, ptr %15, align 8
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %15, i32 0, i32 4
  call void @i2c_del_adapter(ptr noundef %64) #9
  %65 = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %15, i32 0, i32 6, i32 %61, i32 1
  %66 = load ptr, ptr %65, align 4
  call void @i2c_put_adapter(ptr noundef %66) #9
  %67 = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %15, i32 0, i32 6, i32 %61, i32 2
  %68 = call i32 @of_changeset_revert(ptr noundef %67) #9
  store ptr null, ptr %65, align 4
  store i32 -22, ptr %15, align 8
  br label %69

69:                                               ; preds = %63, %58
  %70 = icmp eq i32 %59, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %71, %69
  %72 = phi i32 [ %76, %71 ], [ 0, %69 ]
  %73 = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %15, i32 0, i32 6, i32 %72
  %74 = load ptr, ptr %73, align 4
  call void @of_node_put(ptr noundef %74) #9
  %75 = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %15, i32 0, i32 6, i32 %72, i32 2
  call void @of_changeset_destroy(ptr noundef %75) #9
  %76 = add nuw nsw i32 %72, 1
  %77 = icmp eq i32 %76, %59
  br i1 %77, label %78, label %71

78:                                               ; preds = %71, %69, %54, %24, %18, %9, %8
  %79 = phi i32 [ -22, %8 ], [ -12, %18 ], [ %26, %24 ], [ 0, %54 ], [ -12, %9 ], [ %60, %69 ], [ %60, %71 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_demux_pinctrl_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %4, ptr noundef nonnull @dev_attr_current_master) #9
  tail call void @device_remove_file(ptr noundef %4, ptr noundef nonnull @dev_attr_available_masters) #9
  %5 = load i32, ptr %3, align 8
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %3, i32 0, i32 4
  tail call void @i2c_del_adapter(ptr noundef %8) #9
  %9 = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %3, i32 0, i32 6, i32 %5, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @i2c_put_adapter(ptr noundef %10) #9
  %11 = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %3, i32 0, i32 6, i32 %5, i32 2
  %12 = tail call i32 @of_changeset_revert(ptr noundef %11) #9
  store ptr null, ptr %9, align 4
  store i32 -22, ptr %3, align 8
  br label %13

13:                                               ; preds = %7, %1
  %14 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %3, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %17, %13
  %18 = phi i32 [ %22, %17 ], [ 0, %13 ]
  %19 = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %3, i32 0, i32 6, i32 %18
  %20 = load ptr, ptr %19, align 4
  tail call void @of_node_put(ptr noundef %20) #9
  %21 = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %3, i32 0, i32 6, i32 %18, i32 2
  tail call void @of_changeset_destroy(ptr noundef %21) #9
  %22 = add nuw nsw i32 %18, 1
  %23 = load i32, ptr %14, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %17, label %25

25:                                               ; preds = %17, %13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_changeset_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_no_callbacks(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @i2c_demux_activate_master(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %0, i32 0, i32 6, i32 %1, i32 2
  %4 = tail call i32 @of_changeset_apply(ptr noundef %3) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %74

6:                                                ; preds = %2
  %7 = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %0, i32 0, i32 6, i32 %1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @of_find_i2c_adapter_by_node(ptr noundef %8) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %71, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 9
  %13 = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr @devm_pinctrl_get(ptr noundef %14) #9
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = ptrtoint ptr %15 to i32
  %19 = icmp eq ptr %15, inttoptr (i32 -19 to ptr)
  br i1 %19, label %30, label %69

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = tail call ptr @pinctrl_lookup_state(ptr noundef %15, ptr noundef %22) #9
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = ptrtoint ptr %23 to i32
  br label %69

27:                                               ; preds = %20
  %28 = tail call i32 @pinctrl_select_state(ptr noundef %15, ptr noundef %23) #9
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %69, label %30

30:                                               ; preds = %27, %17
  %31 = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %0, i32 0, i32 6, i32 %1, i32 1
  store ptr %9, ptr %31, align 4
  store i32 %1, ptr %0, align 8
  %32 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %0, i32 0, i32 5
  store ptr @i2c_demux_master_xfer, ptr %32, align 8
  %33 = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.i2c_algorithm, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %0, i32 0, i32 5, i32 1
  store ptr @i2c_demux_master_xfer, ptr %39, align 4
  br label %40

40:                                               ; preds = %38, %30
  %41 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %0, i32 0, i32 5, i32 4
  store ptr @i2c_demux_functionality, ptr %41, align 8
  %42 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %0, i32 0, i32 4
  %43 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %0, i32 0, i32 4, i32 12
  %44 = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 11
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %43, i32 noundef 48, ptr noundef nonnull @.str.7, i32 noundef %45)
  store ptr null, ptr %42, align 8
  %47 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %0, i32 0, i32 4, i32 2
  store ptr %32, ptr %47, align 8
  %48 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %0, i32 0, i32 4, i32 3
  store ptr %0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %0, i32 0, i32 4, i32 9, i32 1
  store ptr %12, ptr %49, align 4
  %50 = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %0, i32 0, i32 4, i32 1
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 8
  %54 = load i32, ptr %53, align 8
  %55 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %0, i32 0, i32 4, i32 8
  store i32 %54, ptr %55, align 8
  %56 = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 7
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %0, i32 0, i32 4, i32 7
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 17
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %0, i32 0, i32 4, i32 17
  store ptr %60, ptr %61, align 8
  %62 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %0, i32 0, i32 2
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.device, ptr %63, i32 0, i32 25
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %0, i32 0, i32 4, i32 9, i32 25
  store ptr %65, ptr %66, align 8
  %67 = tail call i32 @i2c_add_adapter(ptr noundef %42) #9
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %40, %27, %25, %17
  %70 = phi i32 [ %18, %17 ], [ %67, %40 ], [ %26, %25 ], [ %28, %27 ]
  tail call void @i2c_put_adapter(ptr noundef nonnull %9) #9
  br label %71

71:                                               ; preds = %69, %6
  %72 = phi i32 [ %70, %69 ], [ -19, %6 ]
  %73 = tail call i32 @of_changeset_revert(ptr noundef %3) #9
  br label %74

74:                                               ; preds = %71, %2
  %75 = phi i32 [ %4, %2 ], [ %72, %71 ]
  %76 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %0, i32 0, i32 2
  %77 = load ptr, ptr %76, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.8, i32 noundef %1, i32 noundef %75) #10
  store i32 -22, ptr %0, align 8
  br label %78

78:                                               ; preds = %74, %40
  %79 = phi i32 [ %75, %74 ], [ 0, %40 ]
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_changeset_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_changeset_action(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_changeset_apply(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_demux_master_xfer(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %5, i32 0, i32 6, i32 %6, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @__i2c_transfer(ptr noundef %8, ptr noundef %1, i32 noundef %2) #9
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_demux_functionality(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %3, i32 0, i32 6, i32 %4, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.i2c_algorithm, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %6) #9
  ret i32 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_changeset_revert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @available_masters_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %9, %3
  %10 = phi i32 [ %23, %9 ], [ %7, %3 ]
  %11 = phi i32 [ %22, %9 ], [ 0, %3 ]
  %12 = phi i32 [ %21, %9 ], [ 0, %3 ]
  %13 = getelementptr i8, ptr %2, i32 %12
  %14 = sub nuw nsw i32 4096, %12
  %15 = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %5, i32 0, i32 6, i32 %11
  %16 = load ptr, ptr %15, align 4
  %17 = add nsw i32 %10, -1
  %18 = icmp eq i32 %11, %17
  %19 = select i1 %18, i32 10, i32 32
  %20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %13, i32 noundef %14, ptr noundef nonnull @.str.10, i32 noundef %11, ptr noundef %16, i32 noundef %19) #9
  %21 = add i32 %20, %12
  %22 = add nuw nsw i32 %11, 1
  %23 = load i32, ptr %6, align 4
  %24 = icmp slt i32 %22, %23
  %25 = icmp ult i32 %21, 4096
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %9, label %27

27:                                               ; preds = %9, %3
  %28 = phi i32 [ 0, %3 ], [ %21, %9 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @current_master_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i32, ptr %5, align 8
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @current_master_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !9
  %8 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %7, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %10
  %16 = load i32, ptr %7, align 8
  %17 = icmp eq i32 %16, %11
  br i1 %17, label %33, label %18

18:                                               ; preds = %15
  %19 = icmp slt i32 %16, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %7, i32 0, i32 4
  call void @i2c_del_adapter(ptr noundef %21) #9
  %22 = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %7, i32 0, i32 6, i32 %16, i32 1
  %23 = load ptr, ptr %22, align 4
  call void @i2c_put_adapter(ptr noundef %23) #9
  %24 = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %7, i32 0, i32 6, i32 %16, i32 2
  %25 = call i32 @of_changeset_revert(ptr noundef %24) #9
  store ptr null, ptr %22, align 4
  store i32 -22, ptr %7, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20, %18
  %28 = call fastcc i32 @i2c_demux_activate_master(ptr noundef %7, i32 noundef %11) #9
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi i32 [ %28, %27 ], [ %25, %20 ]
  %31 = icmp slt i32 %30, 0
  %32 = select i1 %31, i32 %30, i32 %3
  br label %33

33:                                               ; preds = %29, %15, %10, %4
  %34 = phi i32 [ %8, %4 ], [ -22, %10 ], [ %3, %15 ], [ %32, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %34
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
