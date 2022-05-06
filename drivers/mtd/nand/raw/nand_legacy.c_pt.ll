; ModuleID = '/llk/IR/drivers/mtd/nand/raw/nand_legacy.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/nand_legacy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_wait_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_wait_ready\22\09\09\09\09\09"
module asm "__kstrtabns_nand_wait_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_get_set_features_notsupp:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_get_set_features_notsupp\22\09\09\09\09\09"
module asm "__kstrtabns_nand_get_set_features_notsupp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.5 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.5 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.11, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
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
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.8 }
%union.anon.8 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [35 x i8] c"drivers/mtd/nand/raw/nand_legacy.c\00", align 1
@nand_wait_ready._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.nand_wait_ready = private unnamed_addr constant [16 x i8] c"nand_wait_ready\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"\014timeout while waiting for chip to become ready\0A\00", align 1
@__kstrtab_nand_wait_ready = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_wait_ready = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_wait_ready = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_wait_ready to i32), ptr @__kstrtab_nand_wait_ready, ptr @__kstrtabns_nand_wait_ready }, section "___ksymtab_gpl+nand_wait_ready", align 4
@__kstrtab_nand_get_set_features_notsupp = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_get_set_features_notsupp = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_get_set_features_notsupp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_get_set_features_notsupp to i32), ptr @__kstrtab_nand_get_set_features_notsupp, ptr @__kstrtabns_nand_get_set_features_notsupp }, section "___ksymtab+nand_get_set_features_notsupp", align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"\013->legacy.cmd_ctrl() should be provided\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_nand_get_set_features_notsupp, ptr @__ksymtab_nand_wait_ready], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nand_wait_ready(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 50
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 9
  br label %7

7:                                                ; preds = %12, %5
  %8 = phi i32 [ 0, %5 ], [ %14, %12 ]
  %9 = load ptr, ptr %6, align 4
  %10 = tail call i32 %9(ptr noundef %0) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %7
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #7
  %14 = add nuw nsw i32 %8, 1
  %15 = icmp eq i32 %14, 400
  br i1 %15, label %38, label %7

16:                                               ; preds = %1
  %17 = load volatile i32, ptr @jiffies, align 64
  %18 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 9
  %19 = sub i32 -40, %17
  br label %20

20:                                               ; preds = %24, %16
  %21 = load ptr, ptr %18, align 4
  %22 = tail call i32 %21(ptr noundef %0) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = tail call i32 @__cond_resched() #7
  %26 = load volatile i32, ptr @jiffies, align 64
  %27 = add i32 %19, %26
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %20, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %18, align 4
  %31 = tail call i32 %30(ptr noundef %0) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = tail call i32 @___ratelimit(ptr noundef nonnull @nand_wait_ready._rs, ptr noundef nonnull @__func__.nand_wait_ready) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %38

38:                                               ; preds = %36, %33, %29, %20, %12, %7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @nand_get_set_features_notsupp(ptr nocapture readnone %0, i32 %1, ptr nocapture readnone %2) #4 {
  ret i32 -524
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @nand_legacy_set_defaults(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 2
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nand_controller, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nand_controller_ops, ptr %10, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %72

16:                                               ; preds = %12, %8, %1
  %17 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 15
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 20, ptr %17, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store ptr @nand_command, ptr %22, align 8
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 10
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store ptr @nand_wait, ptr %27, align 8
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store ptr @nand_select_chip, ptr %32, align 8
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  %40 = icmp eq ptr %38, @nand_read_byte
  %41 = or i1 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = icmp eq i32 %4, 0
  %44 = select i1 %43, ptr @nand_read_byte, ptr @nand_read_byte16
  store ptr %44, ptr %37, align 4
  br label %45

45:                                               ; preds = %42, %36
  %46 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  %49 = icmp eq ptr %47, @nand_write_buf
  %50 = or i1 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = icmp eq i32 %4, 0
  %53 = select i1 %52, ptr @nand_write_buf, ptr @nand_write_buf16
  store ptr %53, ptr %46, align 4
  br label %54

54:                                               ; preds = %51, %45
  %55 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 4
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, null
  %58 = icmp eq ptr %56, @nand_write_byte
  %59 = or i1 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = icmp eq i32 %4, 0
  %62 = select i1 %61, ptr @nand_write_byte, ptr @nand_write_byte16
  store ptr %62, ptr %55, align 8
  br label %63

63:                                               ; preds = %60, %54
  %64 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 6
  %65 = load ptr, ptr %64, align 8
  %66 = icmp eq ptr %65, null
  %67 = icmp eq ptr %65, @nand_read_buf
  %68 = or i1 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = icmp eq i32 %4, 0
  %71 = select i1 %70, ptr @nand_read_buf, ptr @nand_read_buf16
  store ptr %71, ptr %64, align 8
  br label %72

72:                                               ; preds = %69, %63, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nand_command(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  switch i32 %1, label %23 [
    i32 128, label %6
    i32 -1, label %28
  ]

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %2
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = sub i32 %2, %8
  br label %18

12:                                               ; preds = %6
  %13 = icmp slt i32 %2, 256
  %14 = add i32 %2, -256
  %15 = select i1 %13, i32 %2, i32 %14
  %16 = xor i1 %13, true
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %12, %10
  %19 = phi i32 [ %11, %10 ], [ %15, %12 ]
  %20 = phi i32 [ 80, %10 ], [ %17, %12 ]
  %21 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 7
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %0, i32 noundef %20, i32 noundef 131) #7
  br label %23

23:                                               ; preds = %18, %4
  %24 = phi i32 [ 3, %18 ], [ 131, %4 ]
  %25 = phi i32 [ %19, %18 ], [ %2, %4 ]
  %26 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 7
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef %0, i32 noundef %1, i32 noundef %24) #7
  br label %28

