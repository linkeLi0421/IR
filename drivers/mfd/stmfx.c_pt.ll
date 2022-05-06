; ModuleID = '/llk/IR/drivers/mfd/stmfx.c_pt.bc'
source_filename = "../drivers/mfd/stmfx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmfx_function_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22stmfx_function_enable\22\09\09\09\09\09"
module asm "__kstrtabns_stmfx_function_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmfx_function_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22stmfx_function_disable\22\09\09\09\09\09"
module asm "__kstrtabns_stmfx_function_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type {}
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.stmfx = type { ptr, ptr, ptr, i32, ptr, %struct.mutex, i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@.str = private unnamed_addr constant [34 x i8] c"ALTGPIO function already enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"TS in use, aGPIO[3:0] unavailable\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"IDD in use, aGPIO[7:4] unavailable\0A\00", align 1
@__kstrtab_stmfx_function_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmfx_function_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_stmfx_function_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmfx_function_enable to i32), ptr @__kstrtab_stmfx_function_enable, ptr @__kstrtabns_stmfx_function_enable }, section "___ksymtab_gpl+stmfx_function_enable", align 4
@__kstrtab_stmfx_function_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmfx_function_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_stmfx_function_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmfx_function_disable to i32), ptr @__kstrtab_stmfx_function_disable, ptr @__kstrtabns_stmfx_function_disable }, section "___ksymtab_gpl+stmfx_function_disable", align 4
@__initcall__kmod_stmfx__252_557_stmfx_driver_init6 = internal global ptr @stmfx_driver_init, section ".initcall6.init", align 4
@stmfx_driver = internal global %struct.i2c_driver { i32 0, ptr @stmfx_probe, ptr @stmfx_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stmfx_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmfx_dev_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_stmfx_driver_exit = internal global ptr @stmfx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description253 = internal constant [36 x i8] c"stmfx.description=STMFX core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [54 x i8] c"stmfx.author=Amelie Delaunay <amelie.delaunay@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file255 = internal constant [29 x i8] c"stmfx.file=drivers/mfd/stmfx\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [21 x i8] c"stmfx.license=GPL v2\00", section ".modinfo", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"stmfx-core\00", align 1
@stmfx_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stmfx-0300\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@stmfx_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stmfx_suspend, ptr @stmfx_resume, ptr @stmfx_suspend, ptr @stmfx_resume, ptr @stmfx_suspend, ptr @stmfx_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@stmfx_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 1, i32 0, i32 8, ptr @stmfx_reg_writeable, ptr null, ptr @stmfx_reg_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 176, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@stmfx_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"&stmfx->lock\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Failed to get IRQ: %d\0A\00", align 1
@stmfx_cells = internal global [3 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.18, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.19, i64 0, i8 0, ptr null, i32 1, ptr @stmfx_pinctrl_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.20, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.21, i64 0, i8 0, ptr null, i32 2, ptr @stmfx_idd_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.22, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.23, i64 0, i8 0, ptr null, i32 5, ptr @stmfx_ts_resources, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Failed to get VDD regulator\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"VDD enable failed: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Error reading chip ID: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Unknown chip ID: %#x\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Error reading FW version: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"STMFX id: %#x, fw version: %x.%02x\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Failed to reset chip: %d\0A\00", align 1
@stmfx_irq_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @stmfx_irq_map, ptr @stmfx_irq_unmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.15 = private unnamed_addr constant [29 x i8] c"Failed to create IRQ domain\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"drive-open-drain\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"stmfx\00", align 1
@stmfx_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.3, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmfx_irq_mask, ptr null, ptr @stmfx_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmfx_irq_bus_lock, ptr @stmfx_irq_bus_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.18 = private unnamed_addr constant [14 x i8] c"stmfx-pinctrl\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"st,stmfx-0300-pinctrl\00", align 1
@stmfx_pinctrl_resources = internal constant [1 x %struct.resource] [%struct.resource { i32 0, i32 0, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"stmfx-idd\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"st,stmfx-0300-idd\00", align 1
@stmfx_idd_resources = internal constant [2 x %struct.resource] [%struct.resource { i32 1, i32 1, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 2, i32 2, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.22 = private unnamed_addr constant [9 x i8] c"stmfx-ts\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"st,stmfx-0300-ts\00", align 1
@stmfx_ts_resources = internal constant [5 x %struct.resource] [%struct.resource { i32 3, i32 3, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 4, i32 4, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 5, i32 5, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 6, i32 6, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 7, i32 7, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__exitcall_stmfx_driver_exit, ptr @__initcall__kmod_stmfx__252_557_stmfx_driver_init6, ptr @__ksymtab_stmfx_function_disable, ptr @__ksymtab_stmfx_function_enable, ptr @stmfx_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmfx_function_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.stmfx, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 64, ptr noundef nonnull %3) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %48

8:                                                ; preds = %2
  %9 = and i32 %1, 24
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %3, align 4
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str) #8
  br label %48

17:                                               ; preds = %11, %8
  %18 = and i32 %1, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr %3, align 4
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.1) #8
  br label %48

26:                                               ; preds = %20, %17
  %27 = and i32 %1, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %3, align 4
  %31 = and i32 %30, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.2) #8
  br label %48

35:                                               ; preds = %29, %26
  %36 = trunc i32 %1 to i8
  %37 = and i8 %36, 1
  %38 = and i32 %1, 6
  %39 = icmp eq i32 %38, 0
  %40 = or i8 %37, 8
  %41 = select i1 %39, i8 %37, i8 %40
  %42 = lshr i8 %36, 2
  %43 = and i8 %42, 6
  %44 = or i8 %41, %43
  %45 = load ptr, ptr %4, align 4
  %46 = zext i8 %44 to i32
  %47 = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 64, i32 noundef %46, i32 noundef %46, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %48

48:                                               ; preds = %35, %33, %24, %15, %2
  %49 = phi i32 [ -16, %15 ], [ -16, %24 ], [ -16, %33 ], [ %47, %35 ], [ %6, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %49
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmfx_function_disable(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = trunc i32 %1 to i8
  %4 = and i8 %3, 1
  %5 = and i32 %1, 6
  %6 = icmp eq i32 %5, 0
  %7 = or i8 %4, 8
  %8 = select i1 %6, i8 %4, i8 %7
  %9 = lshr i8 %3, 2
  %10 = and i8 %9, 6
  %11 = or i8 %8, %10
  %12 = getelementptr inbounds %struct.stmfx, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = zext i8 %11 to i32
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 64, i32 noundef %14, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %15
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stmfx_driver_init() #4 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @stmfx_driver) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @stmfx_driver_exit() #4 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @stmfx_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmfx_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [2 x i8], align 2
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 44, i32 noundef 3520) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %145, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %6, ptr %9, align 8
  store ptr %5, ptr %6, align 4
  %10 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @stmfx_regmap_config, ptr noundef null, ptr noundef null) #7
  %11 = getelementptr inbounds %struct.stmfx, ptr %6, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = ptrtoint ptr %10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4, i32 noundef %14) #8
  br label %145

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.stmfx, ptr %6, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %16, ptr noundef nonnull @.str.5, ptr noundef nonnull @stmfx_probe.__key) #7
  %17 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 0, ptr %4, align 2, !annotation !8
  %18 = tail call ptr @devm_regulator_get_optional(ptr noundef %5, ptr noundef nonnull @.str.7) #7
  %19 = getelementptr inbounds %struct.stmfx, ptr %17, i32 0, i32 2
  store ptr %18, ptr %19, align 4
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  %21 = ptrtoint ptr %18 to i32
  %22 = select i1 %20, i32 %21, i32 0
  switch i32 %22, label %24 [
    i32 0, label %26
    i32 -19, label %23
  ]

23:                                               ; preds = %15
  store ptr null, ptr %19, align 4
  br label %32

24:                                               ; preds = %15
  %25 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %5, i32 noundef %22, ptr noundef nonnull @.str.8) #7
  br label %70

26:                                               ; preds = %15
  %27 = icmp eq ptr %18, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %26
  %29 = tail call i32 @regulator_enable(ptr noundef nonnull %18) #7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %29) #8
  br label %70

32:                                               ; preds = %28, %26, %23
  %33 = getelementptr inbounds %struct.stmfx, ptr %17, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 @regmap_read(ptr noundef %34, i32 noundef 0, ptr noundef nonnull %3) #7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef %35) #8
  br label %64

38:                                               ; preds = %32
  %39 = load i32, ptr %3, align 4
  %40 = and i32 %39, 255
  %41 = xor i32 %40, 255
  %42 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %43 = load i16, ptr %42, align 2
  %44 = zext i16 %43 to i32
  %45 = shl nuw nsw i32 %44, 1
  %46 = icmp eq i32 %41, %45
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.11, i32 noundef %39) #8
  br label %64

