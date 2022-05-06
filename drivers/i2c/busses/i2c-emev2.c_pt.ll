; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-emev2.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-emev2.c"
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
%struct.em_i2c_device = type { ptr, %struct.i2c_adapter, %struct.completion, ptr, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__UNIQUE_ID_description247 = internal constant [33 x i8] c"description=EMEV2 I2C bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [18 x i8] c"author=Ian Molton\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [47 x i8] c"author=Wolfram Sang <wsa@sang-engineering.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@em_i2c_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,iic-emev2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@em_i2c_driver = internal global %struct.platform_driver { ptr @em_i2c_probe, ptr @em_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @em_i2c_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [7 x i8] c"em-i2c\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"EMEV2 I2C\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sclk\00", align 1
@em_i2c_algo = internal constant %struct.i2c_algorithm { ptr @em_i2c_xfer, ptr null, ptr null, ptr null, ptr @em_i2c_func, ptr @em_i2c_reg_slave, ptr @em_i2c_unreg_slave }, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"em_i2c\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Added i2c controller %d, irq %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"drivers/i2c/busses/i2c-emev2.c\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_license250], section "llvm.metadata"

@__mod_of__em_i2c_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @em_i2c_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @em_i2c_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @em_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @em_i2c_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 696, i32 noundef 3520) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %54, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  store ptr %6, ptr %3, align 8
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = ptrtoint ptr %6 to i32
  br label %54

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.em_i2c_device, ptr %3, i32 0, i32 1
  %12 = getelementptr inbounds %struct.em_i2c_device, ptr %3, i32 0, i32 1, i32 12
  %13 = tail call i32 @strlcpy(ptr noundef %12, ptr noundef nonnull @.str.1, i32 noundef 48) #7
  %14 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.2) #7
  %15 = getelementptr inbounds %struct.em_i2c_device, ptr %3, i32 0, i32 3
  store ptr %14, ptr %15, align 8
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = ptrtoint ptr %14 to i32
  br label %54

19:                                               ; preds = %10
  %20 = tail call i32 @clk_prepare(ptr noundef %14) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %19
  %23 = tail call i32 @clk_enable(ptr noundef %14) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @clk_unprepare(ptr noundef %14) #7
  br label %54

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.em_i2c_device, ptr %3, i32 0, i32 1, i32 7
  store i32 10, ptr %27, align 4
  %28 = getelementptr inbounds %struct.em_i2c_device, ptr %3, i32 0, i32 1, i32 8
  store i32 5, ptr %28, align 8
  %29 = getelementptr inbounds %struct.em_i2c_device, ptr %3, i32 0, i32 1, i32 9, i32 1
  store ptr %2, ptr %29, align 4
  %30 = getelementptr inbounds %struct.em_i2c_device, ptr %3, i32 0, i32 1, i32 2
  store ptr @em_i2c_algo, ptr %30, align 8
  store ptr @__this_module, ptr %11, align 8
  %31 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.em_i2c_device, ptr %3, i32 0, i32 1, i32 9, i32 25
  store ptr %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.em_i2c_device, ptr %3, i32 0, i32 2
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.em_i2c_device, ptr %3, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %35, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_completion.__key) #7
  %36 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %36, align 8
  %37 = getelementptr inbounds %struct.em_i2c_device, ptr %3, i32 0, i32 1, i32 9, i32 8
  store ptr %3, ptr %37, align 8
  tail call fastcc void @em_i2c_reset(ptr noundef %11)
  %38 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.em_i2c_device, ptr %3, i32 0, i32 5
  store i32 %38, ptr %41, align 8
  %42 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %38, ptr noundef nonnull @em_i2c_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = tail call i32 @i2c_add_adapter(ptr noundef %11) #7
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.em_i2c_device, ptr %3, i32 0, i32 1, i32 11
  %49 = load i32, ptr %48, align 4
  %50 = load i32, ptr %41, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %49, i32 noundef %50) #8
  br label %54

51:                                               ; preds = %44, %40, %26
  %52 = phi i32 [ %38, %26 ], [ %42, %40 ], [ %45, %44 ]
  %53 = load ptr, ptr %15, align 8
  tail call void @clk_disable(ptr noundef %53) #7
  tail call void @clk_unprepare(ptr noundef %53) #7
  br label %54

