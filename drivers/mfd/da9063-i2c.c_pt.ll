; ModuleID = '/llk/IR/drivers/mfd/da9063-i2c.c_pt.bc'
source_filename = "../drivers/mfd/da9063-i2c.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
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
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regmap_range = type { i32, i32 }
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.da9063 = type { ptr, i32, i8, i32, ptr, i32, i32, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@da9063_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9063\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9063l\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@da9063_i2c_id = internal constant [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"da9063\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"da9063l\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], align 4
@__this_module = external dso_local global %struct.module, align 64
@da9063_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @da9063_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @da9063_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @da9063_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"da9063\00", align 1
@da9063_ad_readable_table = internal constant %struct.regmap_access_table { ptr @da9063_ad_readable_ranges, i32 5, ptr null, i32 0 }, align 4
@da9063_regmap_config = internal global %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 388, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr @da9063_range_cfg, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@da9063_ad_writeable_table = internal constant %struct.regmap_access_table { ptr @da9063_ad_writeable_ranges, i32 7, ptr null, i32 0 }, align 4
@da9063_ad_volatile_table = internal constant %struct.regmap_access_table { ptr @da9063_ad_volatile_ranges, i32 9, ptr null, i32 0 }, align 4
@da9063_bb_readable_table = internal constant %struct.regmap_access_table { ptr @da9063_bb_readable_ranges, i32 5, ptr null, i32 0 }, align 4
@da9063_bb_writeable_table = internal constant %struct.regmap_access_table { ptr @da9063_bb_writeable_ranges, i32 7, ptr null, i32 0 }, align 4
@da9063_bb_da_volatile_table = internal constant %struct.regmap_access_table { ptr @da9063_bb_da_volatile_ranges, i32 9, ptr null, i32 0 }, align 4
@da9063_da_readable_table = internal constant %struct.regmap_access_table { ptr @da9063_da_readable_ranges, i32 5, ptr null, i32 0 }, align 4
@da9063_da_writeable_table = internal constant %struct.regmap_access_table { ptr @da9063_da_writeable_ranges, i32 7, ptr null, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Chip variant not supported for DA9063\0A\00", align 1
@da9063l_bb_readable_table = internal constant %struct.regmap_access_table { ptr @da9063l_bb_readable_ranges, i32 5, ptr null, i32 0 }, align 4
@da9063l_bb_writeable_table = internal constant %struct.regmap_access_table { ptr @da9063l_bb_writeable_ranges, i32 6, ptr null, i32 0 }, align 4
@da9063l_bb_da_volatile_table = internal constant %struct.regmap_access_table { ptr @da9063l_bb_da_volatile_ranges, i32 9, ptr null, i32 0 }, align 4
@da9063l_da_readable_table = internal constant %struct.regmap_access_table { ptr @da9063l_da_readable_ranges, i32 5, ptr null, i32 0 }, align 4
@da9063l_da_writeable_table = internal constant %struct.regmap_access_table { ptr @da9063l_da_writeable_ranges, i32 6, ptr null, i32 0 }, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Chip variant not supported for DA9063L\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Chip type not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to set Two-Wire Bus Mode.\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Invalid chip device ID: 0x%02x\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"Device detected (chip-ID: 0x%02X, var-ID: 0x%02X)\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Paged block read failed: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Paged block read failed to complete\0A\00", align 1
@da9063_ad_readable_ranges = internal constant [5 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 78 }, %struct.regmap_range { i32 129, i32 146 }, %struct.regmap_range { i32 149, i32 207 }, %struct.regmap_range { i32 260, i32 300 }, %struct.regmap_range { i32 385, i32 386 }], align 4
@da9063_range_cfg = internal constant [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr null, i32 0, i32 388, i32 0, i32 2, i32 1, i32 0, i32 256 }], align 4
@da9063_ad_writeable_ranges = internal constant [7 x %struct.regmap_range] [%struct.regmap_range zeroinitializer, %struct.regmap_range { i32 5, i32 54 }, %struct.regmap_range { i32 64, i32 74 }, %struct.regmap_range { i32 129, i32 146 }, %struct.regmap_range { i32 149, i32 207 }, %struct.regmap_range { i32 270, i32 277 }, %struct.regmap_range { i32 281, i32 300 }], align 4
@da9063_ad_volatile_ranges = internal constant [9 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 9 }, %struct.regmap_range { i32 14, i32 15 }, %struct.regmap_range { i32 18, i32 19 }, %struct.regmap_range { i32 32, i32 48 }, %struct.regmap_range { i32 50, i32 52 }, %struct.regmap_range { i32 55, i32 78 }, %struct.regmap_range { i32 129, i32 129 }, %struct.regmap_range { i32 152, i32 152 }, %struct.regmap_range { i32 278, i32 279 }], align 4
@da9063_bb_readable_ranges = internal constant [5 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 79 }, %struct.regmap_range { i32 129, i32 146 }, %struct.regmap_range { i32 149, i32 207 }, %struct.regmap_range { i32 260, i32 308 }, %struct.regmap_range { i32 385, i32 386 }], align 4
@da9063_bb_writeable_ranges = internal constant [7 x %struct.regmap_range] [%struct.regmap_range zeroinitializer, %struct.regmap_range { i32 5, i32 54 }, %struct.regmap_range { i32 64, i32 75 }, %struct.regmap_range { i32 129, i32 146 }, %struct.regmap_range { i32 149, i32 207 }, %struct.regmap_range { i32 270, i32 279 }, %struct.regmap_range { i32 289, i32 308 }], align 4
@da9063_bb_da_volatile_ranges = internal constant [9 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 9 }, %struct.regmap_range { i32 14, i32 15 }, %struct.regmap_range { i32 18, i32 19 }, %struct.regmap_range { i32 32, i32 48 }, %struct.regmap_range { i32 50, i32 52 }, %struct.regmap_range { i32 55, i32 79 }, %struct.regmap_range { i32 129, i32 129 }, %struct.regmap_range { i32 152, i32 152 }, %struct.regmap_range { i32 286, i32 287 }], align 4
@da9063_da_readable_ranges = internal constant [5 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 79 }, %struct.regmap_range { i32 129, i32 146 }, %struct.regmap_range { i32 149, i32 207 }, %struct.regmap_range { i32 260, i32 300 }, %struct.regmap_range { i32 385, i32 386 }], align 4
@da9063_da_writeable_ranges = internal constant [7 x %struct.regmap_range] [%struct.regmap_range zeroinitializer, %struct.regmap_range { i32 5, i32 54 }, %struct.regmap_range { i32 64, i32 75 }, %struct.regmap_range { i32 129, i32 146 }, %struct.regmap_range { i32 149, i32 207 }, %struct.regmap_range { i32 270, i32 279 }, %struct.regmap_range { i32 289, i32 300 }], align 4
@da9063l_bb_readable_ranges = internal constant [5 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 63 }, %struct.regmap_range { i32 129, i32 146 }, %struct.regmap_range { i32 149, i32 207 }, %struct.regmap_range { i32 260, i32 308 }, %struct.regmap_range { i32 385, i32 386 }], align 4
@da9063l_bb_writeable_ranges = internal constant [6 x %struct.regmap_range] [%struct.regmap_range zeroinitializer, %struct.regmap_range { i32 5, i32 54 }, %struct.regmap_range { i32 129, i32 146 }, %struct.regmap_range { i32 149, i32 207 }, %struct.regmap_range { i32 270, i32 279 }, %struct.regmap_range { i32 289, i32 308 }], align 4
@da9063l_bb_da_volatile_ranges = internal constant [9 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 9 }, %struct.regmap_range { i32 14, i32 15 }, %struct.regmap_range { i32 18, i32 19 }, %struct.regmap_range { i32 32, i32 48 }, %struct.regmap_range { i32 50, i32 52 }, %struct.regmap_range { i32 55, i32 63 }, %struct.regmap_range { i32 129, i32 129 }, %struct.regmap_range { i32 152, i32 152 }, %struct.regmap_range { i32 286, i32 287 }], align 4
@da9063l_da_readable_ranges = internal constant [5 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 63 }, %struct.regmap_range { i32 129, i32 146 }, %struct.regmap_range { i32 149, i32 207 }, %struct.regmap_range { i32 260, i32 300 }, %struct.regmap_range { i32 385, i32 386 }], align 4
@da9063l_da_writeable_ranges = internal constant [6 x %struct.regmap_range] [%struct.regmap_range zeroinitializer, %struct.regmap_range { i32 5, i32 54 }, %struct.regmap_range { i32 129, i32 146 }, %struct.regmap_range { i32 149, i32 207 }, %struct.regmap_range { i32 270, i32 279 }, %struct.regmap_range { i32 289, i32 300 }], align 4

