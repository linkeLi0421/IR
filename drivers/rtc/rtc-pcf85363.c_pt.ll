; ModuleID = '/llk/IR/drivers/rtc/rtc-pcf85363.c_pt.bc'
source_filename = "../drivers/rtc/rtc-pcf85363.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pcf85x63_config = type { %struct.regmap_config, i32 }
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
%struct.pcf85363 = type { ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@dev_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pcf85263\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pcf_85263_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pcf85363\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pcf_85363_config }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [19 x i8] c"author=Eric Nelson\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [45 x i8] c"description=pcf85263/pcf85363 I2C RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@pcf_85263_config = internal constant %struct.pcf85x63_config { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 47, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, i32 1 }, align 4
@pcf_85363_config = internal constant %struct.pcf85x63_config { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 127, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, i32 2 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@pcf85363_driver = internal global %struct.i2c_driver { i32 0, ptr @pcf85363_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dev_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [9 x i8] c"pcf85363\00", align 1
@pcf85363_probe.nvmem_cfg = internal global [2 x %struct.nvmem_config] [%struct.nvmem_config { ptr null, ptr @.str.1, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, ptr null, i8 0, ptr @pcf85x63_nvram_read, ptr @pcf85x63_nvram_write, ptr null, i32 1, i32 1, i32 1, ptr null, i8 0, ptr null }, %struct.nvmem_config { ptr null, ptr @.str.2, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, ptr null, i8 0, ptr @pcf85363_nvram_read, ptr @pcf85363_nvram_write, ptr null, i32 64, i32 1, i32 1, ptr null, i8 0, ptr null }], align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"pcf85x63-\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"pcf85363-\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"regmap allocation failed\0A\00", align 1
@rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @pcf85363_rtc_read_time, ptr @pcf85363_rtc_set_time, ptr @pcf85363_rtc_read_alarm, ptr @pcf85363_rtc_set_alarm, ptr null, ptr @pcf85363_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"unable to request IRQ, alarms disabled\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"%s: error %d\0A\00", align 1
@__func__.pcf85363_rtc_read_time = private unnamed_addr constant [23 x i8] c"pcf85363_rtc_read_time\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

@__mod_of__dev_ids_device_table = dso_local alias [3 x %struct.of_device_id], ptr @dev_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @pcf85363_driver) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @pcf85363_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcf85363_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = tail call ptr @of_device_get_match_data(ptr noundef %3) #7
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @pcf_85363_config, ptr %4
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 8, i32 noundef 3520) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %59, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null, ptr noundef null) #7
  %11 = getelementptr inbounds %struct.pcf85363, ptr %7, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #8
  %14 = ptrtoint ptr %10 to i32
  br label %59

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %7, ptr %16, align 8
  %17 = tail call ptr @devm_rtc_allocate_device(ptr noundef %3) #7
  store ptr %17, ptr %7, align 4
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = ptrtoint ptr %17 to i32
  br label %59

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.rtc_device, ptr %17, i32 0, i32 3
  store ptr @rtc_ops, ptr %22, align 8
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr inbounds %struct.rtc_device, ptr %23, i32 0, i32 22
  store i64 946684800, ptr %24, align 8
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr inbounds %struct.rtc_device, ptr %25, i32 0, i32 23
  store i64 4102444799, ptr %26, align 8
  %27 = load ptr, ptr %7, align 4
  %28 = getelementptr inbounds %struct.rtc_device, ptr %27, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %28) #7
  %29 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %21
  %33 = load ptr, ptr %11, align 4
  %34 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 43, i32 noundef 0) #7
  %35 = load ptr, ptr %11, align 4
  %36 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 39, i32 noundef 2, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %37 = load i32, ptr %29, align 4
  %38 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %37, ptr noundef null, ptr noundef nonnull @pcf85363_rtc_handle_irq, i32 noundef 8200, ptr noundef nonnull @.str, ptr noundef %0) #7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.4) #8
  br label %44

41:                                               ; preds = %32
  %42 = load ptr, ptr %7, align 4
  %43 = getelementptr inbounds %struct.rtc_device, ptr %42, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 0, ptr noundef %43) #7
  br label %44

44:                                               ; preds = %41, %40, %21
  %45 = load ptr, ptr %7, align 4
  %46 = tail call i32 @__devm_rtc_register_device(ptr noundef nonnull @__this_module, ptr noundef %45) #7
  %47 = getelementptr inbounds %struct.pcf85x63_config, ptr %6, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %50, %44
  %51 = phi i32 [ %56, %50 ], [ 0, %44 ]
  %52 = getelementptr [2 x %struct.nvmem_config], ptr @pcf85363_probe.nvmem_cfg, i32 0, i32 %51
  %53 = getelementptr [2 x %struct.nvmem_config], ptr @pcf85363_probe.nvmem_cfg, i32 0, i32 %51, i32 21
  store ptr %7, ptr %53, align 4
  %54 = load ptr, ptr %7, align 4
  %55 = tail call i32 @devm_rtc_nvmem_register(ptr noundef %54, ptr noundef %52) #7
  %56 = add nuw i32 %51, 1
  %57 = load i32, ptr %47, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %50, label %59