48:                                               ; preds = %38
  %49 = load ptr, ptr %33, align 4
  %50 = call i32 @regmap_bulk_read(ptr noundef %49, i32 noundef 1, ptr noundef nonnull %4, i32 noundef 2) #7
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.12, i32 noundef %50) #8
  br label %64

53:                                               ; preds = %48
  %54 = load i32, ptr %3, align 4
  %55 = load i8, ptr %4, align 2
  %56 = zext i8 %55 to i32
  %57 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef %54, i32 noundef %56, i32 noundef %59) #8
  %60 = call fastcc i32 @stmfx_chip_reset(ptr noundef %17) #7
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %73

63:                                               ; preds = %53
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.14, i32 noundef %60) #8
  br label %64

64:                                               ; preds = %63, %52, %47, %37
  %65 = phi i32 [ %35, %37 ], [ -22, %47 ], [ %50, %52 ], [ %60, %63 ]
  %66 = load ptr, ptr %19, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = call i32 @regulator_disable(ptr noundef nonnull %66) #7
  br label %70

70:                                               ; preds = %68, %64, %31, %24
  %71 = phi i32 [ %29, %31 ], [ %69, %68 ], [ %25, %24 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  switch i32 %71, label %72 [
    i32 0, label %73
    i32 -110, label %145
  ]

72:                                               ; preds = %70
  br label %145

73:                                               ; preds = %70, %62
  %74 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef %75) #8
  %78 = load i32, ptr %74, align 4
  br label %132

