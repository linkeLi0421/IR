; ModuleID = '/llk/IR/drivers/mtd/nand/raw/nand_macronix.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/nand_macronix.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nand_manufacturer_ops = type { ptr, ptr, ptr, ptr }
%struct.nand_op_cmd_instr = type { i8 }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.5 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.5 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.11, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.anon.11 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.onfi_params = type { i32, i16, i16, i16, i16, i8, i16, i16, i16, [88 x i8] }
%struct.nand_op_instr = type { i32, %union.anon.9, i32 }
%union.anon.9 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.10, i8 }
%union.anon.10 = type { ptr }
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }

@macronix_nand_manuf_ops = dso_local local_unnamed_addr constant %struct.nand_manufacturer_ops { ptr null, ptr @macronix_nand_init, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [28 x i8] c"include/linux/mtd/rawnand.h\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"chip->bits_per_cell is used uninitialized\0A\00", align 1
@macronix_nand_fix_broken_get_timings.broken_get_timings = internal constant [14 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"MX30LF1G18AC\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"MX30LF1G28AC\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"MX30LF2G18AC\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"MX30LF2G28AC\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"MX30LF4G18AC\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"MX30LF4G28AC\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"MX60LF8G18AC\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"MX30UF1G18AC\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"MX30UF1G16AC\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"MX30UF2G18AC\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"MX30UF2G16AC\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"MX30UF4G18AC\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"MX30UF4G16AC\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"MX30UF4G28AC\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"mxic,enable-randomizer-otp\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"\016Macronix NAND randomizer failed\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"\016Macronix NAND randomizer enabled\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"\013Block protection check failed\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"\013%s all blocks failed\0A\00", align 1
@__func__.mxic_nand_lock = private unnamed_addr constant [15 x i8] c"mxic_nand_lock\00", align 1
@__func__.mxic_nand_unlock = private unnamed_addr constant [17 x i8] c"mxic_nand_unlock\00", align 1
@macronix_nand_deep_power_down_support.deep_power_down_dev = internal constant [3 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23], align 4
@.str.21 = private unnamed_addr constant [13 x i8] c"MX30UF1G28AD\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"MX30UF2G28AD\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"MX30UF4G28AD\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"\013Suspending MXIC NAND chip failed (%d)\0A\00", align 1
@__const.nand_power_down_op.instrs = private unnamed_addr constant [1 x { i32, { %struct.nand_op_cmd_instr, [11 x i8] }, i32 }] [{ i32, { %struct.nand_op_cmd_instr, [11 x i8] }, i32 } { i32 0, { %struct.nand_op_cmd_instr, [11 x i8] } { %struct.nand_op_cmd_instr { i8 -71 }, [11 x i8] zeroinitializer }, i32 0 }], align 4
@.str.25 = private unnamed_addr constant [33 x i8] c"drivers/mtd/nand/raw/internals.h\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macronix_nand_init(ptr noundef %0) #0 {
  %2 = alloca [4 x i8], align 4
  %3 = alloca [4 x i8], align 4
  %4 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9, !prof !8

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1445, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  %8 = load i32, ptr %4, align 8
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ %5, %1 ]
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 8
  %15 = or i32 %14, 50331648
  store i32 %15, ptr %13, align 8
  br label %16

16:                                               ; preds = %12, %9
  %17 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2, i32 1
  %18 = load i8, ptr %17, align 4, !range !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @match_string(ptr noundef nonnull @macronix_nand_fix_broken_get_timings.broken_get_timings, i32 noundef 14, ptr noundef %22) #5
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, -3
  store i32 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, -3
  store i32 %31, ptr %29, align 4
  br label %32

32:                                               ; preds = %25, %20, %16
  %33 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %108, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 25
  %38 = load ptr, ptr %37, align 8
  %39 = tail call ptr @of_find_property(ptr noundef %38, ptr noundef nonnull @.str.16, ptr noundef null) #5
  %40 = icmp eq ptr %39, null
  %41 = load ptr, ptr %33, align 4
  br i1 %40, label %91, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 512
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %91, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.onfi_params, ptr %41, i32 0, i32 9, i32 1
  %49 = load i8, ptr %48, align 1
  %50 = and i8 %49, 2
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %91, label %52

52:                                               ; preds = %47
  %53 = load i8, ptr %17, align 4, !range !9
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %91, label %55

55:                                               ; preds = %52
  %56 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 2, i32 2, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = or i32 %57, 65536
  store i32 %58, ptr %56, align 4
  %59 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 2, i32 3, i32 5
  %60 = load i32, ptr %59, align 4
  %61 = or i32 %60, 65536
  store i32 %61, ptr %59, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !10
  %62 = call i32 @nand_get_features(ptr noundef %0, i32 noundef 176, ptr noundef nonnull %2) #5
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %55
  %65 = load i8, ptr %2, align 4
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %88

68:                                               ; preds = %64
  store i8 7, ptr %2, align 4
  %69 = call i32 @nand_set_features(ptr noundef %0, i32 noundef 176, ptr noundef nonnull %2) #5
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  store i8 0, ptr %2, align 4
  %72 = call i32 @nand_prog_page_op(ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 1) #5
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = call i32 @nand_get_features(ptr noundef %0, i32 noundef 176, ptr noundef nonnull %2) #5
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74, %71, %68, %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %83

78:                                               ; preds = %74
  %79 = load i8, ptr %2, align 4
  %80 = and i8 %79, 6
  store i8 %80, ptr %2, align 4
  %81 = call i32 @nand_set_features(ptr noundef %0, i32 noundef 176, ptr noundef nonnull %2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78, %77
  %84 = load i32, ptr %56, align 4
  %85 = and i32 %84, -65537
  store i32 %85, ptr %56, align 4
  %86 = load i32, ptr %59, align 4
  %87 = and i32 %86, -65537
  store i32 %87, ptr %59, align 4
  br label %88

88:                                               ; preds = %83, %78, %67
  %89 = phi ptr [ @.str.17, %83 ], [ @.str.18, %78 ], [ @.str.18, %67 ]
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %89) #6
  br label %91

91:                                               ; preds = %88, %52, %47, %42, %36
  %92 = getelementptr inbounds %struct.onfi_params, ptr %41, i32 0, i32 9, i32 1
  %93 = load i8, ptr %92, align 1
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %108, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 29
  store i32 6, ptr %97, align 8
  %98 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 4, i32 4
  store ptr @macronix_nand_setup_read_retry, ptr %98, align 8
  %99 = load i8, ptr %17, align 4, !range !9
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %96
  %102 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 2, i32 2, i32 4
  %103 = load i32, ptr %102, align 4
  %104 = or i32 %103, 512
  store i32 %104, ptr %102, align 4
  %105 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 2, i32 3, i32 4
  %106 = load i32, ptr %105, align 4
  %107 = or i32 %106, 512
  store i32 %107, ptr %105, align 4
  br label %108

108:                                              ; preds = %101, %96, %91, %32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !10
  %109 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 2, i32 3, i32 5
  %110 = load i32, ptr %109, align 4
  %111 = or i32 %110, 1
  store i32 %111, ptr %109, align 4
  call void @nand_select_target(ptr noundef %0, i32 noundef 0) #5
  %112 = call i32 @nand_get_features(ptr noundef %0, i32 noundef 160, ptr noundef nonnull %3) #5
  call void @nand_deselect_target(ptr noundef %0) #5
  %113 = icmp ne i32 %112, 0
  %114 = load i8, ptr %3, align 4
  %115 = icmp ne i8 %114, 56
  %116 = select i1 %113, i1 true, i1 %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %108
  br i1 %113, label %118, label %120

118:                                              ; preds = %117
  %119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #6
  br label %120

120:                                              ; preds = %118, %117
  %121 = load i32, ptr %109, align 4
  %122 = and i32 %121, -2
  store i32 %122, ptr %109, align 4
  br label %129

123:                                              ; preds = %108
  %124 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 2, i32 2, i32 5
  %125 = load i32, ptr %124, align 4
  %126 = or i32 %125, 1
  store i32 %126, ptr %124, align 4
  %127 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 4, i32 2
  store ptr @mxic_nand_lock, ptr %127, align 8
  %128 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 4, i32 3
  store ptr @mxic_nand_unlock, ptr %128, align 4
  br label %129

129:                                              ; preds = %123, %120
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %130 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2
  %131 = load ptr, ptr %130, align 4
  %132 = call i32 @match_string(ptr noundef nonnull @macronix_nand_deep_power_down_support.deep_power_down_dev, i32 noundef 3, ptr noundef %131) #5
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 4
  store ptr @mxic_nand_suspend, ptr %135, align 8
  %136 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 4, i32 1
  store ptr @mxic_nand_resume, ptr %136, align 4
  br label %137

137:                                              ; preds = %134, %129
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macronix_nand_setup_read_retry(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !10
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2, i32 1
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 2, i32 2, i32 4
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = trunc i32 %1 to i8
  store i8 %13, ptr %3, align 4
  %14 = call i32 @nand_set_features(ptr noundef %0, i32 noundef 137, ptr noundef nonnull %3) #5
  br label %15

15:                                               ; preds = %12, %7, %2
  %16 = phi i32 [ %14, %12 ], [ -524, %7 ], [ -524, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_get_features(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_set_features(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_select_target(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_deselect_target(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxic_nand_lock(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 56, ptr %4, align 4, !annotation !10
  tail call void @nand_select_target(ptr noundef %0, i32 noundef 0) #5
  %5 = call i32 @nand_set_features(ptr noundef %0, i32 noundef 160, ptr noundef nonnull %4) #5
  call void @nand_deselect_target(ptr noundef %0) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.mxic_nand_lock) #6
  br label %9

9:                                                ; preds = %7, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxic_nand_unlock(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !10
  tail call void @nand_select_target(ptr noundef %0, i32 noundef 0) #5
  %5 = call i32 @nand_set_features(ptr noundef %0, i32 noundef 160, ptr noundef nonnull %4) #5
  call void @nand_deselect_target(ptr noundef %0) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.mxic_nand_unlock) #6
  br label %9

9:                                                ; preds = %7, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxic_nand_suspend(ptr noundef %0) #0 {
  %2 = alloca [1 x %struct.nand_op_instr], align 4
  %3 = alloca %struct.nand_operation, align 4
  tail call void @nand_select_target(ptr noundef %0, i32 noundef 0) #5
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nand_controller, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.nand_controller_ops, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %32, label %15

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) @__const.nand_power_down_op.instrs, i32 20, i1 false) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #5
  %16 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %3, align 4
  %18 = getelementptr inbounds %struct.nand_operation, ptr %3, i32 0, i32 1
  store ptr %2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nand_operation, ptr %3, i32 0, i32 2
  store i32 1, ptr %19, align 4
  %20 = load ptr, ptr %12, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %24 = load i32, ptr %23, align 8
  %25 = icmp ult i32 %17, %24
  br i1 %25, label %29, label %26, !prof !11

26:                                               ; preds = %22
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 139, i32 noundef 9, ptr noundef null) #5
  br label %27

27:                                               ; preds = %26, %15
  %28 = phi i32 [ -524, %15 ], [ -22, %26 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #5
  br label %37

29:                                               ; preds = %22
  %30 = call i32 %20(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false) #5
  %31 = icmp eq i32 %30, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #5
  br i1 %31, label %40, label %35

32:                                               ; preds = %11, %7, %1
  %33 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef %0, i32 noundef 185, i32 noundef -1, i32 noundef -1) #5
  br label %40

35:                                               ; preds = %29
  %36 = icmp slt i32 %30, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %35, %27
  %38 = phi i32 [ %28, %27 ], [ %30, %35 ]
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %38) #6
  br label %40

40:                                               ; preds = %37, %35, %32, %29
  %41 = phi i32 [ %38, %37 ], [ %30, %35 ], [ 0, %29 ], [ 0, %32 ]
  call void @nand_deselect_target(ptr noundef %0) #5
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mxic_nand_resume(ptr noundef %0) #0 {
  %2 = alloca [1 x %struct.nand_op_instr], align 4
  %3 = alloca %struct.nand_operation, align 4
  tail call void @nand_select_target(ptr noundef %0, i32 noundef 0) #5
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nand_controller, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.nand_controller_ops, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) @__const.nand_power_down_op.instrs, i32 20, i1 false) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #5
  %16 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %3, align 4
  %18 = getelementptr inbounds %struct.nand_operation, ptr %3, i32 0, i32 1
  store ptr %2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nand_operation, ptr %3, i32 0, i32 2
  store i32 1, ptr %19, align 4
  %20 = load ptr, ptr %12, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %24 = load i32, ptr %23, align 8
  %25 = icmp ult i32 %17, %24
  br i1 %25, label %28, label %26, !prof !11

26:                                               ; preds = %22
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 139, i32 noundef 9, ptr noundef null) #5
  br label %27

27:                                               ; preds = %26, %15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #5
  br label %33

28:                                               ; preds = %22
  %29 = call i32 %20(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #5
  br label %33

30:                                               ; preds = %11, %7, %1
  %31 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef %0, i32 noundef 185, i32 noundef -1, i32 noundef -1) #5
  br label %33

33:                                               ; preds = %30, %28, %27
  call void @usleep_range_state(i32 noundef 35, i32 noundef 100, i32 noundef 2) #5
  call void @nand_deselect_target(ptr noundef %0) #5
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
