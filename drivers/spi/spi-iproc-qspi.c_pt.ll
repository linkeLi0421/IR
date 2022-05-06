; ModuleID = '/llk/IR/drivers/spi/spi-iproc-qspi.c_pt.bc'
source_filename = "../drivers/spi/spi-iproc-qspi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.bcm_iproc_intc = type { %struct.bcm_qspi_soc_intc, ptr, ptr, ptr, %struct.spinlock, i8 }
%struct.bcm_qspi_soc_intc = type { ptr, ptr, ptr }

@__initcall__kmod_spi_iproc_qspi__166_151_bcm_iproc_driver_init6 = internal global ptr @bcm_iproc_driver_init, section ".initcall6.init", align 4
@bcm_iproc_driver = internal global %struct.platform_driver { ptr @bcm_iproc_probe, ptr @bcm_iproc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_iproc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_qspi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_bcm_iproc_driver_exit = internal global ptr @bcm_iproc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file167 = internal constant [47 x i8] c"spi_iproc_qspi.file=drivers/spi/spi-iproc-qspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license168 = internal constant [30 x i8] c"spi_iproc_qspi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author169 = internal constant [33 x i8] c"spi_iproc_qspi.author=Kamal Dasu\00", section ".modinfo", align 1
@__UNIQUE_ID_description170 = internal constant [68 x i8] c"spi_iproc_qspi.description=SPI flash driver for Broadcom iProc SoCs\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"bcm_iproc\00", align 1
@bcm_iproc_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,spi-nsp-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,spi-ns2-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@bcm_qspi_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"intr_regs\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"intr_status_reg\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author169, ptr @__UNIQUE_ID_description170, ptr @__UNIQUE_ID_file167, ptr @__UNIQUE_ID_license168, ptr @__exitcall_bcm_iproc_driver_exit, ptr @__initcall__kmod_spi_iproc_qspi__166_151_bcm_iproc_driver_init6, ptr @bcm_iproc_driver_exit], section "llvm.metadata"
@switch.table.bcm_iproc_qspi_int_set = private unnamed_addr constant [7 x i32] [i32 128, i32 124, i32 0, i32 88, i32 0, i32 0, i32 508], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm_iproc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_iproc_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bcm_iproc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm_iproc_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_iproc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 32, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bcm_iproc_intc, ptr %3, i32 0, i32 1
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.bcm_iproc_intc, ptr %3, i32 0, i32 4
  store i32 0, ptr %7, align 4
  %8 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.1) #4
  %9 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %8) #4
  %10 = getelementptr inbounds %struct.bcm_iproc_intc, ptr %3, i32 0, i32 2
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = ptrtoint ptr %9 to i32
  br label %45

14:                                               ; preds = %5
  %15 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.2) #4
  %16 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %15) #4
  %17 = getelementptr inbounds %struct.bcm_iproc_intc, ptr %3, i32 0, i32 3
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = ptrtoint ptr %16 to i32
  br label %45

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %23 = load ptr, ptr %22, align 8
  %24 = tail call zeroext i1 @of_device_is_big_endian(ptr noundef %23) #4
  %25 = getelementptr inbounds %struct.bcm_iproc_intc, ptr %3, i32 0, i32 5
  %26 = zext i1 %24 to i8
  store i8 %26, ptr %25, align 4
  tail call void @bcm_iproc_qspi_int_ack(ptr noundef nonnull %3, i32 noundef 7)
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #4
  %28 = load i8, ptr %25, align 4, !range !8
  %29 = icmp eq i8 %28, 0
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4
  br i1 %29, label %33, label %31

31:                                               ; preds = %21
  %32 = tail call i32 @llvm.bswap.i32(i32 %30) #4
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  br label %33

33:                                               ; preds = %31, %21
  %34 = phi i32 [ %32, %31 ], [ %30, %21 ]
  %35 = and i32 %34, -509
  %36 = load i8, ptr %25, align 4, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %39 = tail call i32 @llvm.bswap.i32(i32 %35) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %39) #4, !srcloc !11
  br label %41

40:                                               ; preds = %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %35) #4, !srcloc !11
  br label %41

41:                                               ; preds = %40, %38
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %27) #4
  store ptr @bcm_iproc_qspi_int_ack, ptr %3, align 4
  %42 = getelementptr inbounds %struct.bcm_qspi_soc_intc, ptr %3, i32 0, i32 1
  store ptr @bcm_iproc_qspi_int_set, ptr %42, align 4
  %43 = getelementptr inbounds %struct.bcm_qspi_soc_intc, ptr %3, i32 0, i32 2
  store ptr @bcm_iproc_qspi_get_l2_int_status, ptr %43, align 4
  %44 = tail call i32 @bcm_qspi_probe(ptr noundef %0, ptr noundef nonnull %3) #4
  br label %45