79:                                               ; preds = %73
  %80 = load ptr, ptr %9, align 8
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.device, ptr %81, i32 0, i32 25
  %83 = load ptr, ptr %82, align 8
  %84 = icmp eq ptr %83, null
  %85 = getelementptr inbounds %struct.device_node, ptr %83, i32 0, i32 3
  %86 = select i1 %84, ptr null, ptr %85
  %87 = call ptr @irq_domain_create_simple(ptr noundef %86, i32 noundef 8, i32 noundef 0, ptr noundef nonnull @stmfx_irq_ops, ptr noundef %80) #7
  %88 = getelementptr inbounds %struct.stmfx, ptr %80, i32 0, i32 4
  store ptr %87, ptr %88, align 4
  %89 = icmp eq ptr %87, null
  %90 = load ptr, ptr %80, align 4
  br i1 %89, label %91, label %92

91:                                               ; preds = %79
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.15) #8
  br label %132

92:                                               ; preds = %79
  %93 = getelementptr inbounds %struct.device, ptr %90, i32 0, i32 25
  %94 = load ptr, ptr %93, align 8
  %95 = call ptr @of_find_property(ptr noundef %94, ptr noundef nonnull @.str.16, ptr noundef null) #7
  %96 = icmp eq ptr %95, null
  %97 = zext i1 %96 to i32
  %98 = load i32, ptr %74, align 4
  %99 = call ptr @irq_get_irq_data(i32 noundef %98) #7
  %100 = icmp eq ptr %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %92
  %102 = getelementptr inbounds %struct.irq_data, ptr %99, i32 0, i32 3
  %103 = load ptr, ptr %102, align 4
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %104, 15
  br label %106

