; ModuleID = '/llk/IR/drivers/bus/omap_l3_smx.c_pt.bc'
source_filename = "../drivers/bus/omap_l3_smx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.omap3_l3 = type { ptr, ptr, ptr, i32, i32, i8 }

@__initcall__kmod_omap_l3_smx__170_291_omap3_l3_init2s = internal global ptr @omap3_l3_init, section ".initcall2s.init", align 4
@omap3_l3_driver = internal global %struct.platform_driver { ptr @omap3_l3_probe, ptr @omap3_l3_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap3_l3_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_omap3_l3_exit = internal global ptr @omap3_l3_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [32 x i8] c"omap_l3_smx.author=Felipe Balbi\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [37 x i8] c"omap_l3_smx.author=Santosh Shilimkar\00", section ".modinfo", align 1
@__UNIQUE_ID_author173 = internal constant [31 x i8] c"omap_l3_smx.author=Sricharan R\00", section ".modinfo", align 1
@__UNIQUE_ID_description174 = internal constant [56 x i8] c"omap_l3_smx.description=OMAP3XXX L3 Interconnect Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [41 x i8] c"omap_l3_smx.file=drivers/bus/omap_l3_smx\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [24 x i8] c"omap_l3_smx.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"omap_l3_smx\00", align 1
@omap3_l3_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-l3-smx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"couldn't find resource\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ioremap failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"l3-debug-irq\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"couldn't request debug irq\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"l3-app-irq\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"couldn't request app irq\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@omap3_l3_bases = internal unnamed_addr constant [2 x ptr] [ptr @omap3_l3_app_bases, ptr @omap3_l3_debug_bases], align 4
@omap3_l3_app_bases = internal global [64 x i32] [i32 5120, i32 5120, i32 5120, i32 0, i32 0, i32 0, i32 6144, i32 6144, i32 6144, i32 7168, i32 7168, i32 0, i32 22528, i32 22528, i32 22528, i32 21504, i32 21504, i32 0, i32 19456, i32 19456, i32 0, i32 20480, i32 20480, i32 0, i32 17408, i32 17408, i32 17408, i32 16384, i32 16384, i32 0, i32 0, i32 0, i32 0, i32 12288, i32 12288, i32 12288, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8192, i32 9216, i32 10240, i32 11264, i32 26624, i32 27648, i32 24576, i32 25600, i32 28672, i32 9216, i32 26624, i32 27648, i32 28672, i32 13312, i32 0, i32 0], align 4
@omap3_l3_debug_bases = internal global [7 x i32] [i32 5120, i32 0, i32 0, i32 23552, i32 23552, i32 0, i32 6144], align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"\013%s seen by %s %s at address %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"drivers/bus/omap_l3_smx.c\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"No Error\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Unsupported Command\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Address Hole\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Protection Violation\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"In-band Error\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Request Timeout Not Accepted\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Request Timeout, no response\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"UNKNOWN error\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"LCD\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"SAD2D\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"MPU\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"IVA_SS\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"IVA_SS_DMA\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"SGX\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"CAM\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"DAP\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"SDMA_WR\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"SDMA_RD\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"USB_OTG\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"USB_HOST\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"UNKNOWN Initiator\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__exitcall_omap3_l3_exit, ptr @__initcall__kmod_omap_l3_smx__170_291_omap3_l3_init2s, ptr @omap3_l3_exit], section "llvm.metadata"
@switch.table.omap3_l3_app_irq = private unnamed_addr constant [16 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.18, ptr @.str.16], align 4
@switch.table.omap3_l3_app_irq.32 = private unnamed_addr constant [29 x ptr] [ptr @.str.30, ptr @.str.29, ptr @.str.28, ptr @.str.28, ptr @.str.28, ptr @.str.28, ptr @.str.27, ptr @.str.27, ptr @.str.26, ptr @.str.25, ptr @.str.25, ptr @.str.25, ptr @.str.24, ptr @.str.23, ptr @.str.23, ptr @.str.23, ptr @.str.23, ptr @.str.23, ptr @.str.23, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.21, ptr @.str.21, ptr @.str.21, ptr @.str.21, ptr @.str.21, ptr @.str.20, ptr @.str.19], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @omap3_l3_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap3_l3_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap3_l3_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap3_l3_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3_l3_probe(ptr noundef %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 24) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %43, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %6, align 8
  %7 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.1) #8
  br label %41

11:                                               ; preds = %5
  %12 = load i32, ptr %7, align 4
  %13 = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 1, %12
  %16 = add i32 %15, %14
  %17 = tail call ptr @ioremap(i32 noundef %12, i32 noundef %16) #6
  %18 = getelementptr inbounds %struct.omap3_l3, ptr %3, i32 0, i32 2
  store ptr %17, ptr %18, align 8
  %19 = icmp eq ptr %17, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.2) #8
  br label %41