28:                                               ; preds = %23, %4
  %29 = phi i32 [ %25, %23 ], [ %2, %4 ]
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %43, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  switch i32 %1, label %37 [
    i32 144, label %39
    i32 236, label %39
    i32 238, label %39
    i32 239, label %39
  ]

37:                                               ; preds = %36
  %38 = ashr i32 %29, 1
  br label %39

39:                                               ; preds = %37, %36, %36, %36, %36, %31
  %40 = phi i32 [ %29, %31 ], [ %38, %37 ], [ %29, %36 ], [ %29, %36 ], [ %29, %36 ], [ %29, %36 ]
  %41 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 7
  %42 = load ptr, ptr %41, align 4
  tail call void %42(ptr noundef %0, i32 noundef %40, i32 noundef 133) #7
  br label %43

43:                                               ; preds = %39, %28
  %44 = phi i32 [ %40, %39 ], [ -1, %28 ]
  %45 = phi i32 [ 5, %39 ], [ 133, %28 ]
  %46 = icmp eq i32 %3, -1
  br i1 %46, label %59, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 7
  %49 = load ptr, ptr %48, align 4
  tail call void %49(ptr noundef %0, i32 noundef %3, i32 noundef %45) #7
  %50 = load ptr, ptr %48, align 4
  %51 = ashr i32 %3, 8
  tail call void %50(ptr noundef %0, i32 noundef %51, i32 noundef 5) #7
  %52 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 16384
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %47
  %57 = load ptr, ptr %48, align 4
  %58 = ashr i32 %3, 16
  tail call void %57(ptr noundef %0, i32 noundef %58, i32 noundef 5) #7
  br label %59

59:                                               ; preds = %56, %47, %43
  %60 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 7
  %61 = load ptr, ptr %60, align 4
  tail call void %61(ptr noundef %0, i32 noundef -1, i32 noundef 129) #7
  switch i32 %1, label %89 [
    i32 -1, label %99
    i32 16, label %99
    i32 96, label %99
    i32 208, label %99
    i32 128, label %99
    i32 112, label %99
    i32 144, label %99
    i32 239, label %99
    i32 255, label %62
    i32 0, label %86
  ]

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 9
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %97

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 15
  %68 = load i32, ptr %67, align 4
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %69(i32 noundef %68) #7
  %70 = load ptr, ptr %60, align 4
  tail call void %70(ptr noundef %0, i32 noundef 112, i32 noundef 131) #7
  %71 = load ptr, ptr %60, align 4
  tail call void %71(ptr noundef %0, i32 noundef -1, i32 noundef 129) #7
  %72 = load volatile i32, ptr @jiffies, align 64
  %73 = sub i32 -25, %72
  br label %74

74:                                               ; preds = %82, %66
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1, !annotation !9
  %75 = call i32 @nand_read_data_op(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext false) #7
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i8, ptr %5, align 1
  %79 = and i8 %78, 64
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77, %74
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  br label %99

