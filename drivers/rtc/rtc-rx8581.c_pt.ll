; ModuleID = '/llk/IR/drivers/rtc/rtc-rx8581.c_pt.bc'
source_filename = "../drivers/rtc/rtc-rx8581.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rx85x1_config = type { %struct.regmap_config, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rx8581 = type { ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@rx8581_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rx8581\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@rx8581_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"epson,rx8571\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rx8571_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"epson,rx8581\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rx8581_config }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [42 x i8] c"author=Martyn Welch <martyn.welch@ge.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [45 x i8] c"description=Epson RX-8571/RX-8581 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@rx8571_config = internal constant %struct.rx85x1_config { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 31, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, i32 2 }, align 4
@rx8581_config = internal constant %struct.rx85x1_config { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, i32 1 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@rx8581_driver = internal global %struct.i2c_driver { i32 0, ptr @rx8581_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rx8581_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rx8581_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"rtc-rx8581\00", align 1
@rx8581_probe.nvmem_cfg = internal global [2 x %struct.nvmem_config] [%struct.nvmem_config { ptr null, ptr @.str.1, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, ptr null, i8 0, ptr @rx85x1_nvram_read, ptr @rx85x1_nvram_write, ptr null, i32 1, i32 1, i32 1, ptr null, i8 0, ptr null }, %struct.nvmem_config { ptr null, ptr @.str.2, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, ptr null, i8 0, ptr @rx8571_nvram_read, ptr @rx8571_nvram_write, ptr null, i32 16, i32 1, i32 1, ptr null, i8 0, ptr null }], align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"rx85x1-\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"rx8571-\00", align 1
@rx8581_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @rx8581_rtc_read_time, ptr @rx8581_rtc_set_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"low voltage detected, date/time is not reliable.\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

@__mod_i2c__rx8581_id_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @rx8581_id
@__mod_of__rx8581_of_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @rx8581_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @rx8581_driver) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @rx8581_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx8581_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = tail call ptr @of_device_get_match_data(ptr noundef %3) #8
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @rx8581_config, ptr %4
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 8, i32 noundef 3520) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %45, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %7, ptr %10, align 8
  %11 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null, ptr noundef null) #8
  store ptr %11, ptr %7, align 4
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = ptrtoint ptr %11 to i32
  br label %45

15:                                               ; preds = %9
  %16 = tail call ptr @devm_rtc_allocate_device(ptr noundef %3) #8
  %17 = getelementptr inbounds %struct.rx8581, ptr %7, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = ptrtoint ptr %16 to i32
  br label %45

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.rtc_device, ptr %16, i32 0, i32 3
  store ptr @rx8581_rtc_ops, ptr %22, align 8
  %23 = load ptr, ptr %17, align 4
  %24 = getelementptr inbounds %struct.rtc_device, ptr %23, i32 0, i32 22
  store i64 946684800, ptr %24, align 8
  %25 = load ptr, ptr %17, align 4
  %26 = getelementptr inbounds %struct.rtc_device, ptr %25, i32 0, i32 23
  store i64 4102444799, ptr %26, align 8
  %27 = load ptr, ptr %17, align 4
  %28 = getelementptr inbounds %struct.rtc_device, ptr %27, i32 0, i32 24
  store i64 0, ptr %28, align 8
  %29 = load ptr, ptr %17, align 4
  %30 = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 26
  store i8 1, ptr %30, align 8
  %31 = load ptr, ptr %17, align 4
  %32 = tail call i32 @__devm_rtc_register_device(ptr noundef nonnull @__this_module, ptr noundef %31) #8
  %33 = getelementptr inbounds %struct.rx85x1_config, ptr %6, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %36, %21
  %37 = phi i32 [ %42, %36 ], [ 0, %21 ]
  %38 = getelementptr [2 x %struct.nvmem_config], ptr @rx8581_probe.nvmem_cfg, i32 0, i32 %37
  %39 = getelementptr [2 x %struct.nvmem_config], ptr @rx8581_probe.nvmem_cfg, i32 0, i32 %37, i32 21
  store ptr %7, ptr %39, align 4
  %40 = load ptr, ptr %17, align 4
  %41 = tail call i32 @devm_rtc_nvmem_register(ptr noundef %40, ptr noundef %38) #8
  %42 = add nuw i32 %37, 1
  %43 = load i32, ptr %33, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %36, label %45

