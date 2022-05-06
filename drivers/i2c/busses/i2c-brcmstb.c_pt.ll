; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-brcmstb.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-brcmstb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bsc_clk_param = type { i32, i32, i32 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
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
%struct.brcmstb_i2c_dev = type { ptr, ptr, i32, ptr, %struct.i2c_adapter, %struct.completion, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.bsc_regs = type { i32, [8 x i32], i32, i32, i32, [8 x i32], i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@__initcall__kmod_i2c_brcmstb__249_755_brcmstb_i2c_driver_init6 = internal global ptr @brcmstb_i2c_driver_init, section ".initcall6.init", align 4
@brcmstb_i2c_driver = internal global %struct.platform_driver { ptr @brcmstb_i2c_probe, ptr @brcmstb_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @brcmstb_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcmstb_i2c_pm, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_brcmstb_i2c_driver_exit = internal global ptr @brcmstb_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author250 = internal constant [51 x i8] c"i2c_brcmstb.author=Kamal Dasu <kdasu@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [51 x i8] c"i2c_brcmstb.description=Broadcom Settop I2C Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [48 x i8] c"i2c_brcmstb.file=drivers/i2c/busses/i2c-brcmstb\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [27 x i8] c"i2c_brcmstb.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"brcmstb-i2c\00", align 1
@brcmstb_i2c_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmper-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-hdmi-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@brcmstb_i2c_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @brcmstb_i2c_suspend, ptr @brcmstb_i2c_resume, ptr @brcmstb_i2c_suspend, ptr @brcmstb_i2c_resume, ptr @brcmstb_i2c_suspend, ptr @brcmstb_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"brcm,bcm2711-hdmi-i2c\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"interrupt-names\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"setting clock-frequency@%dHz\0A\00", align 1
@bsc_clk = internal unnamed_addr constant [8 x %struct.bsc_clk_param] [%struct.bsc_clk_param { i32 375000, i32 0, i32 0 }, %struct.bsc_clk_param { i32 390000, i32 16, i32 0 }, %struct.bsc_clk_param { i32 187500, i32 32, i32 0 }, %struct.bsc_clk_param { i32 200000, i32 48, i32 0 }, %struct.bsc_clk_param { i32 93750, i32 0, i32 128 }, %struct.bsc_clk_param { i32 97500, i32 16, i32 128 }, %struct.bsc_clk_param { i32 46875, i32 32, i32 128 }, %struct.bsc_clk_param { i32 50000, i32 48, i32 128 }], align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"brcm,brcmper-i2c\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Broadcom STB : \00", align 1
@brcmstb_i2c_algo = internal constant %struct.i2c_algorithm { ptr @brcmstb_i2c_xfer, ptr null, ptr null, ptr null, ptr @brcmstb_i2c_functionality, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"%s@%dhz registered in %s mode\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"polling\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"auto-i2c\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"leaving current clock-frequency @ %dHz\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__exitcall_brcmstb_i2c_driver_exit, ptr @__initcall__kmod_i2c_brcmstb__249_755_brcmstb_i2c_driver_init6, ptr @brcmstb_i2c_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @brcmstb_i2c_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @brcmstb_i2c_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @brcmstb_i2c_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcmstb_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_i2c_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store ptr null, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 696, i32 noundef 3520) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %115, label %6

6:                                                ; preds = %1
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 88, i32 noundef 3520) #8
  %8 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %4, i32 0, i32 3
  store ptr %7, ptr %8, align 4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %115, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %11, align 8
  store ptr %3, ptr %4, align 8
  %12 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %4, i32 0, i32 5
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %4, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %13, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #8
  %14 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %15 = load ptr, ptr %4, align 8
  %16 = tail call ptr @devm_ioremap_resource(ptr noundef %15, ptr noundef %14) #8
  %17 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %4, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %115, label %19

19:                                               ; preds = %10
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 25
  %22 = load ptr, ptr %21, align 8
  %23 = tail call i32 @of_device_is_compatible(ptr noundef %22, ptr noundef nonnull @.str.1) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr i8, ptr %26, i32 -16
  %28 = tail call ptr @platform_get_resource_byname(ptr noundef %27, i32 noundef 512, ptr noundef nonnull @.str.12) #8
  %29 = tail call ptr @devm_ioremap_resource(ptr noundef %26, ptr noundef %28) #8
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %40, label %31

31:                                               ; preds = %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %32 = getelementptr i8, ptr %29, i32 620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 2) #8, !srcloc !10
  tail call void @devm_iounmap(ptr noundef %26, ptr noundef %29) #8
  %33 = load ptr, ptr %8, align 4
  %34 = getelementptr inbounds %struct.bsc_regs, ptr %33, i32 0, i32 4
  store i32 0, ptr %34, align 4
  %35 = load ptr, ptr %8, align 4
  %36 = getelementptr inbounds %struct.bsc_regs, ptr %35, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = load ptr, ptr %17, align 4
  %39 = getelementptr i8, ptr %38, i32 44
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #8, !srcloc !10
  br label %42

40:                                               ; preds = %25
  %41 = ptrtoint ptr %29 to i32
  br label %115

42:                                               ; preds = %31, %19
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 25
  %45 = load ptr, ptr %44, align 8
  %46 = call i32 @of_property_read_string(ptr noundef %45, ptr noundef nonnull @.str.2, ptr noundef nonnull %2) #8
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store ptr null, ptr %2, align 4
  br label %49

49:                                               ; preds = %48, %42
  %50 = call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 0) #8
  %51 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %4, i32 0, i32 2
  store i32 %50, ptr %51, align 8
  %52 = load ptr, ptr %8, align 4
  %53 = getelementptr inbounds %struct.bsc_regs, ptr %52, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, -65
  store i32 %55, ptr %53, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  %56 = load ptr, ptr %8, align 4
  %57 = getelementptr inbounds %struct.bsc_regs, ptr %56, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = load ptr, ptr %17, align 4
  %60 = getelementptr i8, ptr %59, i32 40
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #8, !srcloc !10
  %61 = load i32, ptr %51, align 8
  %62 = icmp sgt i32 %61, -1
  br i1 %62, label %63, label %73

63:                                               ; preds = %49
  %64 = load ptr, ptr %2, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load ptr, ptr %0, align 8
  br label %68

68:                                               ; preds = %66, %63
  %69 = phi ptr [ %67, %66 ], [ %64, %63 ]
  %70 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %61, ptr noundef nonnull @brcmstb_i2c_isr, ptr noundef null, i32 noundef 128, ptr noundef %69, ptr noundef nonnull %4) #8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  store i32 -1, ptr %51, align 8
  br label %73