22:                                               ; preds = %11
  %23 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %24 = getelementptr inbounds %struct.omap3_l3, ptr %3, i32 0, i32 3
  store i32 %23, ptr %24, align 4
  %25 = tail call i32 @request_threaded_irq(i32 noundef %23, ptr noundef nonnull @omap3_l3_app_irq, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.4) #8
  br label %38

29:                                               ; preds = %22
  %30 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #6
  %31 = getelementptr inbounds %struct.omap3_l3, ptr %3, i32 0, i32 4
  store i32 %30, ptr %31, align 8
  %32 = tail call i32 @request_threaded_irq(i32 noundef %30, ptr noundef nonnull @omap3_l3_app_irq, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull %3) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.6) #8
  %36 = load i32, ptr %24, align 4
  %37 = tail call ptr @free_irq(i32 noundef %36, ptr noundef nonnull %3) #6
  br label %38

38:                                               ; preds = %34, %27
  %39 = phi i32 [ %25, %27 ], [ %32, %34 ]
  %40 = load ptr, ptr %18, align 8
  tail call void @iounmap(ptr noundef %40) #6
  br label %41

41:                                               ; preds = %38, %20, %9
  %42 = phi i32 [ %39, %38 ], [ -12, %20 ], [ -19, %9 ]
  tail call void @kfree(ptr noundef nonnull %3) #6
  br label %43

43:                                               ; preds = %41, %29, %1
  %44 = phi i32 [ %42, %41 ], [ -12, %1 ], [ 0, %29 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3_l3_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap3_l3, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %3) #6
  %7 = getelementptr inbounds %struct.omap3_l3, ptr %3, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @free_irq(i32 noundef %8, ptr noundef %3) #6
  %10 = getelementptr inbounds %struct.omap3_l3, ptr %3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void @iounmap(ptr noundef %11) #6
  tail call void @kfree(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3_l3_app_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.omap3_l3, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp ne i32 %4, %0
  %6 = zext i1 %5 to i32
  %7 = getelementptr inbounds %struct.omap3_l3, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  br i1 %5, label %16, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %8, i32 1296
  %11 = load volatile i64, ptr %10, align 8
  %12 = and i64 %11, 4381720962646521539
  %13 = icmp eq i64 %12, 0
  %14 = trunc i64 %11 to i32
  br i1 %13, label %20, label %15, !prof !8

15:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/bus/omap_l3_smx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 177, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

16:                                               ; preds = %2
  %17 = getelementptr i8, ptr %8, i32 1328
  %18 = load volatile i64, ptr %17, align 8
  %19 = trunc i64 %18 to i32
  br label %20

20:                                               ; preds = %16, %9
  %21 = phi i32 [ %19, %16 ], [ %14, %9 ]
  %22 = tail call i32 @llvm.cttz.i32(i32 %21, i1 false) #6, !range !10
  %23 = getelementptr [2 x ptr], ptr @omap3_l3_bases, i32 0, i32 %6
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i32, ptr %24, i32 %22
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %8, i32 %26
  %28 = getelementptr i8, ptr %27, i32 88
  %29 = load volatile i64, ptr %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %20
  %32 = getelementptr i8, ptr %27, i32 96
  %33 = load volatile i64, ptr %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = trunc i64 %29 to i32
  %36 = lshr i32 %35, 24
  %37 = lshr i64 %29, 8
  %38 = trunc i64 %37 to i8
  %39 = and i32 %36, 15
  %40 = xor i32 %39, 8
  %41 = getelementptr inbounds [16 x ptr], ptr @switch.table.omap3_l3_app_irq, i32 0, i32 %40
  %42 = load ptr, ptr %41, align 4
  %43 = add i8 %38, -1
  %44 = icmp ult i8 %43, 29
  br i1 %44, label %45, label %49

45:                                               ; preds = %31
  %46 = sext i8 %43 to i32
  %47 = getelementptr inbounds [29 x ptr], ptr @switch.table.omap3_l3_app_irq.32, i32 0, i32 %46
  %48 = load ptr, ptr %47, align 4
  br label %49

49:                                               ; preds = %45, %31
  %50 = phi ptr [ %48, %45 ], [ @.str.31, %31 ]
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %42, ptr noundef nonnull %50, ptr noundef nonnull @.str.9, i32 noundef %34) #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 152, i32 noundef 9, ptr noundef null) #6
  br label %52

52:                                               ; preds = %49, %20
  %53 = phi i32 [ 1, %49 ], [ 0, %20 ]
  %54 = shl nuw nsw i32 268435456, %6
  %55 = or i32 %54, 16777216
  %56 = zext i32 %55 to i64
  %57 = getelementptr i8, ptr %27, i32 40
  store volatile i64 %56, ptr %57, align 8
  store volatile i64 %29, ptr %28, align 8
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2151680049, i64 2151680539, i64 2151680086, i64 2151680142, i64 2151680176, i64 2151680200, i64 2151680241, i64 2151680262, i64 2151680290, i64 2151680324}
!10 = !{i32 0, i32 33}