45:                                               ; preds = %36, %21, %19, %13, %2
  %46 = phi i32 [ %14, %13 ], [ %20, %19 ], [ -12, %2 ], [ %32, %21 ], [ %32, %36 ]
  ret i32 %46
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx85x1_nvram_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = load ptr, ptr %0, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 7, ptr noundef nonnull %5) #8
  %8 = load i32, ptr %5, align 4
  %9 = trunc i32 %8 to i8
  store i8 %9, ptr %2, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx85x1_nvram_write(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = load i8, ptr %2, align 1
  %6 = load ptr, ptr %0, align 4
  %7 = zext i8 %5 to i32
  %8 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 7, i32 noundef %7) #8
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx8571_nvram_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = load ptr, ptr %0, align 4
  %6 = add i32 %1, 16
  %7 = tail call i32 @regmap_bulk_read(ptr noundef %5, i32 noundef %6, ptr noundef %2, i32 noundef %3) #8
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx8571_nvram_write(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = load ptr, ptr %0, align 4
  %6 = add i32 %1, 16
  %7 = tail call i32 @regmap_bulk_write(ptr noundef %5, i32 noundef %6, ptr noundef %2, i32 noundef %3) #8
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rtc_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx8581_rtc_read_time(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [7 x i8], align 1
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %3, i8 0, i32 7, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 14, ptr noundef nonnull %4) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %75, label %10

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.3) #9
  br label %75

15:                                               ; preds = %32, %10
  %16 = phi i32 [ %33, %32 ], [ %11, %10 ]
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %6, align 4
  %21 = and i32 %16, -33
  %22 = call i32 @regmap_write(ptr noundef %20, i32 noundef 14, i32 noundef %21) #8
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %75, label %24

24:                                               ; preds = %19, %15
  %25 = load ptr, ptr %6, align 4
  %26 = call i32 @regmap_bulk_read(ptr noundef %25, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 7) #8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %75, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %6, align 4
  %30 = call i32 @regmap_read(ptr noundef %29, i32 noundef 14, ptr noundef nonnull %4) #8
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %75, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %4, align 4
  %34 = and i32 %33, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %15

36:                                               ; preds = %32
  %37 = load i8, ptr %3, align 1
  %38 = and i8 %37, 127
  %39 = call i32 @_bcd2bin(i8 noundef zeroext %38) #10
  store i32 %39, ptr %1, align 4
  %40 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, 127
  %43 = call i32 @_bcd2bin(i8 noundef zeroext %42) #10
  %44 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 2
  %46 = load i8, ptr %45, align 1
  %47 = and i8 %46, 63
  %48 = call i32 @_bcd2bin(i8 noundef zeroext %47) #10
  %49 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 3
  %51 = load i8, ptr %50, align 1
  %52 = and i8 %51, 127
  %53 = icmp eq i8 %52, 0
  %54 = zext i8 %52 to i32
  %55 = call i32 @llvm.ctlz.i32(i32 %54, i1 false) #8, !range !9
  %56 = sub nsw i32 31, %55
  %57 = select i1 %53, i32 -1, i32 %56
  %58 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 4
  %60 = load i8, ptr %59, align 1
  %61 = and i8 %60, 63
  %62 = call i32 @_bcd2bin(i8 noundef zeroext %61) #10
  %63 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 5
  %65 = load i8, ptr %64, align 1
  %66 = and i8 %65, 31
  %67 = call i32 @_bcd2bin(i8 noundef zeroext %66) #10
  %68 = add i32 %67, -1
  %69 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  store i32 %68, ptr %69, align 4
  %70 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 6
  %71 = load i8, ptr %70, align 1
  %72 = call i32 @_bcd2bin(i8 noundef zeroext %71) #10
  %73 = add i32 %72, 100
  %74 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  store i32 %73, ptr %74, align 4
  br label %75

75:                                               ; preds = %36, %28, %24, %19, %14, %2
  %76 = phi i32 [ -22, %14 ], [ 0, %36 ], [ %8, %2 ], [ %30, %28 ], [ %26, %24 ], [ %22, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #8
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx8581_rtc_set_time(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [7 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #8
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = load i32, ptr %1, align 4
  %7 = tail call zeroext i8 @_bin2bcd(i32 noundef %6) #10
  store i8 %7, ptr %3, align 1
  %8 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = tail call zeroext i8 @_bin2bcd(i32 noundef %9) #10
  %11 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 1
  store i8 %10, ptr %11, align 1
  %12 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #10
  %15 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 2
  store i8 %14, ptr %15, align 1
  %16 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #10
  %19 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 4
  store i8 %18, ptr %19, align 1
  %20 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  %23 = tail call zeroext i8 @_bin2bcd(i32 noundef %22) #10
  %24 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 5
  store i8 %23, ptr %24, align 1
  %25 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -100
  %28 = tail call zeroext i8 @_bin2bcd(i32 noundef %27) #10
  %29 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 6
  store i8 %28, ptr %29, align 1
  %30 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = shl nuw i32 1, %31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 3
  store i8 %33, ptr %34, align 1
  %35 = load ptr, ptr %5, align 4
  %36 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 15, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %2
  %39 = load ptr, ptr %5, align 4
  %40 = call i32 @regmap_bulk_write(ptr noundef %39, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 7) #8
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %5, align 4
  %44 = call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 14, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %5, align 4
  %48 = call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 15, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %49

49:                                               ; preds = %46, %42, %38, %2
  %50 = phi i32 [ %48, %46 ], [ %36, %2 ], [ %40, %38 ], [ %44, %42 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #8
  ret i32 %50
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone willreturn }

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
!9 = !{i32 0, i32 33}