73:                                               ; preds = %72, %68, %49
  %74 = load ptr, ptr %4, align 8
  %75 = getelementptr inbounds %struct.device, ptr %74, i32 0, i32 25
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %4, i32 0, i32 6
  %78 = call i32 @of_property_read_variable_u32_array(ptr noundef %76, ptr noundef nonnull @.str.3, ptr noundef %77, i32 noundef 1, i32 noundef 0) #8
  %79 = icmp sgt i32 %78, -1
  br i1 %79, label %82, label %80

80:                                               ; preds = %73
  %81 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %81, ptr noundef nonnull @.str.4, i32 noundef 375000) #9
  store i32 375000, ptr %77, align 8
  br label %82

82:                                               ; preds = %80, %73
  %83 = load ptr, ptr %4, align 8
  %84 = getelementptr inbounds %struct.device, ptr %83, i32 0, i32 25
  %85 = load ptr, ptr %84, align 8
  %86 = call i32 @of_device_is_compatible(ptr noundef %85, ptr noundef nonnull @.str.5) #8
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i32 4, i32 1
  %89 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %4, i32 0, i32 7
  store i32 %88, ptr %89, align 4
  call fastcc void @brcmstb_i2c_set_bsc_reg_defaults(ptr noundef nonnull %4)
  %90 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %4, i32 0, i32 4
  %91 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %4, i32 0, i32 4, i32 9, i32 8
  store ptr %4, ptr %91, align 8
  store ptr null, ptr %90, align 8
  %92 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %4, i32 0, i32 4, i32 12
  %93 = call i32 @strlcpy(ptr noundef %92, ptr noundef nonnull @.str.6, i32 noundef 48) #8
  %94 = load ptr, ptr %2, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %82
  %97 = call i32 @strlcat(ptr noundef %92, ptr noundef nonnull %94, i32 noundef 48) #8
  br label %98

