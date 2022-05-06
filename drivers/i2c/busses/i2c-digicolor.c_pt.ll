; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-digicolor.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-digicolor.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.dc_i2c = type { %struct.i2c_adapter, ptr, ptr, ptr, i32, ptr, i32, i32, %struct.spinlock, %struct.completion, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@dc_i2c_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cnxt,cx92755-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [40 x i8] c"author=Baruch Siach <baruch@tkos.co.il>\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [49 x i8] c"description=Conexant Digicolor I2C master driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@dc_i2c_driver = internal global %struct.platform_driver { ptr @dc_i2c_probe, ptr @dc_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dc_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [14 x i8] c"digicolor-i2c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Conexant Digicolor I2C adapter\00", align 1
@dc_i2c_algorithm = internal constant %struct.i2c_algorithm { ptr @dc_i2c_xfer, ptr null, ptr null, ptr null, ptr @dc_i2c_func, ptr null, ptr null }, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"can't set bus speed of %u Hz\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

@__mod_of__dc_i2c_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @dc_i2c_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dc_i2c_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @dc_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dc_i2c_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 712, i32 noundef 3520) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %86, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.dc_i2c, ptr %5, i32 0, i32 4
  %10 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef %9, i32 noundef 1, i32 noundef 0) #6
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  store i32 100000, ptr %9, align 4
  br label %13

13:                                               ; preds = %12, %7
  %14 = getelementptr inbounds %struct.dc_i2c, ptr %5, i32 0, i32 1
  store ptr %2, ptr %14, align 8
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %15, align 8
  %16 = getelementptr inbounds %struct.dc_i2c, ptr %5, i32 0, i32 8
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.dc_i2c, ptr %5, i32 0, i32 9
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.dc_i2c, ptr %5, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %18, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #6
  %19 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #6
  %20 = getelementptr inbounds %struct.dc_i2c, ptr %5, i32 0, i32 3
  store ptr %19, ptr %20, align 8
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = ptrtoint ptr %19 to i32
  br label %86

24:                                               ; preds = %13
  %25 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %26 = getelementptr inbounds %struct.dc_i2c, ptr %5, i32 0, i32 2
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = ptrtoint ptr %25 to i32
  br label %86

30:                                               ; preds = %24
  %31 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %86, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load ptr, ptr %2, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi ptr [ %38, %37 ], [ %35, %33 ]
  %41 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %31, ptr noundef nonnull @dc_i2c_irq, ptr noundef null, i32 noundef 0, ptr noundef %40, ptr noundef nonnull %5) #6
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %86, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 12
  %45 = tail call i32 @strlcpy(ptr noundef %44, ptr noundef nonnull @.str.2, i32 noundef 48) #6
  store ptr @__this_module, ptr %5, align 8
  %46 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 2
  store ptr @dc_i2c_algorithm, ptr %46, align 8
  %47 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 9, i32 1
  store ptr %2, ptr %47, align 4
  %48 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 9, i32 25
  store ptr %4, ptr %48, align 8
  %49 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 3
  store ptr %5, ptr %49, align 4
  %50 = load ptr, ptr %20, align 8
  %51 = tail call i32 @clk_get_rate(ptr noundef %50) #6
  %52 = load ptr, ptr %26, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %52, i8 1) #6, !srcloc !8
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 21474800) #6
  %54 = load ptr, ptr %26, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %54, i8 0) #6, !srcloc !8
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 21474800) #6
  %56 = load i32, ptr %9, align 4
  %57 = shl i32 %56, 6
  %58 = add i32 %51, -1
  %59 = add i32 %58, %57
  %60 = udiv i32 %59, %57
  %61 = icmp ugt i32 %57, %59
  %62 = icmp ugt i32 %60, 255
  %63 = or i1 %62, %61
  br i1 %63, label %64, label %66

64:                                               ; preds = %43
  %65 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.4, i32 noundef %56) #7
  br label %86

