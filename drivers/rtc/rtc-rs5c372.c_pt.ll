; ModuleID = '/llk/IR/drivers/rtc/rtc-rs5c372.c_pt.bc'
source_filename = "../drivers/rtc/rtc-rs5c372.c"
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
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.rs5c372 = type { ptr, ptr, i32, i8, [17 x i8], ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@rs5c372_id = internal constant [7 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"r2025sd\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"r2221tl\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"rs5c372a\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"rs5c372b\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"rv5c386\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"rv5c387a\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id zeroinitializer], align 4
@rs5c372_of_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ricoh,r2025sd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ricoh,r2221tl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ricoh,rs5c372a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ricoh,rs5c372b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ricoh,rv5c386\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ricoh,rv5c387a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [125 x i8] c"author=Pavel Mironchik <pmironchik@optifacio.net>, Alessandro Zummo <a.zummo@towertech.it>, Paul Mundt <lethal@linux-sh.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [37 x i8] c"description=Ricoh RS5C372 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@rs5c372_driver = internal global %struct.i2c_driver { i32 0, ptr @rs5c372_probe, ptr @rs5c372_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rs5c372_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rs5c372_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [12 x i8] c"rtc-rs5c372\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"unknown RTC type\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"setup error\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%s found, %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"r2025sd\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"r2221tl\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"rs5c372a\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"rs5c372b\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"rv5c386\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"rv5c387a\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"chip\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"24hr\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"am/pm\00", align 1
@rs5c372_rtc_ops = internal constant %struct.rtc_class_ops { ptr @rs5c372_ioctl, ptr @rs5c372_rtc_read_time, ptr @rs5c372_rtc_set_time, ptr @rs5c_read_alarm, ptr @rs5c_set_alarm, ptr @rs5c372_rtc_proc, ptr @rs5c_rtc_alarm_irq_enable, ptr @rs5c372_read_offset, ptr @rs5c372_set_offset, ptr null, ptr null }, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"can't read registers\0A\00", align 1
@.str.14 = private unnamed_addr constant [67 x i8] c"rtc oscillator interruption detected. Please reset the rtc clock.\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"can't enable alarm\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"crystal\09\09: %d.%03d KHz\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"trim\09\09: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"can't update alarm\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"failed to write 0x%x to reg %d\0A\00", align 1
@dev_attr_trim = internal global %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292 }, ptr @rs5c372_sysfs_show_trim, ptr null }, align 4
@dev_attr_osc = internal global %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @rs5c372_sysfs_show_osc, ptr null }, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"trim\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"osc\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"%d.%03d KHz\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license249], section "llvm.metadata"
@switch.table.rs5c372_probe = private unnamed_addr constant [6 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], align 4

@__mod_i2c__rs5c372_id_device_table = dso_local alias [7 x %struct.i2c_device_id], ptr @rs5c372_id
@__mod_of__rs5c372_of_match_device_table = dso_local alias [7 x %struct.of_device_id], ptr @rs5c372_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @rs5c372_driver) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @rs5c372_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rs5c372_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.i2c_algorithm, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %4) #10
  %10 = and i32 %9, 202899457
  %11 = icmp eq i32 %10, 202899457
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.i2c_algorithm, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %13) #10
  %19 = and i32 %18, 202899456
  %20 = icmp eq i32 %19, 202899456
  br i1 %20, label %21, label %132

21:                                               ; preds = %12, %2
  %22 = phi i8 [ 0, %2 ], [ 4, %12 ]
  %23 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %24 = tail call noalias ptr @devm_kmalloc(ptr noundef %23, i32 noundef 36, i32 noundef 3520) #10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %132, label %26

26:                                               ; preds = %21
  store ptr %0, ptr %24, align 4
  %27 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %24, ptr %27, align 8
  %28 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = tail call ptr @of_device_get_match_data(ptr noundef %23) #10
  %33 = ptrtoint ptr %32 to i32
  br label %37

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i32 [ %36, %34 ], [ %33, %31 ]
  %39 = getelementptr inbounds %struct.rs5c372, ptr %24, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  %40 = getelementptr %struct.rs5c372, ptr %24, i32 0, i32 4, i32 1
  %41 = getelementptr inbounds %struct.rs5c372, ptr %24, i32 0, i32 5
  store ptr %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.rs5c372, ptr %24, i32 0, i32 3
  %43 = load i8, ptr %42, align 4
  %44 = and i8 %43, -5
  %45 = or i8 %44, %22
  store i8 %45, ptr %42, align 4
  %46 = tail call fastcc i32 @rs5c_get_regs(ptr noundef nonnull %24)
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %132, label %48