98:                                               ; preds = %96, %82
  %99 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %4, i32 0, i32 4, i32 2
  store ptr @brcmstb_i2c_algo, ptr %99, align 8
  %100 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %4, i32 0, i32 4, i32 9, i32 1
  store ptr %3, ptr %100, align 4
  %101 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %4, i32 0, i32 4, i32 9, i32 25
  store ptr %102, ptr %103, align 8
  %104 = call i32 @i2c_add_adapter(ptr noundef %90) #8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %98
  %107 = load ptr, ptr %4, align 8
  %108 = load ptr, ptr %2, align 4
  %109 = icmp eq ptr %108, null
  %110 = select i1 %109, ptr @.str.8, ptr %108
  %111 = load i32, ptr %77, align 8
  %112 = load i32, ptr %51, align 8
  %113 = icmp sgt i32 %112, -1
  %114 = select i1 %113, ptr @.str.9, ptr @.str.10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %107, ptr noundef nonnull @.str.7, ptr noundef %110, i32 noundef %111, ptr noundef nonnull %114) #9
  br label %115

115:                                              ; preds = %106, %98, %40, %10, %6, %1
  %116 = phi i32 [ 0, %106 ], [ -12, %1 ], [ -12, %6 ], [ %41, %40 ], [ %104, %98 ], [ -12, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_i2c_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %3, i32 0, i32 4
  tail call void @i2c_del_adapter(ptr noundef %4) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_i2c_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 44
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %10 = and i32 %6, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %1, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.bsc_regs, ptr %14, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, -65
  store i32 %17, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr inbounds %struct.bsc_regs, ptr %18, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr i8, ptr %21, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #8, !srcloc !10
  %23 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %1, i32 0, i32 5
  tail call void @complete(ptr noundef %23) #8
  br label %24

24:                                               ; preds = %12, %2
  %25 = phi i32 [ 1, %12 ], [ 0, %2 ]
  ret i32 %25
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmstb_i2c_set_bsc_reg_defaults(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 4
  %5 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bsc_regs, ptr %6, i32 0, i32 6
  br i1 %4, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr %7, align 4
  %10 = and i32 %9, -65
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i32 [ %10, %8 ], [ 64, %1 ]
  store i32 %12, ptr %7, align 4
  %13 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.bsc_regs, ptr %14, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %16) #8, !srcloc !10
  %20 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %0, i32 0, i32 6
  %21 = load i32, ptr %20, align 8
  switch i32 %21, label %49 [
    i32 375000, label %29
    i32 390000, label %22
    i32 187500, label %23
    i32 200000, label %24
    i32 93750, label %25
    i32 97500, label %26
    i32 46875, label %27
    i32 50000, label %28
  ]

22:                                               ; preds = %11
  br label %29

23:                                               ; preds = %11
  br label %29

24:                                               ; preds = %11
  br label %29

25:                                               ; preds = %11
  br label %29

26:                                               ; preds = %11
  br label %29

27:                                               ; preds = %11
  br label %29

28:                                               ; preds = %11
  br label %29

29:                                               ; preds = %28, %27, %26, %25, %24, %23, %22, %11
  %30 = phi i32 [ 0, %11 ], [ 1, %22 ], [ 2, %23 ], [ 3, %24 ], [ 4, %25 ], [ 5, %26 ], [ 6, %27 ], [ 7, %28 ]
  %31 = load ptr, ptr %13, align 4
  %32 = getelementptr inbounds %struct.bsc_regs, ptr %31, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, -177
  store i32 %34, ptr %32, align 4
  %35 = getelementptr [8 x %struct.bsc_clk_param], ptr @bsc_clk, i32 0, i32 %30, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr [8 x %struct.bsc_clk_param], ptr @bsc_clk, i32 0, i32 %30, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = or i32 %38, %36
  %40 = load ptr, ptr %13, align 4
  %41 = getelementptr inbounds %struct.bsc_regs, ptr %40, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %39, %42
  store i32 %43, ptr %41, align 4
  %44 = load ptr, ptr %13, align 4
  %45 = getelementptr inbounds %struct.bsc_regs, ptr %44, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = load ptr, ptr %17, align 4
  %48 = getelementptr i8, ptr %47, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #8, !srcloc !10
  br label %58

49:                                               ; preds = %11
  %50 = load ptr, ptr %17, align 4
  %51 = getelementptr i8, ptr %50, i32 40
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %53 = lshr i32 %52, 4
  %54 = and i32 %53, 3
  %55 = load ptr, ptr %0, align 8
  %56 = getelementptr [8 x %struct.bsc_clk_param], ptr @bsc_clk, i32 0, i32 %54
  %57 = load i32, ptr %56, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %55, ptr noundef nonnull @.str.13, i32 noundef %57) #9
  br label %58

