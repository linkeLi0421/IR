; ModuleID = '/llk/IR/drivers/rtc/rtc-hym8563.c_pt.bc'
source_filename = "../drivers/rtc/rtc-hym8563.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.hym8563 = type { ptr, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@hym8563_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"hym8563\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@hym8563_dt_idtable = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"haoyu,hym8563\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [40 x i8] c"author=Heiko Stuebner <heiko@sntech.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [31 x i8] c"description=HYM8563 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@hym8563_driver = internal global %struct.i2c_driver { i32 0, ptr @hym8563_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hym8563_dt_idtable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hym8563_pm_ops, ptr null, ptr null }, ptr @hym8563_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [12 x i8] c"rtc-hym8563\00", align 1
@hym8563_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @hym8563_suspend, ptr @hym8563_resume, ptr @hym8563_suspend, ptr @hym8563_resume, ptr @hym8563_suspend, ptr @hym8563_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"could not init device, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"irq %d request failed, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@hym8563_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @hym8563_rtc_read_time, ptr @hym8563_rtc_set_time, ptr @hym8563_rtc_read_alarm, ptr @hym8563_rtc_set_alarm, ptr null, ptr @hym8563_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"%s: error reading i2c data %d\0A\00", align 1
@__func__.hym8563_irq = private unnamed_addr constant [12 x i8] c"hym8563_irq\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"%s: error writing i2c data %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"no valid clock/calendar values available\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"hym8563-clkout\00", align 1
@hym8563_clkout_ops = internal constant %struct.clk_ops { ptr @hym8563_clkout_prepare, ptr @hym8563_clkout_unprepare, ptr @hym8563_clkout_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hym8563_clkout_recalc_rate, ptr @hym8563_clkout_round_rate, ptr null, ptr null, ptr null, ptr @hym8563_clkout_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@clkout_rates = internal unnamed_addr constant [4 x i32] [i32 32768, i32 1024, i32 32, i32 1], align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"enable_irq_wake failed, %d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

@__mod_i2c__hym8563_id_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @hym8563_id
@__mod_of__hym8563_dt_idtable_device_table = dso_local alias [2 x %struct.of_device_id], ptr @hym8563_dt_idtable

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @hym8563_driver) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @hym8563_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hym8563_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca %struct.clk_init_data, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 20, i32 noundef 3520) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %76, label %7

7:                                                ; preds = %2
  store ptr %0, ptr %5, align 4
  %8 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %5, ptr %8, align 8
  %9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext 1) #9
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %11
  %15 = and i32 %12, 8
  %16 = xor i32 %15, -4
  %17 = and i32 %16, %12
  %18 = and i32 %12, 4
  %19 = icmp eq i32 %18, 0
  %20 = and i32 %17, 232
  %21 = select i1 %19, i32 %17, i32 %20
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, -20
  %24 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext %23) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %14, %11, %7
  %27 = phi i32 [ %24, %14 ], [ %12, %11 ], [ %9, %7 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %27) #10
  br label %76

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 2
  %34 = tail call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %30, ptr noundef null, ptr noundef nonnull @hym8563_irq, i32 noundef 8200, ptr noundef %33, ptr noundef nonnull %5) #9
  %35 = icmp slt i32 %34, 0
  %36 = load i32, ptr %29, align 4
  br i1 %35, label %37, label %38

37:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef %36, i32 noundef %34) #10
  br label %76

38:                                               ; preds = %32
  %39 = icmp sgt i32 %36, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %38, %28
  %41 = tail call zeroext i1 @device_property_present(ptr noundef %4, ptr noundef nonnull @.str.3) #9
  br i1 %41, label %42, label %44

42:                                               ; preds = %40, %38
  %43 = tail call i32 @device_init_wakeup(ptr noundef %4, i1 noundef zeroext true) #9
  br label %44