54:                                               ; preds = %51, %47, %25, %19, %17, %8, %1
  %55 = phi i32 [ %9, %8 ], [ %18, %17 ], [ %52, %51 ], [ 0, %47 ], [ -12, %1 ], [ %23, %25 ], [ %20, %19 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @em_i2c_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.em_i2c_device, ptr %3, i32 0, i32 1
  tail call void @i2c_del_adapter(ptr noundef %4) #7
  %5 = getelementptr inbounds %struct.em_i2c_device, ptr %3, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  tail call void @clk_disable(ptr noundef %6) #7
  tail call void @clk_unprepare(ptr noundef %6) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @em_i2c_reset(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %9 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 0) #7, !srcloc !11
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ 1000, %8 ], [ %17, %10 ]
  %12 = load ptr, ptr %3, align 8
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %14 = icmp eq i8 %13, 1
  %15 = icmp ne i32 %11, 0
  %16 = select i1 %14, i1 %15, i1 false
  %17 = add nsw i32 %11, -1
  br i1 %16, label %10, label %18

18:                                               ; preds = %10
  %19 = icmp eq i32 %11, 0
  br i1 %19, label %20, label %21, !prof !13

20:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 118, i32 noundef 9, ptr noundef null) #7
  br label %21

21:                                               ; preds = %20, %18, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %23, i8 4) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr i8, ptr %24, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %25, i8 3) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %27, i8 8) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %28 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 1) #7, !srcloc !11
  br label %29

29:                                               ; preds = %29, %21
  %30 = phi i32 [ 1000, %21 ], [ %36, %29 ]
  %31 = load ptr, ptr %3, align 8
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %31) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %33 = icmp eq i8 %32, 0
  %34 = icmp ne i32 %30, 0
  %35 = select i1 %33, i1 %34, i1 false
  %36 = add nsw i32 %30, -1
  br i1 %35, label %29, label %37

37:                                               ; preds = %29
  %38 = icmp eq i32 %30, 0
  br i1 %38, label %39, label %40, !prof !13

39:                                               ; preds = %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 136, i32 noundef 9, ptr noundef null) #7
  br label %40

40:                                               ; preds = %39, %37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @em_i2c_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1, !annotation !19
  %4 = getelementptr inbounds %struct.em_i2c_device, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %103, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8
  %9 = getelementptr i8, ptr %8, i32 28
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !20
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %15 = load ptr, ptr %1, align 8
  %16 = getelementptr i8, ptr %15, i32 8
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %16) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %18 = or i8 %17, 64
  %19 = load ptr, ptr %1, align 8
  %20 = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 %18) #7, !srcloc !11
  br label %102

21:                                               ; preds = %7
  %22 = and i32 %11, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 8
  %27 = load ptr, ptr %26, align 8
  %28 = call i32 %27(ptr noundef %25, i32 noundef 4, ptr noundef nonnull %3) #7
  br label %103

29:                                               ; preds = %21
  %30 = and i32 %11, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %103, label %32

32:                                               ; preds = %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %33 = load ptr, ptr %1, align 8
  %34 = getelementptr i8, ptr %33, i32 8
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %34) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %36 = or i8 %35, 16
  %37 = load ptr, ptr %1, align 8
  %38 = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 %36) #7, !srcloc !11
  %39 = and i32 %11, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %64, label %41

41:                                               ; preds = %32
  %42 = and i32 %11, 4
  %43 = icmp eq i32 %42, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  %44 = load ptr, ptr %1, align 8
  %45 = getelementptr i8, ptr %44, i32 8
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %45) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7
  br i1 %43, label %60, label %47

47:                                               ; preds = %41
  %48 = or i8 %46, 8
  %49 = load ptr, ptr %1, align 8
  %50 = getelementptr i8, ptr %49, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %50, i8 %48) #7, !srcloc !11
  %51 = and i32 %11, 2
  %52 = xor i32 %51, 2
  %53 = load ptr, ptr %4, align 4
  %54 = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 8
  %55 = load ptr, ptr %54, align 8
  %56 = call i32 %55(ptr noundef %53, i32 noundef %52, ptr noundef nonnull %3) #7
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  call void @arm_heavy_mb() #7
  %57 = load i8, ptr %3, align 1
  %58 = load ptr, ptr %1, align 8
  %59 = getelementptr i8, ptr %58, i32 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %59, i8 %57) #7, !srcloc !11
  br label %102

60:                                               ; preds = %41
  %61 = or i8 %46, 64
  %62 = load ptr, ptr %1, align 8
  %63 = getelementptr i8, ptr %62, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %63, i8 %61) #7, !srcloc !11
  br label %102