59:                                               ; preds = %50, %44, %19, %13, %2
  %60 = phi i32 [ %14, %13 ], [ %20, %19 ], [ -12, %2 ], [ %46, %44 ], [ %46, %50 ]
  ret i32 %60
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcf85x63_nvram_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.pcf85363, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 44, ptr noundef nonnull %5) #7
  %9 = load i32, ptr %5, align 4
  %10 = trunc i32 %9 to i8
  store i8 %10, ptr %2, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcf85x63_nvram_write(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = load i8, ptr %2, align 1
  %6 = getelementptr inbounds %struct.pcf85363, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = zext i8 %5 to i32
  %9 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 44, i32 noundef %8) #7
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcf85363_nvram_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.pcf85363, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = add i32 %1, 64
  %8 = tail call i32 @regmap_bulk_read(ptr noundef %6, i32 noundef %7, ptr noundef %2, i32 noundef %3) #7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcf85363_nvram_write(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.pcf85363, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = add i32 %1, 64
  %8 = tail call i32 @regmap_bulk_write(ptr noundef %6, i32 noundef %7, ptr noundef %2, i32 noundef %3) #7
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcf85363_rtc_handle_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.pcf85363, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 43, ptr noundef nonnull %3) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i32, ptr %3, align 4
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %5, align 4
  call void @rtc_update_irq(ptr noundef %15, i32 noundef 1, i32 noundef 160) #7
  %16 = load ptr, ptr %6, align 4
  %17 = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 43, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %18

18:                                               ; preds = %14, %10, %2
  %19 = phi i32 [ 1, %14 ], [ 0, %2 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %19
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rtc_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcf85363_rtc_read_time(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [8 x i8], align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 0, ptr %3, align 8, !annotation !8
  %6 = getelementptr inbounds %struct.pcf85363, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 8) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pcf85363_rtc_read_time, i32 noundef %8) #8
  br label %44

11:                                               ; preds = %2
  %12 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 7
  %13 = load i8, ptr %12, align 1
  %14 = call i32 @_bcd2bin(i8 noundef zeroext %13) #9
  %15 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %16 = add i32 %14, 100
  store i32 %16, ptr %15, align 4
  %17 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 5
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, 7
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, 127
  %25 = call i32 @_bcd2bin(i8 noundef zeroext %24) #9
  store i32 %25, ptr %1, align 4
  %26 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 2
  %27 = load i8, ptr %26, align 2
  %28 = and i8 %27, 127
  %29 = call i32 @_bcd2bin(i8 noundef zeroext %28) #9
  %30 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 3
  %32 = load i8, ptr %31, align 1
  %33 = call i32 @_bcd2bin(i8 noundef zeroext %32) #9
  %34 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 4
  %36 = load i8, ptr %35, align 4
  %37 = call i32 @_bcd2bin(i8 noundef zeroext %36) #9
  %38 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 6
  %40 = load i8, ptr %39, align 2
  %41 = call i32 @_bcd2bin(i8 noundef zeroext %40) #9
  %42 = add i32 %41, -1
  %43 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  store i32 %42, ptr %43, align 4
  br label %44

