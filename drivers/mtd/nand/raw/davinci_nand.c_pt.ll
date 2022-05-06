; ModuleID = '/llk/IR/drivers/mtd/nand/raw/davinci_nand.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/davinci_nand.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.davinci_nand_pdata = type { i32, i32, i32, i32, ptr, i32, i32, i32, i8, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.davinci_nand_info = type { %struct.nand_controller, %struct.nand_chip, ptr, i8, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.11, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.8 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.anon.11 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_op_instr = type { i32, %union.anon.5, i32 }
%union.anon.5 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.6, i8 }
%union.anon.6 = type { ptr }
%struct.mtd_oob_region = type { i32, i32 }

@__UNIQUE_ID_alias176 = internal constant [41 x i8] c"davinci_nand.alias=platform:davinci_nand\00", section ".modinfo", align 1
@__initcall__kmod_davinci_nand__177_852_nand_davinci_driver_init6 = internal global ptr @nand_davinci_driver_init, section ".initcall6.init", align 4
@nand_davinci_driver = internal global %struct.platform_driver { ptr @nand_davinci_probe, ptr @nand_davinci_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @davinci_nand_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_nand_davinci_driver_exit = internal global ptr @nand_davinci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file178 = internal constant [52 x i8] c"davinci_nand.file=drivers/mtd/nand/raw/davinci_nand\00", section ".modinfo", align 1
@__UNIQUE_ID_license179 = internal constant [25 x i8] c"davinci_nand.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author180 = internal constant [38 x i8] c"davinci_nand.author=Texas Instruments\00", section ".modinfo", align 1
@__UNIQUE_ID_description181 = internal constant [51 x i8] c"davinci_nand.description=Davinci NAND flash driver\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"davinci_nand\00", align 1
@davinci_nand_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,davinci-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"resource missing\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"ioremap failed for resource %pR\0A\00", align 1
@davinci_nand_lock = internal global %struct.spinlock zeroinitializer, align 4
@davinci_nand_controller_ops = internal constant %struct.nand_controller_ops { ptr @davinci_nand_attach_chip, ptr null, ptr @davinci_nand_exec_op, ptr null }, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"controller rev. %d.%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"ti,davinci-chipselect\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"ti,davinci-mask-ale\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"ti,davinci-mask-cle\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"ti,davinci-mask-chipsel\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"ti,davinci-ecc-mode\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"hw\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"ti,davinci-ecc-bits\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"ti,davinci-nand-buswidth\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"ti,davinci-nand-use-bbt\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"ti,keystone-nand\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@nand_controller_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"&nfc->lock\00", align 1
@ecc4_busy = internal unnamed_addr global i1 false, align 1
@hwecc4_small_ooblayout_ops = internal constant %struct.mtd_ooblayout_ops { ptr @hwecc4_ooblayout_small_ecc, ptr @hwecc4_ooblayout_small_free }, align 4
@.str.18 = private unnamed_addr constant [36 x i8] c"drivers/mtd/nand/raw/davinci_nand.c\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias176, ptr @__UNIQUE_ID_author180, ptr @__UNIQUE_ID_description181, ptr @__UNIQUE_ID_file178, ptr @__UNIQUE_ID_license179, ptr @__exitcall_nand_davinci_driver_exit, ptr @__initcall__kmod_davinci_nand__177_852_nand_davinci_driver_init6, ptr @nand_davinci_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @nand_davinci_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @nand_davinci_driver, ptr noundef null) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @nand_davinci_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @nand_davinci_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_davinci_probe(ptr noundef %0) #2 {
  %2 = tail call fastcc ptr @nand_davinci_get_pdata(ptr noundef %0)
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i32
  br label %122

6:                                                ; preds = %1
  %7 = icmp eq ptr %2, null
  br i1 %7, label %122, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %2, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, 3
  br i1 %11, label %122, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %13, i32 noundef 1488, i32 noundef 3520) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %122, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %14, ptr %17, align 8
  %18 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #10
  %19 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 1) #10
  %20 = icmp ne ptr %18, null
  %21 = icmp ne ptr %19, null
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.1) #11
  br label %122

24:                                               ; preds = %16
  %25 = tail call ptr @devm_ioremap_resource(ptr noundef %13, ptr noundef nonnull %18) #10
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = ptrtoint ptr %25 to i32
  br label %122

29:                                               ; preds = %24
  %30 = load i32, ptr %19, align 4
  %31 = getelementptr inbounds %struct.resource, ptr %19, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = sub i32 1, %30
  %34 = add i32 %33, %32
  %35 = tail call ptr @devm_ioremap(ptr noundef %13, i32 noundef %30, i32 noundef %34) #10
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #11
  br label %122

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.davinci_nand_info, ptr %14, i32 0, i32 2
  store ptr %0, ptr %39, align 8
  %40 = getelementptr inbounds %struct.davinci_nand_info, ptr %14, i32 0, i32 4
  store ptr %35, ptr %40, align 8
  %41 = getelementptr inbounds %struct.davinci_nand_info, ptr %14, i32 0, i32 5
  store ptr %25, ptr %41, align 4
  %42 = getelementptr inbounds %struct.davinci_nand_info, ptr %14, i32 0, i32 1
  %43 = getelementptr inbounds %struct.davinci_nand_info, ptr %14, i32 0, i32 1, i32 0, i32 0, i32 56, i32 1
  store ptr %13, ptr %43, align 4
  %44 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.davinci_nand_info, ptr %14, i32 0, i32 1, i32 0, i32 0, i32 56, i32 25
  store ptr %45, ptr %46, align 8
  %47 = getelementptr inbounds %struct.davinci_nand_info, ptr %14, i32 0, i32 1, i32 0, i32 0, i32 13
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = tail call i32 @of_property_read_string(ptr noundef %45, ptr noundef nonnull @.str.16, ptr noundef %47) #10
  %52 = load ptr, ptr %41, align 4
  br label %53