64:                                               ; preds = %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %65 = load ptr, ptr %1, align 8
  %66 = getelementptr i8, ptr %65, i32 8
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %66) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %68 = and i8 %67, -13
  %69 = or i8 %68, 4
  %70 = load ptr, ptr %1, align 8
  %71 = getelementptr i8, ptr %70, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %71, i8 %69) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %72 = load ptr, ptr %1, align 8
  %73 = getelementptr i8, ptr %72, i32 8
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %73) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %75 = and i8 %74, -41
  %76 = or i8 %75, 32
  %77 = load ptr, ptr %1, align 8
  %78 = getelementptr i8, ptr %77, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %78, i8 %76) #7, !srcloc !11
  %79 = and i32 %11, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %64
  %82 = load ptr, ptr %4, align 4
  %83 = getelementptr inbounds %struct.i2c_client, ptr %82, i32 0, i32 8
  %84 = load ptr, ptr %83, align 8
  %85 = call i32 %84(ptr noundef %82, i32 noundef 1, ptr noundef nonnull %3) #7
  br label %102

86:                                               ; preds = %64
  %87 = load ptr, ptr %1, align 8
  %88 = getelementptr i8, ptr %87, i32 4
  %89 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %88) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  store i8 %89, ptr %3, align 1
  %90 = load ptr, ptr %4, align 4
  %91 = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 8
  %92 = load ptr, ptr %91, align 8
  %93 = call i32 %92(ptr noundef %90, i32 noundef 3, ptr noundef nonnull %3) #7
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %86
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  call void @arm_heavy_mb() #7
  %96 = load ptr, ptr %1, align 8
  %97 = getelementptr i8, ptr %96, i32 8
  %98 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %97) #7, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %99 = and i8 %98, -5
  %100 = load ptr, ptr %1, align 8
  %101 = getelementptr i8, ptr %100, i32 8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %101, i8 %99) #7, !srcloc !11
  br label %102

102:                                              ; preds = %95, %86, %81, %60, %47, %14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  br label %105

103:                                              ; preds = %29, %24, %2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  %104 = getelementptr inbounds %struct.em_i2c_device, ptr %1, i32 0, i32 2
  call void @complete(ptr noundef %104) #7
  br label %105

105:                                              ; preds = %103, %102
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @em_i2c_xfer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 32
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %7) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !25
  %9 = and i8 %8, 64
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %181

11:                                               ; preds = %3
  %12 = icmp sgt i32 %2, 0
  br i1 %12, label %13, label %181

13:                                               ; preds = %11
  %14 = add nsw i32 %2, -1
  br label %15

15:                                               ; preds = %178, %13
  %16 = phi i32 [ 0, %13 ], [ %179, %178 ]
  %17 = getelementptr %struct.i2c_msg, ptr %1, i32 %16
  %18 = icmp eq i32 %16, %14
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr %struct.i2c_msg, ptr %1, i32 %16, i32 1
  %21 = load i16, ptr %20, align 2
  %22 = and i16 %21, 1
  %23 = icmp eq i16 %22, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %24 = load ptr, ptr %19, align 8
  %25 = getelementptr i8, ptr %24, i32 8
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %25) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %27 = or i8 %26, 12
  %28 = load ptr, ptr %19, align 8
  %29 = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %29, i8 %27) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %30 = load ptr, ptr %19, align 8
  %31 = getelementptr i8, ptr %30, i32 8
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %31) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %33 = or i8 %32, 2
  %34 = load ptr, ptr %19, align 8
  %35 = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %35, i8 %33) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %36 = load i16, ptr %17, align 4
  %37 = trunc i16 %36 to i8
  %38 = shl i8 %37, 1
  %39 = load i16, ptr %20, align 2
  %40 = trunc i16 %39 to i8
  %41 = and i8 %40, 1
  %42 = or i8 %41, %38
  %43 = load ptr, ptr %19, align 8
  %44 = getelementptr i8, ptr %43, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %44, i8 %42) #7, !srcloc !11
  %45 = getelementptr inbounds %struct.em_i2c_device, ptr %19, i32 0, i32 2
  store i32 0, ptr %45, align 4
  %46 = getelementptr inbounds %struct.em_i2c_device, ptr %19, i32 0, i32 1, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = tail call i32 @wait_for_completion_timeout(ptr noundef %45, i32 noundef %47) #7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %176, label %50

50:                                               ; preds = %15
  %51 = load ptr, ptr %19, align 8
  %52 = getelementptr i8, ptr %51, i32 28
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %52) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !27
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 64
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %176