44:                                               ; preds = %11, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcf85363_rtc_set_time(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [11 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %3) #7
  %6 = getelementptr inbounds i8, ptr %3, i32 10
  store i8 0, ptr %6, align 1, !annotation !8
  %7 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 2
  store i8 1, ptr %3, align 1
  %8 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 1
  store i8 -92, ptr %8, align 1
  store i8 0, ptr %7, align 1
  %9 = load i32, ptr %1, align 4
  %10 = tail call zeroext i8 @_bin2bcd(i32 noundef %9) #9
  %11 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 3
  store i8 %10, ptr %11, align 1
  %12 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #9
  %15 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 4
  store i8 %14, ptr %15, align 1
  %16 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #9
  %19 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 5
  store i8 %18, ptr %19, align 1
  %20 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = tail call zeroext i8 @_bin2bcd(i32 noundef %21) #9
  %23 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 6
  store i8 %22, ptr %23, align 1
  %24 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 7
  store i8 %26, ptr %27, align 1
  %28 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  %31 = tail call zeroext i8 @_bin2bcd(i32 noundef %30) #9
  %32 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 8
  store i8 %31, ptr %32, align 1
  %33 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = srem i32 %34, 100
  %36 = tail call zeroext i8 @_bin2bcd(i32 noundef %35) #9
  %37 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 9
  store i8 %36, ptr %37, align 1
  %38 = getelementptr inbounds %struct.pcf85363, ptr %5, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = call i32 @regmap_bulk_write(ptr noundef %39, i32 noundef 46, ptr noundef nonnull %3, i32 noundef 2) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %2
  %43 = load ptr, ptr %38, align 4
  %44 = call i32 @regmap_bulk_write(ptr noundef %43, i32 noundef 0, ptr noundef %7, i32 noundef 9) #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load ptr, ptr %38, align 4
  %48 = call i32 @regmap_write(ptr noundef %47, i32 noundef 46, i32 noundef 0) #7
  br label %49

49:                                               ; preds = %46, %42, %2
  %50 = phi i32 [ %48, %46 ], [ %40, %2 ], [ %44, %42 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %3) #7
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcf85363_rtc_read_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [5 x i8], align 1
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %3, i8 0, i32 5, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.pcf85363, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef 8, ptr noundef nonnull %3, i32 noundef 5) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %2
  %12 = load i8, ptr %3, align 1
  %13 = call i32 @_bcd2bin(i8 noundef zeroext %12) #9
  %14 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds [5 x i8], ptr %3, i32 0, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = call i32 @_bcd2bin(i8 noundef zeroext %16) #9
  %18 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds [5 x i8], ptr %3, i32 0, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = call i32 @_bcd2bin(i8 noundef zeroext %20) #9
  %22 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds [5 x i8], ptr %3, i32 0, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = call i32 @_bcd2bin(i8 noundef zeroext %24) #9
  %26 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds [5 x i8], ptr %3, i32 0, i32 4
  %28 = load i8, ptr %27, align 1
  %29 = call i32 @_bcd2bin(i8 noundef zeroext %28) #9
  %30 = add i32 %29, -1
  %31 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  store i32 %30, ptr %31, align 4
  %32 = load ptr, ptr %7, align 4
  %33 = call i32 @regmap_read(ptr noundef %32, i32 noundef 41, ptr noundef nonnull %4) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %11
  %36 = load i32, ptr %4, align 4
  %37 = trunc i32 %36 to i8
  %38 = lshr i8 %37, 4
  %39 = and i8 %38, 1
  store i8 %39, ptr %1, align 4
  br label %40

40:                                               ; preds = %35, %11, %2
  %41 = phi i32 [ 0, %35 ], [ %9, %2 ], [ %33, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #7
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcf85363_rtc_set_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [5 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #7
  %6 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = tail call zeroext i8 @_bin2bcd(i32 noundef %7) #9
  store i8 %8, ptr %3, align 1
  %9 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = tail call zeroext i8 @_bin2bcd(i32 noundef %10) #9
  %12 = getelementptr inbounds [5 x i8], ptr %3, i32 0, i32 1
  store i8 %11, ptr %12, align 1
  %13 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #9
  %16 = getelementptr inbounds [5 x i8], ptr %3, i32 0, i32 2
  store i8 %15, ptr %16, align 1
  %17 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = tail call zeroext i8 @_bin2bcd(i32 noundef %18) #9
  %20 = getelementptr inbounds [5 x i8], ptr %3, i32 0, i32 3
  store i8 %19, ptr %20, align 1
  %21 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1
  %24 = tail call zeroext i8 @_bin2bcd(i32 noundef %23) #9
  %25 = getelementptr inbounds [5 x i8], ptr %3, i32 0, i32 4
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds %struct.pcf85363, ptr %5, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 16, i32 noundef 31, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %2
  %31 = load ptr, ptr %26, align 4
  %32 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 41, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %30
  %35 = load ptr, ptr %26, align 4
  %36 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 43, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load ptr, ptr %26, align 4
  %40 = call i32 @regmap_bulk_write(ptr noundef %39, i32 noundef 8, ptr noundef nonnull %3, i32 noundef 5) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load i8, ptr %1, align 4
  %44 = load ptr, ptr %26, align 4
  %45 = icmp eq i8 %43, 0
  %46 = select i1 %45, i32 0, i32 31
  %47 = call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 16, i32 noundef 31, i32 noundef %46, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = zext i8 %43 to i32
  %51 = load ptr, ptr %26, align 4
  %52 = select i1 %45, i32 0, i32 16
  %53 = call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 41, i32 noundef 16, i32 noundef %52, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %54 = or i32 %53, %50
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load ptr, ptr %26, align 4
  %58 = call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 43, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %59

59:                                               ; preds = %56, %49, %42, %38, %34, %30, %2
  %60 = phi i32 [ %36, %34 ], [ %40, %38 ], [ %58, %56 ], [ %47, %42 ], [ %53, %49 ], [ %32, %30 ], [ %28, %2 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #7
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcf85363_rtc_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pcf85363, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq i32 %1, 0
  %8 = select i1 %7, i32 0, i32 31
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 16, i32 noundef 31, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 4
  %13 = select i1 %7, i32 0, i32 16
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 41, i32 noundef 16, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %15 = or i32 %14, %1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load ptr, ptr %5, align 4
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 43, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %20

20:                                               ; preds = %17, %11, %2
  %21 = phi i32 [ %19, %17 ], [ %9, %2 ], [ %14, %11 ]
  ret i32 %21
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone willreturn }

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