53:                                               ; preds = %50, %38
  %54 = phi ptr [ %25, %38 ], [ %52, %50 ]
  %55 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %2, i32 0, i32 10
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.davinci_nand_info, ptr %14, i32 0, i32 1, i32 10
  store i32 %56, ptr %57, align 8
  %58 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %2, i32 0, i32 9
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.davinci_nand_info, ptr %14, i32 0, i32 1, i32 6
  store i32 %59, ptr %60, align 8
  %61 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %2, i32 0, i32 11
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.davinci_nand_info, ptr %14, i32 0, i32 1, i32 13
  store ptr %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %2, i32 0, i32 12
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.davinci_nand_info, ptr %14, i32 0, i32 1, i32 14
  store ptr %65, ptr %66, align 8
  %67 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %2, i32 0, i32 13
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.davinci_nand_info, ptr %14, i32 0, i32 11
  store ptr %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.davinci_nand_info, ptr %14, i32 0, i32 6
  store ptr %54, ptr %70, align 8
  %71 = load i32, ptr %9, align 4
  %72 = getelementptr inbounds %struct.davinci_nand_info, ptr %14, i32 0, i32 10
  store i32 %71, ptr %72, align 8
  %73 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %2, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.davinci_nand_info, ptr %14, i32 0, i32 7
  store i32 %74, ptr %75, align 4
  %76 = load i32, ptr %2, align 4
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, i32 8, i32 %76
  %79 = getelementptr inbounds %struct.davinci_nand_info, ptr %14, i32 0, i32 8
  store i32 %78, ptr %79, align 8
  %80 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %2, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  %83 = select i1 %82, i32 16, i32 %81
  %84 = getelementptr inbounds %struct.davinci_nand_info, ptr %14, i32 0, i32 9
  store i32 %83, ptr %84, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @davinci_nand_lock) #10
  %85 = load ptr, ptr %40, align 8
  %86 = getelementptr i8, ptr %85, i32 96
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #10, !srcloc !8
  %88 = load i32, ptr %72, align 8
  %89 = shl nuw i32 1, %88
  %90 = or i32 %89, %87
  %91 = load ptr, ptr %40, align 8
  %92 = getelementptr i8, ptr %91, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #10, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %93 = load i16, ptr @davinci_nand_lock, align 4
  %94 = add i16 %93, 1
  store i16 %94, ptr @davinci_nand_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  tail call void @__mutex_init(ptr noundef nonnull %14, ptr noundef nonnull @.str.17, ptr noundef nonnull @nand_controller_init.__key) #10
  %95 = getelementptr inbounds %struct.nand_controller, ptr %14, i32 0, i32 1
  store ptr @davinci_nand_controller_ops, ptr %95, align 4
  %96 = getelementptr inbounds %struct.davinci_nand_info, ptr %14, i32 0, i32 1, i32 32
  store ptr %14, ptr %96, align 4
  %97 = load i32, ptr %73, align 4
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, i32 1, i32 2
  %100 = tail call i32 @nand_scan_with_ids(ptr noundef %42, i32 noundef %99, ptr noundef null) #10
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %122, label %102

102:                                              ; preds = %53
  %103 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %2, i32 0, i32 4
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %2, i32 0, i32 5
  %108 = load i32, ptr %107, align 4
  %109 = tail call i32 @mtd_device_parse_register(ptr noundef %42, ptr noundef null, ptr noundef null, ptr noundef nonnull %104, i32 noundef %108) #10
  br label %112

110:                                              ; preds = %102
  %111 = tail call i32 @mtd_device_parse_register(ptr noundef %42, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #10
  br label %112

112:                                              ; preds = %110, %106
  %113 = phi i32 [ %109, %106 ], [ %111, %110 ]
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %112
  %116 = load ptr, ptr %40, align 8
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #10, !srcloc !8
  %118 = lshr i32 %117, 8
  %119 = and i32 %118, 255
  %120 = and i32 %117, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.3, i32 noundef %119, i32 noundef %120) #11
  br label %122

121:                                              ; preds = %112
  tail call void @nand_cleanup(ptr noundef %42) #10
  br label %122

122:                                              ; preds = %121, %115, %53, %37, %27, %23, %12, %8, %6, %4
  %123 = phi i32 [ %5, %4 ], [ %28, %27 ], [ %113, %121 ], [ 0, %115 ], [ -99, %37 ], [ -22, %23 ], [ -19, %6 ], [ -19, %8 ], [ -12, %12 ], [ %100, %53 ]
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_davinci_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.davinci_nand_info, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @davinci_nand_lock) #10
  %5 = getelementptr inbounds %struct.davinci_nand_info, ptr %3, i32 0, i32 1, i32 33, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i1 false, ptr @ecc4_busy, align 1
  br label %9

9:                                                ; preds = %8, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %10 = load i16, ptr @davinci_nand_lock, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr @davinci_nand_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %12 = tail call i32 @mtd_device_unregister(ptr noundef %4) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14, !prof !15

14:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 836, i32 noundef 9, ptr noundef null) #10
  br label %15