106:                                              ; preds = %101, %92
  %107 = phi i32 [ %105, %101 ], [ 0, %92 ]
  %108 = and i32 %107, 5
  %109 = icmp eq i32 %108, 0
  %110 = or i32 %97, 2
  %111 = select i1 %109, i32 %97, i32 %110
  %112 = getelementptr inbounds %struct.stmfx, ptr %80, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = call i32 @regmap_write(ptr noundef %113, i32 noundef 65, i32 noundef %111) #7
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %106
  %117 = load ptr, ptr %80, align 4
  %118 = load i32, ptr %74, align 4
  %119 = or i32 %107, 8192
  %120 = call i32 @devm_request_threaded_irq(ptr noundef %117, i32 noundef %118, ptr noundef null, ptr noundef nonnull @stmfx_irq_handler, i32 noundef %119, ptr noundef nonnull @.str.17, ptr noundef %80) #7
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %116, %106
  %123 = phi i32 [ %114, %106 ], [ %120, %116 ]
  call fastcc void @stmfx_irq_exit(ptr noundef %0) #7
  br label %132

124:                                              ; preds = %116
  %125 = load i32, ptr %74, align 4
  %126 = getelementptr inbounds %struct.stmfx, ptr %80, i32 0, i32 3
  store i32 %125, ptr %126, align 4
  %127 = getelementptr inbounds %struct.stmfx, ptr %6, i32 0, i32 4
  %128 = load ptr, ptr %127, align 4
  %129 = call i32 @devm_mfd_add_devices(ptr noundef %5, i32 noundef -1, ptr noundef nonnull @stmfx_cells, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef %128) #7
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %145, label %131

131:                                              ; preds = %124
  call fastcc void @stmfx_irq_exit(ptr noundef %0)
  br label %132

132:                                              ; preds = %131, %122, %91, %77
  %133 = phi i32 [ %78, %77 ], [ %129, %131 ], [ -22, %91 ], [ %123, %122 ]
  %134 = load ptr, ptr %9, align 8
  %135 = getelementptr inbounds %struct.stmfx, ptr %134, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = call i32 @regmap_write(ptr noundef %136, i32 noundef 66, i32 noundef 0) #7
  %138 = load ptr, ptr %135, align 4
  %139 = call i32 @regmap_write(ptr noundef %138, i32 noundef 64, i32 noundef 0) #7
  %140 = getelementptr inbounds %struct.stmfx, ptr %134, i32 0, i32 2
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %132
  %144 = call i32 @regulator_disable(ptr noundef nonnull %141) #7
  br label %145

