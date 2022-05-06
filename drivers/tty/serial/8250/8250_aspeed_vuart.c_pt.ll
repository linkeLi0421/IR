; ModuleID = '/llk/IR/drivers/tty/serial/8250/8250_aspeed_vuart.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_aspeed_vuart.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.aspeed_vuart = type { ptr, ptr, i32, %struct.timer_list, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__UNIQUE_ID_author228 = internal constant [35 x i8] c"author=Jeremy Kerr <jk@ozlabs.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [43 x i8] c"description=Driver for Aspeed VUART device\00", section ".modinfo", align 1
@aspeed_vuart_driver = internal global %struct.platform_driver { ptr @aspeed_vuart_probe, ptr @aspeed_vuart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aspeed_vuart_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"aspeed-vuart\00", align 1
@aspeed_vuart_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-vuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-vuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@aspeed_vuart_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @aspeed_vuart_attrs, ptr null }, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"clk or clock-frequency not defined\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"current-speed\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"reg-offset\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"reg-shift\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"fifo-size\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"no-loopback-test\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"auto-flow-control\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"aspeed,sirq-polarity-sense\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"aspeed,lpc-io-reg\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"invalid value in aspeed,lpc-io-reg property\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"aspeed,lpc-interrupts\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"invalid sirq number in aspeed,lpc-interrupts property\0A\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"invalid sirq polarity in aspeed,lpc-interrupts property\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@aspeed_vuart_attrs = internal global [4 x ptr] [ptr @dev_attr_sirq, ptr @dev_attr_sirq_polarity, ptr @dev_attr_lpc_address, ptr null], align 4
@dev_attr_sirq = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420 }, ptr @sirq_show, ptr @sirq_store }, align 4
@dev_attr_sirq_polarity = internal global %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420 }, ptr @sirq_polarity_show, ptr @sirq_polarity_store }, align 4
@dev_attr_lpc_address = internal global %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420 }, ptr @lpc_address_show, ptr @lpc_address_store }, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"sirq\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"sirq_polarity\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"lpc_address\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"could not get regmap for aspeed,sirq-polarity-sense\0A\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"could not read hw strap table\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_license229], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_vuart_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_vuart_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_vuart_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca %struct.uart_8250_port, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 460, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  store i64 0, ptr %7, align 8, !annotation !8
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 36, i32 noundef 3520) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %257, label %13

13:                                               ; preds = %1
  store ptr %8, ptr %11, align 4
  %14 = getelementptr inbounds %struct.aspeed_vuart, ptr %11, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %14, ptr noundef nonnull @aspeed_vuart_unthrottle_exp, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  %15 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(460) %4, i8 0, i32 460, i1 false)
  %16 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 59
  store ptr %11, ptr %16, align 4
  %17 = load i32, ptr %15, align 4
  %18 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 43
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %15, align 4
  %22 = add i32 %20, 1
  %23 = sub i32 %22, %21
  %24 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 44
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 11
  store ptr @aspeed_vuart_startup, ptr %25, align 4
  %26 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 12
  store ptr @aspeed_vuart_shutdown, ptr %26, align 4
  %27 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 13
  store ptr @aspeed_vuart_throttle, ptr %27, align 4
  %28 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 14
  store ptr @aspeed_vuart_unthrottle, ptr %28, align 4
  %29 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 34
  store i32 32, ptr %29, align 4
  %30 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 45
  store ptr %8, ptr %30, align 4
  %31 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 48
  store i8 1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.uart_8250_port, ptr %4, i32 0, i32 4
  store i16 32, ptr %32, align 4
  %33 = load ptr, ptr %11, align 4
  %34 = tail call i32 @sysfs_create_group(ptr noundef %33, ptr noundef nonnull @aspeed_vuart_attr_group) #8
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %257, label %36

36:                                               ; preds = %13
  %37 = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.1, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #8
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %59, label %39