15:                                               ; preds = %14, %9
  tail call void @nand_cleanup(ptr noundef %4) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @nand_davinci_get_pdata(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %98

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %98, label %12

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store ptr null, ptr %2, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !16
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 56, i32 noundef 3520) #10
  store ptr %13, ptr %5, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %96, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %9, align 8
  %17 = call i32 @of_property_read_variable_u32_array(ptr noundef %16, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #10
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %96

19:                                               ; preds = %15
  %20 = load i32, ptr %3, align 4
  %21 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %13, i32 0, i32 2
  store i32 %20, ptr %21, align 4
  %22 = load ptr, ptr %9, align 8
  %23 = call i32 @of_property_read_variable_u32_array(ptr noundef %22, ptr noundef nonnull @.str.5, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #10
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, ptr %3, align 4
  store i32 %26, ptr %13, align 4
  br label %27

27:                                               ; preds = %25, %19
  %28 = load ptr, ptr %9, align 8
  %29 = call i32 @of_property_read_variable_u32_array(ptr noundef %28, ptr noundef nonnull @.str.6, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #10
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, ptr %3, align 4
  %33 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %13, i32 0, i32 1
  store i32 %32, ptr %33, align 4
  br label %34

34:                                               ; preds = %31, %27
  %35 = load ptr, ptr %9, align 8
  %36 = call i32 @of_property_read_variable_u32_array(ptr noundef %35, ptr noundef nonnull @.str.7, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #10
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, ptr %3, align 4
  %40 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %13, i32 0, i32 3
  store i32 %39, ptr %40, align 4
  br label %41

41:                                               ; preds = %38, %34
  %42 = load ptr, ptr %9, align 8
  %43 = call i32 @of_property_read_string(ptr noundef %42, ptr noundef nonnull @.str.8, ptr noundef nonnull %2) #10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = load ptr, ptr %2, align 4
  %47 = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.9, ptr noundef %46, i32 noundef 4)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %13, i32 0, i32 6
  store i32 1, ptr %50, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.10, ptr noundef %46, i32 noundef 4)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %13, i32 0, i32 6
  store i32 2, ptr %55, align 4
  br label %56

56:                                               ; preds = %54, %51
  %57 = call i32 @strncmp(ptr noundef nonnull dereferenceable(3) @.str.11, ptr noundef %46, i32 noundef 2)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %13, i32 0, i32 6
  store i32 3, ptr %60, align 4
  br label %61

61:                                               ; preds = %59, %56, %41
  %62 = load ptr, ptr %9, align 8
  %63 = call i32 @of_property_read_variable_u32_array(ptr noundef %62, ptr noundef nonnull @.str.12, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #10
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, ptr %3, align 4
  %67 = trunc i32 %66 to i8
  %68 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %13, i32 0, i32 8
  store i8 %67, ptr %68, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load ptr, ptr %9, align 8
  %71 = call i32 @of_property_read_variable_u32_array(ptr noundef %70, ptr noundef nonnull @.str.13, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #10
  %72 = icmp sgt i32 %71, -1
  %73 = load i32, ptr %3, align 4
  %74 = icmp eq i32 %73, 16
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %13, i32 0, i32 9
  %78 = load i32, ptr %77, align 4
  %79 = or i32 %78, 2
  store i32 %79, ptr %77, align 4
  br label %80

80:                                               ; preds = %76, %69
  %81 = load ptr, ptr %9, align 8
  %82 = call ptr @of_find_property(ptr noundef %81, ptr noundef nonnull @.str.14, ptr noundef null) #10
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %13, i32 0, i32 10
  store i32 131072, ptr %85, align 4
  br label %86

86:                                               ; preds = %84, %80
  %87 = load ptr, ptr %9, align 8
  %88 = call i32 @of_device_is_compatible(ptr noundef %87, ptr noundef nonnull @.str.15) #10
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %13, i32 0, i32 9
  %92 = load i32, ptr %91, align 4
  %93 = or i32 %92, 512
  store i32 %93, ptr %91, align 4
  br label %94

94:                                               ; preds = %90, %86
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %95 = load ptr, ptr %5, align 4
  br label %98

96:                                               ; preds = %15, %12
  %97 = phi ptr [ inttoptr (i32 -12 to ptr), %12 ], [ inttoptr (i32 -22 to ptr), %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %98

98:                                               ; preds = %96, %94, %8, %1
  %99 = phi ptr [ %97, %96 ], [ %95, %94 ], [ null, %8 ], [ %6, %1 ]
  ret ptr %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_nand_attach_chip(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1424
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc ptr @nand_davinci_get_pdata(ptr noundef %3)
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = ptrtoint ptr %4 to i32
  br label %65

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %4, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33
  store i32 %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %4, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 1
  store i32 %13, ptr %14, align 4
  switch i32 %10, label %65 [
    i32 1, label %15
    i32 2, label %17
    i32 3, label %20
  ]

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %4, i32 0, i32 8
  store i8 0, ptr %16, align 4
  br label %65

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %4, i32 0, i32 8
  store i8 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 2
  store i32 1, ptr %19, align 8
  br label %65

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %4, i32 0, i32 8
  %22 = load i8, ptr %21, align 4
  %23 = icmp eq i8 %22, 4
  br i1 %23, label %24, label %53

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 9
  %28 = icmp ult i32 %26, 512
  br i1 %28, label %65, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %31, 16
  br i1 %32, label %65, label %33

33:                                               ; preds = %29
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @davinci_nand_lock) #10
  %34 = load i1, ptr @ecc4_busy, align 1
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  store i1 true, ptr @ecc4_busy, align 1
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ 0, %35 ], [ -16, %33 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %38 = load i16, ptr @davinci_nand_lock, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr @davinci_nand_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  br i1 %34, label %65, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 14
  store ptr @nand_davinci_calculate_4bit, ptr %41, align 8
  %42 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 15
  store ptr @nand_davinci_correct_4bit, ptr %42, align 4
  %43 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 13
  store ptr @nand_davinci_hwctl_4bit, ptr %43, align 4
  %44 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  store i32 10, ptr %44, align 4
  %45 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 10
  store i32 1, ptr %45, align 8
  %46 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 2
  store i32 2, ptr %46, align 8
  switch i32 %27, label %65 [
    i32 1, label %47
    i32 8, label %49
    i32 4, label %49
  ]

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 15
  store ptr @hwecc4_small_ooblayout_ops, ptr %48, align 8
  br label %59

49:                                               ; preds = %40, %40
  %50 = tail call ptr @nand_get_large_page_ooblayout() #10
  %51 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 15
  store ptr %50, ptr %51, align 8
  %52 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 18
  store ptr @nand_read_page_hwecc_oob_first, ptr %52, align 8
  br label %59

53:                                               ; preds = %20
  %54 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 14
  store ptr @nand_davinci_calculate_1bit, ptr %54, align 8
  %55 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 15
  store ptr @nand_davinci_correct_1bit, ptr %55, align 4
  %56 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 13
  store ptr @nand_davinci_hwctl_1bit, ptr %56, align 4
  %57 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  store i32 3, ptr %57, align 4
  %58 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 2
  store i32 1, ptr %58, align 8
  br label %59

59:                                               ; preds = %53, %49, %47
  %60 = phi i32 [ 0, %53 ], [ %37, %49 ], [ %37, %47 ]
  %61 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  store i32 512, ptr %61, align 8
  %62 = load i8, ptr %21, align 4
  %63 = zext i8 %62 to i32
  %64 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  store i32 %63, ptr %64, align 4
  br label %65

65:                                               ; preds = %59, %40, %36, %29, %24, %17, %15, %8, %6
  %66 = phi i32 [ %7, %6 ], [ -22, %8 ], [ %60, %59 ], [ 0, %17 ], [ 0, %15 ], [ -5, %40 ], [ -16, %36 ], [ -22, %24 ], [ -22, %29 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_nand_exec_op(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #2 {
  br i1 %2, label %138, label %4

4:                                                ; preds = %3
  %5 = getelementptr i8, ptr %0, i32 1436
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr i8, ptr %0, i32 1444
  %9 = load i32, ptr %8, align 4
  %10 = mul i32 %9, %7
  %11 = getelementptr i8, ptr %6, i32 %10
  %12 = getelementptr i8, ptr %0, i32 1440
  store ptr %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.nand_operation, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %138, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.nand_operation, ptr %1, i32 0, i32 1
  %18 = getelementptr i8, ptr %0, i32 1432
  %19 = getelementptr i8, ptr %0, i32 1448
  %20 = getelementptr i8, ptr %0, i32 1452
  br label %21

21:                                               ; preds = %134, %16
  %22 = phi i32 [ 0, %16 ], [ %135, %134 ]
  %23 = load ptr, ptr %17, align 4
  %24 = getelementptr %struct.nand_op_instr, ptr %23, i32 %22
  %25 = load i32, ptr %24, align 4
  switch i32 %25, label %126 [
    i32 0, label %32
    i32 1, label %26
    i32 2, label %49
    i32 3, label %72
    i32 4, label %95
  ]

26:                                               ; preds = %21
  %27 = getelementptr %struct.nand_op_instr, ptr %23, i32 %22, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %126, label %30

30:                                               ; preds = %26
  %31 = getelementptr %struct.nand_op_instr, ptr %23, i32 %22, i32 1, i32 0, i32 1
  br label %38

32:                                               ; preds = %21
  %33 = getelementptr %struct.nand_op_instr, ptr %23, i32 %22, i32 1
  %34 = load i8, ptr %33, align 4
  %35 = load ptr, ptr %12, align 8
  %36 = load i32, ptr %20, align 4
  %37 = getelementptr i8, ptr %35, i32 %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !17
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %37, i8 %34) #10, !srcloc !18
  br label %126

38:                                               ; preds = %38, %30
  %39 = phi i32 [ 0, %30 ], [ %46, %38 ]
  %40 = load ptr, ptr %31, align 4
  %41 = getelementptr i8, ptr %40, i32 %39
  %42 = load i8, ptr %41, align 1
  %43 = load ptr, ptr %12, align 8
  %44 = load i32, ptr %19, align 8
  %45 = getelementptr i8, ptr %43, i32 %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !17
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %45, i8 %42) #10, !srcloc !18
  %46 = add nuw i32 %39, 1
  %47 = load i32, ptr %27, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %38, label %126

49:                                               ; preds = %21
  %50 = getelementptr %struct.nand_op_instr, ptr %23, i32 %22, i32 1
  %51 = getelementptr %struct.nand_op_instr, ptr %23, i32 %22, i32 1, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = load i32, ptr %50, align 4
  %54 = getelementptr %struct.nand_op_instr, ptr %23, i32 %22, i32 1, i32 0, i32 2
  %55 = load i8, ptr %54, align 4, !range !19
  %56 = icmp ne i8 %55, 0
  %57 = ptrtoint ptr %52 to i32
  %58 = or i32 %53, %57
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  %61 = or i1 %56, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %49
  %63 = load ptr, ptr %12, align 8
  tail call void @__raw_readsb(ptr noundef %63, ptr noundef %52, i32 noundef %53) #10
  br label %126

64:                                               ; preds = %49
  %65 = and i32 %58, 3
  %66 = icmp eq i32 %65, 0
  %67 = load ptr, ptr %12, align 8
  br i1 %66, label %70, label %68

68:                                               ; preds = %64
  %69 = lshr i32 %53, 1
  tail call void @__raw_readsw(ptr noundef %67, ptr noundef %52, i32 noundef %69) #10
  br label %126

70:                                               ; preds = %64
  %71 = lshr i32 %53, 2
  tail call void @__raw_readsl(ptr noundef %67, ptr noundef %52, i32 noundef %71) #10
  br label %126

72:                                               ; preds = %21
  %73 = getelementptr %struct.nand_op_instr, ptr %23, i32 %22, i32 1
  %74 = getelementptr %struct.nand_op_instr, ptr %23, i32 %22, i32 1, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = load i32, ptr %73, align 4
  %77 = getelementptr %struct.nand_op_instr, ptr %23, i32 %22, i32 1, i32 0, i32 2
  %78 = load i8, ptr %77, align 4, !range !19
  %79 = icmp ne i8 %78, 0
  %80 = ptrtoint ptr %75 to i32
  %81 = or i32 %76, %80
  %82 = and i32 %81, 1
  %83 = icmp ne i32 %82, 0
  %84 = or i1 %79, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %72
  %86 = load ptr, ptr %12, align 8
  tail call void @__raw_writesb(ptr noundef %86, ptr noundef %75, i32 noundef %76) #10
  br label %126

87:                                               ; preds = %72
  %88 = and i32 %81, 3
  %89 = icmp eq i32 %88, 0
  %90 = load ptr, ptr %12, align 8
  br i1 %89, label %93, label %91

91:                                               ; preds = %87
  %92 = lshr i32 %76, 1
  tail call void @__raw_writesw(ptr noundef %90, ptr noundef %75, i32 noundef %92) #10
  br label %126

93:                                               ; preds = %87
  %94 = lshr i32 %76, 2
  tail call void @__raw_writesl(ptr noundef %90, ptr noundef %75, i32 noundef %94) #10
  br label %126

95:                                               ; preds = %21
  %96 = getelementptr %struct.nand_op_instr, ptr %23, i32 %22, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = mul i32 %97, 1000
  %99 = zext i32 %98 to i64
  %100 = tail call i64 @ktime_get() #10
  %101 = mul nuw nsw i64 %99, 1000
  %102 = add i64 %101, %100
  %103 = load ptr, ptr %18, align 8
  %104 = getelementptr i8, ptr %103, i32 100
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #10, !srcloc !8
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %95
  %109 = icmp eq i32 %98, 0
  br label %110

110:                                              ; preds = %114, %108
  br i1 %109, label %114, label %111

111:                                              ; preds = %110
  %112 = tail call i64 @ktime_get() #10
  %113 = icmp sgt i64 %112, %102
  br i1 %113, label %120, label %114

114:                                              ; preds = %111, %110
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #10
  %115 = load ptr, ptr %18, align 8
  %116 = getelementptr i8, ptr %115, i32 100
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #10, !srcloc !8
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %110, label %126

120:                                              ; preds = %111
  %121 = load ptr, ptr %18, align 8
  %122 = getelementptr i8, ptr %121, i32 100
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #10, !srcloc !8
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %120, %114, %95, %93, %91, %85, %70, %68, %62, %38, %32, %26, %21
  %127 = getelementptr %struct.nand_op_instr, ptr %23, i32 %22, i32 2
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = add i32 %128, 999
  %132 = udiv i32 %131, 1000
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %133(i32 noundef %132) #10
  br label %134

134:                                              ; preds = %130, %126
  %135 = add nuw i32 %22, 1
  %136 = load i32, ptr %13, align 4
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %21, label %138

138:                                              ; preds = %134, %120, %4, %3
  %139 = phi i32 [ 0, %3 ], [ 0, %4 ], [ 0, %134 ], [ -110, %120 ]
  ret i32 %139
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_davinci_calculate_4bit(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1428
  %5 = load i8, ptr %4, align 4, !range !19
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr i8, ptr %0, i32 1432
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 192
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10
  br i1 %6, label %11, label %70

11:                                               ; preds = %3
  %12 = load ptr, ptr %7, align 8
  %13 = getelementptr i8, ptr %12, i32 196
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !8
  %15 = load ptr, ptr %7, align 8
  %16 = getelementptr i8, ptr %15, i32 200
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #10, !srcloc !8
  %18 = load ptr, ptr %7, align 8
  %19 = getelementptr i8, ptr %18, i32 204
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #10, !srcloc !8
  %21 = trunc i32 %10 to i8
  %22 = getelementptr i8, ptr %2, i32 1
  store i8 %21, ptr %2, align 1
  %23 = lshr i32 %10, 8
  %24 = and i32 %23, 3
  %25 = lshr i32 %10, 14
  %26 = and i32 %25, 252
  %27 = or i32 %24, %26
  %28 = trunc i32 %27 to i8
  %29 = getelementptr i8, ptr %2, i32 2
  store i8 %28, ptr %22, align 1
  %30 = lshr i32 %10, 22
  %31 = and i32 %30, 15
  %32 = shl i32 %14, 4
  %33 = or i32 %32, %31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr i8, ptr %2, i32 3
  store i8 %34, ptr %29, align 1
  %36 = lshr i32 %14, 4
  %37 = and i32 %36, 63
  %38 = lshr i32 %14, 10
  %39 = and i32 %38, 192
  %40 = or i32 %37, %39
  %41 = trunc i32 %40 to i8
  %42 = getelementptr i8, ptr %2, i32 4
  store i8 %41, ptr %35, align 1
  %43 = lshr i32 %14, 18
  %44 = trunc i32 %43 to i8
  %45 = getelementptr i8, ptr %2, i32 5
  store i8 %44, ptr %42, align 1
  %46 = trunc i32 %17 to i8
  %47 = getelementptr i8, ptr %2, i32 6
  store i8 %46, ptr %45, align 1
  %48 = lshr i32 %17, 8
  %49 = and i32 %48, 3
  %50 = lshr i32 %17, 14
  %51 = and i32 %50, 252
  %52 = or i32 %49, %51
  %53 = trunc i32 %52 to i8
  %54 = getelementptr i8, ptr %2, i32 7
  store i8 %53, ptr %47, align 1
  %55 = lshr i32 %17, 22
  %56 = and i32 %55, 15
  %57 = shl i32 %20, 4
  %58 = or i32 %57, %56
  %59 = trunc i32 %58 to i8
  %60 = getelementptr i8, ptr %2, i32 8
  store i8 %59, ptr %54, align 1
  %61 = lshr i32 %20, 4
  %62 = and i32 %61, 63
  %63 = lshr i32 %20, 10
  %64 = and i32 %63, 192
  %65 = or i32 %62, %64
  %66 = trunc i32 %65 to i8
  %67 = getelementptr i8, ptr %2, i32 9
  store i8 %66, ptr %60, align 1
  %68 = lshr i32 %20, 18
  %69 = trunc i32 %68 to i8
  store i8 %69, ptr %67, align 1
  br label %70

70:                                               ; preds = %11, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_davinci_correct_4bit(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef readnone %3) #2 {
  %5 = ptrtoint ptr %2 to i32
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !15

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 267, i32 noundef 9, ptr noundef null) #10
  br label %205

9:                                                ; preds = %4
  %10 = load i16, ptr %2, align 2
  %11 = and i16 %10, 1023
  %12 = lshr i16 %10, 10
  %13 = getelementptr i16, ptr %2, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = shl i16 %14, 6
  %16 = and i16 %15, 960
  %17 = or i16 %16, %12
  %18 = lshr i16 %14, 4
  %19 = and i16 %18, 1023
  %20 = lshr i16 %14, 14
  %21 = getelementptr i16, ptr %2, i32 2
  %22 = load i16, ptr %21, align 2
  %23 = shl i16 %22, 2
  %24 = and i16 %23, 1020
  %25 = or i16 %24, %20
  %26 = lshr i16 %22, 8
  %27 = getelementptr i16, ptr %2, i32 3
  %28 = load i16, ptr %27, align 2
  %29 = shl i16 %28, 8
  %30 = and i16 %29, 768
  %31 = or i16 %30, %26
  %32 = lshr i16 %28, 2
  %33 = and i16 %32, 1023
  %34 = lshr i16 %28, 12
  %35 = getelementptr i16, ptr %2, i32 4
  %36 = load i16, ptr %35, align 2
  %37 = shl i16 %36, 4
  %38 = and i16 %37, 1008
  %39 = or i16 %38, %34
  %40 = lshr i16 %36, 6
  %41 = getelementptr i8, ptr %0, i32 1432
  %42 = zext i16 %40 to i32
  %43 = load ptr, ptr %41, align 8
  %44 = getelementptr i8, ptr %43, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #10, !srcloc !9
  %45 = zext i16 %39 to i32
  %46 = load ptr, ptr %41, align 8
  %47 = getelementptr i8, ptr %46, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #10, !srcloc !9
  %48 = zext i16 %33 to i32
  %49 = load ptr, ptr %41, align 8
  %50 = getelementptr i8, ptr %49, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #10, !srcloc !9
  %51 = zext i16 %31 to i32
  %52 = load ptr, ptr %41, align 8
  %53 = getelementptr i8, ptr %52, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #10, !srcloc !9
  %54 = zext i16 %25 to i32
  %55 = load ptr, ptr %41, align 8
  %56 = getelementptr i8, ptr %55, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #10, !srcloc !9
  %57 = zext i16 %19 to i32
  %58 = load ptr, ptr %41, align 8
  %59 = getelementptr i8, ptr %58, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #10, !srcloc !9
  %60 = zext i16 %17 to i32
  %61 = load ptr, ptr %41, align 8
  %62 = getelementptr i8, ptr %61, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #10, !srcloc !9
  %63 = zext i16 %11 to i32
  %64 = load ptr, ptr %41, align 8
  %65 = getelementptr i8, ptr %64, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #10, !srcloc !9
  %66 = load ptr, ptr %41, align 8
  %67 = getelementptr i8, ptr %66, i32 100
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #10, !srcloc !8
  %69 = load ptr, ptr %41, align 8
  %70 = getelementptr i8, ptr %69, i32 192
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #10, !srcloc !8
  %72 = load ptr, ptr %41, align 8
  %73 = getelementptr i8, ptr %72, i32 196
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #10, !srcloc !8
  %75 = load ptr, ptr %41, align 8
  %76 = getelementptr i8, ptr %75, i32 200
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #10, !srcloc !8
  %78 = load ptr, ptr %41, align 8
  %79 = getelementptr i8, ptr %78, i32 204
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #10, !srcloc !8
  %81 = or i32 %74, %71
  %82 = or i32 %81, %77
  %83 = or i32 %82, %80
  %84 = and i32 %83, 67044351
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %205, label %86

86:                                               ; preds = %9
  %87 = load ptr, ptr %41, align 8
  %88 = getelementptr i8, ptr %87, i32 208
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #10, !srcloc !8
  %90 = load ptr, ptr %41, align 8
  %91 = getelementptr i8, ptr %90, i32 96
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #10, !srcloc !8
  %93 = or i32 %92, 8192
  %94 = load ptr, ptr %41, align 8
  %95 = getelementptr i8, ptr %94, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %93) #10, !srcloc !9
  %96 = load volatile i32, ptr @jiffies, align 64
  %97 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #10
  %98 = icmp ult i32 %97, 100
  %99 = select i1 %98, i32 -1073741822, i32 -1
  %100 = sub i32 %99, %96
  br label %101

101:                                              ; preds = %107, %86
  %102 = load ptr, ptr %41, align 8
  %103 = getelementptr i8, ptr %102, i32 100
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #10, !srcloc !8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !21
  %105 = and i32 %104, 3072
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load volatile i32, ptr @jiffies, align 64
  %109 = add i32 %100, %108
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %101, label %111

111:                                              ; preds = %107, %101
  br label %112

112:                                              ; preds = %126, %111
  %113 = load ptr, ptr %41, align 8
  %114 = getelementptr i8, ptr %113, i32 100
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #10, !srcloc !8
  %116 = lshr i32 %115, 8
  %117 = and i32 %116, 15
  switch i32 %117, label %126 [
    i32 0, label %118
    i32 1, label %122
    i32 2, label %127
    i32 3, label %127
  ]

118:                                              ; preds = %112
  %119 = load ptr, ptr %41, align 8
  %120 = getelementptr i8, ptr %119, i32 216
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #10, !srcloc !8
  br label %205

122:                                              ; preds = %112
  %123 = load ptr, ptr %41, align 8
  %124 = getelementptr i8, ptr %123, i32 216
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #10, !srcloc !8
  br label %205

126:                                              ; preds = %112
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !22
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !23
  br label %112

127:                                              ; preds = %112, %112
  %128 = lshr i32 %115, 16
  %129 = and i32 %128, 3
  %130 = load ptr, ptr %41, align 8
  %131 = getelementptr i8, ptr %130, i32 208
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #10, !srcloc !8
  %133 = load ptr, ptr %41, align 8
  %134 = getelementptr i8, ptr %133, i32 216
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #10, !srcloc !8
  %136 = and i32 %132, 1023
  %137 = trunc i32 %135 to i8
  %138 = icmp ugt i32 %136, 7
  br i1 %138, label %139, label %144

139:                                              ; preds = %127
  %140 = sub nsw i32 519, %136
  %141 = getelementptr i8, ptr %1, i32 %140
  %142 = load i8, ptr %141, align 1
  %143 = xor i8 %142, %137
  store i8 %143, ptr %141, align 1
  br label %144

144:                                              ; preds = %139, %127
  %145 = phi i32 [ 1, %139 ], [ 0, %127 ]
  %146 = icmp eq i32 %129, 0
  br i1 %146, label %205, label %147

147:                                              ; preds = %144
  %148 = load ptr, ptr %41, align 8
  %149 = getelementptr i8, ptr %148, i32 208
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #10, !srcloc !8
  %151 = load ptr, ptr %41, align 8
  %152 = getelementptr i8, ptr %151, i32 216
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #10, !srcloc !8
  %154 = lshr i32 %150, 16
  %155 = and i32 %154, 1023
  %156 = lshr i32 %153, 16
  %157 = trunc i32 %156 to i8
  %158 = icmp ugt i32 %155, 7
  br i1 %158, label %159, label %165

159:                                              ; preds = %147
  %160 = sub nsw i32 519, %155
  %161 = getelementptr i8, ptr %1, i32 %160
  %162 = load i8, ptr %161, align 1
  %163 = xor i8 %162, %157
  store i8 %163, ptr %161, align 1
  %164 = add nuw nsw i32 %145, 1
  br label %165

165:                                              ; preds = %159, %147
  %166 = phi i32 [ %164, %159 ], [ %145, %147 ]
  %167 = icmp eq i32 %129, 1
  br i1 %167, label %205, label %168

168:                                              ; preds = %165
  %169 = load ptr, ptr %41, align 8
  %170 = getelementptr i8, ptr %169, i32 212
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %170) #10, !srcloc !8
  %172 = load ptr, ptr %41, align 8
  %173 = getelementptr i8, ptr %172, i32 220
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %173) #10, !srcloc !8
  %175 = and i32 %171, 1023
  %176 = trunc i32 %174 to i8
  %177 = icmp ugt i32 %175, 7
  br i1 %177, label %178, label %184

178:                                              ; preds = %168
  %179 = sub nsw i32 519, %175
  %180 = getelementptr i8, ptr %1, i32 %179
  %181 = load i8, ptr %180, align 1
  %182 = xor i8 %181, %176
  store i8 %182, ptr %180, align 1
  %183 = add nsw i32 %166, 1
  br label %184

184:                                              ; preds = %178, %168
  %185 = phi i32 [ %183, %178 ], [ %166, %168 ]
  %186 = icmp eq i32 %129, 2
  br i1 %186, label %205, label %187

187:                                              ; preds = %184
  %188 = load ptr, ptr %41, align 8
  %189 = getelementptr i8, ptr %188, i32 212
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %189) #10, !srcloc !8
  %191 = load ptr, ptr %41, align 8
  %192 = getelementptr i8, ptr %191, i32 220
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %192) #10, !srcloc !8
  %194 = lshr i32 %190, 16
  %195 = and i32 %194, 1023
  %196 = lshr i32 %193, 16
  %197 = trunc i32 %196 to i8
  %198 = icmp ugt i32 %195, 7
  br i1 %198, label %199, label %205

