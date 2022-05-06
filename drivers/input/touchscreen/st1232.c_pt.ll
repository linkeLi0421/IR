; ModuleID = '/llk/IR/drivers/input/touchscreen/st1232.c_pt.bc'
source_filename = "../drivers/input/touchscreen/st1232.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.st_chip_info = type { i8, i16, i16 }
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
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.st1232_ts_data = type { ptr, ptr, %struct.touchscreen_properties, %struct.dev_pm_qos_request, ptr, ptr, i32, ptr }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.dev_pm_qos_request = type { i32, %union.anon.65, ptr }
%union.anon.65 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.input_mt_pos = type { i16, i16 }

@st1232_ts_id = internal constant [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"st1232-ts\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @st1232_chip_info to i32) }, %struct.i2c_device_id { [20 x i8] c"st1633-ts\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @st1633_chip_info to i32) }, %struct.i2c_device_id zeroinitializer], align 4
@st1232_ts_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sitronix,st1232\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st1232_chip_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sitronix,st1633\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st1633_chip_info }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [46 x i8] c"author=Tony SIM <chinyeow.sim.xt@renesas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [59 x i8] c"author=Martin Kepplinger <martin.kepplinger@ginzinger.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [58 x i8] c"description=SITRONIX ST1232 Touchscreen Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@st1232_chip_info = internal constant %struct.st_chip_info { i8 1, i16 255, i16 2 }, align 2
@st1633_chip_info = internal constant %struct.st_chip_info { i8 0, i16 0, i16 5 }, align 2
@__this_module = external dso_local global %struct.module, align 64
@st1232_ts_driver = internal global %struct.i2c_driver { i32 0, ptr @st1232_ts_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @st1232_ts_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st1232_ts_pm_ops, ptr null, ptr null }, ptr @st1232_ts_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [10 x i8] c"st1232-ts\00", align 1
@st1232_ts_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @st1232_ts_suspend, ptr @st1232_ts_resume, ptr @st1232_ts_suspend, ptr @st1232_ts_resume, ptr @st1232_ts_suspend, ptr @st1232_ts_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"unknown device model\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"need I2C_FUNC_I2C\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"no IRQ?\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Unable to request GPIO pin: %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Failed to install power off action: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"st1232-touchscreen\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Failed to read resolution: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to initialize MT slots\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Failed to register interrupt\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Unable to register %s input device\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license250], section "llvm.metadata"

@__mod_i2c__st1232_ts_id_device_table = dso_local alias [3 x %struct.i2c_device_id], ptr @st1232_ts_id
@__mod_of__st1232_ts_dt_ids_device_table = dso_local alias [3 x %struct.of_device_id], ptr @st1232_ts_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @st1232_ts_driver) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @st1232_ts_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st1232_ts_probe(ptr noundef %0, ptr noundef readonly %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %8 = tail call ptr @device_get_match_data(ptr noundef %7) #6
  %9 = icmp eq ptr %8, null
  %10 = icmp ne ptr %1, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = inttoptr i32 %14 to ptr
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi ptr [ %15, %12 ], [ %8, %2 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.1) #7
  br label %166

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.i2c_algorithm, ptr %24, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %22) #6
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2) #7
  br label %166

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.3) #7
  br label %166

36:                                               ; preds = %31
  %37 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 72, i32 noundef 3520) #6
  %38 = icmp eq ptr %37, null
  br i1 %38, label %166, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.st1232_ts_data, ptr %37, i32 0, i32 5
  store ptr %17, ptr %40, align 4
  %41 = getelementptr inbounds %struct.st_chip_info, ptr %17, i32 0, i32 2
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  %44 = shl nuw nsw i32 %43, 2
  %45 = getelementptr inbounds %struct.st1232_ts_data, ptr %37, i32 0, i32 6
  store i32 %44, ptr %45, align 4
  %46 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef %44, i32 noundef 3520) #6
  %47 = getelementptr inbounds %struct.st1232_ts_data, ptr %37, i32 0, i32 7
  store ptr %46, ptr %47, align 4
  %48 = icmp eq ptr %46, null
  br i1 %48, label %166, label %49

