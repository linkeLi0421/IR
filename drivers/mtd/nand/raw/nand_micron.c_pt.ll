; ModuleID = '/llk/IR/drivers/mtd/nand/raw/nand_micron.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/nand_micron.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nand_manufacturer_ops = type { ptr, ptr, ptr, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.11, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.5 }
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
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.micron_on_die_ecc = type { i8, i8, ptr }
%struct.nand_onfi_params = type <{ [4 x i8], i16, i16, i16, [2 x i8], i16, i8, [17 x i8], [12 x i8], [20 x i8], i8, i16, [13 x i8], i32, i16, i32, i16, i32, i32, i8, i8, i8, i16, i16, i8, i16, i8, i8, i8, i8, i8, [13 x i8], i8, i16, i16, i16, i16, i16, i16, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, [8 x i8], i16, [88 x i8], i16 }>
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.mtd_oob_region = type { i32, i32 }

@micron_nand_manuf_ops = dso_local local_unnamed_addr constant %struct.nand_manufacturer_ops { ptr null, ptr @micron_nand_init, ptr @micron_nand_cleanup, ptr @micron_fixup_onfi_param_page }, align 4
@.str = private unnamed_addr constant [48 x i8] c"\013On-die ECC forcefully enabled, not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"\013On-die ECC selected but not supported\0A\00", align 1
@micron_nand_on_die_4_ooblayout_ops = internal constant %struct.mtd_ooblayout_ops { ptr @micron_nand_on_die_4_ooblayout_ecc, ptr @micron_nand_on_die_4_ooblayout_free }, align 4
@micron_nand_on_die_8_ooblayout_ops = internal constant %struct.mtd_ooblayout_ops { ptr @micron_nand_on_die_8_ooblayout_ecc, ptr @micron_nand_on_die_8_ooblayout_free }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"drivers/mtd/nand/raw/nand_micron.c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @micron_nand_init(ptr noundef %0) #0 {
  %2 = alloca [4 x i8], align 4
  %3 = alloca [5 x i8], align 1
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 8) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %149, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 3, i32 1
  store ptr %5, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.onfi_params, ptr %10, i32 0, i32 9, i32 14
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 29
  store i32 %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 4, i32 4
  store ptr @micron_nand_setup_read_retry, ptr %17, align 8
  br label %18

18:                                               ; preds = %12, %7
  %19 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2, i32 1
  %20 = load i8, ptr %19, align 4, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2, i32 2
  tail call void @_set_bit(i32 noundef 137, ptr noundef %23) #11
  tail call void @_set_bit(i32 noundef 144, ptr noundef %23) #11
  %24 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2, i32 3
  tail call void @_set_bit(i32 noundef 137, ptr noundef %24) #11
  tail call void @_set_bit(i32 noundef 144, ptr noundef %24) #11
  br label %25

25:                                               ; preds = %22, %18
  %26 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %27 = load i32, ptr %26, align 8
  %28 = or i32 %27, 16777216
  store i32 %28, ptr %26, align 8
  %29 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 2048
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = or i32 %27, 50331648
  store i32 %33, ptr %26, align 8
  br label %34

34:                                               ; preds = %32, %25
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %3, i8 0, i32 5, i1 false) #11, !annotation !9
  %35 = load ptr, ptr %9, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %92, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %92

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 3
  %43 = load i32, ptr %42, align 4
  switch i32 %43, label %92 [
    i32 4, label %44
    i32 8, label %44
  ]

44:                                               ; preds = %41, %41
  %45 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 1, i32 1
  %46 = load i32, ptr %45, align 8
  %47 = icmp eq i32 %46, 5
  br i1 %47, label %48, label %92

48:                                               ; preds = %44
  %49 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 4
  %50 = load i8, ptr %49, align 4
  %51 = and i8 %50, 3
  %52 = icmp eq i8 %51, 2
  br i1 %52, label %53, label %92