58:                                               ; preds = %49, %29
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_i2c_xfer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 3
  %9 = icmp sgt i32 %2, 0
  br i1 %9, label %10, label %217

10:                                               ; preds = %3
  %11 = add nsw i32 %2, -1
  %12 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %5, i32 0, i32 3
  %13 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %5, i32 0, i32 1
  br label %14

14:                                               ; preds = %214, %10
  %15 = phi i32 [ 0, %10 ], [ %215, %214 ]
  %16 = getelementptr %struct.i2c_msg, ptr %1, i32 %15
  %17 = getelementptr %struct.i2c_msg, ptr %1, i32 %15, i32 2
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = getelementptr %struct.i2c_msg, ptr %1, i32 %15, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp slt i32 %15, %11
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = add nuw nsw i32 %15, 1
  %25 = getelementptr %struct.i2c_msg, ptr %1, i32 %24, i32 1
  %26 = load i16, ptr %25, align 2
  %27 = and i16 %26, 16384
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %14
  br label %30

30:                                               ; preds = %29, %23
  %31 = phi i32 [ 80, %29 ], [ -113, %23 ]
  %32 = load ptr, ptr %12, align 4
  %33 = getelementptr inbounds %struct.bsc_regs, ptr %32, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, -113
  %36 = or i32 %35, %31
  store i32 %36, ptr %33, align 4
  %37 = getelementptr %struct.i2c_msg, ptr %1, i32 %15, i32 1
  %38 = load i16, ptr %37, align 2
  %39 = and i16 %38, 16384
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %89

41:                                               ; preds = %30
  %42 = and i16 %38, 16
  %43 = icmp eq i16 %42, 0
  %44 = load i16, ptr %16, align 4
  br i1 %43, label %81, label %45

45:                                               ; preds = %41
  %46 = lshr i16 %44, 7
  %47 = and i16 %46, 6
  %48 = or i16 %47, 240
  %49 = zext i16 %48 to i32
  %50 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %49) #8, !srcloc !10
  %51 = load i16, ptr %16, align 4
  %52 = load ptr, ptr %13, align 4
  %53 = getelementptr i8, ptr %52, i32 36
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 1) #8, !srcloc !10
  %54 = and i16 %51, 255
  %55 = zext i16 %54 to i32
  %56 = load ptr, ptr %13, align 4
  %57 = getelementptr i8, ptr %56, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #8, !srcloc !10
  %58 = tail call fastcc i32 @brcmstb_send_i2c_cmd(ptr noundef %5, i32 noundef 2) #8
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %217, label %60

60:                                               ; preds = %45
  %61 = load i16, ptr %37, align 2
  %62 = and i16 %61, 1
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %89, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %12, align 4
  %66 = getelementptr inbounds %struct.bsc_regs, ptr %65, i32 0, i32 4
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, -113
  %69 = or i32 %68, 80
  store i32 %69, ptr %66, align 4
  %70 = load i16, ptr %16, align 4
  %71 = lshr i16 %70, 7
  %72 = and i16 %71, 6
  %73 = or i16 %72, 241
  %74 = zext i16 %73 to i32
  %75 = load ptr, ptr %13, align 4
  %76 = getelementptr i8, ptr %75, i32 36
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 1) #8, !srcloc !10
  %77 = load ptr, ptr %13, align 4
  %78 = getelementptr i8, ptr %77, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %74) #8, !srcloc !10
  %79 = tail call fastcc i32 @brcmstb_send_i2c_cmd(ptr noundef %5, i32 noundef 2) #8
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %217, label %89