@__mod_of__da9063_dt_ids_device_table = dso_local alias [3 x %struct.of_device_id], ptr @da9063_dt_ids
@__mod_i2c__da9063_i2c_id_device_table = dso_local alias [3 x %struct.i2c_device_id], ptr @da9063_i2c_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @da9063_i2c_driver) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @da9063_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @da9063_i2c_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [3 x %struct.i2c_msg], align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca i8, align 1
  %6 = alloca [2 x i8], align 2
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 32, i32 noundef 3520) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %99, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %8, ptr %11, align 8
  store ptr %7, ptr %8, align 4
  %12 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.da9063, ptr %8, i32 0, i32 5
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.da9063, ptr %8, i32 0, i32 1
  store i32 %16, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #6
  store i16 0, ptr %6, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #6
  %18 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %18, i8 0, i32 28, i1 false) #6, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #6
  store i16 512, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 -127, ptr %5, align 1
  %19 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %20 = load i16, ptr %19, align 2
  store i16 %20, ptr %3, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %21, align 2
  store i16 2, ptr %18, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %22, align 4
  %23 = getelementptr inbounds [3 x %struct.i2c_msg], ptr %3, i32 0, i32 1
  store i16 %20, ptr %23, align 4
  %24 = getelementptr inbounds [3 x %struct.i2c_msg], ptr %3, i32 0, i32 1, i32 1
  store i16 0, ptr %24, align 2
  %25 = getelementptr inbounds [3 x %struct.i2c_msg], ptr %3, i32 0, i32 1, i32 2
  store i16 1, ptr %25, align 4
  %26 = getelementptr inbounds [3 x %struct.i2c_msg], ptr %3, i32 0, i32 1, i32 3
  store ptr %5, ptr %26, align 4
  %27 = getelementptr inbounds [3 x %struct.i2c_msg], ptr %3, i32 0, i32 2
  store i16 %20, ptr %27, align 4
  %28 = getelementptr inbounds [3 x %struct.i2c_msg], ptr %3, i32 0, i32 2, i32 1
  store i16 1, ptr %28, align 2
  %29 = getelementptr inbounds [3 x %struct.i2c_msg], ptr %3, i32 0, i32 2, i32 2
  store i16 2, ptr %29, align 4
  %30 = getelementptr inbounds [3 x %struct.i2c_msg], ptr %3, i32 0, i32 2, i32 3
  store ptr %6, ptr %30, align 4
  %31 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %3, i32 noundef 3) #6
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.9, i32 noundef %33) #7
  br label %39