53:                                               ; preds = %48
  %54 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 8, ptr %2, align 4
  %55 = load i8, ptr %54, align 4, !range !8
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.micron_on_die_ecc, ptr %54, i32 0, i32 1
  %59 = load i8, ptr %58, align 1, !range !8
  %60 = icmp eq i8 %59, 1
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = call i32 @nand_set_features(ptr noundef %0, i32 noundef 144, ptr noundef nonnull %2) #11
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i8 1, ptr %58, align 1
  br label %66

65:                                               ; preds = %61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %92

66:                                               ; preds = %64, %57, %53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %67 = call i32 @nand_readid_op(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %3, i32 noundef 5) #11
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %66
  %70 = call fastcc i32 @micron_nand_on_die_ecc_setup(ptr noundef %0, i1 noundef zeroext false) #11
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %69
  %73 = getelementptr inbounds [5 x i8], ptr %3, i32 0, i32 4
  %74 = load i8, ptr %73, align 1
  %75 = icmp sgt i8 %74, -1
  br i1 %75, label %92, label %76

76:                                               ; preds = %72
  %77 = call i32 @nand_readid_op(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %3, i32 noundef 5) #11
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %76
  %80 = load i8, ptr %73, align 1
  %81 = icmp sgt i8 %80, -1
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32, ptr %42, align 4
  %84 = add i32 %83, -4
  %85 = and i32 %84, -5
  %86 = icmp eq i32 %85, 0
  %87 = zext i1 %86 to i32
  br label %92

88:                                               ; preds = %79
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #11
  %89 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33
  %90 = load i32, ptr %89, align 8
  %91 = icmp eq i32 %90, 4
  br i1 %91, label %99, label %142

92:                                               ; preds = %82, %76, %72, %69, %66, %65, %48, %44, %41, %37, %34
  %93 = phi i32 [ %87, %82 ], [ 0, %76 ], [ 0, %72 ], [ 0, %69 ], [ 0, %66 ], [ 0, %65 ], [ 0, %44 ], [ 0, %48 ], [ 0, %41 ], [ 0, %37 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #11
  %94 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33
  %95 = load i32, ptr %94, align 8
  %96 = icmp eq i32 %95, 4
  br i1 %96, label %97, label %149

97:                                               ; preds = %92
  %98 = icmp eq i32 %93, 0
  br i1 %98, label %142, label %101

99:                                               ; preds = %88
  store i8 1, ptr %5, align 8
  %100 = getelementptr inbounds %struct.micron_on_die_ecc, ptr %5, i32 0, i32 1
  store i8 1, ptr %100, align 1
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i1 [ true, %99 ], [ false, %97 ]
  %103 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 3
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 4
  br i1 %105, label %106, label %117

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %108 = load i32, ptr %107, align 4
  %109 = load i32, ptr %29, align 4
  %110 = add i32 %108, %109
  %111 = call noalias align 64 ptr @__kmalloc(i32 noundef %110, i32 noundef 3264) #12
  %112 = getelementptr inbounds %struct.micron_on_die_ecc, ptr %5, i32 0, i32 2
  store ptr %111, ptr %112, align 4
  %113 = icmp eq ptr %111, null
  br i1 %113, label %145, label %114

114:                                              ; preds = %106
  %115 = load i32, ptr %103, align 4
  %116 = icmp eq i32 %115, 4
  br i1 %116, label %119, label %117

117:                                              ; preds = %114, %101
  %118 = phi i32 [ %104, %101 ], [ %115, %114 ]
  br label %119

119:                                              ; preds = %117, %114
  %120 = phi ptr [ @micron_nand_on_die_8_ooblayout_ops, %117 ], [ @micron_nand_on_die_4_ooblayout_ops, %114 ]
  %121 = phi i32 [ %118, %117 ], [ 4, %114 ]
  %122 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 15
  store ptr %120, ptr %122, align 8
  %123 = shl i32 %121, 1
  %124 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  store i32 %123, ptr %124, align 4
  %125 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  store i32 512, ptr %125, align 8
  %126 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  store i32 %121, ptr %126, align 4
  %127 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 2
  store i32 2, ptr %127, align 8
  %128 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 18
  store ptr @micron_nand_read_page_on_die_ecc, ptr %128, align 8
  %129 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 21
  store ptr @micron_nand_write_page_on_die_ecc, ptr %129, align 4
  %130 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 16
  br i1 %102, label %131, label %133

131:                                              ; preds = %119
  store ptr @nand_read_page_raw_notsupp, ptr %130, align 8
  %132 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 17
  store ptr @nand_write_page_raw_notsupp, ptr %132, align 4
  br label %149

133:                                              ; preds = %119
  %134 = load ptr, ptr %130, align 8
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store ptr @nand_read_page_raw, ptr %130, align 8
  br label %137

137:                                              ; preds = %136, %133
  %138 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 17
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  store ptr @nand_write_page_raw, ptr %138, align 4
  br label %149

142:                                              ; preds = %97, %88
  %143 = phi ptr [ @.str, %88 ], [ @.str.1, %97 ]
  %144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %143) #13
  br label %145