48:                                               ; preds = %37
  %49 = load i32, ptr %39, align 4
  switch i32 %49, label %62 [
    i32 3, label %50
    i32 4, label %50
    i32 1, label %56
    i32 2, label %56
    i32 5, label %56
    i32 6, label %56
  ]

50:                                               ; preds = %48, %48
  %51 = load ptr, ptr %41, align 4
  %52 = getelementptr i8, ptr %51, i32 15
  %53 = load i8, ptr %52, align 1
  %54 = and i8 %53, 32
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %67, label %63

56:                                               ; preds = %48, %48, %48, %48
  %57 = load ptr, ptr %41, align 4
  %58 = getelementptr i8, ptr %57, i32 14
  %59 = load i8, ptr %58, align 1
  %60 = and i8 %59, 32
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %67, label %63

62:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.1) #11
  br label %132

63:                                               ; preds = %56, %50
  %64 = phi ptr [ %51, %50 ], [ %57, %56 ]
  %65 = load i8, ptr %42, align 4
  %66 = or i8 %65, 1
  store i8 %66, ptr %42, align 4
  br label %67

67:                                               ; preds = %63, %56, %50
  %68 = phi ptr [ %57, %56 ], [ %51, %50 ], [ %64, %63 ]
  %69 = getelementptr i8, ptr %68, i32 14
  %70 = load i8, ptr %69, align 1
  %71 = getelementptr i8, ptr %68, i32 15
  %72 = load i8, ptr %71, align 1
  switch i32 %49, label %79 [
    i32 1, label %73
    i32 2, label %76
  ]

73:                                               ; preds = %67
  %74 = and i8 %72, 32
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %85, label %117

76:                                               ; preds = %67
  %77 = and i8 %72, 32
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %117, label %85

79:                                               ; preds = %67
  %80 = and i8 %72, 16
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %110, label %82

82:                                               ; preds = %79
  switch i32 %49, label %92 [
    i32 3, label %83
    i32 4, label %83
    i32 6, label %85
    i32 5, label %85
  ]

83:                                               ; preds = %82, %82
  %84 = or i8 %72, 32
  br label %87

85:                                               ; preds = %82, %82, %76, %73
  %86 = or i8 %70, 32
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i8 [ %84, %83 ], [ %72, %85 ]
  %89 = phi i8 [ %70, %83 ], [ %86, %85 ]
  %90 = load i8, ptr %42, align 4
  %91 = or i8 %90, 1
  store i8 %91, ptr %42, align 4
  br label %92

92:                                               ; preds = %87, %82
  %93 = phi i8 [ %72, %82 ], [ %88, %87 ]
  %94 = phi i8 [ %70, %82 ], [ %89, %87 ]
  %95 = load ptr, ptr %24, align 4
  %96 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %95, i8 noundef zeroext -32, i8 noundef zeroext %94) #10
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %108, label %98, !prof !8

98:                                               ; preds = %92
  %99 = load ptr, ptr %24, align 4
  %100 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %99, i8 noundef zeroext -16, i8 noundef zeroext %93) #10
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %108, label %102, !prof !8

102:                                              ; preds = %98
  %103 = load ptr, ptr %41, align 4
  %104 = getelementptr i8, ptr %103, i32 14
  store i8 %94, ptr %104, align 1
  %105 = load ptr, ptr %41, align 4
  %106 = getelementptr i8, ptr %105, i32 15
  store i8 %93, ptr %106, align 1
  %107 = load i32, ptr %39, align 4
  br label %110

108:                                              ; preds = %98, %92
  %109 = phi i32 [ %96, %92 ], [ %100, %98 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.2) #11
  br label %132