57:                                               ; preds = %50
  %58 = and i32 %54, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %61 = load ptr, ptr %19, align 8
  %62 = getelementptr i8, ptr %61, i32 8
  %63 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %62) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %64 = or i8 %63, 17
  %65 = load ptr, ptr %19, align 8
  %66 = getelementptr i8, ptr %65, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %66, i8 %64) #7, !srcloc !11
  store i32 0, ptr %45, align 4
  %67 = load i32, ptr %46, align 4
  %68 = tail call i32 @wait_for_completion_timeout(ptr noundef %45, i32 noundef %67) #7
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %181, label %70

70:                                               ; preds = %60
  %71 = load ptr, ptr %19, align 8
  %72 = getelementptr i8, ptr %71, i32 28
  %73 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %72) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !27
  br label %181

74:                                               ; preds = %57
  br i1 %23, label %100, label %75

75:                                               ; preds = %74
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %76 = load ptr, ptr %19, align 8
  %77 = getelementptr i8, ptr %76, i32 8
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %77) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %79 = and i8 %78, -13
  %80 = or i8 %79, 4
  %81 = load ptr, ptr %19, align 8
  %82 = getelementptr i8, ptr %81, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %82, i8 %80) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %83 = load ptr, ptr %19, align 8
  %84 = getelementptr i8, ptr %83, i32 8
  %85 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %84) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %86 = and i8 %85, -41
  %87 = or i8 %86, 32
  %88 = load ptr, ptr %19, align 8
  %89 = getelementptr i8, ptr %88, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %89, i8 %87) #7, !srcloc !11
  store i32 0, ptr %45, align 4
  %90 = load i32, ptr %46, align 4
  %91 = tail call i32 @wait_for_completion_timeout(ptr noundef %45, i32 noundef %90) #7
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %176, label %93

93:                                               ; preds = %75
  %94 = load ptr, ptr %19, align 8
  %95 = getelementptr i8, ptr %94, i32 28
  %96 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %95) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !27
  %97 = zext i8 %96 to i32
  %98 = and i32 %97, 64
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %176

100:                                              ; preds = %93, %74
  %101 = phi i32 [ %54, %74 ], [ %97, %93 ]
  %102 = getelementptr %struct.i2c_msg, ptr %1, i32 %16, i32 2
  %103 = load i16, ptr %102, align 4
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %161, label %105

105:                                              ; preds = %100
  %106 = getelementptr %struct.i2c_msg, ptr %1, i32 %16, i32 3
  br label %107

107:                                              ; preds = %156, %105
  %108 = phi i32 [ 0, %105 ], [ %157, %156 ]
  %109 = phi i32 [ %101, %105 ], [ %153, %156 ]
  br i1 %23, label %122, label %110

110:                                              ; preds = %107
  %111 = load ptr, ptr %19, align 8
  %112 = getelementptr i8, ptr %111, i32 4
  %113 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %112) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !28
  %114 = load ptr, ptr %106, align 4
  %115 = getelementptr i8, ptr %114, i32 %108
  store i8 %113, ptr %115, align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %116 = load ptr, ptr %19, align 8
  %117 = getelementptr i8, ptr %116, i32 8
  %118 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %117) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %119 = or i8 %118, 32
  %120 = load ptr, ptr %19, align 8
  %121 = getelementptr i8, ptr %120, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %121, i8 %119) #7, !srcloc !11
  br label %145

122:                                              ; preds = %107
  %123 = and i32 %109, 4
  %124 = icmp eq i32 %123, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %124, label %125, label %139

125:                                              ; preds = %122
  %126 = load ptr, ptr %19, align 8
  %127 = getelementptr i8, ptr %126, i32 8
  %128 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %127) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %129 = or i8 %128, 17
  %130 = load ptr, ptr %19, align 8
  %131 = getelementptr i8, ptr %130, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %131, i8 %129) #7, !srcloc !11
  store i32 0, ptr %45, align 4
  %132 = load i32, ptr %46, align 4
  %133 = tail call i32 @wait_for_completion_timeout(ptr noundef %45, i32 noundef %132) #7
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %181, label %135

135:                                              ; preds = %125
  %136 = load ptr, ptr %19, align 8
  %137 = getelementptr i8, ptr %136, i32 28
  %138 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %137) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !27
  br label %181

139:                                              ; preds = %122
  %140 = load ptr, ptr %106, align 4
  %141 = getelementptr i8, ptr %140, i32 %108
  %142 = load i8, ptr %141, align 1
  %143 = load ptr, ptr %19, align 8
  %144 = getelementptr i8, ptr %143, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %144, i8 %142) #7, !srcloc !11
  br label %145