145:                                              ; preds = %142, %106
  %146 = phi i32 [ -12, %106 ], [ -22, %142 ]
  %147 = getelementptr inbounds %struct.micron_on_die_ecc, ptr %5, i32 0, i32 2
  %148 = load ptr, ptr %147, align 4
  call void @kfree(ptr noundef %148) #11
  call void @kfree(ptr noundef nonnull %5) #11
  br label %149

149:                                              ; preds = %145, %141, %137, %131, %92, %1
  %150 = phi i32 [ %146, %145 ], [ -12, %1 ], [ 0, %131 ], [ 0, %141 ], [ 0, %137 ], [ 0, %92 ]
  ret i32 %150
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @micron_nand_cleanup(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 3, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.micron_on_die_ecc, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #11
  tail call void @kfree(ptr noundef %3) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @micron_fixup_onfi_param_page(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.nand_onfi_params, ptr %1, i32 0, i32 1
  %4 = load i16, ptr %3, align 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store i16 2, ptr %3, align 1
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @micron_nand_read_page_on_die_ecc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca [4 x i8], align 4
  %6 = alloca [4 x i8], align 4
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  store i8 0, ptr %7, align 1, !annotation !9
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 8, ptr %6, align 4
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.micron_on_die_ecc, ptr %9, i32 0, i32 1
  %14 = load i8, ptr %13, align 1, !range !8
  %15 = icmp eq i8 %14, 1
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = call i32 @nand_set_features(ptr noundef %0, i32 noundef 144, ptr noundef nonnull %6) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i8 1, ptr %13, align 1
  br label %21

20:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  br label %100

21:                                               ; preds = %19, %12, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  %22 = call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %83

24:                                               ; preds = %21
  %25 = call i32 @nand_status_op(ptr noundef %0, ptr noundef nonnull %7) #11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %83

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.nand_controller, ptr %29, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.nand_controller_ops, ptr %33, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %1, i32 noundef %41, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %39, %35, %31, %27
  %45 = call i32 @nand_exit_status_op(ptr noundef %0) #11
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %83

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %1, i32 noundef %49, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %51 = icmp eq i32 %50, 0
  %52 = icmp ne i32 %2, 0
  %53 = and i1 %52, %51
  br i1 %53, label %54, label %73

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %56, i32 noundef %58, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %73

60:                                               ; preds = %39
  %61 = load i32, ptr %40, align 4
  %62 = call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef 0, ptr noundef %1, i32 noundef %61, i1 noundef zeroext false) #11
  %63 = icmp eq i32 %62, 0
  %64 = icmp ne i32 %2, 0
  %65 = and i1 %64, %63
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load i32, ptr %40, align 4
  %68 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %71 = load i32, ptr %70, align 4
  %72 = call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %67, ptr noundef %69, i32 noundef %71, i1 noundef zeroext false) #11
  br label %73

