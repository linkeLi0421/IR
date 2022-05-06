; ModuleID = '/llk/IR/drivers/mtd/nand/raw/nand_timings.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/nand_timings.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon }
%union.anon = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.nand_nvddr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.11, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.6 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.6 = type { %struct.mtd_part, [16 x i8] }
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
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.anon.11 = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.onfi_params = type { i32, i16, i16, i16, i16, i8, i16, i16, i16, [88 x i8] }

@onfi_sdr_timings = internal constant [6 x %struct.nand_interface_config] [%struct.nand_interface_config { i32 0, %struct.nand_timings { i32 0, %union.anon { %struct.nand_sdr_timings { i64 65535000000, i32 500000, i64 65535000000, i64 200000000, i32 20000, i32 400000, i32 50000, i32 25000, i32 100000, i32 20000, i32 20000, i32 100000, i32 20000, i32 20000, i32 50000, i32 0, i32 70000, i32 20000, i32 40000, i32 1000000, i32 10000, i32 1000000, i32 100000, i32 40000, i32 30000, i32 0, i32 200000, i32 200000, i32 0, i32 50000, i32 40000, i64 250000000000, i32 200000, i32 100000, i32 30000, i32 120000, i32 50000, i32 100000 } } } }, %struct.nand_interface_config { i32 0, %struct.nand_timings { i32 1, %union.anon { %struct.nand_sdr_timings { i64 65535000000, i32 500000, i64 65535000000, i64 200000000, i32 10000, i32 400000, i32 25000, i32 10000, i32 45000, i32 20000, i32 10000, i32 50000, i32 10000, i32 10000, i32 25000, i32 15000, i32 35000, i32 10000, i32 20000, i32 1000000, i32 0, i32 1000000, i32 50000, i32 30000, i32 15000, i32 15000, i32 100000, i32 100000, i32 0, i32 25000, i32 20000, i64 500000000, i32 100000, i32 45000, i32 15000, i32 80000, i32 25000, i32 100000 } } } }, %struct.nand_interface_config { i32 0, %struct.nand_timings { i32 2, %union.anon { %struct.nand_sdr_timings { i64 65535000000, i32 500000, i64 65535000000, i64 200000000, i32 10000, i32 400000, i32 15000, i32 10000, i32 30000, i32 20000, i32 10000, i32 50000, i32 10000, i32 10000, i32 15000, i32 15000, i32 25000, i32 5000, i32 15000, i32 1000000, i32 0, i32 1000000, i32 35000, i32 25000, i32 15000, i32 15000, i32 100000, i32 100000, i32 0, i32 17000, i32 20000, i64 500000000, i32 100000, i32 35000, i32 15000, i32 80000, i32 17000, i32 100000 } } } }, %struct.nand_interface_config { i32 0, %struct.nand_timings { i32 3, %union.anon { %struct.nand_sdr_timings { i64 65535000000, i32 500000, i64 65535000000, i64 200000000, i32 5000, i32 400000, i32 10000, i32 10000, i32 25000, i32 20000, i32 5000, i32 50000, i32 5000, i32 10000, i32 10000, i32 15000, i32 25000, i32 5000, i32 10000, i32 1000000, i32 0, i32 1000000, i32 30000, i32 20000, i32 10000, i32 15000, i32 100000, i32 100000, i32 0, i32 15000, i32 20000, i64 500000000, i32 100000, i32 30000, i32 10000, i32 80000, i32 15000, i32 100000 } } } }, %struct.nand_interface_config { i32 0, %struct.nand_timings { i32 4, %union.anon { %struct.nand_sdr_timings { i64 65535000000, i32 500000, i64 65535000000, i64 200000000, i32 5000, i32 400000, i32 10000, i32 10000, i32 25000, i32 20000, i32 5000, i32 30000, i32 5000, i32 10000, i32 10000, i32 15000, i32 20000, i32 5000, i32 10000, i32 1000000, i32 0, i32 1000000, i32 25000, i32 20000, i32 10000, i32 15000, i32 100000, i32 100000, i32 5000, i32 12000, i32 20000, i64 500000000, i32 100000, i32 25000, i32 10000, i32 80000, i32 12000, i32 100000 } } } }, %struct.nand_interface_config { i32 0, %struct.nand_timings { i32 5, %union.anon { %struct.nand_sdr_timings { i64 65535000000, i32 500000, i64 65535000000, i64 200000000, i32 5000, i32 400000, i32 10000, i32 10000, i32 25000, i32 20000, i32 5000, i32 30000, i32 5000, i32 10000, i32 10000, i32 15000, i32 15000, i32 5000, i32 7000, i32 1000000, i32 0, i32 1000000, i32 20000, i32 16000, i32 7000, i32 15000, i32 100000, i32 100000, i32 5000, i32 10000, i32 20000, i64 500000000, i32 100000, i32 20000, i32 7000, i32 80000, i32 10000, i32 100000 } } } }], align 8
@onfi_nvddr_timings = internal unnamed_addr constant [6 x { i32, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } }] [{ i32, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } } { i32 1, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } { i32 0, { %struct.nand_nvddr_timings, [16 x i8] } { %struct.nand_nvddr_timings { i64 65535000000, i32 500000, i64 65535000000, i64 200000000, i32 3000, i32 25000, i32 400000, i32 45000, i32 10000, i32 10000, i32 10000, i32 10000, i32 20000, i32 10000, i32 50000, i32 35000, i32 5000, i32 3000, i32 25000, i32 0, i32 18000, i32 20000, i32 5000, i32 5000, i32 50000, i32 1000000, i32 1000000, i32 6000, i32 100000, i32 20000, i32 500000000, i32 100000, i32 80000, i32 20000, i32 100000 }, [16 x i8] undef } } }, { i32, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } } { i32 1, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } { i32 1, { %struct.nand_nvddr_timings, [16 x i8] } { %struct.nand_nvddr_timings { i64 65535000000, i32 500000, i64 65535000000, i64 200000000, i32 3000, i32 25000, i32 400000, i32 45000, i32 5000, i32 5000, i32 5000, i32 5000, i32 20000, i32 5000, i32 30000, i32 25000, i32 2500, i32 3000, i32 25000, i32 0, i32 18000, i32 20000, i32 2500, i32 3000, i32 30000, i32 1000000, i32 1000000, i32 3000, i32 100000, i32 20000, i32 500000000, i32 100000, i32 80000, i32 20000, i32 100000 }, [16 x i8] undef } } }, { i32, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } } { i32 1, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } { i32 2, { %struct.nand_nvddr_timings, [16 x i8] } { %struct.nand_nvddr_timings { i64 65535000000, i32 500000, i64 65535000000, i64 200000000, i32 3000, i32 25000, i32 400000, i32 45000, i32 4000, i32 4000, i32 4000, i32 4000, i32 20000, i32 4000, i32 20000, i32 15000, i32 1700, i32 3000, i32 25000, i32 0, i32 18000, i32 20000, i32 1700, i32 2000, i32 20000, i32 1000000, i32 1000000, i32 2000, i32 100000, i32 20000, i32 500000000, i32 100000, i32 80000, i32 20000, i32 100000 }, [16 x i8] undef } } }, { i32, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } } { i32 1, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } { i32 3, { %struct.nand_nvddr_timings, [16 x i8] } { %struct.nand_nvddr_timings { i64 65535000000, i32 500000, i64 65535000000, i64 200000000, i32 3000, i32 25000, i32 400000, i32 45000, i32 3000, i32 3000, i32 3000, i32 3000, i32 20000, i32 3000, i32 15000, i32 15000, i32 1300, i32 3000, i32 25000, i32 0, i32 18000, i32 20000, i32 1300, i32 1500, i32 15000, i32 1000000, i32 1000000, i32 1500, i32 100000, i32 20000, i32 500000000, i32 100000, i32 80000, i32 20000, i32 100000 }, [16 x i8] undef } } }, { i32, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } } { i32 1, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } { i32 4, { %struct.nand_nvddr_timings, [16 x i8] } { %struct.nand_nvddr_timings { i64 65535000000, i32 500000, i64 65535000000, i64 200000000, i32 3000, i32 25000, i32 400000, i32 45000, i32 2500, i32 2500, i32 2500, i32 2500, i32 20000, i32 2500, i32 12000, i32 15000, i32 1100, i32 3000, i32 25000, i32 0, i32 18000, i32 20000, i32 1000, i32 1100, i32 12000, i32 1000000, i32 1000000, i32 1200, i32 100000, i32 20000, i32 500000000, i32 100000, i32 80000, i32 20000, i32 100000 }, [16 x i8] undef } } }, { i32, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } } { i32 1, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } { i32 5, { %struct.nand_nvddr_timings, [16 x i8] } { %struct.nand_nvddr_timings { i64 65535000000, i32 500000, i64 65535000000, i64 200000000, i32 3000, i32 25000, i32 400000, i32 45000, i32 2000, i32 2000, i32 2000, i32 2000, i32 20000, i32 2000, i32 10000, i32 15000, i32 900, i32 3000, i32 25000, i32 0, i32 18000, i32 20000, i32 850, i32 900, i32 10000, i32 1000000, i32 1000000, i32 1000, i32 100000, i32 20000, i32 500000000, i32 100000, i32 80000, i32 20000, i32 100000 }, [16 x i8] undef } } }], align 8
@.str = private unnamed_addr constant [36 x i8] c"drivers/mtd/nand/raw/nand_timings.c\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @nand_get_reset_interface_config() local_unnamed_addr #0 {
  ret ptr @onfi_sdr_timings
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @onfi_find_closest_sdr_mode(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 37
  %3 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 5
  %6 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 7
  %9 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 9
  %10 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 10
  %11 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 12
  %12 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 13
  %13 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 14
  %14 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 15
  %15 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 16
  %16 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 17
  %17 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 18
  %18 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 20
  %19 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 22
  %20 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 24
  %21 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 25
  %22 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 26
  %23 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 28
  %24 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 29
  %25 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 30
  %26 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 33
  %27 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 34
  %28 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 35
  %29 = getelementptr inbounds %struct.nand_sdr_timings, ptr %0, i32 0, i32 36
  br label %30

30:                                               ; preds = %166, %1
  %31 = phi i32 [ 5, %1 ], [ %167, %166 ]
  %32 = getelementptr [6 x %struct.nand_interface_config], ptr @onfi_sdr_timings, i32 0, i32 %31, i32 1, i32 1
  %33 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 1
  %34 = load i32, ptr %33, align 8
  %35 = icmp ugt i32 %4, %34
  br i1 %35, label %166, label %36

36:                                               ; preds = %30
  %37 = load i32, ptr %5, align 4
  %38 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = icmp ugt i32 %37, %39
  br i1 %40, label %166, label %41

41:                                               ; preds = %36
  %42 = load i32, ptr %6, align 8
  %43 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 4
  %44 = load i32, ptr %43, align 8
  %45 = icmp ugt i32 %42, %44
  br i1 %45, label %166, label %46

46:                                               ; preds = %41
  %47 = load i32, ptr %7, align 8
  %48 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 6
  %49 = load i32, ptr %48, align 8
  %50 = icmp ugt i32 %47, %49
  br i1 %50, label %166, label %51

51:                                               ; preds = %46
  %52 = load i32, ptr %8, align 4
  %53 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 7
  %54 = load i32, ptr %53, align 4
  %55 = icmp ugt i32 %52, %54
  br i1 %55, label %166, label %56

56:                                               ; preds = %51
  %57 = load i32, ptr %9, align 4
  %58 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 9
  %59 = load i32, ptr %58, align 4
  %60 = icmp ugt i32 %57, %59
  br i1 %60, label %166, label %61

61:                                               ; preds = %56
  %62 = load i32, ptr %10, align 8
  %63 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 10
  %64 = load i32, ptr %63, align 8
  %65 = icmp ugt i32 %62, %64
  br i1 %65, label %166, label %66

66:                                               ; preds = %61
  %67 = load i32, ptr %11, align 8
  %68 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 12
  %69 = load i32, ptr %68, align 8
  %70 = icmp ugt i32 %67, %69
  br i1 %70, label %166, label %71

71:                                               ; preds = %66
  %72 = load i32, ptr %12, align 4
  %73 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 13
  %74 = load i32, ptr %73, align 4
  %75 = icmp ugt i32 %72, %74
  br i1 %75, label %166, label %76

76:                                               ; preds = %71
  %77 = load i32, ptr %13, align 8
  %78 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 14
  %79 = load i32, ptr %78, align 8
  %80 = icmp ugt i32 %77, %79
  br i1 %80, label %166, label %81

81:                                               ; preds = %76
  %82 = load i32, ptr %14, align 4
  %83 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 15
  %84 = load i32, ptr %83, align 4
  %85 = icmp ugt i32 %82, %84
  br i1 %85, label %166, label %86

86:                                               ; preds = %81
  %87 = load i32, ptr %15, align 8
  %88 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 16
  %89 = load i32, ptr %88, align 8
  %90 = icmp ugt i32 %87, %89
  br i1 %90, label %166, label %91

91:                                               ; preds = %86
  %92 = load i32, ptr %16, align 4
  %93 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 17
  %94 = load i32, ptr %93, align 4
  %95 = icmp ugt i32 %92, %94
  br i1 %95, label %166, label %96

96:                                               ; preds = %91
  %97 = load i32, ptr %17, align 8
  %98 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 18
  %99 = load i32, ptr %98, align 8
  %100 = icmp ugt i32 %97, %99
  br i1 %100, label %166, label %101

101:                                              ; preds = %96
  %102 = load i32, ptr %18, align 8
  %103 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 20
  %104 = load i32, ptr %103, align 8
  %105 = icmp ugt i32 %102, %104
  br i1 %105, label %166, label %106

106:                                              ; preds = %101
  %107 = load i32, ptr %19, align 8
  %108 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 22
  %109 = load i32, ptr %108, align 8
  %110 = icmp ugt i32 %107, %109
  br i1 %110, label %166, label %111

111:                                              ; preds = %106
  %112 = load i32, ptr %20, align 8
  %113 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 24
  %114 = load i32, ptr %113, align 8
  %115 = icmp ugt i32 %112, %114
  br i1 %115, label %166, label %116

116:                                              ; preds = %111
  %117 = load i32, ptr %21, align 4
  %118 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 25
  %119 = load i32, ptr %118, align 4
  %120 = icmp ugt i32 %117, %119
  br i1 %120, label %166, label %121

121:                                              ; preds = %116
  %122 = load i32, ptr %22, align 8
  %123 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 26
  %124 = load i32, ptr %123, align 8
  %125 = icmp ugt i32 %122, %124
  br i1 %125, label %166, label %126

126:                                              ; preds = %121
  %127 = load i32, ptr %23, align 8
  %128 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 28
  %129 = load i32, ptr %128, align 8
  %130 = icmp ugt i32 %127, %129
  br i1 %130, label %166, label %131

131:                                              ; preds = %126
  %132 = load i32, ptr %24, align 4
  %133 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 29
  %134 = load i32, ptr %133, align 4
  %135 = icmp ugt i32 %132, %134
  br i1 %135, label %166, label %136

136:                                              ; preds = %131
  %137 = load i32, ptr %25, align 8
  %138 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 30
  %139 = load i32, ptr %138, align 8
  %140 = icmp ugt i32 %137, %139
  br i1 %140, label %166, label %141

141:                                              ; preds = %136
  %142 = load i32, ptr %26, align 4
  %143 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 33
  %144 = load i32, ptr %143, align 4
  %145 = icmp ugt i32 %142, %144
  br i1 %145, label %166, label %146

146:                                              ; preds = %141
  %147 = load i32, ptr %27, align 8
  %148 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 34
  %149 = load i32, ptr %148, align 8
  %150 = icmp ugt i32 %147, %149
  br i1 %150, label %166, label %151

151:                                              ; preds = %146
  %152 = load i32, ptr %28, align 4
  %153 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 35
  %154 = load i32, ptr %153, align 4
  %155 = icmp ugt i32 %152, %154
  br i1 %155, label %166, label %156

156:                                              ; preds = %151
  %157 = load i32, ptr %29, align 8
  %158 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 36
  %159 = load i32, ptr %158, align 8
  %160 = icmp ugt i32 %157, %159
  br i1 %160, label %166, label %161

161:                                              ; preds = %156
  %162 = load i32, ptr %2, align 4
  %163 = getelementptr inbounds %struct.nand_sdr_timings, ptr %32, i32 0, i32 37
  %164 = load i32, ptr %163, align 4
  %165 = icmp ugt i32 %162, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %161, %156, %151, %146, %141, %136, %131, %126, %121, %116, %111, %106, %101, %96, %91, %86, %81, %76, %71, %66, %61, %56, %51, %46, %41, %36, %30
  %167 = add nsw i32 %31, -1
  %168 = icmp ugt i32 %31, 1
  br i1 %168, label %30, label %169

169:                                              ; preds = %166, %161
  %170 = phi i32 [ %31, %161 ], [ 0, %166 ]
  ret i32 %170
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @onfi_find_closest_nvddr_mode(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %0, i32 0, i32 34
  %3 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %0, i32 0, i32 7
  %8 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %0, i32 0, i32 8
  %9 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %0, i32 0, i32 9
  %10 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %0, i32 0, i32 10
  %11 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %0, i32 0, i32 11
  %12 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %0, i32 0, i32 12
  %13 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %0, i32 0, i32 13
  %14 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %0, i32 0, i32 14
  %15 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %0, i32 0, i32 15
  %16 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %0, i32 0, i32 16
  %17 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %0, i32 0, i32 17
  %18 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %0, i32 0, i32 19
  %19 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %0, i32 0, i32 23
  %20 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %0, i32 0, i32 24
  %21 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %0, i32 0, i32 28
  %22 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %0, i32 0, i32 29
  %23 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %0, i32 0, i32 32
  %24 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %0, i32 0, i32 33
  br label %25

25:                                               ; preds = %136, %1
  %26 = phi i32 [ 5, %1 ], [ %137, %136 ]
  %27 = getelementptr [6 x %struct.nand_interface_config], ptr @onfi_nvddr_timings, i32 0, i32 %26, i32 1, i32 1
  %28 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 8
  %30 = icmp ugt i32 %4, %29
  br i1 %30, label %136, label %31

31:                                               ; preds = %25
  %32 = load i32, ptr %5, align 8
  %33 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %27, i32 0, i32 4
  %34 = load i32, ptr %33, align 8
  %35 = icmp ugt i32 %32, %34
  br i1 %35, label %136, label %36

36:                                               ; preds = %31
  %37 = load i32, ptr %6, align 8
  %38 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %27, i32 0, i32 6
  %39 = load i32, ptr %38, align 8
  %40 = icmp ugt i32 %37, %39
  br i1 %40, label %136, label %41

41:                                               ; preds = %36
  %42 = load i32, ptr %7, align 4
  %43 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %27, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = icmp ugt i32 %42, %44
  br i1 %45, label %136, label %46

46:                                               ; preds = %41
  %47 = load i32, ptr %8, align 8
  %48 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %27, i32 0, i32 8
  %49 = load i32, ptr %48, align 8
  %50 = icmp ugt i32 %47, %49
  br i1 %50, label %136, label %51

51:                                               ; preds = %46
  %52 = load i32, ptr %9, align 4
  %53 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %27, i32 0, i32 9
  %54 = load i32, ptr %53, align 4
  %55 = icmp ugt i32 %52, %54
  br i1 %55, label %136, label %56

56:                                               ; preds = %51
  %57 = load i32, ptr %10, align 8
  %58 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %27, i32 0, i32 10
  %59 = load i32, ptr %58, align 8
  %60 = icmp ugt i32 %57, %59
  br i1 %60, label %136, label %61

61:                                               ; preds = %56
  %62 = load i32, ptr %11, align 4
  %63 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %27, i32 0, i32 11
  %64 = load i32, ptr %63, align 4
  %65 = icmp ugt i32 %62, %64
  br i1 %65, label %136, label %66

66:                                               ; preds = %61
  %67 = load i32, ptr %12, align 8
  %68 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %27, i32 0, i32 12
  %69 = load i32, ptr %68, align 8
  %70 = icmp ugt i32 %67, %69
  br i1 %70, label %136, label %71

71:                                               ; preds = %66
  %72 = load i32, ptr %13, align 4
  %73 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %27, i32 0, i32 13
  %74 = load i32, ptr %73, align 4
  %75 = icmp ugt i32 %72, %74
  br i1 %75, label %136, label %76

76:                                               ; preds = %71
  %77 = load i32, ptr %14, align 8
  %78 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %27, i32 0, i32 14
  %79 = load i32, ptr %78, align 8
  %80 = icmp ugt i32 %77, %79
  br i1 %80, label %136, label %81

81:                                               ; preds = %76
  %82 = load i32, ptr %15, align 4
  %83 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %27, i32 0, i32 15
  %84 = load i32, ptr %83, align 4
  %85 = icmp ugt i32 %82, %84
  br i1 %85, label %136, label %86

86:                                               ; preds = %81
  %87 = load i32, ptr %16, align 8
  %88 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %27, i32 0, i32 16
  %89 = load i32, ptr %88, align 8
  %90 = icmp ugt i32 %87, %89
  br i1 %90, label %136, label %91

91:                                               ; preds = %86
  %92 = load i32, ptr %17, align 4
  %93 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %27, i32 0, i32 17
  %94 = load i32, ptr %93, align 4
  %95 = icmp ugt i32 %92, %94
  br i1 %95, label %136, label %96

96:                                               ; preds = %91
  %97 = load i32, ptr %18, align 4
  %98 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %27, i32 0, i32 19
  %99 = load i32, ptr %98, align 4
  %100 = icmp ugt i32 %97, %99
  br i1 %100, label %136, label %101

101:                                              ; preds = %96
  %102 = load i32, ptr %19, align 4
  %103 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %27, i32 0, i32 23
  %104 = load i32, ptr %103, align 4
  %105 = icmp ugt i32 %102, %104
  br i1 %105, label %136, label %106

106:                                              ; preds = %101
  %107 = load i32, ptr %20, align 8
  %108 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %27, i32 0, i32 24
  %109 = load i32, ptr %108, align 8
  %110 = icmp ugt i32 %107, %109
  br i1 %110, label %136, label %111

111:                                              ; preds = %106
  %112 = load i32, ptr %21, align 8
  %113 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %27, i32 0, i32 28
  %114 = load i32, ptr %113, align 8
  %115 = icmp ugt i32 %112, %114
  br i1 %115, label %136, label %116

116:                                              ; preds = %111
  %117 = load i32, ptr %22, align 4
  %118 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %27, i32 0, i32 29
  %119 = load i32, ptr %118, align 4
  %120 = icmp ugt i32 %117, %119
  br i1 %120, label %136, label %121

121:                                              ; preds = %116
  %122 = load i32, ptr %23, align 8
  %123 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %27, i32 0, i32 32
  %124 = load i32, ptr %123, align 8
  %125 = icmp ugt i32 %122, %124
  br i1 %125, label %136, label %126

126:                                              ; preds = %121
  %127 = load i32, ptr %24, align 4
  %128 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %27, i32 0, i32 33
  %129 = load i32, ptr %128, align 4
  %130 = icmp ugt i32 %127, %129
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = load i32, ptr %2, align 8
  %133 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %27, i32 0, i32 34
  %134 = load i32, ptr %133, align 8
  %135 = icmp ugt i32 %132, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %131, %126, %121, %116, %111, %106, %101, %96, %91, %86, %81, %76, %71, %66, %61, %56, %51, %46, %41, %36, %31, %25
  %137 = add nsw i32 %26, -1
  %138 = icmp ugt i32 %26, 1
  br i1 %138, label %25, label %139

139:                                              ; preds = %136, %131
  %140 = phi i32 [ %26, %131 ], [ 0, %136 ]
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @onfi_fill_interface_config(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq i32 %2, 0
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ugt i32 %3, 5
  br i1 %5, label %9, label %35

9:                                                ; preds = %4
  br i1 %8, label %10, label %11, !prof !8

10:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 658, i32 noundef 9, ptr noundef null) #5
  br label %66

11:                                               ; preds = %9
  %12 = getelementptr [6 x %struct.nand_interface_config], ptr @onfi_sdr_timings, i32 0, i32 %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(192) %1, ptr noundef align 8 dereferenceable(192) %12, i32 192, i1 false) #5
  %13 = icmp eq ptr %7, null
  br i1 %13, label %66, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1
  %16 = getelementptr inbounds %struct.onfi_params, ptr %7, i32 0, i32 1
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i64
  %19 = mul nuw nsw i64 %18, 1000000
  %20 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 2
  store i64 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.onfi_params, ptr %7, i32 0, i32 2
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i64
  %24 = mul nuw nsw i64 %23, 1000000
  store i64 %24, ptr %15, align 8
  %25 = getelementptr inbounds %struct.onfi_params, ptr %7, i32 0, i32 3
  %26 = load i16, ptr %25, align 4
  %27 = zext i16 %26 to i64
  %28 = mul nuw nsw i64 %27, 1000000
  %29 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 3
  store i64 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.onfi_params, ptr %7, i32 0, i32 4
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = mul nuw nsw i32 %32, 1000
  %34 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  store i32 %33, ptr %34, align 8
  br label %66

35:                                               ; preds = %4
  br i1 %8, label %36, label %37, !prof !8

36:                                               ; preds = %35
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 694, i32 noundef 9, ptr noundef null) #5
  br label %66