82:                                               ; preds = %77
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  %83 = load volatile i32, ptr @jiffies, align 64
  %84 = add i32 %73, %83
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %74, label %99

86:                                               ; preds = %59
  %87 = and i32 %44, %3
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %99, label %89

89:                                               ; preds = %86, %59
  %90 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 9
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 15
  %95 = load i32, ptr %94, align 4
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %96(i32 noundef %95) #7
  br label %99

97:                                               ; preds = %89, %62
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %98(i32 noundef 214748) #7
  tail call void @nand_wait_ready(ptr noundef %0)
  br label %99

99:                                               ; preds = %97, %93, %86, %82, %81, %59, %59, %59, %59, %59, %59, %59, %59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_wait(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #7
  store i8 0, ptr %2, align 1, !annotation !9
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #7
  %4 = tail call i32 @nand_status_op(ptr noundef %0, ptr noundef null) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %45

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 50
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @panic_nand_wait(ptr noundef %0, i32 noundef 400) #7
  br label %33

11:                                               ; preds = %6
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 9
  %14 = sub i32 -40, %12
  br label %15

15:                                               ; preds = %28, %11
  %16 = load ptr, ptr %13, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = call i32 %16(ptr noundef %0) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %33

21:                                               ; preds = %15
  %22 = call i32 @nand_read_data_op(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext false) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  %25 = load i8, ptr %2, align 1
  %26 = and i8 %25, 64
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24, %18
  %29 = call i32 @__cond_resched() #7
  %30 = load volatile i32, ptr @jiffies, align 64
  %31 = add i32 %14, %30
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %15, label %33

33:                                               ; preds = %28, %24, %18, %10
  %34 = call i32 @nand_read_data_op(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext false) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i8, ptr %2, align 1
  %38 = and i8 %37, 64
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %42, !prof !10

40:                                               ; preds = %36
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 577, i32 noundef 9, ptr noundef null) #7
  %41 = load i8, ptr %2, align 1
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi i8 [ %41, %40 ], [ %37, %36 ]
  %44 = zext i8 %43 to i32
  br label %45