45:                                               ; preds = %41, %19, %12, %1
  %46 = phi i32 [ %13, %12 ], [ %20, %19 ], [ %44, %41 ], [ -12, %1 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_iproc_remove(ptr noundef %0) #2 {
  %2 = tail call i32 @bcm_qspi_remove(ptr noundef %0) #4
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_big_endian(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_iproc_qspi_int_ack(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.bcm_iproc_intc, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  switch i32 %1, label %7 [
    i32 1, label %8
    i32 2, label %11
    i32 7, label %5
    i32 4, label %6
  ]

5:                                                ; preds = %2
  br label %11

6:                                                ; preds = %2
  br label %8

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %7, %6, %2
  %9 = phi i32 [ 32, %2 ], [ 22, %6 ], [ 0, %7 ]
  %10 = getelementptr inbounds %struct.bcm_iproc_intc, ptr %0, i32 0, i32 5
  br label %18

11:                                               ; preds = %5, %2
  %12 = phi i32 [ 127, %5 ], [ 31, %2 ]
  %13 = getelementptr inbounds %struct.bcm_iproc_intc, ptr %0, i32 0, i32 5
  %14 = load i8, ptr %13, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 16777216) #4, !srcloc !11
  br label %18

17:                                               ; preds = %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #4, !srcloc !11
  br label %18

18:                                               ; preds = %17, %16, %8
  %19 = phi ptr [ %10, %8 ], [ %13, %17 ], [ %13, %16 ]
  %20 = phi i32 [ %9, %8 ], [ %12, %17 ], [ %12, %16 ]
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load i8, ptr %19, align 4, !range !8
  %25 = icmp eq i8 %24, 0
  %26 = getelementptr i8, ptr %4, i32 4
  br i1 %25, label %28, label %27

27:                                               ; preds = %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 16777216) #4, !srcloc !11
  br label %29

28:                                               ; preds = %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 1) #4, !srcloc !11
  br label %29

29:                                               ; preds = %28, %27, %18
  %30 = and i32 %20, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i8, ptr %19, align 4, !range !8
  %34 = icmp eq i8 %33, 0
  %35 = getelementptr i8, ptr %4, i32 8
  br i1 %34, label %37, label %36

36:                                               ; preds = %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 16777216) #4, !srcloc !11
  br label %38

37:                                               ; preds = %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 1) #4, !srcloc !11
  br label %38

38:                                               ; preds = %37, %36, %29
  %39 = and i32 %20, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i8, ptr %19, align 4, !range !8
  %43 = icmp eq i8 %42, 0
  %44 = getelementptr i8, ptr %4, i32 12
  br i1 %43, label %46, label %45

45:                                               ; preds = %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 16777216) #4, !srcloc !11
  br label %47

46:                                               ; preds = %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 1) #4, !srcloc !11
  br label %47

47:                                               ; preds = %46, %45, %38
  %48 = and i32 %20, 16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load i8, ptr %19, align 4, !range !8
  %52 = icmp eq i8 %51, 0
  %53 = getelementptr i8, ptr %4, i32 16
  br i1 %52, label %55, label %54

54:                                               ; preds = %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 16777216) #4, !srcloc !11
  br label %56

55:                                               ; preds = %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 1) #4, !srcloc !11
  br label %56

56:                                               ; preds = %55, %54, %47
  %57 = and i32 %20, 32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load i8, ptr %19, align 4, !range !8
  %61 = icmp eq i8 %60, 0
  %62 = getelementptr i8, ptr %4, i32 20
  br i1 %61, label %64, label %63

63:                                               ; preds = %59
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 16777216) #4, !srcloc !11
  br label %65

64:                                               ; preds = %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 1) #4, !srcloc !11
  br label %65

65:                                               ; preds = %64, %63, %56
  %66 = and i32 %20, 64
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = load i8, ptr %19, align 4, !range !8
  %70 = icmp eq i8 %69, 0
  %71 = getelementptr i8, ptr %4, i32 24
  br i1 %70, label %73, label %72

72:                                               ; preds = %68
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 16777216) #4, !srcloc !11
  br label %74

73:                                               ; preds = %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 1) #4, !srcloc !11
  br label %74