39:                                               ; preds = %36
  %40 = call ptr @devm_clk_get(ptr noundef %8, ptr noundef null) #8
  %41 = getelementptr inbounds %struct.aspeed_vuart, ptr %11, i32 0, i32 1
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.2) #9
  %44 = load ptr, ptr %41, align 4
  %45 = ptrtoint ptr %44 to i32
  br label %254

46:                                               ; preds = %39
  %47 = call i32 @clk_prepare(ptr noundef %40) #8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = call i32 @clk_enable(ptr noundef %40) #8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  call void @clk_unprepare(ptr noundef %40) #8
  br label %53

53:                                               ; preds = %52, %46
  %54 = phi i32 [ %47, %46 ], [ %50, %52 ]
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %254, label %56

56:                                               ; preds = %53, %49
  %57 = load ptr, ptr %41, align 4
  %58 = call i32 @clk_get_rate(ptr noundef %57) #8
  store i32 %58, ptr %5, align 4
  br label %59

59:                                               ; preds = %56, %36
  %60 = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #8
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, ptr %5, align 4
  %64 = load i32, ptr %6, align 4
  %65 = shl i32 %64, 4
  %66 = udiv i32 %63, %65
  %67 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 40
  store i32 %66, ptr %67, align 4
  br label %68

68:                                               ; preds = %62, %59
  %69 = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.4, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #8
  %70 = icmp sgt i32 %69, -1
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, ptr %6, align 4
  %73 = load i32, ptr %18, align 4
  %74 = add i32 %73, %72
  store i32 %74, ptr %18, align 4
  br label %75

75:                                               ; preds = %71, %68
  %76 = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.5, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #8
  %77 = icmp sgt i32 %76, -1
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, ptr %6, align 4
  %80 = trunc i32 %79 to i8
  %81 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 25
  store i8 %80, ptr %81, align 1
  br label %82

82:                                               ; preds = %78, %75
  %83 = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #8
  %84 = icmp sgt i32 %83, -1
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, ptr %6, align 4
  %87 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 23
  store i32 %86, ptr %87, align 4
  br label %88

88:                                               ; preds = %85, %82
  %89 = call i32 @of_alias_get_id(ptr noundef %10, ptr noundef nonnull @.str.7) #8
  %90 = icmp sgt i32 %89, -1
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 41
  store i32 %89, ptr %92, align 4
  br label %93

93:                                               ; preds = %91, %88
  %94 = call i32 @irq_of_parse_and_map(ptr noundef %10, i32 noundef 0) #8
  %95 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 20
  store i32 %94, ptr %95, align 4
  %96 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 15
  store ptr @aspeed_vuart_handle_irq, ptr %96, align 4
  %97 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 26
  store i8 2, ptr %97, align 2
  %98 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 38
  store i32 4, ptr %98, align 4
  %99 = load i32, ptr %5, align 4
  %100 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 22
  store i32 %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 33
  store i32 -1190658048, ptr %101, align 4
  %102 = call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.8, ptr noundef null) #8
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %93
  %105 = load i32, ptr %101, align 4
  %106 = or i32 %105, 64
  store i32 %106, ptr %101, align 4
  br label %107

107:                                              ; preds = %104, %93
  %108 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 23
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.uart_8250_port, ptr %4, i32 0, i32 3
  store i32 256, ptr %112, align 4
  br label %113

113:                                              ; preds = %111, %107
  %114 = call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.9, ptr noundef null) #8
  %115 = icmp eq ptr %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.uart_8250_port, ptr %4, i32 0, i32 3
  %118 = load i32, ptr %117, align 4
  %119 = or i32 %118, 2048
  store i32 %119, ptr %117, align 4
  br label %120

120:                                              ; preds = %116, %113
  %121 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %4) #8
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %249, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.aspeed_vuart, ptr %11, i32 0, i32 2
  store i32 %121, ptr %124, align 4
  %125 = call ptr @serial8250_get_port(i32 noundef %121) #8
  %126 = getelementptr inbounds %struct.aspeed_vuart, ptr %11, i32 0, i32 4
  store ptr %125, ptr %126, align 4
  %127 = call i32 @__of_parse_phandle_with_args(ptr noundef %10, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %3) #8
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %163, label %129