110:                                              ; preds = %102, %79
  %111 = phi i32 [ %107, %102 ], [ %49, %79 ]
  %112 = add i32 %111, -1
  %113 = icmp ult i32 %112, 6
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = getelementptr inbounds [6 x ptr], ptr @switch.table.rs5c372_probe, i32 0, i32 %112
  %116 = load ptr, ptr %115, align 4
  br label %117

117:                                              ; preds = %114, %110, %76, %73
  %118 = phi ptr [ @.str.4, %73 ], [ %116, %114 ], [ @.str.5, %76 ], [ @.str.10, %110 ]
  %119 = load i8, ptr %42, align 4
  %120 = and i8 %119, 1
  %121 = icmp eq i8 %120, 0
  %122 = select i1 %121, ptr @.str.12, ptr @.str.11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.3, ptr noundef nonnull %118, ptr noundef nonnull %122) #11
  %123 = load ptr, ptr getelementptr inbounds (%struct.i2c_driver, ptr @rs5c372_driver, i32 0, i32 7), align 4
  %124 = tail call ptr @devm_rtc_device_register(ptr noundef %23, ptr noundef %123, ptr noundef nonnull @rs5c372_rtc_ops, ptr noundef nonnull @__this_module) #10
  %125 = getelementptr inbounds %struct.rs5c372, ptr %24, i32 0, i32 1
  store ptr %124, ptr %125, align 4
  %126 = icmp ugt ptr %124, inttoptr (i32 -4096 to ptr)
  br i1 %126, label %127, label %129

127:                                              ; preds = %117
  %128 = ptrtoint ptr %124 to i32
  br label %132

129:                                              ; preds = %117
  %130 = tail call fastcc i32 @rs5c_sysfs_register(ptr noundef %23)
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %129, %127, %108, %62, %37, %21, %12
  %133 = phi i32 [ %46, %37 ], [ 0, %62 ], [ %109, %108 ], [ %128, %127 ], [ %130, %129 ], [ -19, %12 ], [ -12, %21 ]
  br label %134

134:                                              ; preds = %132, %129
  %135 = phi i32 [ %133, %132 ], [ 0, %129 ]
  ret i32 %135
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rs5c372_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void @device_remove_file(ptr noundef %2, ptr noundef nonnull @dev_attr_trim) #10
  tail call void @device_remove_file(ptr noundef %2, ptr noundef nonnull @dev_attr_osc) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rs5c_get_regs(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca [1 x %struct.i2c_msg], align 4
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  %4 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %6 = load i16, ptr %5, align 2
  store i16 %6, ptr %2, align 4
  %7 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 1, ptr %7, align 2
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 2
  store i16 17, ptr %8, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  %10 = getelementptr inbounds %struct.rs5c372, ptr %0, i32 0, i32 4
  store ptr %10, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rs5c372, ptr %0, i32 0, i32 3
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = getelementptr %struct.rs5c372, ptr %0, i32 0, i32 4, i32 1
  %17 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 16, ptr noundef %16) #10
  %18 = icmp eq i32 %17, 16
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.13) #11
  br label %28

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %2, i32 noundef 1) #10
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.13) #11
  br label %28

28:                                               ; preds = %26, %21, %19, %15
  %29 = phi i32 [ -5, %26 ], [ -5, %19 ], [ 0, %15 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  ret i32 %29
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rs5c_sysfs_register(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call i32 @device_create_file(ptr noundef %0, ptr noundef nonnull @dev_attr_trim) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @device_create_file(ptr noundef %0, ptr noundef nonnull @dev_attr_osc) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @device_remove_file(ptr noundef %0, ptr noundef nonnull @dev_attr_trim) #10
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rs5c372_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext -16) #10
  switch i32 %1, label %50 [
    i32 -2147192813, label %8
    i32 28692, label %38
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rs5c372, ptr %5, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = icmp eq i32 %10, 1
  %15 = and i32 %7, 32
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %14, i1 %16, i1 false
  %18 = icmp ne i32 %10, 2
  %19 = select i1 %18, i1 true, i1 %16
  %20 = xor i1 %19, true
  %21 = select i1 %17, i1 true, i1 %20
  %22 = zext i1 %21 to i32
  %23 = lshr i32 %7, 5
  %24 = and i32 %23, 2
  %25 = or i32 %24, %22
  br label %29

26:                                               ; preds = %8
  %27 = lshr i32 %7, 4
  %28 = and i32 %27, 1
  br label %29

29:                                               ; preds = %26, %13
  %30 = phi i32 [ %25, %13 ], [ %28, %26 ]
  %31 = inttoptr i32 %2 to ptr
  %32 = tail call ptr @llvm.thread.pointer() #10
  %33 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %34 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %33) #12, !srcloc !10
  %35 = and i32 %34, -13
  %36 = or i32 %35, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #10, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %37 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %31, i32 %30, i32 -1090519041) #10, !srcloc !13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #10, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  br label %50

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.rs5c372, ptr %5, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, -1
  %42 = icmp ult i32 %41, 2
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = trunc i32 %7 to i8
  %45 = and i8 %44, -65
  %46 = load ptr, ptr %5, align 4
  %47 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %46, i8 noundef zeroext -16, i8 noundef zeroext %45) #10
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43, %38
  br label %50