199:                                              ; preds = %187
  %200 = sub nsw i32 519, %195
  %201 = getelementptr i8, ptr %1, i32 %200
  %202 = load i8, ptr %201, align 1
  %203 = xor i8 %202, %197
  store i8 %203, ptr %201, align 1
  %204 = add nsw i32 %185, 1
  br label %205

205:                                              ; preds = %199, %187, %184, %165, %144, %122, %118, %9, %8
  %206 = phi i32 [ -22, %8 ], [ 0, %9 ], [ 0, %118 ], [ -74, %122 ], [ %145, %144 ], [ %166, %165 ], [ %185, %184 ], [ %204, %199 ], [ %185, %187 ]
  ret i32 %206
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nand_davinci_hwctl_4bit(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1432
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 192
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !8
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @davinci_nand_lock) #10
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr i8, ptr %8, i32 96
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !8
  %11 = and i32 %10, -4145
  %12 = getelementptr i8, ptr %0, i32 1456
  %13 = load i32, ptr %12, align 8
  %14 = shl i32 %13, 4
  %15 = or i32 %11, %14
  %16 = or i32 %15, 4096
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr i8, ptr %17, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #10, !srcloc !9
  %19 = icmp eq i32 %1, 0
  %20 = getelementptr i8, ptr %0, i32 1428
  %21 = zext i1 %19 to i8
  store i8 %21, ptr %20, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @davinci_nand_lock, i32 noundef %7) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_get_large_page_ooblayout() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_hwecc_oob_first(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_davinci_calculate_1bit(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1456
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %5, 2
  %7 = add i32 %6, 112
  %8 = getelementptr i8, ptr %0, i32 1432
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 %7
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !8
  %12 = and i32 %11, 4095
  %13 = lshr i32 %11, 4
  %14 = and i32 %13, 16773120
  %15 = or i32 %14, %12
  %16 = xor i32 %15, -1
  %17 = trunc i32 %16 to i8
  store i8 %17, ptr %2, align 1
  %18 = lshr i32 %16, 8
  %19 = trunc i32 %18 to i8
  %20 = getelementptr i8, ptr %2, i32 1
  store i8 %19, ptr %20, align 1
  %21 = lshr i32 %16, 16
  %22 = trunc i32 %21 to i8
  %23 = getelementptr i8, ptr %2, i32 2
  store i8 %22, ptr %23, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @nand_davinci_correct_1bit(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #6 {
  %5 = load i8, ptr %2, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %2, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 8
  %11 = or i32 %10, %6
  %12 = getelementptr i8, ptr %2, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or i32 %11, %15
  %17 = load i8, ptr %3, align 1
  %18 = zext i8 %17 to i32
  %19 = getelementptr i8, ptr %3, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 8
  %23 = or i32 %22, %18
  %24 = getelementptr i8, ptr %3, i32 2
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 16
  %28 = or i32 %23, %27
  %29 = xor i32 %28, %16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %4
  %32 = lshr i32 %29, 12
  %33 = and i32 %29, 4095
  %34 = xor i32 %32, %33
  %35 = icmp eq i32 %34, 4095
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = lshr i32 %29, 15
  %38 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = and i32 %32, 7
  %43 = shl nuw nsw i32 1, %42
  %44 = getelementptr i8, ptr %1, i32 %37
  %45 = load i8, ptr %44, align 1
  %46 = trunc i32 %43 to i8
  %47 = xor i8 %45, %46
  store i8 %47, ptr %44, align 1
  br label %52

48:                                               ; preds = %31
  %49 = tail call i32 @llvm.ctpop.i32(i32 %29), !range !24
  %50 = icmp ugt i32 %49, 1
  %51 = select i1 %50, i32 -74, i32 1
  br label %52

52:                                               ; preds = %48, %41, %36, %4
  %53 = phi i32 [ 1, %41 ], [ -74, %36 ], [ %51, %48 ], [ 0, %4 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nand_davinci_hwctl_1bit(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1456
  %4 = load i32, ptr %3, align 8
  %5 = shl i32 %4, 2
  %6 = add i32 %5, 112
  %7 = getelementptr i8, ptr %0, i32 1432
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !8
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @davinci_nand_lock) #10
  %12 = load ptr, ptr %7, align 8
  %13 = getelementptr i8, ptr %12, i32 96
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !8
  %15 = load i32, ptr %3, align 8
  %16 = add i32 %15, 8
  %17 = shl nuw i32 1, %16
  %18 = or i32 %17, %14
  %19 = load ptr, ptr %7, align 8
  %20 = getelementptr i8, ptr %19, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #10, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @davinci_nand_lock, i32 noundef %11) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @hwecc4_ooblayout_small_ecc(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = icmp sgt i32 %1, 2
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  switch i32 %1, label %7 [
    i32 0, label %8
    i32 1, label %6
  ]

6:                                                ; preds = %5
  br label %8

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %7, %6, %5
  %9 = phi i32 [ 13, %7 ], [ 6, %6 ], [ %1, %5 ]
  %10 = phi i32 [ 3, %7 ], [ 2, %6 ], [ 5, %5 ]
  store i32 %9, ptr %2, align 4
  %11 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ -34, %3 ], [ 0, %8 ]
  ret i32 %13
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @hwecc4_ooblayout_small_free(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = icmp sgt i32 %1, 1
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  store i32 8, ptr %2, align 4
  br label %12

8:                                                ; preds = %5
  store i32 16, ptr %2, align 4
  %9 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -16
  br label %12

12:                                               ; preds = %8, %7
  %13 = phi i32 [ 5, %7 ], [ %11, %8 ]
  %14 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %3
  %16 = phi i32 [ -34, %3 ], [ 0, %12 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!8 = !{i64 3657774}
!9 = !{i64 3657356}
!10 = !{i64 2148948357}
!11 = !{i64 2148944181}
!12 = !{i64 2148944256, i64 2148944283, i64 2148944330, i64 2148944352, i64 2148944380, i64 2148944400}
!13 = !{i64 327923}
!14 = !{i64 2148972501}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{!"auto-init"}
!17 = !{i64 2151197579}
!18 = !{i64 3657159}
!19 = !{i8 0, i8 2}
!20 = !{i64 2151771565}
!21 = !{i64 2151771407}
!22 = !{i64 2151772202}
!23 = !{i64 2151772044}
!24 = !{i32 0, i32 25}