74:                                               ; preds = %73, %72, %65
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_iproc_qspi_int_set(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #2 {
  %4 = getelementptr inbounds %struct.bcm_iproc_intc, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = add i32 %1, -1
  %7 = icmp ult i32 %6, 7
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds [7 x i32], ptr @switch.table.bcm_iproc_qspi_int_set, i32 0, i32 %6
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i32 [ %10, %8 ], [ 0, %3 ]
  %13 = getelementptr inbounds %struct.bcm_iproc_intc, ptr %0, i32 0, i32 4
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #4
  %15 = getelementptr inbounds %struct.bcm_iproc_intc, ptr %0, i32 0, i32 5
  %16 = load i8, ptr %15, align 4, !range !8
  %17 = icmp eq i8 %16, 0
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4
  br i1 %17, label %21, label %19

19:                                               ; preds = %11
  %20 = tail call i32 @llvm.bswap.i32(i32 %18) #4
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  br label %21

21:                                               ; preds = %19, %11
  %22 = phi i32 [ %20, %19 ], [ %18, %11 ]
  %23 = or i32 %22, %12
  %24 = xor i32 %12, -1
  %25 = and i32 %22, %24
  %26 = select i1 %2, i32 %23, i32 %25
  %27 = load i8, ptr %15, align 4, !range !8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %30 = tail call i32 @llvm.bswap.i32(i32 %26) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %30) #4, !srcloc !11
  br label %32

31:                                               ; preds = %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %26) #4, !srcloc !11
  br label %32

32:                                               ; preds = %31, %29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_iproc_qspi_get_l2_int_status(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.bcm_iproc_intc, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bcm_iproc_intc, ptr %0, i32 0, i32 5
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4
  br i1 %6, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @llvm.bswap.i32(i32 %7) #4
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi i32 [ %9, %8 ], [ %7, %1 ]
  %12 = load i8, ptr %4, align 4, !range !8
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr i8, ptr %3, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4
  br i1 %13, label %18, label %16

16:                                               ; preds = %10
  %17 = tail call i32 @llvm.bswap.i32(i32 %15) #4
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi i32 [ %17, %16 ], [ %15, %10 ]
  %20 = load i8, ptr %4, align 4, !range !8
  %21 = icmp eq i8 %20, 0
  %22 = getelementptr i8, ptr %3, i32 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #4
  br i1 %21, label %26, label %24

24:                                               ; preds = %18
  %25 = tail call i32 @llvm.bswap.i32(i32 %23) #4
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi i32 [ %25, %24 ], [ %23, %18 ]
  %28 = load i8, ptr %4, align 4, !range !8
  %29 = icmp eq i8 %28, 0
  %30 = getelementptr i8, ptr %3, i32 12
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #4
  br i1 %29, label %34, label %32

32:                                               ; preds = %26
  %33 = tail call i32 @llvm.bswap.i32(i32 %31) #4
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi i32 [ %33, %32 ], [ %31, %26 ]
  %36 = load i8, ptr %4, align 4, !range !8
  %37 = icmp eq i8 %36, 0
  %38 = getelementptr i8, ptr %3, i32 16
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #4
  br i1 %37, label %42, label %40

40:                                               ; preds = %34
  %41 = tail call i32 @llvm.bswap.i32(i32 %39) #4
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  br label %42

42:                                               ; preds = %40, %34
  %43 = phi i32 [ %41, %40 ], [ %39, %34 ]
  %44 = load i8, ptr %4, align 4, !range !8
  %45 = icmp eq i8 %44, 0
  %46 = getelementptr i8, ptr %3, i32 20
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #4
  br i1 %45, label %50, label %48

48:                                               ; preds = %42
  %49 = tail call i32 @llvm.bswap.i32(i32 %47) #4
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  br label %50

50:                                               ; preds = %48, %42
  %51 = phi i32 [ %49, %48 ], [ %47, %42 ]
  %52 = load i8, ptr %4, align 4, !range !8
  %53 = icmp eq i8 %52, 0
  %54 = getelementptr i8, ptr %3, i32 24
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #4
  br i1 %53, label %57, label %56

56:                                               ; preds = %50
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  br label %57

57:                                               ; preds = %56, %50
  %58 = icmp ne i32 %51, 0
  %59 = zext i1 %58 to i32
  %60 = icmp eq i32 %43, 0
  %61 = select i1 %60, i32 0, i32 16
  %62 = icmp eq i32 %35, 0
  %63 = select i1 %62, i32 0, i32 8
  %64 = icmp eq i32 %27, 0
  %65 = select i1 %64, i32 0, i32 4
  %66 = icmp eq i32 %19, 0
  %67 = select i1 %66, i32 0, i32 2
  %68 = icmp ne i32 %11, 0
  %69 = zext i1 %68 to i32
  %70 = or i32 %67, %69
  %71 = or i32 %65, %70
  %72 = or i32 %63, %71
  %73 = or i32 %61, %72
  %74 = icmp eq i32 %73, 0
  %75 = or i32 %59, 2
  %76 = select i1 %74, i32 %59, i32 %75
  %77 = and i32 %73, 22
  %78 = icmp eq i32 %77, 0
  %79 = or i32 %76, 4
  %80 = select i1 %78, i32 %76, i32 %79
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_qspi_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_qspi_remove(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2151406334}
!10 = !{i64 2151406875}
!11 = !{i64 3608190}