129:                                              ; preds = %123
  %130 = load ptr, ptr %3, align 4
  %131 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 2
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 2, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = shl nuw i32 1, %134
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %136 = call ptr @syscon_node_to_regmap(ptr noundef %130) #8
  %137 = icmp ugt ptr %136, inttoptr (i32 -4096 to ptr)
  br i1 %137, label %138, label %140

138:                                              ; preds = %129
  %139 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %139, ptr noundef nonnull @.str.21) #9
  br label %161

140:                                              ; preds = %129
  %141 = call i32 @regmap_read(ptr noundef %136, i32 noundef %132, ptr noundef nonnull %2) #8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %140
  %144 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %144, ptr noundef nonnull @.str.22) #9
  br label %161

145:                                              ; preds = %140
  %146 = load i32, ptr %2, align 4
  %147 = and i32 %146, %135
  %148 = icmp eq i32 %147, 0
  %149 = load ptr, ptr %126, align 4
  %150 = getelementptr inbounds %struct.uart_port, ptr %149, i32 0, i32 2
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr i8, ptr %151, i32 32
  %153 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %152) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %154 = and i8 %153, -3
  %155 = select i1 %148, i8 2, i8 0
  %156 = or i8 %154, %155
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %157 = load ptr, ptr %126, align 4
  %158 = getelementptr inbounds %struct.uart_port, ptr %157, i32 0, i32 2
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr i8, ptr %159, i32 32
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %160, i8 %156) #8, !srcloc !12
  br label %161

161:                                              ; preds = %145, %143, %138
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %162 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %162) #8
  br label %163

163:                                              ; preds = %161, %123
  %164 = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.11, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #8
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  store i32 1016, ptr %6, align 4
  br label %170

167:                                              ; preds = %163
  %168 = load i32, ptr %6, align 4
  %169 = icmp ugt i32 %168, 65535
  br i1 %169, label %246, label %170

170:                                              ; preds = %167, %166
  %171 = phi i32 [ 1016, %166 ], [ %168, %167 ]
  %172 = lshr i32 %171, 8
  %173 = trunc i32 %172 to i8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %174 = load ptr, ptr %126, align 4
  %175 = getelementptr inbounds %struct.uart_port, ptr %174, i32 0, i32 2
  %176 = load ptr, ptr %175, align 4
  %177 = getelementptr i8, ptr %176, i32 44
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %177, i8 %173) #8, !srcloc !12
  %178 = trunc i32 %171 to i8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %179 = load ptr, ptr %126, align 4
  %180 = getelementptr inbounds %struct.uart_port, ptr %179, i32 0, i32 2
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr i8, ptr %181, i32 40
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %182, i8 %178) #8, !srcloc !12
  %183 = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.13, ptr noundef nonnull %7, i32 noundef 2, i32 noundef 0) #8
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %170
  store i32 4, ptr %7, align 8
  %186 = getelementptr inbounds [2 x i32], ptr %7, i32 0, i32 1
  store i32 8, ptr %186, align 4
  br label %190

187:                                              ; preds = %170
  %188 = load i32, ptr %7, align 8
  %189 = icmp ugt i32 %188, 15
  br i1 %189, label %246, label %190

190:                                              ; preds = %187, %185
  %191 = phi i32 [ 4, %185 ], [ %188, %187 ]
  %192 = load ptr, ptr %126, align 4
  %193 = getelementptr inbounds %struct.uart_port, ptr %192, i32 0, i32 2
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr i8, ptr %194, i32 36
  %196 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %195) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %197 = and i8 %196, 15
  %198 = trunc i32 %191 to i8
  %199 = shl nuw i8 %198, 4
  %200 = or i8 %197, %199
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %201 = load ptr, ptr %126, align 4
  %202 = getelementptr inbounds %struct.uart_port, ptr %201, i32 0, i32 2
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr i8, ptr %203, i32 36
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %204, i8 %200) #8, !srcloc !12
  %205 = getelementptr inbounds [2 x i32], ptr %7, i32 0, i32 1
  %206 = load i32, ptr %205, align 4
  %207 = icmp eq i32 %206, 4
  %208 = icmp eq i32 %206, 8
  %209 = xor i1 %207, %208
  br i1 %209, label %212, label %210