49:                                               ; preds = %39
  %50 = tail call ptr @devm_input_allocate_device(ptr noundef %7) #6
  %51 = icmp eq ptr %50, null
  br i1 %51, label %166, label %52

52:                                               ; preds = %49
  store ptr %0, ptr %37, align 4
  %53 = getelementptr inbounds %struct.st1232_ts_data, ptr %37, i32 0, i32 1
  store ptr %50, ptr %53, align 4
  %54 = tail call ptr @devm_gpiod_get_optional(ptr noundef %7, ptr noundef null, i32 noundef 7) #6
  %55 = getelementptr inbounds %struct.st1232_ts_data, ptr %37, i32 0, i32 4
  store ptr %54, ptr %55, align 4
  %56 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = ptrtoint ptr %54 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.4, i32 noundef %58) #7
  br label %166

59:                                               ; preds = %52
  %60 = icmp eq ptr %54, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %59
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %54, i32 noundef 0) #6
  br label %62

62:                                               ; preds = %61, %59
  %63 = tail call i32 @devm_add_action(ptr noundef %7, ptr noundef nonnull @st1232_ts_power_off, ptr noundef nonnull %37) #6
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %55, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %66, i32 noundef 1) #6
  br label %69

69:                                               ; preds = %68, %65
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.5, i32 noundef %63) #7
  br label %166

70:                                               ; preds = %62
  store ptr @.str.6, ptr %50, align 8
  %71 = getelementptr inbounds %struct.input_dev, ptr %50, i32 0, i32 3
  store i16 24, ptr %71, align 4
  %72 = getelementptr inbounds i8, ptr %6, i32 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  %78 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  br label %79

79:                                               ; preds = %93, %70
  %80 = phi i32 [ 100, %70 ], [ %94, %93 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 1, ptr %5, align 1
  %81 = load ptr, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %72, i8 0, i32 16, i1 false) #6, !annotation !8
  %82 = getelementptr inbounds %struct.i2c_client, ptr %81, i32 0, i32 1
  %83 = load i16, ptr %82, align 2
  store i16 %83, ptr %6, align 4
  store i16 0, ptr %73, align 2
  store i16 1, ptr %72, align 4
  store ptr %5, ptr %74, align 4
  %84 = load i16, ptr %82, align 2
  store i16 %84, ptr %75, align 4
  store i16 513, ptr %76, align 2
  store i16 1, ptr %77, align 4
  %85 = load ptr, ptr %47, align 4
  store ptr %85, ptr %78, align 4
  %86 = getelementptr inbounds %struct.i2c_client, ptr %81, i32 0, i32 3
  %87 = load ptr, ptr %86, align 8
  %88 = call i32 @i2c_transfer(ptr noundef %87, ptr noundef nonnull %6, i32 noundef 2) #6
  %89 = icmp eq i32 %88, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  br i1 %89, label %90, label %93

90:                                               ; preds = %79
  %91 = load ptr, ptr %47, align 4
  %92 = load i8, ptr %91, align 1
  switch i8 %92, label %93 [
    i8 0, label %96
    i8 4, label %96
  ]

93:                                               ; preds = %90, %79
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %94 = add nsw i32 %80, -1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %166, label %79

96:                                               ; preds = %90, %90
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 4, ptr %3, align 1
  %97 = load ptr, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  %98 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %98, i8 0, i32 16, i1 false) #6, !annotation !8
  %99 = getelementptr inbounds %struct.i2c_client, ptr %97, i32 0, i32 1
  %100 = load i16, ptr %99, align 2
  store i16 %100, ptr %4, align 4
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %101, align 2
  store i16 1, ptr %98, align 4
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %102, align 4
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %104 = load i16, ptr %99, align 2
  store i16 %104, ptr %103, align 4
  %105 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 513, ptr %105, align 2
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 3, ptr %106, align 4
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %91, ptr %107, align 4
  %108 = getelementptr inbounds %struct.i2c_client, ptr %97, i32 0, i32 3
  %109 = load ptr, ptr %108, align 8
  %110 = call i32 @i2c_transfer(ptr noundef %109, ptr noundef nonnull %4, i32 noundef 2) #6
  %111 = icmp eq i32 %110, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  br i1 %111, label %115, label %112