66:                                               ; preds = %43
  %67 = trunc i32 %60 to i8
  %68 = add i8 %67, -1
  %69 = load ptr, ptr %26, align 4
  %70 = getelementptr i8, ptr %69, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %70, i8 %68) #6, !srcloc !8
  %71 = load ptr, ptr %20, align 8
  %72 = tail call i32 @clk_prepare(ptr noundef %71) #6
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = tail call i32 @clk_enable(ptr noundef %71) #6
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  tail call void @clk_unprepare(ptr noundef %71) #6
  br label %78

78:                                               ; preds = %77, %66
  %79 = phi i32 [ %72, %66 ], [ %75, %77 ]
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %78, %74
  %82 = tail call i32 @i2c_add_adapter(ptr noundef nonnull %5) #6
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load ptr, ptr %20, align 8
  tail call void @clk_disable(ptr noundef %85) #6
  tail call void @clk_unprepare(ptr noundef %85) #6
  br label %86

86:                                               ; preds = %84, %81, %78, %64, %39, %30, %28, %22, %1
  %87 = phi i32 [ %23, %22 ], [ %29, %28 ], [ %82, %84 ], [ -12, %1 ], [ %31, %30 ], [ %41, %39 ], [ -22, %64 ], [ %79, %78 ], [ 0, %81 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dc_i2c_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @i2c_del_adapter(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.dc_i2c, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dc_i2c_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.dc_i2c, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 2
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #6, !srcloc !9
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 1) #6, !srcloc !8
  %9 = getelementptr inbounds %struct.dc_i2c, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %9) #6
  %10 = and i8 %6, 64
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.dc_i2c, ptr %1, i32 0, i32 11
  store i32 -5, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dc_i2c, ptr %1, i32 0, i32 9
  tail call void @complete(ptr noundef %14) #6
  br label %122

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.dc_i2c, ptr %1, i32 0, i32 10
  %17 = load i32, ptr %16, align 8
  switch i32 %17, label %122 [
    i32 1, label %21
    i32 2, label %36
    i32 3, label %18
    i32 4, label %82
    i32 5, label %120
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.dc_i2c, ptr %1, i32 0, i32 5
  %20 = load ptr, ptr %19, align 8
  br label %55

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.dc_i2c, ptr %1, i32 0, i32 5
  %23 = load ptr, ptr %22, align 8
  %24 = load i16, ptr %23, align 4
  %25 = trunc i16 %24 to i8
  %26 = shl i8 %25, 1
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  %28 = load i16, ptr %27, align 2
  %29 = trunc i16 %28 to i8
  %30 = and i8 %29, 1
  %31 = or i8 %30, %26
  %32 = load ptr, ptr %3, align 4
  %33 = getelementptr i8, ptr %32, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %33, i8 %31) #6, !srcloc !8
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr i8, ptr %34, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %35, i8 -125) #6, !srcloc !8
  store i32 2, ptr %16, align 8
  br label %122

36:                                               ; preds = %15
  %37 = getelementptr inbounds %struct.dc_i2c, ptr %1, i32 0, i32 5
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 1
  %40 = load i16, ptr %39, align 2
  %41 = and i16 %40, 1
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.dc_i2c, ptr %1, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 1
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 2
  %48 = load i16, ptr %47, align 4
  %49 = zext i16 %48 to i32
  %50 = icmp eq i32 %46, %49
  %51 = select i1 %50, i8 -121, i8 -122
  %52 = load ptr, ptr %3, align 4
  %53 = getelementptr i8, ptr %52, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %53, i8 %51) #6, !srcloc !8
  store i32 4, ptr %16, align 8
  br label %122

54:                                               ; preds = %36
  store i32 3, ptr %16, align 8
  br label %55