44:                                               ; preds = %42, %40
  %45 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext 2) #9
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %76, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 2
  %49 = tail call ptr @devm_rtc_device_register(ptr noundef %4, ptr noundef %48, ptr noundef nonnull @hym8563_rtc_ops, ptr noundef nonnull @__this_module) #9
  %50 = getelementptr inbounds %struct.hym8563, ptr %5, i32 0, i32 1
  store ptr %49, ptr %50, align 4
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = ptrtoint ptr %49 to i32
  br label %76

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.rtc_device, ptr %49, i32 0, i32 19
  store i32 1, ptr %55, align 4
  %56 = load ptr, ptr %5, align 4
  %57 = getelementptr inbounds %struct.i2c_client, ptr %56, i32 0, i32 4, i32 25
  %58 = load ptr, ptr %57, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #9
  %59 = getelementptr inbounds i8, ptr %3, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %59, i8 0, i32 12, i1 false) #9, !annotation !8
  %60 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %56, i8 noundef zeroext 13, i8 noundef zeroext 0) #9
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.i2c_client, ptr %56, i32 0, i32 4
  store ptr @.str.7, ptr %3, align 4
  %64 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 1
  store ptr @hym8563_clkout_ops, ptr %64, align 4
  %65 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 6
  store i32 0, ptr %65, align 4
  %66 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  store ptr null, ptr %66, align 4
  %67 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 5
  store i8 0, ptr %67, align 4
  %68 = getelementptr inbounds %struct.hym8563, ptr %5, i32 0, i32 2
  %69 = getelementptr inbounds %struct.hym8563, ptr %5, i32 0, i32 2, i32 2
  store ptr %3, ptr %69, align 4
  %70 = call i32 @of_property_read_string(ptr noundef %58, ptr noundef nonnull @.str.8, ptr noundef nonnull %3) #9
  %71 = call ptr @clk_register(ptr noundef %63, ptr noundef %68) #9
  %72 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %75, label %73

73:                                               ; preds = %62
  %74 = call i32 @of_clk_add_provider(ptr noundef %58, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %71) #9
  br label %75

75:                                               ; preds = %73, %62, %54
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #9
  br label %76

76:                                               ; preds = %75, %52, %44, %37, %26, %2
  %77 = phi i32 [ %27, %26 ], [ %34, %37 ], [ %53, %52 ], [ 0, %75 ], [ -12, %2 ], [ %45, %44 ]
  ret i32 %77
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hym8563_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.hym8563, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rtc_device, ptr %5, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %6) #9
  %7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hym8563_irq, i32 noundef %7) #10
  br label %18

11:                                               ; preds = %2
  %12 = trunc i32 %7 to i8
  %13 = and i8 %12, -9
  %14 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext %13) #9
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hym8563_irq, i32 noundef %14) #10
  br label %18

18:                                               ; preds = %16, %11, %9
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.rtc_device, ptr %19, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %20) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hym8563_rtc_read_time(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [7 x i8], align 1
  %4 = getelementptr i8, ptr %0, i32 -32
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %3, i8 0, i32 7, i1 false), !annotation !8
  %5 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %4, i8 noundef zeroext 2, i8 noundef zeroext 7, ptr noundef nonnull %3) #9
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %45, label %7

7:                                                ; preds = %2
  %8 = load i8, ptr %3, align 1
  %9 = icmp sgt i8 %8, -1
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.6) #10
  br label %45

11:                                               ; preds = %7
  %12 = and i8 %8, 127
  %13 = call i32 @_bcd2bin(i8 noundef zeroext %12) #11
  store i32 %13, ptr %1, align 4
  %14 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 127
  %17 = call i32 @_bcd2bin(i8 noundef zeroext %16) #11
  %18 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 63
  %22 = call i32 @_bcd2bin(i8 noundef zeroext %21) #11
  %23 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 3
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %25, 63
  %27 = call i32 @_bcd2bin(i8 noundef zeroext %26) #11
  %28 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 4
  %30 = load i8, ptr %29, align 1
  %31 = and i8 %30, 7
  %32 = call i32 @_bcd2bin(i8 noundef zeroext %31) #11
  %33 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 5
  %35 = load i8, ptr %34, align 1
  %36 = and i8 %35, 31
  %37 = call i32 @_bcd2bin(i8 noundef zeroext %36) #11
  %38 = add i32 %37, -1
  %39 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 6
  %41 = load i8, ptr %40, align 1
  %42 = call i32 @_bcd2bin(i8 noundef zeroext %41) #11
  %43 = add i32 %42, 100
  %44 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  store i32 %43, ptr %44, align 4
  br label %45