73:                                               ; preds = %66, %60, %54, %47
  %74 = phi i32 [ %59, %54 ], [ %50, %47 ], [ %72, %66 ], [ %62, %60 ]
  %75 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 4
  %78 = load i8, ptr %7, align 1
  br i1 %77, label %79, label %81

79:                                               ; preds = %73
  %80 = call fastcc i32 @micron_nand_on_die_ecc_status_4(ptr noundef %0, i8 noundef zeroext %78, ptr noundef %1, i32 noundef %3, i32 noundef %2)
  br label %83

81:                                               ; preds = %73
  %82 = call fastcc i32 @micron_nand_on_die_ecc_status_8(ptr noundef %0, i8 noundef zeroext %78)
  br label %83

83:                                               ; preds = %81, %79, %44, %24, %21
  %84 = phi i32 [ %22, %21 ], [ %25, %24 ], [ %45, %44 ], [ %74, %79 ], [ %74, %81 ]
  %85 = phi i32 [ 0, %21 ], [ 0, %24 ], [ 0, %44 ], [ %80, %79 ], [ %82, %81 ]
  %86 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4
  %87 = load i8, ptr %86, align 4, !range !8
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.micron_on_die_ecc, ptr %86, i32 0, i32 1
  %91 = load i8, ptr %90, align 1, !range !8
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = call i32 @nand_set_features(ptr noundef %0, i32 noundef 144, ptr noundef nonnull %5) #11
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i8 0, ptr %90, align 1
  br label %97

97:                                               ; preds = %96, %93, %89, %83
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  %98 = icmp eq i32 %84, 0
  %99 = select i1 %98, i32 %85, i32 %84
  br label %100