81:                                               ; preds = %41
  %82 = zext i16 %44 to i32
  %83 = shl nuw nsw i32 %82, 1
  %84 = and i16 %38, 1
  %85 = zext i16 %84 to i32
  %86 = and i32 %83, 254
  %87 = or i32 %86, %85
  %88 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %87) #8, !srcloc !10
  br label %89

89:                                               ; preds = %81, %64, %60, %30
  %90 = icmp eq i16 %18, 0
  br i1 %90, label %214, label %91

91:                                               ; preds = %89
  %92 = icmp eq i32 %15, %11
  br label %93

93:                                               ; preds = %210, %91
  %94 = phi i32 [ %31, %91 ], [ 48, %210 ]
  %95 = phi i32 [ %19, %91 ], [ %211, %210 ]
  %96 = phi ptr [ %21, %91 ], [ %212, %210 ]
  %97 = tail call i32 @llvm.smin.i32(i32 %95, i32 %8)
  %98 = icmp sgt i32 %95, %8
  %99 = and i32 %94, -81
  %100 = or i32 %99, 16
  %101 = select i1 %92, i32 %99, i32 %31
  %102 = select i1 %98, i32 %100, i32 %101
  %103 = load ptr, ptr %12, align 4
  %104 = getelementptr inbounds %struct.bsc_regs, ptr %103, i32 0, i32 4
  %105 = load i32, ptr %104, align 4
  %106 = and i32 %105, -113
  %107 = or i32 %106, %102
  store i32 %107, ptr %104, align 4
  %108 = load ptr, ptr %12, align 4
  %109 = load i16, ptr %37, align 2
  %110 = and i16 %109, 4096
  %111 = load i32, ptr %6, align 4
  %112 = icmp eq i16 %110, 0
  %113 = and i16 %109, 1
  br i1 %112, label %120, label %114

114:                                              ; preds = %93
  %115 = icmp eq i16 %113, 0
  %116 = select i1 %115, i32 2, i32 3
  %117 = getelementptr inbounds %struct.bsc_regs, ptr %108, i32 0, i32 6
  %118 = load i32, ptr %117, align 4
  %119 = or i32 %118, 2
  store i32 %119, ptr %117, align 4
  br label %125

120:                                              ; preds = %93
  %121 = zext i16 %113 to i32
  %122 = getelementptr inbounds %struct.bsc_regs, ptr %108, i32 0, i32 6
  %123 = load i32, ptr %122, align 4
  %124 = and i32 %123, -3
  store i32 %124, ptr %122, align 4
  br label %125

125:                                              ; preds = %120, %114
  %126 = phi i32 [ %119, %114 ], [ %124, %120 ]
  %127 = phi i32 [ %116, %114 ], [ %121, %120 ]
  %128 = load ptr, ptr %13, align 4
  %129 = getelementptr i8, ptr %128, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %126) #8, !srcloc !10
  %130 = getelementptr inbounds %struct.bsc_regs, ptr %108, i32 0, i32 3
  %131 = load i32, ptr %130, align 4
  %132 = and i32 %131, -4
  %133 = and i32 %127, 65533
  %134 = icmp eq i32 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = or i32 %132, %136
  store i32 %137, ptr %130, align 4
  %138 = icmp eq i32 %111, 1
  %139 = select i1 %138, i32 15, i32 63
  %140 = and i32 %139, %97
  %141 = load ptr, ptr %13, align 4
  %142 = getelementptr i8, ptr %141, i32 36
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 %140) #8, !srcloc !10
  %143 = icmp ne i32 %97, 0
  %144 = and i1 %143, %134
  br i1 %144, label %145, label %177

145:                                              ; preds = %125
  %146 = icmp sgt i32 %111, 0
  %147 = shl i32 %111, 3
  %148 = add i32 %147, -8
  br label %149

149:                                              ; preds = %168, %145
  %150 = phi i32 [ 0, %145 ], [ %175, %168 ]
  %151 = phi i32 [ 0, %145 ], [ %174, %168 ]
  br i1 %146, label %152, label %168

152:                                              ; preds = %164, %149
  %153 = phi i32 [ %165, %164 ], [ 0, %149 ]
  %154 = phi i32 [ %166, %164 ], [ 0, %149 ]
  %155 = lshr i32 %153, 8
  %156 = add i32 %154, %151
  %157 = icmp ult i32 %156, %97
  br i1 %157, label %158, label %164