112:                                              ; preds = %96
  %113 = icmp slt i32 %110, 0
  %114 = select i1 %113, i32 %110, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.7, i32 noundef %114) #7
  br label %166

115:                                              ; preds = %96
  %116 = load ptr, ptr %47, align 4
  %117 = load i8, ptr %116, align 1
  %118 = and i8 %117, 112
  %119 = zext i8 %118 to i32
  %120 = shl nuw nsw i32 %119, 4
  %121 = getelementptr i8, ptr %116, i32 1
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i32
  %124 = add nuw nsw i32 %123, 65535
  %125 = add nuw nsw i32 %124, %120
  %126 = and i8 %117, 7
  %127 = zext i8 %126 to i32
  %128 = shl nuw nsw i32 %127, 8
  %129 = getelementptr i8, ptr %116, i32 2
  %130 = load i8, ptr %129, align 1
  %131 = zext i8 %130 to i32
  %132 = add nuw nsw i32 %131, 65535
  %133 = add nuw nsw i32 %132, %128
  %134 = load ptr, ptr %40, align 4
  %135 = load i8, ptr %134, align 2, !range !9
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %115
  %138 = getelementptr inbounds %struct.st_chip_info, ptr %134, i32 0, i32 1
  %139 = load i16, ptr %138, align 2
  %140 = zext i16 %139 to i32
  call void @input_set_abs_params(ptr noundef nonnull %50, i32 noundef 48, i32 noundef 0, i32 noundef %140, i32 noundef 0, i32 noundef 0) #6
  br label %141

141:                                              ; preds = %137, %115
  %142 = and i32 %125, 65535
  call void @input_set_abs_params(ptr noundef nonnull %50, i32 noundef 53, i32 noundef 0, i32 noundef %142, i32 noundef 0, i32 noundef 0) #6
  %143 = and i32 %133, 65535
  call void @input_set_abs_params(ptr noundef nonnull %50, i32 noundef 54, i32 noundef 0, i32 noundef %143, i32 noundef 0, i32 noundef 0) #6
  %144 = getelementptr inbounds %struct.st1232_ts_data, ptr %37, i32 0, i32 2
  call void @touchscreen_parse_properties(ptr noundef nonnull %50, i1 noundef zeroext true, ptr noundef %144) #6
  %145 = load ptr, ptr %40, align 4
  %146 = getelementptr inbounds %struct.st_chip_info, ptr %145, i32 0, i32 2
  %147 = load i16, ptr %146, align 2
  %148 = zext i16 %147 to i32
  %149 = call i32 @input_mt_init_slots(ptr noundef nonnull %50, i32 noundef %148, i32 noundef 14) #6
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %141
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.8) #7
  br label %166

152:                                              ; preds = %141
  %153 = load i32, ptr %32, align 4
  %154 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 2
  %155 = call i32 @devm_request_threaded_irq(ptr noundef %7, i32 noundef %153, ptr noundef null, ptr noundef nonnull @st1232_ts_irq_handler, i32 noundef 8192, ptr noundef %154, ptr noundef nonnull %37) #6
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %152
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.9) #7
  br label %166

158:                                              ; preds = %152
  %159 = load ptr, ptr %53, align 4
  %160 = call i32 @input_register_device(ptr noundef %159) #6
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %158
  %163 = load ptr, ptr %50, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.10, ptr noundef %163) #7
  br label %166

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %37, ptr %165, align 8
  br label %166