45:                                               ; preds = %11, %10, %2
  %46 = phi i32 [ -22, %10 ], [ 0, %11 ], [ %5, %2 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #9
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hym8563_rtc_set_time(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [7 x i8], align 1
  %4 = getelementptr i8, ptr %0, i32 -32
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #9
  %5 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -200
  %8 = icmp ult i32 %7, -100
  br i1 %8, label %44, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr %1, align 4
  %11 = tail call zeroext i8 @_bin2bcd(i32 noundef %10) #11
  store i8 %11, ptr %3, align 1
  %12 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #11
  %15 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 1
  store i8 %14, ptr %15, align 1
  %16 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #11
  %19 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 2
  store i8 %18, ptr %19, align 1
  %20 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = tail call zeroext i8 @_bin2bcd(i32 noundef %21) #11
  %23 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 3
  store i8 %22, ptr %23, align 1
  %24 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = tail call zeroext i8 @_bin2bcd(i32 noundef %25) #11
  %27 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 4
  store i8 %26, ptr %27, align 1
  %28 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  %31 = tail call zeroext i8 @_bin2bcd(i32 noundef %30) #11
  %32 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 5
  store i8 %31, ptr %32, align 1
  %33 = add nsw i32 %6, -100
  %34 = tail call zeroext i8 @_bin2bcd(i32 noundef %33) #11
  %35 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 6
  store i8 %34, ptr %35, align 1
  %36 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext 32) #9
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %9
  %39 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %4, i8 noundef zeroext 2, i8 noundef zeroext 7, ptr noundef nonnull %3) #9
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %43 = call i32 @llvm.smin.i32(i32 %42, i32 0)
  br label %44

44:                                               ; preds = %41, %38, %9, %2
  %45 = phi i32 [ -22, %2 ], [ %36, %9 ], [ %39, %38 ], [ %43, %41 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #9
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hym8563_rtc_read_alarm(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [4 x i8], align 4
  %4 = getelementptr i8, ptr %0, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %4, i8 noundef zeroext 9, i8 noundef zeroext 4, ptr noundef nonnull %3) #9
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %50, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  store i32 0, ptr %8, align 4
  %9 = load i8, ptr %3, align 4
  %10 = icmp sgt i8 %9, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = and i8 %9, 127
  %13 = call i32 @_bcd2bin(i8 noundef zeroext %12) #11
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi i32 [ -1, %7 ], [ %13, %11 ]
  %16 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = icmp sgt i8 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = and i8 %18, 63
  %22 = call i32 @_bcd2bin(i8 noundef zeroext %21) #11
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi i32 [ -1, %14 ], [ %22, %20 ]
  %25 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  %27 = load i8, ptr %26, align 2
  %28 = icmp sgt i8 %27, -1
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = and i8 %27, 63
  %31 = call i32 @_bcd2bin(i8 noundef zeroext %30) #11
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi i32 [ -1, %23 ], [ %31, %29 ]
  %34 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = icmp sgt i8 %36, -1
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = and i8 %36, 7
  %40 = call i32 @_bcd2bin(i8 noundef zeroext %39) #11
  br label %41

41:                                               ; preds = %38, %32
  %42 = phi i32 [ -1, %32 ], [ %40, %38 ]
  %43 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  store i32 %42, ptr %43, align 4
  %44 = call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 1) #9
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = and i32 %44, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store i8 1, ptr %1, align 4
  br label %50

50:                                               ; preds = %49, %46, %41, %2
  %51 = phi i32 [ %5, %2 ], [ %44, %41 ], [ 0, %49 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hym8563_rtc_set_alarm(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca [4 x i8], align 4
  %4 = getelementptr i8, ptr %0, i32 -32
  %5 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  store i32 0, ptr %5, align 4
  %9 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 4
  %12 = icmp sgt i32 %11, 59
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  store i32 0, ptr %9, align 4
  %14 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  %17 = icmp sgt i32 %16, 23
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  store i32 0, ptr %14, align 4
  %19 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 1
  %22 = icmp sgt i32 %21, 31
  %23 = select i1 %22, i32 0, i32 %21
  store i32 %23, ptr %19, align 4
  br label %24

24:                                               ; preds = %18, %13, %8, %2
  %25 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 1) #9
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %78, label %27

27:                                               ; preds = %24
  %28 = trunc i32 %25 to i8
  %29 = and i8 %28, -3
  %30 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext %29) #9
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %78, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp ult i32 %34, 60
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = tail call zeroext i8 @_bin2bcd(i32 noundef %34) #11
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i8 [ %37, %36 ], [ -128, %32 ]
  store i8 %39, ptr %3, align 4
  %40 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = icmp ult i32 %41, 24
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = tail call zeroext i8 @_bin2bcd(i32 noundef %41) #11
  br label %45