36:                                               ; preds = %10
  %37 = icmp eq i32 %33, 3
  br i1 %37, label %41, label %38

38:                                               ; preds = %36
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.10) #7
  br label %39

39:                                               ; preds = %38, %35
  %40 = phi i32 [ -5, %38 ], [ %33, %35 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #6
  br label %47

41:                                               ; preds = %36
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #6
  %42 = load i8, ptr %6, align 2
  %43 = icmp eq i8 %42, 97
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = zext i8 %42 to i32
  %46 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.6, i32 noundef %45) #7
  br label %47

47:                                               ; preds = %44, %39
  %48 = phi i32 [ %40, %39 ], [ -19, %44 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #6
  br label %99

49:                                               ; preds = %41
  %50 = load ptr, ptr %8, align 4
  %51 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.7, i32 noundef 97, i32 noundef %53) #7
  %54 = load i8, ptr %51, align 1
  %55 = lshr i8 %54, 4
  %56 = getelementptr inbounds %struct.da9063, ptr %8, i32 0, i32 2
  store i8 %55, ptr %56, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #6
  %57 = load i32, ptr %17, align 4
  switch i32 %57, label %69 [
    i32 0, label %58
    i32 1, label %64
  ]

58:                                               ; preds = %49
  %59 = trunc i8 %55 to i4
  switch i4 %59, label %62 [
    i4 3, label %71
    i4 5, label %60
    i4 6, label %60
    i4 7, label %61
    i4 -8, label %61
  ]