100:                                              ; preds = %97, %20
  %101 = phi i32 [ %99, %97 ], [ %17, %20 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @micron_nand_write_page_on_die_ecc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca [4 x i8], align 4
  %6 = alloca [4 x i8], align 4
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 8, ptr %6, align 4
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.micron_on_die_ecc, ptr %8, i32 0, i32 1
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = call i32 @nand_set_features(ptr noundef %0, i32 noundef 144, ptr noundef nonnull %6) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i8 1, ptr %12, align 1
  br label %20

19:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  br label %34

20:                                               ; preds = %18, %11, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  %21 = call i32 @nand_write_page_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #11
  %22 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4
  %23 = load i8, ptr %22, align 4, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.micron_on_die_ecc, ptr %22, i32 0, i32 1
  %27 = load i8, ptr %26, align 1, !range !8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = call i32 @nand_set_features(ptr noundef %0, i32 noundef 144, ptr noundef nonnull %5) #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i8 0, ptr %26, align 1
  br label %33

33:                                               ; preds = %32, %29, %25, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  br label %34

34:                                               ; preds = %33, %19
  %35 = phi i32 [ %21, %33 ], [ %16, %19 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_raw_notsupp(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_write_page_raw_notsupp(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_raw(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_write_page_raw(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @micron_nand_setup_read_retry(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = trunc i32 %1 to i8
  store i8 %4, ptr %3, align 4
  %5 = getelementptr inbounds i8, ptr %3, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(3) %5, i8 0, i32 3, i1 false)
  %6 = call i32 @nand_set_features(ptr noundef %0, i32 noundef 137, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_set_features(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @micron_nand_on_die_ecc_setup(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  %4 = zext i1 %1 to i8
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 3, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.micron_on_die_ecc, ptr %6, i32 0, i32 1
  %11 = load i8, ptr %10, align 1, !range !8
  %12 = icmp eq i8 %11, %4
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  br i1 %1, label %14, label %15

14:                                               ; preds = %13
  store i8 8, ptr %3, align 4
  br label %15

15:                                               ; preds = %14, %13
  %16 = call i32 @nand_set_features(ptr noundef %0, i32 noundef 144, ptr noundef nonnull %3) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i8 %4, ptr %10, align 1
  br label %19

19:                                               ; preds = %18, %15, %9, %2
  %20 = phi i32 [ 0, %2 ], [ 0, %9 ], [ 0, %18 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_readid_op(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @micron_nand_on_die_4_ooblayout_ecc(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = icmp sgt i32 %1, 3
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = shl i32 %1, 4
  %7 = or i32 %6, 8
  store i32 %7, ptr %2, align 4
  %8 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 8, ptr %8, align 4
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi i32 [ 0, %5 ], [ -34, %3 ]
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @micron_nand_on_die_4_ooblayout_free(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = icmp sgt i32 %1, 3
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = shl i32 %1, 4
  %7 = or i32 %6, 2
  store i32 %7, ptr %2, align 4
  %8 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 6, ptr %8, align 4
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi i32 [ 0, %5 ], [ -34, %3 ]
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @micron_nand_on_die_8_ooblayout_ecc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = sub i32 %7, %9
  store i32 %10, ptr %2, align 4
  %11 = load i32, ptr %8, align 8
  %12 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %5, %3
  %14 = phi i32 [ 0, %5 ], [ -34, %3 ]
  ret i32 %14
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @micron_nand_on_die_8_ooblayout_free(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  store i32 2, ptr %2, align 4
  %6 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %7, -2
  %11 = sub i32 %10, %9
  %12 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %5, %3
  %14 = phi i32 [ 0, %5 ], [ -34, %3 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_status_op(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_data_op(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_exit_status_op(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_read_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @micron_nand_on_die_ecc_status_4(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [4 x i8], align 4
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = zext i8 %1 to i32
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %5
  %13 = and i32 %9, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %153, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  br label %153

19:                                               ; preds = %5
  %20 = icmp eq i32 %4, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.nand_controller, ptr %23, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.nand_controller_ops, ptr %27, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %35, i32 noundef %37, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33, %29, %25, %21
  %41 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = tail call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %42, i32 noundef %44, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %52

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %34, align 4
  %50 = load i32, ptr %36, align 4
  %51 = tail call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %48, ptr noundef %49, i32 noundef %50, i1 noundef zeroext false) #11
  br label %52

52:                                               ; preds = %46, %40
  %53 = phi i32 [ %45, %40 ], [ %51, %46 ]
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %153

55:                                               ; preds = %52
  %56 = load ptr, ptr %7, align 4
  br label %57

57:                                               ; preds = %55, %19
  %58 = phi ptr [ %56, %55 ], [ %8, %19 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4
  %59 = load i8, ptr %58, align 4, !range !8
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.micron_on_die_ecc, ptr %58, i32 0, i32 1
  %63 = load i8, ptr %62, align 1, !range !8
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = call i32 @nand_set_features(ptr noundef %0, i32 noundef 144, ptr noundef nonnull %6) #11
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i8 0, ptr %62, align 1
  br label %69

69:                                               ; preds = %68, %65, %61, %57
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  %70 = getelementptr inbounds %struct.micron_on_die_ecc, ptr %8, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, %73
  %77 = call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef %71, i32 noundef %76) #11
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %153

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %153, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %85 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %86 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %87 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %88 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  br label %89

89:                                               ; preds = %146, %83
  %90 = phi i32 [ 0, %83 ], [ %150, %146 ]
  %91 = phi i32 [ 0, %83 ], [ %147, %146 ]
  %92 = load i32, ptr %84, align 8
  %93 = mul i32 %92, %90
  %94 = load ptr, ptr %70, align 4
  %95 = getelementptr i8, ptr %94, i32 %93
  %96 = getelementptr i8, ptr %2, i32 %93
  %97 = icmp eq i32 %92, 0
  br i1 %97, label %114, label %98

98:                                               ; preds = %98, %89
  %99 = phi i32 [ %109, %98 ], [ 0, %89 ]
  %100 = phi i32 [ %110, %98 ], [ 0, %89 ]
  %101 = getelementptr i8, ptr %95, i32 %100
  %102 = load i8, ptr %101, align 1
  %103 = getelementptr i8, ptr %96, i32 %100
  %104 = load i8, ptr %103, align 1
  %105 = xor i8 %102, %104
  %106 = zext i8 %105 to i32
  %107 = call i32 @__sw_hweight8(i32 noundef %106) #11
  %108 = load i32, ptr %84, align 8
  %109 = add i32 %107, %99
  %110 = add nuw i32 %100, 1
  %111 = icmp ult i32 %110, %108
  br i1 %111, label %98, label %112

112:                                              ; preds = %98
  %113 = load ptr, ptr %70, align 4
  br label %114

114:                                              ; preds = %112, %89
  %115 = phi ptr [ %94, %89 ], [ %113, %112 ]
  %116 = phi i32 [ 0, %89 ], [ %109, %112 ]
  %117 = shl i32 %90, 4
  %118 = or i32 %117, 4
  %119 = load i32, ptr %72, align 4
  %120 = getelementptr i8, ptr %115, i32 %119
  %121 = getelementptr i8, ptr %120, i32 %118
  %122 = load ptr, ptr %85, align 4
  %123 = getelementptr i8, ptr %122, i32 %118
  %124 = load i32, ptr %86, align 4
  %125 = icmp eq i32 %124, -4
  br i1 %125, label %141, label %126

126:                                              ; preds = %126, %114
  %127 = phi i32 [ %137, %126 ], [ %116, %114 ]
  %128 = phi i32 [ %138, %126 ], [ 0, %114 ]
  %129 = getelementptr i8, ptr %121, i32 %128
  %130 = load i8, ptr %129, align 1
  %131 = getelementptr i8, ptr %123, i32 %128
  %132 = load i8, ptr %131, align 1
  %133 = xor i8 %130, %132
  %134 = zext i8 %133 to i32
  %135 = call i32 @__sw_hweight8(i32 noundef %134) #11
  %136 = load i32, ptr %86, align 4
  %137 = add i32 %135, %127
  %138 = add nuw i32 %128, 1
  %139 = add i32 %136, 4
  %140 = icmp ult i32 %138, %139
  br i1 %140, label %126, label %141

141:                                              ; preds = %126, %114
  %142 = phi i32 [ %116, %114 ], [ %137, %126 ]
  %143 = load i32, ptr %87, align 4
  %144 = icmp ugt i32 %142, %143
  br i1 %144, label %145, label %146, !prof !10

145:                                              ; preds = %141
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 265, i32 noundef 9, ptr noundef null) #11
  br label %153

146:                                              ; preds = %141
  %147 = call i32 @llvm.umax.i32(i32 %142, i32 %91)
  %148 = load i32, ptr %88, align 4
  %149 = add i32 %148, %142
  store i32 %149, ptr %88, align 4
  %150 = add nuw i32 %90, 1
  %151 = load i32, ptr %80, align 4
  %152 = icmp ult i32 %150, %151
  br i1 %152, label %89, label %153

153:                                              ; preds = %146, %145, %79, %69, %52, %15, %12
  %154 = phi i32 [ 0, %15 ], [ 0, %12 ], [ %53, %52 ], [ %77, %69 ], [ -22, %145 ], [ 0, %79 ], [ %147, %146 ]
  ret i32 %154
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc i32 @micron_nand_on_die_ecc_status_8(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #1 {
  %3 = and i8 %1, 25
  %4 = zext i8 %3 to i32
  switch i32 %4, label %19 [
    i32 1, label %5
    i32 16, label %7
    i32 8, label %9
    i32 24, label %11
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 1
  br label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  br label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  br label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  br label %13

13:                                               ; preds = %11, %9, %7, %5
  %14 = phi ptr [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ %6, %5 ]
  %15 = phi i32 [ 8, %11 ], [ 6, %9 ], [ 3, %7 ], [ 1, %5 ]
  %16 = phi i32 [ 8, %11 ], [ 6, %9 ], [ 3, %7 ], [ 0, %5 ]
  %17 = load i32, ptr %14, align 4
  %18 = add i32 %17, %15
  store i32 %18, ptr %14, align 4
  br label %19

19:                                               ; preds = %13, %2
  %20 = phi i32 [ 0, %2 ], [ %16, %13 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

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