158:                                              ; preds = %152
  %159 = getelementptr i8, ptr %96, i32 %156
  %160 = load i8, ptr %159, align 1
  %161 = zext i8 %160 to i32
  %162 = shl i32 %161, %148
  %163 = or i32 %162, %155
  br label %164

164:                                              ; preds = %158, %152
  %165 = phi i32 [ %163, %158 ], [ %155, %152 ]
  %166 = add nuw nsw i32 %154, 1
  %167 = icmp eq i32 %166, %111
  br i1 %167, label %168, label %152

168:                                              ; preds = %164, %149
  %169 = phi i32 [ 0, %149 ], [ %165, %164 ]
  %170 = load ptr, ptr %13, align 4
  %171 = shl i32 %150, 2
  %172 = add i32 %171, 4
  %173 = getelementptr i8, ptr %170, i32 %172
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 %169) #8, !srcloc !10
  %174 = add i32 %151, %111
  %175 = add i32 %150, 1
  %176 = icmp ult i32 %174, %97
  br i1 %176, label %149, label %177

177:                                              ; preds = %168, %125
  %178 = tail call fastcc i32 @brcmstb_send_i2c_cmd(ptr noundef %5, i32 noundef %127) #8
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %208

180:                                              ; preds = %177
  %181 = icmp eq i32 %133, 1
  %182 = and i1 %143, %181
  br i1 %182, label %183, label %210

183:                                              ; preds = %180
  %184 = icmp sgt i32 %111, 0
  br label %185

185:                                              ; preds = %204, %183
  %186 = phi i32 [ 0, %183 ], [ %206, %204 ]
  %187 = phi i32 [ 0, %183 ], [ %205, %204 ]
  %188 = load ptr, ptr %13, align 4
  %189 = shl i32 %186, 2
  %190 = add i32 %189, 48
  %191 = getelementptr i8, ptr %188, i32 %190
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %191) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  br i1 %184, label %193, label %204

193:                                              ; preds = %198, %185
  %194 = phi i32 [ %201, %198 ], [ %192, %185 ]
  %195 = phi i32 [ %202, %198 ], [ 0, %185 ]
  %196 = add nuw i32 %195, %187
  %197 = icmp ult i32 %196, %97
  br i1 %197, label %198, label %204

198:                                              ; preds = %193
  %199 = trunc i32 %194 to i8
  %200 = getelementptr i8, ptr %96, i32 %196
  store i8 %199, ptr %200, align 1
  %201 = lshr i32 %194, 8
  %202 = add nuw nsw i32 %195, 1
  %203 = icmp eq i32 %202, %111
  br i1 %203, label %204, label %193

204:                                              ; preds = %198, %193, %185
  %205 = add i32 %187, %111
  %206 = add i32 %186, 1
  %207 = icmp ult i32 %205, %97
  br i1 %207, label %185, label %210

208:                                              ; preds = %177
  %209 = icmp slt i32 %178, 0
  br i1 %209, label %217, label %210

210:                                              ; preds = %208, %204, %180
  %211 = sub i32 %95, %97
  %212 = getelementptr i8, ptr %96, i32 %97
  %213 = icmp eq i32 %211, 0
  br i1 %213, label %214, label %93

214:                                              ; preds = %210, %89
  %215 = add nuw nsw i32 %15, 1
  %216 = icmp eq i32 %215, %2
  br i1 %216, label %217, label %14

