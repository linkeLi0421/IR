; ModuleID = '/llk/IR/drivers/bcma/driver_chipcommon_sflash.c_pt.bc'
source_filename = "../drivers/bcma/driver_chipcommon_sflash.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.bcma_sflash_tbl_e = type { ptr, i32, i32, i16 }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_sflash, i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.65, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.65 = type { ptr }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.66, %struct.anon.67, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.66 = type { i8, i8, i8, i8 }
%struct.anon.67 = type { %struct.anon.68, %struct.anon.69 }
%struct.anon.68 = type { i8, i8, i8, i8, i8 }
%struct.anon.69 = type { i8, i8, i8, i8, i8 }
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [12 x i8] c"bcma_sflash\00", align 1
@bcma_sflash_resource = internal global %struct.resource { i32 469762048, i32 0, ptr @.str, i32 16896, i32 0, ptr null, ptr null, ptr null }, align 4
@bcma_sflash_dev = dso_local local_unnamed_addr global %struct.platform_device { ptr @.str, i32 0, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 1, ptr @bcma_sflash_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, align 8
@bcma_sflash_sst_tbl = internal unnamed_addr constant [15 x %struct.bcma_sflash_tbl_e] [%struct.bcma_sflash_tbl_e { ptr @.str.6, i32 1, i32 4096, i16 16 }, %struct.bcma_sflash_tbl_e { ptr @.str.7, i32 72, i32 4096, i16 16 }, %struct.bcma_sflash_tbl_e { ptr @.str.8, i32 2, i32 4096, i16 32 }, %struct.bcma_sflash_tbl_e { ptr @.str.9, i32 73, i32 4096, i16 32 }, %struct.bcma_sflash_tbl_e { ptr @.str.10, i32 3, i32 4096, i16 64 }, %struct.bcma_sflash_tbl_e { ptr @.str.11, i32 67, i32 4096, i16 64 }, %struct.bcma_sflash_tbl_e { ptr @.str.12, i32 4, i32 4096, i16 128 }, %struct.bcma_sflash_tbl_e { ptr @.str.13, i32 68, i32 4096, i16 128 }, %struct.bcma_sflash_tbl_e { ptr @.str.14, i32 141, i32 4096, i16 128 }, %struct.bcma_sflash_tbl_e { ptr @.str.15, i32 5, i32 4096, i16 256 }, %struct.bcma_sflash_tbl_e { ptr @.str.16, i32 142, i32 4096, i16 256 }, %struct.bcma_sflash_tbl_e { ptr @.str.17, i32 65, i32 4096, i16 512 }, %struct.bcma_sflash_tbl_e { ptr @.str.18, i32 74, i32 4096, i16 1024 }, %struct.bcma_sflash_tbl_e { ptr @.str.19, i32 75, i32 4096, i16 2048 }, %struct.bcma_sflash_tbl_e zeroinitializer], align 4
@bcma_sflash_st_tbl = internal unnamed_addr constant [8 x %struct.bcma_sflash_tbl_e] [%struct.bcma_sflash_tbl_e { ptr @.str.20, i32 17, i32 65536, i16 4 }, %struct.bcma_sflash_tbl_e { ptr @.str.21, i32 18, i32 65536, i16 8 }, %struct.bcma_sflash_tbl_e { ptr @.str.22, i32 20, i32 65536, i16 32 }, %struct.bcma_sflash_tbl_e { ptr @.str.23, i32 21, i32 65536, i16 64 }, %struct.bcma_sflash_tbl_e { ptr @.str.24, i32 22, i32 65536, i16 128 }, %struct.bcma_sflash_tbl_e { ptr @.str.25, i32 23, i32 65536, i16 256 }, %struct.bcma_sflash_tbl_e { ptr @.str.26, i32 24, i32 65536, i16 512 }, %struct.bcma_sflash_tbl_e zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"bus%d: Unsupported ST serial flash (id: 0x%X, id2: 0x%X)\0A\00", align 1
@bcma_sflash_at_tbl = internal unnamed_addr constant [8 x %struct.bcma_sflash_tbl_e] [%struct.bcma_sflash_tbl_e { ptr @.str.27, i32 12, i32 256, i16 512 }, %struct.bcma_sflash_tbl_e { ptr @.str.28, i32 20, i32 256, i16 1024 }, %struct.bcma_sflash_tbl_e { ptr @.str.29, i32 28, i32 256, i16 2048 }, %struct.bcma_sflash_tbl_e { ptr @.str.30, i32 36, i32 256, i16 4096 }, %struct.bcma_sflash_tbl_e { ptr @.str.31, i32 44, i32 512, i16 4096 }, %struct.bcma_sflash_tbl_e { ptr @.str.32, i32 52, i32 512, i16 8192 }, %struct.bcma_sflash_tbl_e { ptr @.str.33, i32 60, i32 1024, i16 8192 }, %struct.bcma_sflash_tbl_e zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"bus%d: Unsupported Atmel serial flash (id: 0x%X)\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"bus%d: Unsupported flash type\0A\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"bus%d: Found %s serial flash (size: %dKiB, blocksize: 0x%X, blocks: %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"bus%d: SFLASH control command failed (timeout)!\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"SST25WF512\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"SST25VF512\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"SST25WF010\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"SST25VF010\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"SST25WF020\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"SST25VF020\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"SST25WF040\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"SST25VF040\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"SST25VF040B\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"SST25WF080\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"SST25VF080B\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"SST25VF016\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"SST25VF032\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"SST25VF064\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"M25P20\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"M25P40\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"M25P16\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"M25P32\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"M25P64\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"M25FL128\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"MX25L25635F\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"AT45DB011\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"AT45DB021\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"AT45DB041\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"AT45DB081\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"AT45DB161\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"AT45DB321\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"AT45DB642\00", align 1
@switch.table.bcma_sflash_init = private unnamed_addr constant [7 x ptr] [ptr @bcma_sflash_at_tbl, ptr getelementptr inbounds ([8 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_at_tbl, i32 0, i32 1), ptr getelementptr inbounds ([8 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_at_tbl, i32 0, i32 2), ptr getelementptr inbounds ([8 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_at_tbl, i32 0, i32 3), ptr getelementptr inbounds ([8 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_at_tbl, i32 0, i32 4), ptr getelementptr inbounds ([8 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_at_tbl, i32 0, i32 5), ptr getelementptr inbounds ([8 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_at_tbl, i32 0, i32 6)], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_sflash_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 7
  %5 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1792
  switch i32 %7, label %185 [
    i32 256, label %8
    i32 512, label %143
  ]

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.bcma_host_ops, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %2, i16 noundef zeroext 64, i32 noundef -2147483463) #3
  br label %13

13:                                               ; preds = %23, %8
  %14 = phi i32 [ 0, %8 ], [ %24, %23 ]
  %15 = load ptr, ptr %0, align 4
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.bcma_bus, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.bcma_host_ops, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %15, i16 noundef zeroext 64) #3
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %33, label %23

23:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !9
  %24 = add nuw nsw i32 %14, 1
  %25 = icmp eq i32 %24, 1000
  br i1 %25, label %26, label %13

26:                                               ; preds = %23
  %27 = load ptr, ptr %0, align 4
  %28 = load ptr, ptr %27, align 8
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 11
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.5, i32 noundef %32) #4
  br label %33

33:                                               ; preds = %26, %13
  %34 = load ptr, ptr %0, align 4
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.bcma_bus, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.bcma_host_ops, ptr %37, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  tail call void %39(ptr noundef %34, i16 noundef zeroext 68, i32 noundef 0) #3
  %40 = load ptr, ptr %0, align 4
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.bcma_bus, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.bcma_host_ops, ptr %43, i32 0, i32 5
  %45 = load ptr, ptr %44, align 4
  tail call void %45(ptr noundef %40, i16 noundef zeroext 64, i32 noundef -2147482709) #3
  br label %46

46:                                               ; preds = %56, %33
  %47 = phi i32 [ 0, %33 ], [ %57, %56 ]
  %48 = load ptr, ptr %0, align 4
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.bcma_bus, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.bcma_host_ops, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 %53(ptr noundef %48, i16 noundef zeroext 64) #3
  %55 = icmp sgt i32 %54, -1
  br i1 %55, label %66, label %56

56:                                               ; preds = %46
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !9
  %57 = add nuw nsw i32 %47, 1
  %58 = icmp eq i32 %57, 1000
  br i1 %58, label %59, label %46

59:                                               ; preds = %56
  %60 = load ptr, ptr %0, align 4
  %61 = load ptr, ptr %60, align 8
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.bcma_bus, ptr %61, i32 0, i32 11
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.5, i32 noundef %65) #4
  br label %66

66:                                               ; preds = %59, %46
  %67 = load ptr, ptr %0, align 4
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.bcma_bus, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.bcma_host_ops, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 %72(ptr noundef %67, i16 noundef zeroext 72) #3
  %74 = load ptr, ptr %0, align 4
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.bcma_bus, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.bcma_host_ops, ptr %77, i32 0, i32 5
  %79 = load ptr, ptr %78, align 4
  tail call void %79(ptr noundef %74, i16 noundef zeroext 68, i32 noundef 1) #3
  %80 = load ptr, ptr %0, align 4
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %struct.bcma_bus, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.bcma_host_ops, ptr %83, i32 0, i32 5
  %85 = load ptr, ptr %84, align 4
  tail call void %85(ptr noundef %80, i16 noundef zeroext 64, i32 noundef -2147482709) #3
  br label %86

86:                                               ; preds = %96, %66
  %87 = phi i32 [ 0, %66 ], [ %97, %96 ]
  %88 = load ptr, ptr %0, align 4
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %struct.bcma_bus, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.bcma_host_ops, ptr %91, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = tail call i32 %93(ptr noundef %88, i16 noundef zeroext 64) #3
  %95 = icmp sgt i32 %94, -1
  br i1 %95, label %106, label %96

96:                                               ; preds = %86
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !9
  %97 = add nuw nsw i32 %87, 1
  %98 = icmp eq i32 %97, 1000
  br i1 %98, label %99, label %86

99:                                               ; preds = %96
  %100 = load ptr, ptr %0, align 4
  %101 = load ptr, ptr %100, align 8
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.bcma_bus, ptr %101, i32 0, i32 11
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.5, i32 noundef %105) #4
  br label %106

106:                                              ; preds = %99, %86
  %107 = load ptr, ptr %0, align 4
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr inbounds %struct.bcma_bus, ptr %108, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.bcma_host_ops, ptr %110, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = tail call i32 %112(ptr noundef %107, i16 noundef zeroext 72) #3
  switch i32 %73, label %138 [
    i32 191, label %114
    i32 19, label %215
    i32 17, label %134
    i32 18, label %128
    i32 20, label %129
    i32 21, label %130
    i32 22, label %131
    i32 23, label %132
    i32 24, label %133
  ]

114:                                              ; preds = %106
  switch i32 %113, label %138 [
    i32 1, label %134
    i32 72, label %115
    i32 2, label %116
    i32 73, label %117
    i32 3, label %118
    i32 67, label %119
    i32 4, label %120
    i32 68, label %121
    i32 141, label %122
    i32 5, label %123
    i32 142, label %124
    i32 65, label %125
    i32 74, label %126
    i32 75, label %127
  ]

115:                                              ; preds = %114
  br label %134

116:                                              ; preds = %114
  br label %134

117:                                              ; preds = %114
  br label %134

118:                                              ; preds = %114
  br label %134

119:                                              ; preds = %114
  br label %134

120:                                              ; preds = %114
  br label %134

121:                                              ; preds = %114
  br label %134

122:                                              ; preds = %114
  br label %134

123:                                              ; preds = %114
  br label %134

124:                                              ; preds = %114
  br label %134

125:                                              ; preds = %114
  br label %134

126:                                              ; preds = %114
  br label %134

127:                                              ; preds = %114
  br label %134

128:                                              ; preds = %106
  br label %134

129:                                              ; preds = %106
  br label %134

130:                                              ; preds = %106
  br label %134

131:                                              ; preds = %106
  br label %134

132:                                              ; preds = %106
  br label %134

133:                                              ; preds = %106
  br label %134

134:                                              ; preds = %133, %132, %131, %130, %129, %128, %127, %126, %125, %124, %123, %122, %121, %120, %119, %118, %117, %116, %115, %114, %106
  %135 = phi ptr [ @bcma_sflash_sst_tbl, %114 ], [ @bcma_sflash_st_tbl, %106 ], [ getelementptr inbounds ([15 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_sst_tbl, i32 0, i32 1), %115 ], [ getelementptr inbounds ([15 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_sst_tbl, i32 0, i32 2), %116 ], [ getelementptr inbounds ([15 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_sst_tbl, i32 0, i32 3), %117 ], [ getelementptr inbounds ([15 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_sst_tbl, i32 0, i32 4), %118 ], [ getelementptr inbounds ([15 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_sst_tbl, i32 0, i32 5), %119 ], [ getelementptr inbounds ([15 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_sst_tbl, i32 0, i32 6), %120 ], [ getelementptr inbounds ([15 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_sst_tbl, i32 0, i32 7), %121 ], [ getelementptr inbounds ([15 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_sst_tbl, i32 0, i32 8), %122 ], [ getelementptr inbounds ([15 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_sst_tbl, i32 0, i32 9), %123 ], [ getelementptr inbounds ([15 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_sst_tbl, i32 0, i32 10), %124 ], [ getelementptr inbounds ([15 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_sst_tbl, i32 0, i32 11), %125 ], [ getelementptr inbounds ([15 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_sst_tbl, i32 0, i32 12), %126 ], [ getelementptr inbounds ([15 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_sst_tbl, i32 0, i32 13), %127 ], [ getelementptr inbounds ([8 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_st_tbl, i32 0, i32 1), %128 ], [ getelementptr inbounds ([8 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_st_tbl, i32 0, i32 2), %129 ], [ getelementptr inbounds ([8 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_st_tbl, i32 0, i32 3), %130 ], [ getelementptr inbounds ([8 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_st_tbl, i32 0, i32 4), %131 ], [ getelementptr inbounds ([8 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_st_tbl, i32 0, i32 5), %132 ], [ getelementptr inbounds ([8 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_st_tbl, i32 0, i32 6), %133 ]
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %193

138:                                              ; preds = %134, %114, %106
  %139 = load ptr, ptr %3, align 4
  %140 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %139, ptr noundef nonnull @.str.1, i32 noundef %142, i32 noundef %73, i32 noundef %113) #4
  br label %215

143:                                              ; preds = %1
  %144 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.bcma_host_ops, ptr %145, i32 0, i32 5
  %147 = load ptr, ptr %146, align 4
  tail call void %147(ptr noundef %2, i16 noundef zeroext 64, i32 noundef -2147483177) #3
  br label %148

148:                                              ; preds = %158, %143
  %149 = phi i32 [ 0, %143 ], [ %159, %158 ]
  %150 = load ptr, ptr %0, align 4
  %151 = load ptr, ptr %150, align 8
  %152 = getelementptr inbounds %struct.bcma_bus, ptr %151, i32 0, i32 2
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.bcma_host_ops, ptr %153, i32 0, i32 2
  %155 = load ptr, ptr %154, align 4
  %156 = tail call i32 %155(ptr noundef %150, i16 noundef zeroext 64) #3
  %157 = icmp sgt i32 %156, -1
  br i1 %157, label %168, label %158

158:                                              ; preds = %148
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !9
  %159 = add nuw nsw i32 %149, 1
  %160 = icmp eq i32 %159, 1000
  br i1 %160, label %161, label %148

161:                                              ; preds = %158
  %162 = load ptr, ptr %0, align 4
  %163 = load ptr, ptr %162, align 8
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.bcma_bus, ptr %163, i32 0, i32 11
  %166 = load i8, ptr %165, align 1
  %167 = zext i8 %166 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.5, i32 noundef %167) #4
  br label %168

168:                                              ; preds = %161, %148
  %169 = load ptr, ptr %0, align 4
  %170 = load ptr, ptr %169, align 8
  %171 = getelementptr inbounds %struct.bcma_bus, ptr %170, i32 0, i32 2
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.bcma_host_ops, ptr %172, i32 0, i32 2
  %174 = load ptr, ptr %173, align 4
  %175 = tail call i32 %174(ptr noundef %169, i16 noundef zeroext 72) #3
  %176 = and i32 %175, 60
  %177 = add nsw i32 %176, -12
  %178 = call i32 @llvm.fshl.i32(i32 %177, i32 %177, i32 29)
  %179 = icmp ult i32 %178, 7
  br i1 %179, label %190, label %180

180:                                              ; preds = %168
  %181 = load ptr, ptr %3, align 4
  %182 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %183 = load i8, ptr %182, align 1
  %184 = zext i8 %183 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %181, ptr noundef nonnull @.str.2, i32 noundef %184, i32 noundef %176) #4
  br label %215

185:                                              ; preds = %1
  %186 = load ptr, ptr %3, align 4
  %187 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %188 = load i8, ptr %187, align 1
  %189 = zext i8 %188 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %186, ptr noundef nonnull @.str.3, i32 noundef %189) #4
  br label %215

190:                                              ; preds = %168
  %191 = getelementptr inbounds [7 x ptr], ptr @switch.table.bcma_sflash_init, i32 0, i32 %178
  %192 = load ptr, ptr %191, align 4
  br label %193

193:                                              ; preds = %190, %134
  %194 = phi ptr [ %135, %134 ], [ %192, %190 ]
  %195 = getelementptr inbounds %struct.bcma_sflash_tbl_e, ptr %194, i32 0, i32 2
  %196 = load i32, ptr %195, align 4
  %197 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 7, i32 1
  store i32 %196, ptr %197, align 4
  %198 = getelementptr inbounds %struct.bcma_sflash_tbl_e, ptr %194, i32 0, i32 3
  %199 = load i16, ptr %198, align 4
  %200 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 7, i32 2
  store i16 %199, ptr %200, align 4
  %201 = zext i16 %199 to i32
  %202 = mul i32 %196, %201
  %203 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 7, i32 3
  store i32 %202, ptr %203, align 4
  store i8 1, ptr %4, align 4
  %204 = load ptr, ptr %3, align 4
  %205 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %206 = load i8, ptr %205, align 1
  %207 = zext i8 %206 to i32
  %208 = load ptr, ptr %194, align 4
  %209 = lshr i32 %202, 10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %204, ptr noundef nonnull @.str.4, i32 noundef %207, ptr noundef %208, i32 noundef %209, i32 noundef %196, i32 noundef %201) #4
  %210 = load ptr, ptr getelementptr inbounds (%struct.platform_device, ptr @bcma_sflash_dev, i32 0, i32 7), align 8
  %211 = load i32, ptr %210, align 4
  %212 = load i32, ptr %203, align 4
  %213 = add i32 %212, %211
  %214 = getelementptr inbounds %struct.resource, ptr %210, i32 0, i32 1
  store i32 %213, ptr %214, align 4
  store ptr %4, ptr getelementptr inbounds (%struct.platform_device, ptr @bcma_sflash_dev, i32 0, i32 3, i32 7), align 4
  br label %215

215:                                              ; preds = %193, %185, %180, %138, %106
  %216 = phi i32 [ -524, %185 ], [ 0, %193 ], [ -524, %180 ], [ -524, %138 ], [ -524, %106 ]
  ret i32 %216
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!8 = !{i64 2153585828}
!9 = !{i64 2153585670}