145:                                              ; preds = %143, %132, %124, %72, %70, %13, %2
  %146 = phi i32 [ %14, %13 ], [ %71, %72 ], [ -12, %2 ], [ -517, %70 ], [ 0, %124 ], [ %133, %132 ], [ %133, %143 ]
  ret i32 %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmfx_remove(ptr nocapture noundef readonly %0) #0 {
  tail call fastcc void @stmfx_irq_exit(ptr noundef %0)
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stmfx, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 66, i32 noundef 0) #7
  %7 = load ptr, ptr %4, align 4
  %8 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 64, i32 noundef 0) #7
  %9 = getelementptr inbounds %struct.stmfx, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @regulator_disable(ptr noundef nonnull %10) #7
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi i32 [ %13, %12 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stmfx_irq_exit(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.stmfx, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %7 = call ptr @__irq_resolve_mapping(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %2) #7
  %8 = icmp eq ptr %7, null
  %9 = load i32, ptr %2, align 4
  %10 = select i1 %8, i32 0, i32 %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  call void @irq_dispose_mapping(i32 noundef %10) #7
  %11 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %12 = call ptr @__irq_resolve_mapping(ptr noundef %11, i32 noundef 1, ptr noundef nonnull %2) #7
  %13 = icmp eq ptr %12, null
  %14 = load i32, ptr %2, align 4
  %15 = select i1 %13, i32 0, i32 %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  call void @irq_dispose_mapping(i32 noundef %15) #7
  %16 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %17 = call ptr @__irq_resolve_mapping(ptr noundef %16, i32 noundef 2, ptr noundef nonnull %2) #7
  %18 = icmp eq ptr %17, null
  %19 = load i32, ptr %2, align 4
  %20 = select i1 %18, i32 0, i32 %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  call void @irq_dispose_mapping(i32 noundef %20) #7
  %21 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %22 = call ptr @__irq_resolve_mapping(ptr noundef %21, i32 noundef 3, ptr noundef nonnull %2) #7
  %23 = icmp eq ptr %22, null
  %24 = load i32, ptr %2, align 4
  %25 = select i1 %23, i32 0, i32 %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  call void @irq_dispose_mapping(i32 noundef %25) #7
  %26 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %27 = call ptr @__irq_resolve_mapping(ptr noundef %26, i32 noundef 4, ptr noundef nonnull %2) #7
  %28 = icmp eq ptr %27, null
  %29 = load i32, ptr %2, align 4
  %30 = select i1 %28, i32 0, i32 %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  call void @irq_dispose_mapping(i32 noundef %30) #7
  %31 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %32 = call ptr @__irq_resolve_mapping(ptr noundef %31, i32 noundef 5, ptr noundef nonnull %2) #7
  %33 = icmp eq ptr %32, null
  %34 = load i32, ptr %2, align 4
  %35 = select i1 %33, i32 0, i32 %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  call void @irq_dispose_mapping(i32 noundef %35) #7
  %36 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %37 = call ptr @__irq_resolve_mapping(ptr noundef %36, i32 noundef 6, ptr noundef nonnull %2) #7
  %38 = icmp eq ptr %37, null
  %39 = load i32, ptr %2, align 4
  %40 = select i1 %38, i32 0, i32 %39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  call void @irq_dispose_mapping(i32 noundef %40) #7
  %41 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %42 = call ptr @__irq_resolve_mapping(ptr noundef %41, i32 noundef 7, ptr noundef nonnull %2) #7
  %43 = icmp eq ptr %42, null
  %44 = load i32, ptr %2, align 4
  %45 = select i1 %43, i32 0, i32 %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  call void @irq_dispose_mapping(i32 noundef %45) #7
  %46 = load ptr, ptr %5, align 4
  call void @irq_domain_remove(ptr noundef %46) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stmfx_reg_writeable(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = icmp ugt i32 %1, 63
  ret i1 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stmfx_reg_volatile(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  switch i32 %1, label %3 [
    i32 64, label %4
    i32 66, label %4
    i32 8, label %4
    i32 12, label %4
    i32 13, label %4
    i32 14, label %4
    i32 16, label %4
    i32 17, label %4
    i32 18, label %4
    i32 72, label %4
    i32 73, label %4
    i32 74, label %4
    i32 108, label %4
    i32 109, label %4
    i32 110, label %4
    i32 112, label %4
    i32 113, label %4
    i32 114, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stmfx_chip_reset(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stmfx, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 64, i32 noundef 128) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @msleep(i32 noundef 10) #7
  br label %7

7:                                                ; preds = %6, %1
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmfx_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.stmfx, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 8, ptr noundef nonnull %5) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %2
  %11 = load i32, ptr %5, align 4
  %12 = and i32 %11, -2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %6, align 4
  %16 = call i32 @regmap_write(ptr noundef %15, i32 noundef 68, i32 noundef %12) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = load i32, ptr %5, align 4
  br label %20

20:                                               ; preds = %18, %10
  %21 = phi i32 [ %19, %18 ], [ %11, %10 ]
  store i32 %21, ptr %4, align 4
  %22 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 8, i32 noundef 0) #7
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.stmfx, ptr %1, i32 0, i32 4
  br label %26

26:                                               ; preds = %26, %24
  %27 = phi i32 [ %22, %24 ], [ %34, %26 ]
  %28 = load ptr, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %29 = call ptr @__irq_resolve_mapping(ptr noundef %28, i32 noundef %27, ptr noundef nonnull %3) #7
  %30 = icmp eq ptr %29, null
  %31 = load i32, ptr %3, align 4
  %32 = select i1 %30, i32 0, i32 %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @handle_nested_irq(i32 noundef %32) #7
  %33 = add nsw i32 %27, 1
  %34 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 8, i32 noundef %33) #7
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %26, label %36

36:                                               ; preds = %26, %20, %14, %2
  %37 = phi i32 [ 0, %2 ], [ 0, %14 ], [ 1, %20 ], [ 1, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmfx_irq_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %5) #7
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @stmfx_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #7
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 32768) #7
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 1024) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmfx_irq_unmap(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #7
  %3 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef null) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @stmfx_irq_mask(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 7
  %7 = shl nuw nsw i32 1, %6
  %8 = getelementptr inbounds %struct.stmfx, ptr %3, i32 0, i32 6
  %9 = load i8, ptr %8, align 4
  %10 = trunc i32 %7 to i8
  %11 = xor i8 %10, -1
  %12 = and i8 %9, %11
  store i8 %12, ptr %8, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @stmfx_irq_unmask(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 7
  %7 = shl nuw nsw i32 1, %6
  %8 = getelementptr inbounds %struct.stmfx, ptr %3, i32 0, i32 6
  %9 = load i8, ptr %8, align 4
  %10 = trunc i32 %7 to i8
  %11 = or i8 %9, %10
  store i8 %11, ptr %8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmfx_irq_bus_lock(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stmfx, ptr %3, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmfx_irq_bus_sync_unlock(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stmfx, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stmfx, ptr %3, i32 0, i32 6
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 66, i32 noundef %8) #7
  %10 = getelementptr inbounds %struct.stmfx, ptr %3, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %10) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmfx_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stmfx, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stmfx, ptr %3, i32 0, i32 7
  %7 = tail call i32 @regmap_raw_read(ptr noundef %5, i32 noundef 64, ptr noundef %6, i32 noundef 1) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.stmfx, ptr %3, i32 0, i32 8
  %12 = tail call i32 @regmap_raw_read(ptr noundef %10, i32 noundef 65, ptr noundef %11, i32 noundef 1) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.stmfx, ptr %3, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  tail call void @disable_irq(i32 noundef %16) #7
  %17 = getelementptr inbounds %struct.stmfx, ptr %3, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = tail call i32 @regulator_disable(ptr noundef nonnull %18) #7
  br label %22

22:                                               ; preds = %20, %14, %9, %1
  %23 = phi i32 [ %21, %20 ], [ %7, %1 ], [ %12, %9 ], [ 0, %14 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmfx_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stmfx, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @regulator_enable(ptr noundef nonnull %5) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.9, i32 noundef %8) #8
  br label %37

12:                                               ; preds = %7, %1
  %13 = getelementptr inbounds %struct.stmfx, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 64, i32 noundef 128) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.14, i32 noundef %15) #8
  br label %37