210:                                              ; preds = %190
  %211 = select i1 %207, i32 1, i32 -22
  br label %246

212:                                              ; preds = %190
  %213 = load ptr, ptr %126, align 4
  %214 = getelementptr inbounds %struct.uart_port, ptr %213, i32 0, i32 2
  %215 = load ptr, ptr %214, align 4
  %216 = getelementptr i8, ptr %215, i32 32
  %217 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %216) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %218 = and i8 %217, -3
  %219 = select i1 %208, i8 0, i8 2
  %220 = or i8 %218, %219
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %221 = load ptr, ptr %126, align 4
  %222 = getelementptr inbounds %struct.uart_port, ptr %221, i32 0, i32 2
  %223 = load ptr, ptr %222, align 4
  %224 = getelementptr i8, ptr %223, i32 32
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %224, i8 %220) #8, !srcloc !12
  %225 = load ptr, ptr %126, align 4
  %226 = getelementptr inbounds %struct.uart_port, ptr %225, i32 0, i32 2
  %227 = load ptr, ptr %226, align 4
  %228 = getelementptr i8, ptr %227, i32 32
  %229 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %228) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %230 = or i8 %229, 1
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %231 = load ptr, ptr %126, align 4
  %232 = getelementptr inbounds %struct.uart_port, ptr %231, i32 0, i32 2
  %233 = load ptr, ptr %232, align 4
  %234 = getelementptr i8, ptr %233, i32 32
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %234, i8 %230) #8, !srcloc !12
  %235 = load ptr, ptr %126, align 4
  %236 = getelementptr inbounds %struct.uart_port, ptr %235, i32 0, i32 2
  %237 = load ptr, ptr %236, align 4
  %238 = getelementptr i8, ptr %237, i32 32
  %239 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %238) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %240 = and i8 %239, -33
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %241 = load ptr, ptr %126, align 4
  %242 = getelementptr inbounds %struct.uart_port, ptr %241, i32 0, i32 2
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr i8, ptr %243, i32 32
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %244, i8 %240) #8, !srcloc !12
  %245 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %11, ptr %245, align 8
  br label %257

246:                                              ; preds = %210, %187, %167
  %247 = phi ptr [ @.str.15, %210 ], [ @.str.12, %167 ], [ @.str.14, %187 ]
  %248 = phi i32 [ %211, %210 ], [ -22, %167 ], [ -22, %187 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull %247) #9
  br label %249

249:                                              ; preds = %246, %120
  %250 = phi i32 [ %121, %120 ], [ %248, %246 ]
  %251 = getelementptr inbounds %struct.aspeed_vuart, ptr %11, i32 0, i32 1
  %252 = load ptr, ptr %251, align 4
  call void @clk_disable(ptr noundef %252) #8
  call void @clk_unprepare(ptr noundef %252) #8
  %253 = load i32, ptr %95, align 4
  call void @irq_dispose_mapping(i32 noundef %253) #8
  br label %254

254:                                              ; preds = %249, %53, %43
  %255 = phi i32 [ %45, %43 ], [ %54, %53 ], [ %250, %249 ]
  %256 = load ptr, ptr %11, align 4
  call void @sysfs_remove_group(ptr noundef %256, ptr noundef nonnull @aspeed_vuart_attr_group) #8
  br label %257