145:                                              ; preds = %139, %110
  store i32 0, ptr %45, align 4
  %146 = load i32, ptr %46, align 4
  %147 = tail call i32 @wait_for_completion_timeout(ptr noundef %45, i32 noundef %146) #7
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %176, label %149

149:                                              ; preds = %145
  %150 = load ptr, ptr %19, align 8
  %151 = getelementptr i8, ptr %150, i32 28
  %152 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %151) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !27
  %153 = zext i8 %152 to i32
  %154 = and i32 %153, 64
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %176

156:                                              ; preds = %149
  %157 = add nuw nsw i32 %108, 1
  %158 = load i16, ptr %102, align 4
  %159 = zext i16 %158 to i32
  %160 = icmp ult i32 %157, %159
  br i1 %160, label %107, label %161

161:                                              ; preds = %156, %100
  br i1 %18, label %162, label %178

162:                                              ; preds = %161
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %163 = load ptr, ptr %19, align 8
  %164 = getelementptr i8, ptr %163, i32 8
  %165 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %164) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %166 = or i8 %165, 17
  %167 = load ptr, ptr %19, align 8
  %168 = getelementptr i8, ptr %167, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %168, i8 %166) #7, !srcloc !11
  store i32 0, ptr %45, align 4
  %169 = load i32, ptr %46, align 4
  %170 = tail call i32 @wait_for_completion_timeout(ptr noundef %45, i32 noundef %169) #7
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %162
  %173 = load ptr, ptr %19, align 8
  %174 = getelementptr i8, ptr %173, i32 28
  %175 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %174) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !27
  br label %178

176:                                              ; preds = %149, %145, %93, %75, %50, %15
  %177 = phi i32 [ -110, %145 ], [ -11, %149 ], [ -11, %93 ], [ -110, %75 ], [ -11, %50 ], [ -110, %15 ]
  tail call fastcc void @em_i2c_reset(ptr noundef %0) #7
  br label %181

178:                                              ; preds = %172, %162, %161
  %179 = add nuw nsw i32 %16, 1
  %180 = icmp eq i32 %179, %2
  br i1 %180, label %181, label %15

181:                                              ; preds = %178, %176, %135, %125, %70, %60, %11, %3
  %182 = phi i32 [ -11, %3 ], [ %177, %176 ], [ -6, %60 ], [ -6, %70 ], [ -6, %125 ], [ -6, %135 ], [ %2, %11 ], [ %2, %178 ]
  ret i32 %182
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @em_i2c_func(ptr nocapture noundef readnone %0) #6 {
  ret i32 251592745
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @em_i2c_reg_slave(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.em_i2c_device, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load i16, ptr %0, align 8
  %11 = and i16 %10, 16
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  store ptr %0, ptr %6, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %14 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %15 = load i16, ptr %14, align 2
  %16 = trunc i16 %15 to i8
  %17 = shl i8 %16, 1
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr i8, ptr %18, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 %17) #7, !srcloc !11
  br label %20

20:                                               ; preds = %13, %9, %1
  %21 = phi i32 [ 0, %13 ], [ -16, %1 ], [ -97, %9 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @em_i2c_unreg_slave(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.em_i2c_device, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !13

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 339, i32 noundef 9, ptr noundef null) #7
  br label %10

10:                                               ; preds = %9, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %12, i8 0) #7, !srcloc !11
  %13 = getelementptr inbounds %struct.em_i2c_device, ptr %5, i32 0, i32 5
  %14 = load i32, ptr %13, align 8
  tail call void @synchronize_irq(i32 noundef %14) #7
  store ptr null, ptr %6, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 5386708}
!9 = !{i64 2154123905}
!10 = !{i64 2154124100}
!11 = !{i64 5386313}
!12 = !{i64 2154124361}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2154125064}
!15 = !{i64 2154125338}
!16 = !{i64 2154125605}
!17 = !{i64 2154125863}
!18 = !{i64 2154126129}
!19 = !{!"auto-init"}
!20 = !{i64 2154127932}
!21 = !{i64 2154123260}
!22 = !{i64 2154123408}
!23 = !{i64 2154128202}
!24 = !{i64 2154128524}
!25 = !{i64 2154127714}
!26 = !{i64 2154126884}
!27 = !{i64 2154123668}
!28 = !{i64 2154127216}
!29 = !{i64 2154129450}
!30 = !{i64 2154130212}
