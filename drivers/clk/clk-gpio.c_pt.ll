; ModuleID = '/llk/IR/drivers/clk/clk-gpio.c_pt.bc'
source_filename = "../drivers/clk/clk-gpio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.clk_gpio = type { %struct.clk_hw, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@__initcall__kmod_clk_gpio__166_249_gpio_clk_driver_init6 = internal global ptr @gpio_clk_driver_init, section ".initcall6.init", align 4
@gpio_clk_driver = internal global %struct.platform_driver { ptr @gpio_clk_driver_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gpio_clk_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [9 x i8] c"gpio-clk\00", align 1
@gpio_clk_match_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gpio-mux-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gpio-gate-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"gpio-mux-clock\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"mux-clock must have 2 parents\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"\013%pOFn: %s: Can't get '%s' named GPIO property\0A\00", align 1
@__func__.gpio_clk_driver_probe = private unnamed_addr constant [22 x i8] c"gpio_clk_driver_probe\00", align 1
@clk_gpio_mux_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__clk_mux_determine_rate, ptr @clk_gpio_mux_set_parent, ptr @clk_gpio_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__const.clk_register_gpio.gpio_parent_data = private unnamed_addr constant [2 x %struct.clk_parent_data] [%struct.clk_parent_data zeroinitializer, %struct.clk_parent_data { ptr null, ptr null, ptr null, i32 1 }], align 4
@clk_sleeping_gpio_gate_ops = internal constant %struct.clk_ops { ptr @clk_sleeping_gpio_gate_prepare, ptr @clk_sleeping_gpio_gate_unprepare, ptr @clk_sleeping_gpio_gate_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_gpio_gate_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_gpio_gate_enable, ptr @clk_gpio_gate_disable, ptr @clk_gpio_gate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_clk_gpio__166_249_gpio_clk_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @gpio_clk_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_clk_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_clk_driver_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = alloca [2 x %struct.clk_parent_data], align 4
  %4 = alloca %struct.clk_init_data, align 4
  %5 = alloca [2 x %struct.clk_parent_data], align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @of_device_is_compatible(ptr noundef %8, ptr noundef nonnull @.str.1) #7
  %10 = icmp ne i32 %9, 0
  %11 = tail call i32 @of_clk_get_parent_count(ptr noundef %8) #7
  %12 = icmp ne i32 %11, 2
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2) #8
  br label %74

15:                                               ; preds = %1
  %16 = select i1 %10, ptr @.str.3, ptr @.str.4
  %17 = tail call ptr @devm_gpiod_get(ptr noundef %6, ptr noundef nonnull %16, i32 noundef 3) #7
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = icmp eq ptr %17, inttoptr (i32 -517 to ptr)
  br i1 %20, label %74, label %21

21:                                               ; preds = %19
  %22 = ptrtoint ptr %17 to i32
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %8, ptr noundef nonnull @__func__.gpio_clk_driver_probe, ptr noundef nonnull %16) #8
  br label %74

24:                                               ; preds = %15
  br i1 %10, label %25, label %44

25:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #7
  %26 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %26, i8 0, i32 16, i1 false) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(32) @__const.clk_register_gpio.gpio_parent_data, i32 32, i1 false) #7
  %27 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 16, i32 noundef 3520) #7
  %28 = icmp eq ptr %27, null
  br i1 %28, label %42, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %7, align 8
  %31 = load ptr, ptr %30, align 4
  store ptr %31, ptr %4, align 4
  %32 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  store ptr @clk_gpio_mux_ops, ptr %32, align 4
  %33 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 3
  store ptr %5, ptr %33, align 4
  %34 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 5
  store i8 2, ptr %34, align 4
  %35 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 6
  store i32 4, ptr %35, align 4
  %36 = getelementptr inbounds %struct.clk_gpio, ptr %27, i32 0, i32 1
  store ptr %17, ptr %36, align 4
  %37 = getelementptr inbounds %struct.clk_hw, ptr %27, i32 0, i32 2
  store ptr %4, ptr %37, align 4
  %38 = call i32 @devm_clk_hw_register(ptr noundef %6, ptr noundef nonnull %27) #7
  %39 = icmp eq i32 %38, 0
  %40 = inttoptr i32 %38 to ptr
  %41 = select i1 %39, ptr %27, ptr %40
  br label %42

42:                                               ; preds = %29, %25
  %43 = phi ptr [ inttoptr (i32 -12 to ptr), %25 ], [ %41, %29 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #7
  br label %67

44:                                               ; preds = %24
  %45 = tail call i32 @gpiod_cansleep(ptr noundef %17) #7
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #7
  %46 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %46, i8 0, i32 16, i1 false) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(32) @__const.clk_register_gpio.gpio_parent_data, i32 32, i1 false) #7
  %47 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 16, i32 noundef 3520) #7
  %48 = icmp eq ptr %47, null
  br i1 %48, label %65, label %49

49:                                               ; preds = %44
  %50 = trunc i32 %11 to i8
  %51 = icmp eq i32 %45, 0
  %52 = select i1 %51, ptr @clk_gpio_gate_ops, ptr @clk_sleeping_gpio_gate_ops
  %53 = load ptr, ptr %7, align 8
  %54 = load ptr, ptr %53, align 4
  store ptr %54, ptr %2, align 4
  %55 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  store ptr %52, ptr %55, align 4
  %56 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 3
  store ptr %3, ptr %56, align 4
  %57 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 5
  store i8 %50, ptr %57, align 4
  %58 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  store i32 4, ptr %58, align 4
  %59 = getelementptr inbounds %struct.clk_gpio, ptr %47, i32 0, i32 1
  store ptr %17, ptr %59, align 4
  %60 = getelementptr inbounds %struct.clk_hw, ptr %47, i32 0, i32 2
  store ptr %2, ptr %60, align 4
  %61 = call i32 @devm_clk_hw_register(ptr noundef %6, ptr noundef nonnull %47) #7
  %62 = icmp eq i32 %61, 0
  %63 = inttoptr i32 %61 to ptr
  %64 = select i1 %62, ptr %47, ptr %63
  br label %65

65:                                               ; preds = %49, %44
  %66 = phi ptr [ inttoptr (i32 -12 to ptr), %44 ], [ %64, %49 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #7
  br label %67

67:                                               ; preds = %65, %42
  %68 = phi ptr [ %43, %42 ], [ %66, %65 ]
  %69 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = ptrtoint ptr %68 to i32
  br label %74

72:                                               ; preds = %67
  %73 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %6, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %68) #7
  br label %74

74:                                               ; preds = %72, %70, %21, %19, %14
  %75 = phi i32 [ -22, %14 ], [ %71, %70 ], [ %73, %72 ], [ -517, %19 ], [ %22, %21 ]
  ret i32 %75
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_mux_determine_rate(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_gpio_mux_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.clk_gpio, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = zext i8 %1 to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef %4, i32 noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @clk_gpio_mux_get_parent(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.clk_gpio, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %3) #7
  %5 = trunc i32 %4 to i8
  ret i8 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sleeping_gpio_gate_prepare(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.clk_gpio, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_sleeping_gpio_gate_unprepare(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.clk_gpio, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sleeping_gpio_gate_is_prepared(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.clk_gpio, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %3) #7
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_gpio_gate_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.clk_gpio, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_gpio_gate_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.clk_gpio, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_gpio_gate_is_enabled(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.clk_gpio, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @gpiod_get_value(ptr noundef %3) #7
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