50:                                               ; preds = %49, %43, %29, %3
  %51 = phi i32 [ 0, %49 ], [ %37, %29 ], [ -5, %43 ], [ -515, %3 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rs5c372_rtc_read_time(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc i32 @rs5c_get_regs(ptr noundef %4)
  %6 = getelementptr inbounds %struct.rs5c372, ptr %4, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 15
  %9 = load i8, ptr %8, align 1
  %10 = icmp slt i32 %5, 0
  br i1 %10, label %87, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.rs5c372, ptr %4, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = icmp eq i32 %13, 1
  %18 = and i8 %9, 32
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %17, i1 %19, i1 false
  %21 = xor i1 %20, true
  %22 = icmp ne i32 %13, 2
  %23 = select i1 %22, i1 true, i1 %19
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %30, label %25

25:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.14) #11
  br label %87

26:                                               ; preds = %11
  %27 = and i8 %9, 16
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.14) #11
  br label %87

30:                                               ; preds = %26, %16
  %31 = load i8, ptr %7, align 1
  %32 = and i8 %31, 127
  %33 = tail call i32 @_bcd2bin(i8 noundef zeroext %32) #13
  store i32 %33, ptr %1, align 4
  %34 = load ptr, ptr %6, align 4
  %35 = getelementptr i8, ptr %34, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = and i8 %36, 127
  %38 = tail call i32 @_bcd2bin(i8 noundef zeroext %37) #13
  %39 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %38, ptr %39, align 4
  %40 = load ptr, ptr %6, align 4
  %41 = getelementptr i8, ptr %40, i32 2
  %42 = load i8, ptr %41, align 1
  %43 = getelementptr inbounds %struct.rs5c372, ptr %4, i32 0, i32 3
  %44 = load i8, ptr %43, align 4
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %30
  %48 = and i8 %42, 63
  %49 = tail call i32 @_bcd2bin(i8 noundef zeroext %48) #13
  br label %59

50:                                               ; preds = %30
  %51 = and i8 %42, 31
  %52 = tail call i32 @_bcd2bin(i8 noundef zeroext %51) #13
  %53 = icmp eq i32 %52, 12
  %54 = select i1 %53, i32 0, i32 %52
  %55 = and i8 %42, 32
  %56 = icmp eq i8 %55, 0
  %57 = add i32 %54, 12
  %58 = select i1 %56, i32 %54, i32 %57
  br label %59

59:                                               ; preds = %50, %47
  %60 = phi i32 [ %58, %50 ], [ %49, %47 ]
  %61 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %60, ptr %61, align 4
  %62 = load ptr, ptr %6, align 4
  %63 = getelementptr i8, ptr %62, i32 3
  %64 = load i8, ptr %63, align 1
  %65 = and i8 %64, 7
  %66 = tail call i32 @_bcd2bin(i8 noundef zeroext %65) #13
  %67 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  store i32 %66, ptr %67, align 4
  %68 = load ptr, ptr %6, align 4
  %69 = getelementptr i8, ptr %68, i32 4
  %70 = load i8, ptr %69, align 1
  %71 = and i8 %70, 63
  %72 = tail call i32 @_bcd2bin(i8 noundef zeroext %71) #13
  %73 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %72, ptr %73, align 4
  %74 = load ptr, ptr %6, align 4
  %75 = getelementptr i8, ptr %74, i32 5
  %76 = load i8, ptr %75, align 1
  %77 = and i8 %76, 31
  %78 = tail call i32 @_bcd2bin(i8 noundef zeroext %77) #13
  %79 = add i32 %78, -1
  %80 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  store i32 %79, ptr %80, align 4
  %81 = load ptr, ptr %6, align 4
  %82 = getelementptr i8, ptr %81, i32 6
  %83 = load i8, ptr %82, align 1
  %84 = tail call i32 @_bcd2bin(i8 noundef zeroext %83) #13
  %85 = add i32 %84, 100
  %86 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  store i32 %85, ptr %86, align 4
  br label %87