166:                                              ; preds = %164, %162, %157, %151, %112, %93, %69, %57, %49, %39, %36, %35, %30, %19
  %167 = phi i32 [ %58, %57 ], [ %63, %69 ], [ %114, %112 ], [ %149, %151 ], [ %155, %157 ], [ %160, %162 ], [ 0, %164 ], [ -22, %35 ], [ -5, %30 ], [ -19, %19 ], [ -12, %36 ], [ -12, %39 ], [ -12, %49 ], [ -6, %93 ]
  ret i32 %167
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @st1232_ts_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.st1232_ts_data, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %3, i32 noundef 1) #6
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st1232_ts_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca [10 x %struct.input_mt_pos], align 2
  %4 = alloca [10 x i8], align 1
  %5 = alloca [10 x i32], align 4
  %6 = alloca i8, align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = getelementptr inbounds %struct.st1232_ts_data, ptr %1, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 18, ptr %6, align 1
  %10 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #6
  %11 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #6, !annotation !8
  %12 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  store i16 %13, ptr %7, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %14, align 2
  store i16 1, ptr %11, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  %17 = load i16, ptr %12, align 2
  store i16 %17, ptr %16, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 513, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  %20 = trunc i32 %9 to i16
  store i16 %20, ptr %19, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  %22 = getelementptr inbounds %struct.st1232_ts_data, ptr %1, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  store ptr %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %7, i32 noundef 2) #6
  %27 = icmp eq i32 %26, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  br i1 %27, label %28, label %124

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.st1232_ts_data, ptr %1, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(40) %3, i8 0, i32 40, i1 false) #6, !annotation !8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %4, i8 0, i32 10, i1 false) #6, !annotation !8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %5, i8 0, i32 40, i1 false) #6, !annotation !8
  %31 = getelementptr inbounds %struct.st1232_ts_data, ptr %1, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.st_chip_info, ptr %32, i32 0, i32 2
  %34 = load i16, ptr %33, align 2
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = call i32 @input_mt_assign_slots(ptr noundef %30, ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0) #6
  br label %108

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.st1232_ts_data, ptr %1, i32 0, i32 2
  br label %40

40:                                               ; preds = %76, %38
  %41 = phi ptr [ %32, %38 ], [ %77, %76 ]
  %42 = phi i32 [ 0, %38 ], [ %78, %76 ]
  %43 = phi i32 [ 0, %38 ], [ %79, %76 ]
  %44 = load ptr, ptr %22, align 4
  %45 = shl i32 %43, 2
  %46 = getelementptr i8, ptr %44, i32 %45
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 128
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %76, label %51

51:                                               ; preds = %40
  %52 = shl nuw nsw i32 %48, 4
  %53 = and i32 %52, 1792
  %54 = getelementptr i8, ptr %46, i32 1
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %53, %56
  %58 = shl nuw nsw i32 %48, 8
  %59 = and i32 %58, 1792
  %60 = getelementptr i8, ptr %46, i32 2
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %59, %62
  %64 = getelementptr [10 x %struct.input_mt_pos], ptr %3, i32 0, i32 %42
  call void @touchscreen_set_mt_pos(ptr noundef %64, ptr noundef %39, i32 noundef %57, i32 noundef %63) #6
  %65 = load ptr, ptr %31, align 4
  %66 = load i8, ptr %65, align 2, !range !9
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %51
  %69 = load ptr, ptr %22, align 4
  %70 = add nuw nsw i32 %43, 6
  %71 = getelementptr i8, ptr %69, i32 %70
  %72 = load i8, ptr %71, align 1
  %73 = getelementptr [10 x i8], ptr %4, i32 0, i32 %42
  store i8 %72, ptr %73, align 1
  br label %74

74:                                               ; preds = %68, %51
  %75 = add i32 %42, 1
  br label %76

76:                                               ; preds = %74, %40
  %77 = phi ptr [ %65, %74 ], [ %41, %40 ]
  %78 = phi i32 [ %75, %74 ], [ %42, %40 ]
  %79 = add nuw nsw i32 %43, 1
  %80 = getelementptr inbounds %struct.st_chip_info, ptr %77, i32 0, i32 2
  %81 = load i16, ptr %80, align 2
  %82 = zext i16 %81 to i32
  %83 = icmp ult i32 %79, %82
  br i1 %83, label %40, label %84