55:                                               ; preds = %54, %18
  %56 = phi ptr [ %20, %18 ], [ %38, %54 ]
  %57 = getelementptr inbounds %struct.dc_i2c, ptr %1, i32 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 2
  %60 = load i16, ptr %59, align 4
  %61 = zext i16 %60 to i32
  %62 = icmp ult i32 %58, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = add nuw i32 %58, 1
  store i32 %66, ptr %57, align 4
  %67 = getelementptr i8, ptr %65, i32 %58
  %68 = load i8, ptr %67, align 1
  %69 = load ptr, ptr %3, align 4
  %70 = getelementptr i8, ptr %69, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %70, i8 %68) #6, !srcloc !8
  %71 = load ptr, ptr %3, align 4
  %72 = getelementptr i8, ptr %71, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %72, i8 -125) #6, !srcloc !8
  br label %122

73:                                               ; preds = %55
  store i32 5, ptr %16, align 8
  %74 = getelementptr inbounds %struct.dc_i2c, ptr %1, i32 0, i32 7
  %75 = load i32, ptr %74, align 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %3, align 4
  %79 = getelementptr i8, ptr %78, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %79, i8 -118) #6, !srcloc !8
  br label %122

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.dc_i2c, ptr %1, i32 0, i32 9
  tail call void @complete(ptr noundef %81) #6
  br label %122

82:                                               ; preds = %15
  %83 = getelementptr inbounds %struct.dc_i2c, ptr %1, i32 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.dc_i2c, ptr %1, i32 0, i32 5
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.i2c_msg, ptr %86, i32 0, i32 2
  %88 = load i16, ptr %87, align 4
  %89 = zext i16 %88 to i32
  %90 = icmp ult i32 %84, %89
  br i1 %90, label %91, label %111

91:                                               ; preds = %82
  %92 = load ptr, ptr %3, align 4
  %93 = getelementptr i8, ptr %92, i32 3
  %94 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %93) #6, !srcloc !9
  %95 = load ptr, ptr %85, align 8
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %95, i32 0, i32 3
  %97 = load ptr, ptr %96, align 4
  %98 = load i32, ptr %83, align 4
  %99 = add i32 %98, 1
  store i32 %99, ptr %83, align 4
  %100 = getelementptr i8, ptr %97, i32 %98
  store i8 %94, ptr %100, align 1
  %101 = load i32, ptr %83, align 4
  %102 = add i32 %101, 1
  %103 = load ptr, ptr %85, align 8
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %103, i32 0, i32 2
  %105 = load i16, ptr %104, align 4
  %106 = zext i16 %105 to i32
  %107 = icmp eq i32 %102, %106
  %108 = select i1 %107, i8 -121, i8 -122
  %109 = load ptr, ptr %3, align 4
  %110 = getelementptr i8, ptr %109, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %110, i8 %108) #6, !srcloc !8
  br label %122

111:                                              ; preds = %82
  store i32 5, ptr %16, align 8
  %112 = getelementptr inbounds %struct.dc_i2c, ptr %1, i32 0, i32 7
  %113 = load i32, ptr %112, align 8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = load ptr, ptr %3, align 4
  %117 = getelementptr i8, ptr %116, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %117, i8 -118) #6, !srcloc !8
  br label %122

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.dc_i2c, ptr %1, i32 0, i32 9
  tail call void @complete(ptr noundef %119) #6
  br label %122

120:                                              ; preds = %15
  store i32 0, ptr %16, align 8
  %121 = getelementptr inbounds %struct.dc_i2c, ptr %1, i32 0, i32 9
  tail call void @complete(ptr noundef %121) #6
  br label %122