87:                                               ; preds = %59, %29, %25, %2
  %88 = phi i32 [ -22, %29 ], [ 0, %59 ], [ -22, %25 ], [ %5, %2 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rs5c372_rtc_set_time(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [7 x i8], align 1
  %4 = getelementptr i8, ptr %0, i32 -32
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #10
  %7 = load i32, ptr %1, align 4
  %8 = tail call zeroext i8 @_bin2bcd(i32 noundef %7) #13
  store i8 %8, ptr %3, align 1
  %9 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = tail call zeroext i8 @_bin2bcd(i32 noundef %10) #13
  %12 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 1
  store i8 %11, ptr %12, align 1
  %13 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.rs5c372, ptr %6, i32 0, i32 3
  %16 = load i8, ptr %15, align 4
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #13
  br label %31

21:                                               ; preds = %2
  %22 = icmp ugt i32 %14, 12
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = add i32 %14, -12
  %25 = tail call zeroext i8 @_bin2bcd(i32 noundef %24) #13
  %26 = or i8 %25, 32
  br label %31

27:                                               ; preds = %21
  switch i32 %14, label %29 [
    i32 12, label %31
    i32 0, label %28
  ]

28:                                               ; preds = %27
  br label %31

29:                                               ; preds = %27
  %30 = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #13
  br label %31

31:                                               ; preds = %29, %28, %27, %23, %19
  %32 = phi i8 [ %26, %23 ], [ 18, %28 ], [ %20, %19 ], [ 50, %27 ], [ %30, %29 ]
  %33 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 2
  store i8 %32, ptr %33, align 1
  %34 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = tail call zeroext i8 @_bin2bcd(i32 noundef %35) #13
  %37 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 3
  store i8 %36, ptr %37, align 1
  %38 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = tail call zeroext i8 @_bin2bcd(i32 noundef %39) #13
  %41 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 4
  store i8 %40, ptr %41, align 1
  %42 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  %45 = tail call zeroext i8 @_bin2bcd(i32 noundef %44) #13
  %46 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 5
  store i8 %45, ptr %46, align 1
  %47 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, -100
  %50 = tail call zeroext i8 @_bin2bcd(i32 noundef %49) #13
  %51 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 6
  store i8 %50, ptr %51, align 1
  %52 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext 7, ptr noundef nonnull %3) #10
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %74, label %54

54:                                               ; preds = %31
  %55 = call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext -16) #10
  %56 = getelementptr inbounds %struct.rs5c372, ptr %6, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, -1
  %59 = icmp ult i32 %58, 2
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = icmp eq i32 %57, 1
  %62 = trunc i32 %55 to i8
  %63 = and i8 %62, -113
  %64 = or i8 %63, 32
  %65 = select i1 %61, i8 %64, i8 %63
  br label %69

66:                                               ; preds = %54
  %67 = trunc i32 %55 to i8
  %68 = and i8 %67, -17
  br label %69

69:                                               ; preds = %66, %60
  %70 = phi i8 [ %68, %66 ], [ %65, %60 ]
  %71 = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext -16, i8 noundef zeroext %70) #10
  %72 = icmp slt i32 %71, 0
  %73 = select i1 %72, i32 -5, i32 0
  br label %74