257:                                              ; preds = %254, %212, %13, %1
  %258 = phi i32 [ %255, %254 ], [ 0, %212 ], [ -12, %1 ], [ %34, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 460, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  ret i32 %258
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_vuart_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.aspeed_vuart, ptr %3, i32 0, i32 3
  %5 = tail call i32 @del_timer_sync(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.aspeed_vuart, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 32
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %10) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %12 = and i8 %11, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.uart_port, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %16, i8 %12) #8, !srcloc !12
  %17 = getelementptr inbounds %struct.aspeed_vuart, ptr %3, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  tail call void @serial8250_unregister_port(i32 noundef %18) #8
  %19 = load ptr, ptr %3, align 4
  tail call void @sysfs_remove_group(ptr noundef %19, ptr noundef nonnull @aspeed_vuart_attr_group) #8
  %20 = getelementptr inbounds %struct.aspeed_vuart, ptr %3, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void @clk_disable(ptr noundef %21) #8
  tail call void @clk_unprepare(ptr noundef %21) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_vuart_unthrottle_exp(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 30
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @tty_buffer_space_avail(ptr noundef %5) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load volatile i32, ptr @jiffies, align 64
  %10 = add i32 %9, 10
  %11 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %10) #8
  br label %20

12:                                               ; preds = %1
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %14 = getelementptr inbounds %struct.uart_8250_port, ptr %3, i32 0, i32 9
  %15 = load i8, ptr %14, align 2
  %16 = or i8 %15, 5
  store i8 %16, ptr %14, align 2
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef %3, i32 noundef 1, i32 noundef %17) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %13) #8
  br label %20

20:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_vuart_startup(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @serial8250_do_startup(ptr noundef %0) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.aspeed_vuart, ptr %3, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 32
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %11) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %13 = or i8 %12, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr inbounds %struct.uart_port, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %17, i8 %13) #8, !srcloc !12
  br label %18

18:                                               ; preds = %6, %1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_vuart_shutdown(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.aspeed_vuart, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 32
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %10 = and i8 %9, -33
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 %10) #8, !srcloc !12
  tail call void @serial8250_do_shutdown(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_vuart_throttle(ptr noundef %0) #2 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %4 = load i8, ptr %3, align 2
  %5 = and i8 %4, -6
  store i8 %5, ptr %3, align 2
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef %0, i32 noundef 1, i32 noundef %6) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_vuart_unthrottle(ptr noundef %0) #2 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %4 = load i8, ptr %3, align 2
  %5 = or i8 %4, 5
  store i8 %5, ptr %3, align 2
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef %0, i32 noundef 1, i32 noundef %6) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_vuart_handle_irq(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 %3(ptr noundef %0, i32 noundef 2) #8
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %66

7:                                                ; preds = %1
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #8
  %9 = load ptr, ptr %2, align 4
  %10 = tail call i32 %9(ptr noundef %0, i32 noundef 5) #8
  %11 = and i32 %10, 17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %50, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @tty_buffer_space_avail(ptr noundef %15) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %22 = load i8, ptr %21, align 2
  %23 = and i8 %22, -6
  store i8 %23, ptr %21, align 2
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  tail call void %26(ptr noundef %0, i32 noundef 1, i32 noundef %24) #8
  %27 = getelementptr inbounds %struct.aspeed_vuart, ptr %20, i32 0, i32 3, i32 0, i32 1
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.aspeed_vuart, ptr %20, i32 0, i32 3
  %32 = load volatile i32, ptr @jiffies, align 64
  %33 = add i32 %32, 10
  %34 = tail call i32 @mod_timer(ptr noundef %31, i32 noundef %33) #8
  br label %50

35:                                               ; preds = %13
  %36 = tail call i32 @llvm.umin.i32(i32 %16, i32 256)
  br label %37

37:                                               ; preds = %37, %35
  %38 = phi i32 [ %36, %35 ], [ %43, %37 ]
  %39 = phi i32 [ %10, %35 ], [ %42, %37 ]
  %40 = trunc i32 %39 to i8
  tail call void @serial8250_read_char(ptr noundef %0, i8 noundef zeroext %40) #8
  %41 = load ptr, ptr %2, align 4
  %42 = tail call i32 %41(ptr noundef %0, i32 noundef 5) #8
  %43 = add nsw i32 %38, -1
  %44 = icmp eq i32 %43, 0
  %45 = and i32 %42, 17
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %44, i1 true, i1 %46
  br i1 %47, label %48, label %37

48:                                               ; preds = %37
  %49 = load ptr, ptr %14, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %49) #8
  br label %50