122:                                              ; preds = %120, %118, %115, %91, %80, %77, %63, %43, %21, %15, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  %123 = load i16, ptr %9, align 4
  %124 = add i16 %123, 1
  store i16 %124, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  ret i32 1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dc_i2c_xfer(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %74

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = add nsw i32 %2, -1
  %9 = getelementptr inbounds %struct.dc_i2c, ptr %7, i32 0, i32 8
  %10 = getelementptr inbounds %struct.dc_i2c, ptr %7, i32 0, i32 5
  %11 = getelementptr inbounds %struct.dc_i2c, ptr %7, i32 0, i32 6
  %12 = getelementptr inbounds %struct.dc_i2c, ptr %7, i32 0, i32 7
  %13 = getelementptr inbounds %struct.dc_i2c, ptr %7, i32 0, i32 11
  %14 = getelementptr inbounds %struct.dc_i2c, ptr %7, i32 0, i32 9
  %15 = getelementptr inbounds %struct.dc_i2c, ptr %7, i32 0, i32 2
  %16 = getelementptr inbounds %struct.dc_i2c, ptr %7, i32 0, i32 10
  br label %20

17:                                               ; preds = %71
  %18 = add nuw nsw i32 %21, 1
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %74, label %20

20:                                               ; preds = %17, %5
  %21 = phi i32 [ 0, %5 ], [ %18, %17 ]
  %22 = getelementptr %struct.i2c_msg, ptr %1, i32 %21
  %23 = icmp eq i32 %21, %8
  %24 = zext i1 %23 to i32
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #6
  store ptr %22, ptr %10, align 8
  store i32 0, ptr %11, align 4
  store i32 %24, ptr %12, align 8
  store i32 0, ptr %13, align 4
  store i32 0, ptr %14, align 4
  %26 = load ptr, ptr %15, align 4
  %27 = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %27, i8 1) #6, !srcloc !8
  %28 = load ptr, ptr %15, align 4
  %29 = getelementptr i8, ptr %28, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %29, i8 1) #6, !srcloc !8
  %30 = load ptr, ptr %10, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 1
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = and i32 %33, 16384
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %20
  %37 = icmp eq i32 %21, 0
  store i32 1, ptr %16, align 8
  %38 = select i1 %37, i8 -127, i8 -126
  %39 = load ptr, ptr %15, align 4
  %40 = getelementptr i8, ptr %39, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %40, i8 %38) #6, !srcloc !8
  br label %65

41:                                               ; preds = %20
  %42 = and i32 %33, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %41
  store i32 4, ptr %16, align 8
  %45 = load i32, ptr %11, align 4
  %46 = add i32 %45, 1
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 2
  %48 = load i16, ptr %47, align 4
  %49 = zext i16 %48 to i32
  %50 = icmp eq i32 %46, %49
  %51 = select i1 %50, i8 -121, i8 -122
  %52 = load ptr, ptr %15, align 4
  %53 = getelementptr i8, ptr %52, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %53, i8 %51) #6, !srcloc !8
  br label %65

54:                                               ; preds = %41
  store i32 3, ptr %16, align 8
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = load i32, ptr %11, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %11, align 4
  %59 = getelementptr i8, ptr %56, i32 %57
  %60 = load i8, ptr %59, align 1
  %61 = load ptr, ptr %15, align 4
  %62 = getelementptr i8, ptr %61, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %62, i8 %60) #6, !srcloc !8
  %63 = load ptr, ptr %15, align 4
  %64 = getelementptr i8, ptr %63, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %64, i8 -125) #6, !srcloc !8
  br label %65

65:                                               ; preds = %54, %44, %36
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %25) #6
  %66 = tail call i32 @wait_for_completion_timeout(ptr noundef %14, i32 noundef 10) #6
  %67 = load ptr, ptr %15, align 4
  %68 = getelementptr i8, ptr %67, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %68, i8 0) #6, !srcloc !8
  %69 = icmp eq i32 %66, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 0, ptr %16, align 8
  br label %74

71:                                               ; preds = %65
  %72 = load i32, ptr %13, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %17, label %74

74:                                               ; preds = %71, %70, %17, %3
  %75 = phi i32 [ -110, %70 ], [ %2, %3 ], [ %72, %71 ], [ %2, %17 ]
  ret i32 %75
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dc_i2c_func(ptr nocapture noundef readnone %0) #4 {
  ret i32 251592729
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 5391321}
!9 = !{i64 5391716}
!10 = !{i64 2148884891}
!11 = !{i64 2148880715}
!12 = !{i64 2148880790, i64 2148880817, i64 2148880864, i64 2148880886, i64 2148880914, i64 2148880934}
!13 = !{i64 2148907894}