74:                                               ; preds = %69, %31
  %75 = phi i32 [ -5, %31 ], [ %73, %69 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #10
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rs5c_read_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc i32 @rs5c_get_regs(ptr noundef %4)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %48, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.rs5c372, ptr %4, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 8
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, 127
  %14 = tail call i32 @_bcd2bin(i8 noundef zeroext %13) #13
  %15 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  store i32 %14, ptr %15, align 4
  %16 = load ptr, ptr %9, align 4
  %17 = getelementptr i8, ptr %16, i32 9
  %18 = load i8, ptr %17, align 1
  %19 = getelementptr inbounds %struct.rs5c372, ptr %4, i32 0, i32 3
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = and i8 %18, 63
  %25 = tail call i32 @_bcd2bin(i8 noundef zeroext %24) #13
  br label %35

26:                                               ; preds = %7
  %27 = and i8 %18, 31
  %28 = tail call i32 @_bcd2bin(i8 noundef zeroext %27) #13
  %29 = icmp eq i32 %28, 12
  %30 = select i1 %29, i32 0, i32 %28
  %31 = and i8 %18, 32
  %32 = icmp eq i8 %31, 0
  %33 = add i32 %30, 12
  %34 = select i1 %32, i32 %30, i32 %33
  br label %35

35:                                               ; preds = %26, %23
  %36 = phi i32 [ %34, %26 ], [ %25, %23 ]
  %37 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  store i32 %36, ptr %37, align 4
  %38 = load ptr, ptr %9, align 4
  %39 = getelementptr i8, ptr %38, i32 14
  %40 = load i8, ptr %39, align 1
  %41 = lshr i8 %40, 7
  store i8 %41, ptr %1, align 4
  %42 = load ptr, ptr %9, align 4
  %43 = getelementptr i8, ptr %42, i32 15
  %44 = load i8, ptr %43, align 1
  %45 = lshr i8 %44, 1
  %46 = and i8 %45, 1
  %47 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 1
  store i8 %46, ptr %47, align 1
  br label %48

48:                                               ; preds = %35, %2
  %49 = phi i32 [ 0, %35 ], [ %5, %2 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rs5c_set_alarm(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -32
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %79

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %79

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %79

17:                                               ; preds = %13
  %18 = tail call fastcc i32 @rs5c_get_regs(ptr noundef %5)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %79, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.rs5c372, ptr %5, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 14
  %24 = load i8, ptr %23, align 1
  %25 = icmp sgt i8 %24, -1
  br i1 %25, label %33, label %26

26:                                               ; preds = %20
  %27 = and i8 %24, 127
  %28 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -32, i8 noundef zeroext %27) #10
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %79, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %21, align 4
  %32 = getelementptr i8, ptr %31, i32 14
  store i8 %27, ptr %32, align 1
  br label %33

33:                                               ; preds = %30, %20
  %34 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = tail call zeroext i8 @_bin2bcd(i32 noundef %35) #13
  %37 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.rs5c372, ptr %5, i32 0, i32 3
  %40 = load i8, ptr %39, align 4
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %33
  %44 = tail call zeroext i8 @_bin2bcd(i32 noundef %38) #13
  br label %55

45:                                               ; preds = %33
  %46 = icmp ugt i32 %38, 12
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = add i32 %38, -12
  %49 = tail call zeroext i8 @_bin2bcd(i32 noundef %48) #13
  %50 = or i8 %49, 32
  br label %55

51:                                               ; preds = %45
  switch i32 %38, label %53 [
    i32 12, label %55
    i32 0, label %52
  ]

52:                                               ; preds = %51
  br label %55

53:                                               ; preds = %51
  %54 = tail call zeroext i8 @_bin2bcd(i32 noundef %38) #13
  br label %55

55:                                               ; preds = %53, %52, %51, %47, %43
  %56 = phi i8 [ %50, %47 ], [ 18, %52 ], [ %44, %43 ], [ 50, %51 ], [ %54, %53 ]
  %57 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -128, i8 noundef zeroext %36) #10
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %79, label %59

59:                                               ; preds = %55
  %60 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -112, i8 noundef zeroext %56) #10
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %79, label %62

62:                                               ; preds = %59
  %63 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -96, i8 noundef zeroext 127) #10
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %79, label %65

65:                                               ; preds = %62
  %66 = load i8, ptr %1, align 4
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %21, align 4
  %70 = getelementptr i8, ptr %69, i32 14
  %71 = load i8, ptr %70, align 1
  %72 = or i8 %71, -128
  %73 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -32, i8 noundef zeroext %72) #10
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.15) #11
  br label %76