84:                                               ; preds = %76
  %85 = call i32 @input_mt_assign_slots(ptr noundef %30, ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef %78, i32 noundef 0) #6
  %86 = icmp sgt i32 %78, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %105, %84
  %88 = phi i32 [ %106, %105 ], [ 0, %84 ]
  %89 = getelementptr [10 x i32], ptr %5, i32 0, i32 %88
  %90 = load i32, ptr %89, align 4
  call void @input_event(ptr noundef %30, i32 noundef 3, i32 noundef 47, i32 noundef %90) #6
  %91 = call zeroext i1 @input_mt_report_slot_state(ptr noundef %30, i32 noundef 0, i1 noundef zeroext true) #6
  %92 = getelementptr [10 x %struct.input_mt_pos], ptr %3, i32 0, i32 %88
  %93 = load i16, ptr %92, align 2
  %94 = sext i16 %93 to i32
  call void @input_event(ptr noundef %30, i32 noundef 3, i32 noundef 53, i32 noundef %94) #6
  %95 = getelementptr [10 x %struct.input_mt_pos], ptr %3, i32 0, i32 %88, i32 1
  %96 = load i16, ptr %95, align 2
  %97 = sext i16 %96 to i32
  call void @input_event(ptr noundef %30, i32 noundef 3, i32 noundef 54, i32 noundef %97) #6
  %98 = load ptr, ptr %31, align 4
  %99 = load i8, ptr %98, align 2, !range !9
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %87
  %102 = getelementptr [10 x i8], ptr %4, i32 0, i32 %88
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  call void @input_event(ptr noundef %30, i32 noundef 3, i32 noundef 48, i32 noundef %104) #6
  br label %105

105:                                              ; preds = %101, %87
  %106 = add nuw nsw i32 %88, 1
  %107 = icmp eq i32 %106, %78
  br i1 %107, label %108, label %87

108:                                              ; preds = %105, %84, %36
  %109 = phi i32 [ 0, %36 ], [ %78, %84 ], [ 1, %105 ]
  call void @input_mt_sync_frame(ptr noundef %30) #6
  call void @input_event(ptr noundef %30, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #6
  %110 = icmp eq i32 %109, 0
  %111 = getelementptr inbounds %struct.st1232_ts_data, ptr %1, i32 0, i32 3, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %110, label %114, label %118

114:                                              ; preds = %108
  br i1 %113, label %124, label %115

115:                                              ; preds = %114
  %116 = getelementptr inbounds %struct.st1232_ts_data, ptr %1, i32 0, i32 3
  %117 = call i32 @dev_pm_qos_remove_request(ptr noundef %116) #6
  store ptr null, ptr %111, align 4
  br label %124

118:                                              ; preds = %108
  br i1 %113, label %119, label %124

119:                                              ; preds = %118
  %120 = getelementptr inbounds %struct.st1232_ts_data, ptr %1, i32 0, i32 3
  %121 = load ptr, ptr %1, align 4
  %122 = getelementptr inbounds %struct.i2c_client, ptr %121, i32 0, i32 4
  %123 = call i32 @dev_pm_qos_add_ancestor_request(ptr noundef %122, ptr noundef %120, i32 noundef 1, i32 noundef 100) #6
  br label %124

124:                                              ; preds = %119, %118, %115, %114, %2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_remove_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_add_ancestor_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_set_mt_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_assign_slots(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st1232_ts_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %0, i32 476
  %5 = load i32, ptr %4, align 4
  tail call void @disable_irq(i32 noundef %5) #6
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10, %1
  %15 = getelementptr inbounds %struct.st1232_ts_data, ptr %3, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %16, i32 noundef 1) #6
  br label %19

19:                                               ; preds = %18, %14, %10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st1232_ts_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.st1232_ts_data, ptr %3, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %14, i32 noundef 0) #6
  br label %17

17:                                               ; preds = %16, %12, %8
  %18 = getelementptr i8, ptr %0, i32 476
  %19 = load i32, ptr %18, align 4
  tail call void @enable_irq(i32 noundef %19) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