60:                                               ; preds = %58, %58
  br label %71

61:                                               ; preds = %58, %58
  br label %71

62:                                               ; preds = %58
  %63 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.1) #7
  br label %99

64:                                               ; preds = %49
  %65 = trunc i8 %55 to i4
  switch i4 %65, label %67 [
    i4 5, label %71
    i4 6, label %71
    i4 7, label %66
    i4 -8, label %66
  ]

66:                                               ; preds = %64, %64
  br label %71

67:                                               ; preds = %64
  %68 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.2) #7
  br label %99

69:                                               ; preds = %49
  %70 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.3) #7
  br label %99

71:                                               ; preds = %66, %64, %64, %61, %60, %58
  %72 = phi ptr [ @da9063l_da_readable_table, %66 ], [ @da9063_bb_readable_table, %60 ], [ @da9063_da_readable_table, %61 ], [ @da9063_ad_readable_table, %58 ], [ @da9063l_bb_readable_table, %64 ], [ @da9063l_bb_readable_table, %64 ]
  %73 = phi ptr [ @da9063l_da_writeable_table, %66 ], [ @da9063_bb_writeable_table, %60 ], [ @da9063_da_writeable_table, %61 ], [ @da9063_ad_writeable_table, %58 ], [ @da9063l_bb_writeable_table, %64 ], [ @da9063l_bb_writeable_table, %64 ]
  %74 = phi ptr [ @da9063l_bb_da_volatile_table, %66 ], [ @da9063_bb_da_volatile_table, %60 ], [ @da9063_bb_da_volatile_table, %61 ], [ @da9063_ad_volatile_table, %58 ], [ @da9063l_bb_da_volatile_table, %64 ], [ @da9063l_bb_da_volatile_table, %64 ]
  store ptr %72, ptr getelementptr inbounds (%struct.regmap_config, ptr @da9063_regmap_config, i32 0, i32 21), align 4
  store ptr %73, ptr getelementptr inbounds (%struct.regmap_config, ptr @da9063_regmap_config, i32 0, i32 20), align 4
  store ptr %74, ptr getelementptr inbounds (%struct.regmap_config, ptr @da9063_regmap_config, i32 0, i32 22), align 4
  %75 = call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @da9063_regmap_config, ptr noundef null, ptr noundef null) #6
  %76 = getelementptr inbounds %struct.da9063, ptr %8, i32 0, i32 4
  store ptr %75, ptr %76, align 4
  %77 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = ptrtoint ptr %75 to i32
  %80 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.4, i32 noundef %79) #7
  br label %99

81:                                               ; preds = %71
  %82 = load ptr, ptr %31, align 8
  %83 = getelementptr inbounds %struct.i2c_adapter, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.i2c_algorithm, ptr %84, i32 0, i32 4
  %86 = load ptr, ptr %85, align 4
  %87 = call i32 %86(ptr noundef %82) #6
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %81
  %91 = load ptr, ptr %76, align 4
  %92 = call i32 @regmap_update_bits_base(ptr noundef %91, i32 noundef 271, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.5) #7
  br label %99

96:                                               ; preds = %90, %81
  %97 = load i32, ptr %12, align 4
  %98 = call i32 @da9063_device_init(ptr noundef nonnull %8, i32 noundef %97) #6
  br label %99

99:                                               ; preds = %96, %94, %78, %69, %67, %62, %47, %2
  %100 = phi i32 [ -19, %69 ], [ -19, %67 ], [ %79, %78 ], [ %92, %94 ], [ %98, %96 ], [ -19, %62 ], [ -12, %2 ], [ %48, %47 ]
  ret i32 %100
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da9063_device_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

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