76:                                               ; preds = %75, %68
  %77 = load ptr, ptr %21, align 4
  %78 = getelementptr i8, ptr %77, i32 14
  store i8 %72, ptr %78, align 1
  br label %79

79:                                               ; preds = %76, %65, %62, %59, %55, %26, %17, %13, %9, %2
  %80 = phi i32 [ -22, %13 ], [ -22, %9 ], [ -22, %2 ], [ %18, %17 ], [ -5, %26 ], [ 0, %76 ], [ 0, %65 ], [ -5, %62 ], [ -5, %59 ], [ -5, %55 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rs5c372_rtc_proc(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rs5c372, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 7
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.rs5c372, ptr %4, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = and i8 %8, 127
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 62
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %2
  %16 = and i32 %12, 64
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = xor i32 %12, -1
  %20 = or i32 %19, -64
  %21 = add nsw i32 %20, 1
  br label %25

22:                                               ; preds = %15
  %23 = and i32 %12, 63
  %24 = add nsw i32 %23, -1
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i32 [ %21, %18 ], [ %24, %22 ]
  %27 = shl nsw i32 %26, 1
  %28 = and i32 %27, 254
  br label %29

29:                                               ; preds = %25, %2
  %30 = phi i32 [ %28, %25 ], [ 0, %2 ]
  %31 = add i32 %10, -3
  %32 = icmp ult i32 %31, 2
  %33 = icmp sgt i8 %8, -1
  %34 = select i1 %33, i32 768, i32 0
  %35 = select i1 %32, i32 %34, i32 768
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef 32, i32 noundef %35) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef %30) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rs5c_rtc_alarm_irq_enable(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -32
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rs5c372, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 14
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr inbounds %struct.rs5c372, ptr %5, i32 0, i32 3
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %2
  %15 = tail call fastcc i32 @rs5c_get_regs(ptr noundef %5)
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %14
  %18 = icmp eq i32 %1, 0
  %19 = and i8 %9, 127
  %20 = select i1 %18, i8 0, i8 -128
  %21 = or i8 %19, %20
  %22 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -32, i8 noundef zeroext %21) #10
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.18) #11
  br label %28

25:                                               ; preds = %17
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr i8, ptr %26, i32 14
  store i8 %21, ptr %27, align 1
  br label %28