45:                                               ; preds = %43, %38
  %46 = phi i8 [ %44, %43 ], [ -128, %38 ]
  %47 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  store i8 %46, ptr %47, align 1
  %48 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, -1
  %51 = icmp ult i32 %50, 31
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = tail call zeroext i8 @_bin2bcd(i32 noundef %49) #11
  br label %54

54:                                               ; preds = %52, %45
  %55 = phi i8 [ %53, %52 ], [ -128, %45 ]
  %56 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  store i8 %55, ptr %56, align 2
  %57 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = icmp ult i32 %58, 7
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = tail call zeroext i8 @_bin2bcd(i32 noundef %58) #11
  br label %62

62:                                               ; preds = %60, %54
  %63 = phi i8 [ %61, %60 ], [ -128, %54 ]
  %64 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 3
  store i8 %63, ptr %64, align 1
  %65 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %4, i8 noundef zeroext 9, i8 noundef zeroext 4, ptr noundef nonnull %3) #9
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %62
  %68 = load i8, ptr %1, align 4
  %69 = call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 1) #9
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %67
  %72 = icmp eq i8 %68, 0
  %73 = and i32 %69, 253
  %74 = select i1 %72, i32 0, i32 2
  %75 = or i32 %73, %74
  %76 = trunc i32 %75 to i8
  %77 = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext %76) #9
  br label %78

78:                                               ; preds = %71, %67, %62, %27, %24
  %79 = phi i32 [ %25, %24 ], [ %30, %27 ], [ %65, %62 ], [ %77, %71 ], [ %69, %67 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hym8563_rtc_alarm_irq_enable(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -32
  %4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #9
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  %8 = and i32 %4, 253
  %9 = select i1 %7, i32 0, i32 2
  %10 = or i32 %8, %9
  %11 = trunc i32 %10 to i8
  %12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext %11) #9
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ %12, %6 ], [ %4, %2 ]
  ret i32 %14
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hym8563_clkout_prepare(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 13) #9
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = trunc i32 %4 to i8
  %8 = or i8 %7, -128
  %9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 13, i8 noundef zeroext %8) #9
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ %9, %6 ], [ %4, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hym8563_clkout_unprepare(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 13) #9
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = trunc i32 %4 to i8
  %8 = and i8 %7, 127
  %9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 13, i8 noundef zeroext %8) #9
  br label %10

10:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hym8563_clkout_is_prepared(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 13) #9
  %5 = icmp slt i32 %4, 0
  %6 = lshr i32 %4, 7
  %7 = and i32 %6, 1
  %8 = select i1 %5, i32 %4, i32 %7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hym8563_clkout_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 13) #9
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = and i32 %5, 3
  %9 = getelementptr [4 x i32], ptr @clkout_rates, i32 0, i32 %8
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i32 [ %10, %7 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define internal i32 @hym8563_clkout_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #7 {
  %4 = icmp ult i32 %1, 32768
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = icmp ult i32 %1, 1024
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = icmp ult i32 %1, 32
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = icmp ne i32 %1, 0
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %9, %7, %5, %3
  %13 = phi i32 [ 32768, %3 ], [ 1024, %5 ], [ 32, %7 ], [ %11, %9 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hym8563_clkout_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 13) #9
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  switch i32 %1, label %18 [
    i32 32768, label %12
    i32 1024, label %9
    i32 32, label %10
    i32 1, label %11
  ]

9:                                                ; preds = %8
  br label %12

10:                                               ; preds = %8
  br label %12

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %11, %10, %9, %8
  %13 = phi i32 [ 0, %8 ], [ 1, %9 ], [ 2, %10 ], [ 3, %11 ]
  %14 = and i32 %6, 252
  %15 = or i32 %13, %14
  %16 = trunc i32 %15 to i8
  %17 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 13, i8 noundef zeroext %16) #9
  br label %18

18:                                               ; preds = %12, %8, %3
  %19 = phi i32 [ %17, %12 ], [ %6, %3 ], [ -22, %8 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hym8563_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 476
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @irq_set_irq_wake(i32 noundef %12, i32 noundef 1) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %13) #10
  br label %16

16:                                               ; preds = %15, %10, %6, %1
  %17 = phi i32 [ %13, %15 ], [ 0, %10 ], [ 0, %6 ], [ 0, %1 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hym8563_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 476
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @irq_set_irq_wake(i32 noundef %12, i32 noundef 0) #9
  br label %14

14:                                               ; preds = %10, %6, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone willreturn }

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