217:                                              ; preds = %214, %208, %64, %45, %3
  %218 = phi i32 [ %2, %3 ], [ %178, %208 ], [ %2, %214 ], [ -121, %45 ], [ -121, %64 ]
  ret i32 %218
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @brcmstb_i2c_functionality(ptr nocapture noundef readnone %0) #6 {
  ret i32 251592735
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmstb_send_i2c_cmd(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = add i32 %5, 10
  %7 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 44
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %17, %2
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = sub i32 %6, %14
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %99, label %17

17:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !16
  %18 = load ptr, ptr %7, align 4
  %19 = getelementptr i8, ptr %18, i32 44
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %13

23:                                               ; preds = %17, %2
  %24 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %0, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %0, i32 0, i32 5
  store i32 0, ptr %28, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr inbounds %struct.bsc_regs, ptr %30, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %32, 64
  store i32 %33, ptr %31, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr inbounds %struct.bsc_regs, ptr %34, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr %7, align 4
  %38 = getelementptr i8, ptr %37, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #8, !srcloc !10
  %39 = getelementptr inbounds %struct.bsc_regs, ptr %4, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %40, 1
  store i32 %41, ptr %39, align 4
  %42 = load ptr, ptr %7, align 4
  %43 = getelementptr i8, ptr %42, i32 44
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #8, !srcloc !10
  %44 = load i32, ptr %24, align 8
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %46, label %51

46:                                               ; preds = %29
  %47 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %0, i32 0, i32 5
  %48 = tail call i32 @wait_for_completion_timeout(ptr noundef %47, i32 noundef 10) #8
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 -110, i32 0
  br label %64

51:                                               ; preds = %29
  %52 = load volatile i32, ptr @jiffies, align 64
  %53 = add i32 %52, 10
  br label %54

54:                                               ; preds = %61, %51
  %55 = load ptr, ptr %7, align 4
  %56 = getelementptr i8, ptr %55, i32 44
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %58 = load volatile i32, ptr @jiffies, align 64
  %59 = sub i32 %53, %58
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %54
  %62 = and i32 %57, 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !18
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %54, label %64

64:                                               ; preds = %61, %46
  %65 = phi i32 [ %50, %46 ], [ 0, %61 ]
  %66 = load i32, ptr %24, align 8
  %67 = icmp slt i32 %66, 0
  %68 = icmp eq i32 %65, -110
  %69 = or i1 %68, %67
  br i1 %69, label %70, label %81

70:                                               ; preds = %64, %54
  %71 = phi i32 [ %65, %64 ], [ -110, %54 ]
  %72 = load ptr, ptr %3, align 4
  %73 = getelementptr inbounds %struct.bsc_regs, ptr %72, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, -65
  store i32 %75, ptr %73, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  %76 = load ptr, ptr %3, align 4
  %77 = getelementptr inbounds %struct.bsc_regs, ptr %76, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = load ptr, ptr %7, align 4
  %80 = getelementptr i8, ptr %79, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #8, !srcloc !10
  br label %81

81:                                               ; preds = %70, %64
  %82 = phi i32 [ %65, %64 ], [ %71, %70 ]
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = icmp ult i32 %1, 2
  br i1 %85, label %86, label %93

86:                                               ; preds = %84
  %87 = load ptr, ptr %7, align 4
  %88 = getelementptr i8, ptr %87, i32 44
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %90 = and i32 %89, 4
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, i32 0, i32 -121
  br label %93

93:                                               ; preds = %86, %84, %81
  %94 = phi i32 [ %82, %81 ], [ 0, %84 ], [ %92, %86 ]
  %95 = load ptr, ptr %7, align 4
  %96 = getelementptr i8, ptr %95, i32 36
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 0) #8, !srcloc !10
  %97 = load ptr, ptr %7, align 4
  %98 = getelementptr i8, ptr %97, i32 44
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 0) #8, !srcloc !10
  br label %99

99:                                               ; preds = %93, %13
  %100 = phi i32 [ %94, %93 ], [ -110, %13 ]
  ret i32 %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_i2c_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %3, i32 0, i32 4
  %5 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %3, i32 0, i32 4, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %4, i32 noundef 1) #8
  %8 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %3, i32 0, i32 4, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %8) #8
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %struct.i2c_lock_operations, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %4, i32 noundef 1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_i2c_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @brcmstb_i2c_set_bsc_reg_defaults(ptr noundef %3)
  %4 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %3, i32 0, i32 4
  %5 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %3, i32 0, i32 4, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %4, i32 noundef 1) #8
  %8 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %3, i32 0, i32 4, i32 10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %8) #8
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %struct.i2c_lock_operations, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %4, i32 noundef 1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i64 2154120370}
!10 = !{i64 5403714}
!11 = !{i64 2152937317}
!12 = !{i64 2154100590}
!13 = !{i64 5404132}
!14 = !{i64 2152936095}
!15 = !{i64 2154103504}
!16 = !{i64 2154103346}
!17 = !{i64 2154104402}
!18 = !{i64 2154104244}