50:                                               ; preds = %48, %30, %18, %7
  %51 = phi i32 [ %42, %48 ], [ %10, %7 ], [ %10, %30 ], [ %10, %18 ]
  %52 = tail call i32 @serial8250_modem_status(ptr noundef %0) #8
  %53 = and i32 %51, 32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  tail call void @serial8250_tx_chars(ptr noundef %0) #8
  br label %56

56:                                               ; preds = %55, %50
  %57 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 48
  %58 = load i8, ptr %57, align 4
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %8) #8
  br label %66

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 47
  %63 = load i32, ptr %62, align 4
  store i32 0, ptr %62, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %8) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  tail call void @handle_sysrq(i32 noundef %63) #8
  br label %66

66:                                               ; preds = %65, %61, %60, %1
  %67 = phi i32 [ 0, %1 ], [ 1, %60 ], [ 1, %61 ], [ 1, %65 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @serial8250_get_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_buffer_space_avail(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_do_startup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sirq_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.aspeed_vuart, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 36
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %10) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %12 = lshr i8 %11, 4
  %13 = zext i8 %12 to i32
  %14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4095, ptr noundef nonnull @.str.17, i32 noundef %13)
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sirq_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = icmp ugt i32 %11, 15
  br i1 %12, label %28, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.aspeed_vuart, ptr %7, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.uart_port, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 36
  %19 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %18) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %20 = and i8 %19, 15
  %21 = trunc i32 %11 to i8
  %22 = shl nuw i8 %21, 4
  %23 = or i8 %20, %22
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %24 = load ptr, ptr %14, align 4
  %25 = getelementptr inbounds %struct.uart_port, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 36
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %27, i8 %23) #8, !srcloc !12
  br label %28

28:                                               ; preds = %13, %10, %4
  %29 = phi i32 [ %8, %4 ], [ %3, %13 ], [ -22, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %29
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sirq_polarity_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.aspeed_vuart, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 32
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %10) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %12 = lshr i8 %11, 1
  %13 = and i8 %12, 1
  %14 = zext i8 %13 to i32
  %15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4095, ptr noundef nonnull @.str.17, i32 noundef %14)
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sirq_polarity_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.aspeed_vuart, ptr %7, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.uart_port, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 32
  %18 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %17) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %19 = and i8 %18, -3
  %20 = select i1 %12, i8 0, i8 2
  %21 = or i8 %19, %20
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %22 = load ptr, ptr %13, align 4
  %23 = getelementptr inbounds %struct.uart_port, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 32
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %25, i8 %21) #8, !srcloc !12
  br label %26

26:                                               ; preds = %10, %4
  %27 = phi i32 [ %3, %10 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lpc_address_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.aspeed_vuart, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 44
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %10) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.uart_port, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 40
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %17) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %19 = zext i8 %18 to i32
  %20 = or i32 %13, %19
  %21 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4095, ptr noundef nonnull @.str.20, i32 noundef %20)
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lpc_address_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = icmp ugt i32 %11, 65535
  br i1 %12, label %26, label %13

13:                                               ; preds = %10
  %14 = lshr i32 %11, 8
  %15 = trunc i32 %14 to i8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %16 = getelementptr inbounds %struct.aspeed_vuart, ptr %7, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.uart_port, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 44
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 %15) #8, !srcloc !12
  %21 = trunc i32 %11 to i8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %22 = load ptr, ptr %16, align 4
  %23 = getelementptr inbounds %struct.uart_port, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 40
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %25, i8 %21) #8, !srcloc !12
  br label %26

26:                                               ; preds = %13, %10, %4
  %27 = phi i32 [ %8, %4 ], [ %3, %13 ], [ -22, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_read_char(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_modem_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_tx_chars(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!9 = !{i64 3738694}
!10 = !{i64 2153505721}
!11 = !{i64 2153506089}
!12 = !{i64 3738299}