28:                                               ; preds = %25, %24, %14, %2
  %29 = phi i32 [ -22, %2 ], [ %15, %14 ], [ -5, %24 ], [ 0, %25 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rs5c372_read_offset(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rs5c372, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 7
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = and i32 %9, 64
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.rs5c372, ptr %4, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %22 [
    i32 2, label %14
    i32 3, label %18
    i32 4, label %18
  ]

14:                                               ; preds = %2
  %15 = and i32 %9, 128
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 3051, i32 1017
  br label %22

18:                                               ; preds = %2, %2
  %19 = and i32 %9, 128
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 3051, i32 3125
  br label %22

22:                                               ; preds = %18, %14, %2
  %23 = phi i32 [ %21, %18 ], [ %17, %14 ], [ 3051, %2 ]
  %24 = and i8 %8, 63
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 62
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %22
  br i1 %11, label %32, label %29

29:                                               ; preds = %28
  %30 = or i32 %25, -64
  %31 = mul nsw i32 %23, %30
  br label %35

32:                                               ; preds = %28
  %33 = add nsw i32 %25, -1
  %34 = mul nuw nsw i32 %23, %33
  br label %35

35:                                               ; preds = %32, %29, %22
  %36 = phi i32 [ %31, %29 ], [ %34, %32 ], [ 0, %22 ]
  store i32 %36, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rs5c372_set_offset(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rs5c372, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %24 [
    i32 3, label %7
    i32 4, label %7
    i32 2, label %16
  ]

7:                                                ; preds = %2, %2
  %8 = getelementptr inbounds %struct.rs5c372, ptr %4, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 7
  %11 = load i8, ptr %10, align 1
  %12 = icmp sgt i8 %11, -1
  %13 = and i8 %11, -128
  %14 = zext i8 %13 to i32
  %15 = select i1 %12, i32 3051, i32 3125
  br label %24

16:                                               ; preds = %2
  %17 = icmp sgt i32 %1, 0
  %18 = select i1 %17, i32 508, i32 -508
  %19 = add i32 %18, %1
  %20 = add i32 %19, 64070
  %21 = icmp ult i32 %20, 128141
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = sdiv i32 %19, 1017
  br label %35

24:                                               ; preds = %16, %7, %2
  %25 = phi i32 [ 3051, %16 ], [ %15, %7 ], [ 3051, %2 ]
  %26 = phi i32 [ 0, %16 ], [ %14, %7 ], [ 0, %2 ]
  %27 = icmp sgt i32 %1, 0
  %28 = lshr i32 %25, 1
  %29 = sub nsw i32 0, %28
  %30 = select i1 %27, i32 %28, i32 %29
  %31 = add i32 %30, %1
  %32 = sdiv i32 %31, %25
  %33 = add nsw i32 %32, -63
  %34 = icmp ult i32 %33, -125
  br i1 %34, label %70, label %35

35:                                               ; preds = %24, %22
  %36 = phi i32 [ %26, %24 ], [ 128, %22 ]
  %37 = phi i32 [ %32, %24 ], [ %23, %22 ]
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = add nuw nsw i32 %37, 1
  %41 = or i32 %40, %36
  %42 = trunc i32 %41 to i8
  br label %48

43:                                               ; preds = %35
  %44 = and i32 %37, 63
  %45 = or i32 %44, %36
  %46 = trunc i32 %45 to i8
  %47 = or i8 %46, 64
  br label %48

48:                                               ; preds = %43, %39
  %49 = phi i8 [ %42, %39 ], [ %47, %43 ]
  %50 = icmp eq i32 %37, 0
  %51 = and i8 %49, 62
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %50, i1 true, i1 %52
  %54 = add i32 %6, -3
  %55 = icmp ult i32 %54, 2
  %56 = and i8 %49, -128
  %57 = select i1 %55, i8 %56, i8 0
  %58 = select i1 %53, i8 %57, i8 %49
  %59 = load ptr, ptr %4, align 4
  %60 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %59, i8 noundef zeroext 112, i8 noundef zeroext %58) #10
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %48
  %63 = load ptr, ptr %4, align 4
  %64 = getelementptr inbounds %struct.i2c_client, ptr %63, i32 0, i32 4
  %65 = zext i8 %58 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.19, i32 noundef %65, i32 noundef 112) #11
  br label %70

66:                                               ; preds = %48
  %67 = getelementptr inbounds %struct.rs5c372, ptr %4, i32 0, i32 5
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 7
  store i8 %58, ptr %69, align 1
  br label %70

70:                                               ; preds = %66, %62, %24
  %71 = phi i32 [ -5, %62 ], [ 0, %66 ], [ -34, %24 ]
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rs5c372_sysfs_show_trim(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rs5c372, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 7
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, 127
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, 62
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %3
  %15 = and i32 %11, 64
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = xor i32 %11, -1
  %19 = or i32 %18, -64
  %20 = add nsw i32 %19, 1
  br label %24

21:                                               ; preds = %14
  %22 = and i32 %11, 63
  %23 = add nsw i32 %22, -1
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i32 [ %20, %17 ], [ %23, %21 ]
  %26 = shl nsw i32 %25, 1
  %27 = and i32 %26, 254
  br label %28

28:                                               ; preds = %24, %3
  %29 = phi i32 [ %27, %24 ], [ 0, %3 ]
  %30 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef %29)
  ret i32 %30
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rs5c372_sysfs_show_osc(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rs5c372, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 7
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr inbounds %struct.rs5c372, ptr %5, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -3
  %13 = icmp ult i32 %12, 2
  %14 = icmp sgt i8 %9, -1
  %15 = select i1 %14, i32 768, i32 0
  %16 = select i1 %13, i32 %15, i32 768
  %17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef 32, i32 noundef %16)
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind readnone willreturn }

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
!10 = !{i64 4904366}
!11 = !{i64 4904563}
!12 = !{i64 2152389842}
!13 = !{i64 2154207232, i64 2154207512, i64 2154207846, i64 2154208180}