19:                                               ; preds = %12
  tail call void @msleep(i32 noundef 10) #7
  %20 = load ptr, ptr %13, align 4
  %21 = getelementptr inbounds %struct.stmfx, ptr %3, i32 0, i32 7
  %22 = tail call i32 @regmap_raw_write(ptr noundef %20, i32 noundef 64, ptr noundef %21, i32 noundef 1) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load ptr, ptr %13, align 4
  %26 = getelementptr inbounds %struct.stmfx, ptr %3, i32 0, i32 8
  %27 = tail call i32 @regmap_raw_write(ptr noundef %25, i32 noundef 65, ptr noundef %26, i32 noundef 1) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load ptr, ptr %13, align 4
  %31 = getelementptr inbounds %struct.stmfx, ptr %3, i32 0, i32 6
  %32 = tail call i32 @regmap_raw_write(ptr noundef %30, i32 noundef 66, ptr noundef %31, i32 noundef 1) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.stmfx, ptr %3, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  tail call void @enable_irq(i32 noundef %36) #7
  br label %37

37:                                               ; preds = %34, %29, %24, %19, %17, %10
  %38 = phi i32 [ %8, %10 ], [ %15, %17 ], [ 0, %34 ], [ %22, %19 ], [ %27, %24 ], [ %32, %29 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"auto-init"}