45:                                               ; preds = %42, %33, %21, %1
  %46 = phi i32 [ %44, %42 ], [ %4, %1 ], [ %34, %33 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #7
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nand_select_chip(ptr noundef %0, i32 noundef %1) #0 {
  switch i32 %1, label %6 [
    i32 -1, label %3
    i32 0, label %7
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 7
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0, i32 noundef -1, i32 noundef 128) #7
  br label %7

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_legacy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 63, 0\0A.popsection", ""() #7, !srcloc !11
  unreachable

7:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @nand_read_byte(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  ret i8 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @nand_read_byte16(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #7, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  %5 = trunc i16 %4 to i8
  ret i8 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nand_write_buf(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @__raw_writesb(ptr noundef %5, ptr noundef %1, i32 noundef %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nand_write_buf16(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = ashr i32 %2, 1
  tail call void @__raw_writesw(ptr noundef %5, ptr noundef %1, i32 noundef %6) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nand_write_byte(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  store i8 %1, ptr %3, align 1
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 5
  %5 = load ptr, ptr %4, align 4
  call void %5(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nand_write_byte16(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #7
  %4 = zext i8 %1 to i16
  store i16 %4, ptr %3, align 2
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 5
  %6 = load ptr, ptr %5, align 4
  call void %6(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nand_read_buf(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  tail call void @__raw_readsb(ptr noundef %5, ptr noundef %1, i32 noundef %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nand_read_buf16(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = ashr i32 %2, 1
  tail call void @__raw_readsw(ptr noundef %5, ptr noundef %1, i32 noundef %6) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @nand_legacy_adjust_cmdfunc(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 512
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, @nand_command
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  store ptr @nand_command_lp, ptr %6, align 8
  br label %10

10:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nand_command_lp(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  switch i32 %1, label %10 [
    i32 80, label %6
    i32 -1, label %15
  ]

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %2
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi i32 [ 0, %6 ], [ %1, %4 ]
  %12 = phi i32 [ %9, %6 ], [ %2, %4 ]
  %13 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 7
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef %0, i32 noundef %11, i32 noundef 131) #7
  br label %15

15:                                               ; preds = %10, %4
  %16 = phi i32 [ %11, %10 ], [ %1, %4 ]
  %17 = phi i32 [ %12, %10 ], [ %2, %4 ]
  %18 = icmp eq i32 %3, -1
  %19 = and i32 %17, %3
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %53, label %21

21:                                               ; preds = %15
  %22 = icmp eq i32 %17, -1
  br i1 %22, label %38, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  switch i32 %16, label %29 [
    i32 144, label %31
    i32 236, label %31
    i32 238, label %31
    i32 239, label %31
  ]

29:                                               ; preds = %28
  %30 = ashr i32 %17, 1
  br label %31

31:                                               ; preds = %29, %28, %28, %28, %28, %23
  %32 = phi i32 [ %17, %23 ], [ %30, %29 ], [ %17, %28 ], [ %17, %28 ], [ %17, %28 ], [ %17, %28 ]
  %33 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 7
  %34 = load ptr, ptr %33, align 4
  tail call void %34(ptr noundef %0, i32 noundef %32, i32 noundef 133) #7
  switch i32 %16, label %35 [
    i32 144, label %38
    i32 236, label %38
    i32 238, label %38
    i32 239, label %38
  ]

35:                                               ; preds = %31
  %36 = load ptr, ptr %33, align 4
  %37 = ashr i32 %32, 8
  tail call void %36(ptr noundef %0, i32 noundef %37, i32 noundef 5) #7
  br label %38

38:                                               ; preds = %35, %31, %31, %31, %31, %21
  %39 = phi i32 [ %32, %35 ], [ -1, %21 ], [ %32, %31 ], [ %32, %31 ], [ %32, %31 ], [ %32, %31 ]
  %40 = phi i32 [ 5, %35 ], [ 133, %21 ], [ 5, %31 ], [ 5, %31 ], [ 5, %31 ], [ 5, %31 ]
  br i1 %18, label %53, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 7
  %43 = load ptr, ptr %42, align 4
  tail call void %43(ptr noundef %0, i32 noundef %3, i32 noundef %40) #7
  %44 = load ptr, ptr %42, align 4
  %45 = ashr i32 %3, 8
  tail call void %44(ptr noundef %0, i32 noundef %45, i32 noundef 5) #7
  %46 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 16384
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %41
  %51 = load ptr, ptr %42, align 4
  %52 = ashr i32 %3, 16
  tail call void %51(ptr noundef %0, i32 noundef %52, i32 noundef 5) #7
  br label %53

53:                                               ; preds = %50, %41, %38, %15
  %54 = phi i32 [ -1, %15 ], [ %39, %41 ], [ %39, %50 ], [ %39, %38 ]
  %55 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 7
  %56 = load ptr, ptr %55, align 4
  tail call void %56(ptr noundef %0, i32 noundef -1, i32 noundef 129) #7
  switch i32 %16, label %163 [
    i32 -1, label %173
    i32 21, label %173
    i32 16, label %173
    i32 96, label %173
    i32 208, label %173
    i32 128, label %173
    i32 112, label %173
    i32 144, label %173
    i32 239, label %173
    i32 133, label %57
    i32 255, label %94
    i32 5, label %118
    i32 0, label %157
  ]

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 7
  %59 = load ptr, ptr %58, align 4
  %60 = load i32, ptr %59, align 8
  %61 = icmp eq i32 %60, 0
  %62 = getelementptr inbounds %struct.nand_interface_config, ptr %59, i32 0, i32 1, i32 1
  %63 = select i1 %61, ptr %62, ptr inttoptr (i32 -22 to ptr)
  %64 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 2097152
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %173, label %68

68:                                               ; preds = %57
  %69 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %92, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %92, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.nand_controller, ptr %72, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %92, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.nand_controller_ops, ptr %76, i32 0, i32 3
  %80 = load ptr, ptr %79, align 4
  %81 = icmp ne ptr %80, null
  %82 = and i32 %65, 8388608
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.nand_sdr_timings, ptr %63, i32 0, i32 1
  %87 = load i32, ptr %86, align 8
  %88 = udiv i32 %87, 1000
  %89 = add nuw nsw i32 %88, 999
  %90 = udiv i32 %89, 1000
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %91(i32 noundef %90) #7
  br label %173

92:                                               ; preds = %78, %74, %70, %68
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %93(i32 noundef 214748) #7
  br label %173

94:                                               ; preds = %53
  %95 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 9
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %171

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 15
  %100 = load i32, ptr %99, align 4
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %101(i32 noundef %100) #7
  %102 = load ptr, ptr %55, align 4
  tail call void %102(ptr noundef %0, i32 noundef 112, i32 noundef 131) #7
  %103 = load ptr, ptr %55, align 4
  tail call void %103(ptr noundef %0, i32 noundef -1, i32 noundef 129) #7
  %104 = load volatile i32, ptr @jiffies, align 64
  %105 = sub i32 -25, %104
  br label %106

106:                                              ; preds = %114, %98
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1, !annotation !9
  %107 = call i32 @nand_read_data_op(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext false) #7
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i8, ptr %5, align 1
  %111 = and i8 %110, 64
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %109, %106
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  br label %173

114:                                              ; preds = %109
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  %115 = load volatile i32, ptr @jiffies, align 64
  %116 = add i32 %105, %115
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %106, label %173

118:                                              ; preds = %53
  %119 = load ptr, ptr %55, align 4
  tail call void %119(ptr noundef %0, i32 noundef 224, i32 noundef 131) #7
  %120 = load ptr, ptr %55, align 4
  tail call void %120(ptr noundef %0, i32 noundef -1, i32 noundef 129) #7
  %121 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 7
  %122 = load ptr, ptr %121, align 4
  %123 = load i32, ptr %122, align 8
  %124 = icmp eq i32 %123, 0
  %125 = getelementptr inbounds %struct.nand_interface_config, ptr %122, i32 0, i32 1, i32 1
  %126 = select i1 %124, ptr %125, ptr inttoptr (i32 -22 to ptr)
  %127 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %128 = load i32, ptr %127, align 8
  %129 = and i32 %128, 2097152
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %173, label %131

131:                                              ; preds = %118
  %132 = icmp ugt ptr %126, inttoptr (i32 -4096 to ptr)
  br i1 %132, label %155, label %133

133:                                              ; preds = %131
  %134 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %155, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.nand_controller, ptr %135, i32 0, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %155, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.nand_controller_ops, ptr %139, i32 0, i32 3
  %143 = load ptr, ptr %142, align 4
  %144 = icmp ne ptr %143, null
  %145 = and i32 %128, 8388608
  %146 = icmp eq i32 %145, 0
  %147 = select i1 %144, i1 %146, i1 false
  br i1 %147, label %148, label %155

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.nand_sdr_timings, ptr %126, i32 0, i32 1
  %150 = load i32, ptr %149, align 8
  %151 = udiv i32 %150, 1000
  %152 = add nuw nsw i32 %151, 999
  %153 = udiv i32 %152, 1000
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %154(i32 noundef %153) #7
  br label %173

155:                                              ; preds = %141, %137, %133, %131
  %156 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %156(i32 noundef 214748) #7
  br label %173

157:                                              ; preds = %53
  %158 = and i32 %54, %3
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %173, label %160

160:                                              ; preds = %157
  %161 = load ptr, ptr %55, align 4
  tail call void %161(ptr noundef %0, i32 noundef 48, i32 noundef 131) #7
  %162 = load ptr, ptr %55, align 4
  tail call void %162(ptr noundef %0, i32 noundef -1, i32 noundef 129) #7
  br label %163

163:                                              ; preds = %160, %53
  %164 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 9
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 15
  %169 = load i32, ptr %168, align 4
  %170 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %170(i32 noundef %169) #7
  br label %173

171:                                              ; preds = %163, %94
  %172 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %172(i32 noundef 214748) #7
  tail call void @nand_wait_ready(ptr noundef %0)
  br label %173

173:                                              ; preds = %171, %167, %157, %155, %148, %118, %114, %113, %92, %85, %57, %53, %53, %53, %53, %53, %53, %53, %53, %53
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_legacy_check_hooks(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nand_controller, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nand_controller_ops, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %9, %5, %1
  %14 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #8
  br label %27

27:                                               ; preds = %25, %21, %17, %9
  %28 = phi i32 [ -22, %25 ], [ 0, %9 ], [ 0, %21 ], [ 0, %17 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_data_op(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_status_op(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @panic_nand_wait(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2151592744, i64 2151593242, i64 2151592781, i64 2151592837, i64 2151592871, i64 2151592895, i64 2151592936, i64 2151592957, i64 2151592985, i64 2151593019}
!12 = !{i64 2398850}
!13 = !{i64 2151591930}
!14 = !{i64 2398232}
!15 = !{i64 2151592501}