37:                                               ; preds = %35
  %38 = getelementptr [6 x %struct.nand_interface_config], ptr @onfi_nvddr_timings, i32 0, i32 %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(192) %1, ptr noundef align 8 dereferenceable(192) %38, i32 192, i1 false) #5
  %39 = icmp eq ptr %7, null
  br i1 %39, label %66, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1
  %42 = getelementptr inbounds %struct.onfi_params, ptr %7, i32 0, i32 1
  %43 = load i16, ptr %42, align 4
  %44 = zext i16 %43 to i64
  %45 = mul nuw nsw i64 %44, 1000000
  %46 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 2
  store i64 %45, ptr %46, align 8
  %47 = getelementptr inbounds %struct.onfi_params, ptr %7, i32 0, i32 2
  %48 = load i16, ptr %47, align 2
  %49 = zext i16 %48 to i64
  %50 = mul nuw nsw i64 %49, 1000000
  store i64 %50, ptr %41, align 8
  %51 = getelementptr inbounds %struct.onfi_params, ptr %7, i32 0, i32 3
  %52 = load i16, ptr %51, align 4
  %53 = zext i16 %52 to i64
  %54 = mul nuw nsw i64 %53, 1000000
  %55 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 3
  store i64 %54, ptr %55, align 8
  %56 = getelementptr inbounds %struct.onfi_params, ptr %7, i32 0, i32 4
  %57 = load i16, ptr %56, align 2
  %58 = zext i16 %57 to i32
  %59 = mul nuw nsw i32 %58, 1000
  %60 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  store i32 %59, ptr %60, align 8
  %61 = getelementptr inbounds %struct.onfi_params, ptr %7, i32 0, i32 5
  %62 = load i8, ptr %61, align 4, !range !9
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %40
  %65 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 7
  store i32 25000, ptr %65, align 4
  br label %66

66:                                               ; preds = %64, %40, %37, %36, %14, %11, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i8 0, i8 2}
