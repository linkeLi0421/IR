; ModuleID = '/llk/IR/drivers/mtd/nand/raw/nand_onfi.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/nand_onfi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.nand_onfi_params = type <{ [4 x i8], i16, i16, i16, [2 x i8], i16, i8, [17 x i8], [12 x i8], [20 x i8], i8, i16, [13 x i8], i32, i16, i32, i16, i32, i32, i8, i8, i8, i16, i16, i8, i16, i8, i8, i8, i8, i8, [13 x i8], i8, i16, i16, i16, i16, i16, i16, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, [8 x i8], i16, [88 x i8], i16 }>
%struct.nand_manufacturer_desc = type { i32, ptr, ptr }
%struct.nand_manufacturer_ops = type { ptr, ptr, ptr, ptr }
%struct.onfi_ext_param_page = type { i16, [4 x i8], [10 x i8], [8 x %struct.onfi_ext_section] }
%struct.onfi_ext_section = type { i8, i8 }
%struct.onfi_ext_ecc_info = type { i8, i8, i16, i16, [2 x i8] }
%struct.onfi_params = type { i32, i16, i16, i16, i16, i8, i16, i16, i16, [88 x i8] }

@.str.1 = private unnamed_addr constant [86 x i8] c"\014Could not find a valid ONFI parameter page, trying bit-wise majority to recover it\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"\013ONFI parameter recovery failed, aborting\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"\016unsupported ONFI version: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"\014Failed to detect ONFI extended param page\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"\014Could not retrieve ONFI ECC requirements\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"EPPS\00", align 1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i16 @onfi_crc16(i16 noundef zeroext %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %48, label %5

5:                                                ; preds = %5, %3
  %6 = phi i32 [ %9, %5 ], [ %2, %3 ]
  %7 = phi ptr [ %46, %5 ], [ %1, %3 ]
  %8 = phi i16 [ %45, %5 ], [ %0, %3 ]
  %9 = add i32 %6, -1
  %10 = load i8, ptr %7, align 1
  %11 = zext i8 %10 to i16
  %12 = shl nuw i16 %11, 8
  %13 = xor i16 %12, %8
  %14 = shl i16 %13, 1
  %15 = icmp slt i16 %13, 0
  %16 = select i1 %15, i16 -32763, i16 0
  %17 = xor i16 %16, %14
  %18 = shl i16 %17, 1
  %19 = icmp slt i16 %17, 0
  %20 = select i1 %19, i16 -32763, i16 0
  %21 = xor i16 %20, %18
  %22 = shl i16 %21, 1
  %23 = icmp slt i16 %21, 0
  %24 = select i1 %23, i16 -32763, i16 0
  %25 = xor i16 %24, %22
  %26 = shl i16 %25, 1
  %27 = icmp slt i16 %25, 0
  %28 = select i1 %27, i16 -32763, i16 0
  %29 = xor i16 %28, %26
  %30 = shl i16 %29, 1
  %31 = icmp slt i16 %29, 0
  %32 = select i1 %31, i16 -32763, i16 0
  %33 = xor i16 %32, %30
  %34 = shl i16 %33, 1
  %35 = icmp slt i16 %33, 0
  %36 = select i1 %35, i16 -32763, i16 0
  %37 = xor i16 %36, %34
  %38 = shl i16 %37, 1
  %39 = icmp slt i16 %37, 0
  %40 = select i1 %39, i16 -32763, i16 0
  %41 = xor i16 %40, %38
  %42 = shl i16 %41, 1
  %43 = icmp slt i16 %41, 0
  %44 = select i1 %43, i16 -32763, i16 0
  %45 = xor i16 %44, %42
  %46 = getelementptr i8, ptr %7, i32 1
  %47 = icmp eq i32 %9, 0
  br i1 %47, label %48, label %5

48:                                               ; preds = %5, %3
  %49 = phi i16 [ %0, %3 ], [ %45, %5 ]
  ret i16 %49
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_onfi_detect(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca [4 x i8], align 4
  %3 = alloca [3 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1
  %5 = call i32 @nand_readid_op(ptr noundef %0, i8 noundef zeroext 32, ptr noundef nonnull %2, i32 noundef 4) #12
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr %2, align 4
  %8 = icmp eq i32 %7, 1229344335
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %429

10:                                               ; preds = %1
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %12 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 768) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %429, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.nand_controller, ptr %16, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.nand_controller_ops, ptr %20, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = call i32 @nand_read_data_op(ptr noundef %0, ptr noundef nonnull %12, i32 noundef 256, i1 noundef zeroext true, i1 noundef zeroext true) #12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %22, %18, %14
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i1 [ false, %26 ], [ true, %29 ]
  br label %32

32:                                               ; preds = %97, %30
  %33 = phi i32 [ 0, %30 ], [ %98, %97 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 @nand_read_param_page_op(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %12, i32 noundef 256) #12
  br label %45

37:                                               ; preds = %32
  br i1 %31, label %38, label %41

38:                                               ; preds = %37
  %39 = getelementptr %struct.nand_onfi_params, ptr %12, i32 %33
  %40 = call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %39, i32 noundef 256, i1 noundef zeroext true, i1 noundef zeroext false) #12
  br label %45

41:                                               ; preds = %37
  %42 = shl i32 %33, 8
  %43 = getelementptr %struct.nand_onfi_params, ptr %12, i32 %33
  %44 = call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %42, ptr noundef %43, i32 noundef 256, i1 noundef zeroext true) #12
  br label %45

45:                                               ; preds = %41, %38, %35
  %46 = phi i32 [ %40, %38 ], [ %44, %41 ], [ %36, %35 ]
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %427

48:                                               ; preds = %45
  %49 = getelementptr %struct.nand_onfi_params, ptr %12, i32 %33
  br label %50

50:                                               ; preds = %50, %48
  %51 = phi i32 [ %54, %50 ], [ 254, %48 ]
  %52 = phi ptr [ %91, %50 ], [ %49, %48 ]
  %53 = phi i16 [ %90, %50 ], [ 20302, %48 ]
  %54 = add nsw i32 %51, -1
  %55 = load i8, ptr %52, align 1
  %56 = zext i8 %55 to i16
  %57 = shl nuw i16 %56, 8
  %58 = xor i16 %57, %53
  %59 = shl i16 %58, 1
  %60 = icmp slt i16 %58, 0
  %61 = select i1 %60, i16 -32763, i16 0
  %62 = xor i16 %61, %59
  %63 = shl i16 %62, 1
  %64 = icmp slt i16 %62, 0
  %65 = select i1 %64, i16 -32763, i16 0
  %66 = xor i16 %65, %63
  %67 = shl i16 %66, 1
  %68 = icmp slt i16 %66, 0
  %69 = select i1 %68, i16 -32763, i16 0
  %70 = xor i16 %69, %67
  %71 = shl i16 %70, 1
  %72 = icmp slt i16 %70, 0
  %73 = select i1 %72, i16 -32763, i16 0
  %74 = xor i16 %73, %71
  %75 = shl i16 %74, 1
  %76 = icmp slt i16 %74, 0
  %77 = select i1 %76, i16 -32763, i16 0
  %78 = xor i16 %77, %75
  %79 = shl i16 %78, 1
  %80 = icmp slt i16 %78, 0
  %81 = select i1 %80, i16 -32763, i16 0
  %82 = xor i16 %81, %79
  %83 = shl i16 %82, 1
  %84 = icmp slt i16 %82, 0
  %85 = select i1 %84, i16 -32763, i16 0
  %86 = xor i16 %85, %83
  %87 = shl i16 %86, 1
  %88 = icmp slt i16 %86, 0
  %89 = select i1 %88, i16 -32763, i16 0
  %90 = xor i16 %89, %87
  %91 = getelementptr i8, ptr %52, i32 1
  %92 = icmp eq i32 %54, 0
  br i1 %92, label %93, label %50

93:                                               ; preds = %50
  %94 = getelementptr %struct.nand_onfi_params, ptr %12, i32 %33, i32 52
  %95 = load i16, ptr %94, align 2
  %96 = icmp eq i16 %90, %95
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = add nuw nsw i32 %33, 1
  %99 = icmp eq i32 %98, 3
  br i1 %99, label %102, label %32

100:                                              ; preds = %93
  %101 = icmp eq i32 %33, 3
  br i1 %101, label %102, label %115

102:                                              ; preds = %100, %97
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  store ptr %12, ptr %3, align 4
  %103 = getelementptr %struct.nand_onfi_params, ptr %12, i32 1
  %104 = getelementptr inbounds [3 x ptr], ptr %3, i32 0, i32 1
  store ptr %103, ptr %104, align 4
  %105 = getelementptr %struct.nand_onfi_params, ptr %12, i32 2
  %106 = getelementptr inbounds [3 x ptr], ptr %3, i32 0, i32 2
  store ptr %105, ptr %106, align 4
  %107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  call fastcc void @nand_bit_wise_majority(ptr noundef nonnull %3, ptr noundef nonnull %12)
  %108 = call zeroext i16 @onfi_crc16(i16 noundef zeroext 20302, ptr noundef nonnull %12, i32 noundef 254)
  %109 = getelementptr inbounds %struct.nand_onfi_params, ptr %12, i32 0, i32 52
  %110 = load i16, ptr %109, align 2
  %111 = icmp eq i16 %108, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  br label %115

113:                                              ; preds = %102
  %114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  br label %427

115:                                              ; preds = %112, %100
  %116 = phi ptr [ %49, %100 ], [ %12, %112 ]
  %117 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 3
  %118 = load ptr, ptr %117, align 8
  %119 = icmp eq ptr %118, null
  br i1 %119, label %129, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.nand_manufacturer_desc, ptr %118, i32 0, i32 2
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %129, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.nand_manufacturer_ops, ptr %122, i32 0, i32 3
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  call void %126(ptr noundef %0, ptr noundef %116) #12
  br label %129

129:                                              ; preds = %128, %124, %120, %115
  %130 = getelementptr inbounds %struct.nand_onfi_params, ptr %116, i32 0, i32 1
  %131 = load i16, ptr %130, align 1
  %132 = zext i16 %131 to i32
  %133 = and i32 %132, 32
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %129
  %136 = and i32 %132, 16
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %135
  %139 = and i32 %132, 8
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %138
  %142 = and i32 %132, 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = and i32 %132, 2
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %132) #14
  br label %427

149:                                              ; preds = %144, %141, %138, %135, %129
  %150 = phi i32 [ 10, %144 ], [ 20, %141 ], [ 21, %138 ], [ 22, %135 ], [ 23, %129 ]
  %151 = phi i1 [ false, %144 ], [ false, %141 ], [ true, %138 ], [ true, %135 ], [ true, %129 ]
  %152 = getelementptr inbounds %struct.nand_onfi_params, ptr %116, i32 0, i32 8
  call void @sanitize_string(ptr noundef %152, i32 noundef 12) #12
  %153 = getelementptr inbounds %struct.nand_onfi_params, ptr %116, i32 0, i32 9
  call void @sanitize_string(ptr noundef %153, i32 noundef 20) #12
  %154 = call noalias ptr @kstrdup(ptr noundef %153, i32 noundef 3264) #12
  %155 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2
  store ptr %154, ptr %155, align 4
  %156 = icmp eq ptr %154, null
  br i1 %156, label %427, label %157

157:                                              ; preds = %149
  %158 = getelementptr inbounds %struct.nand_onfi_params, ptr %116, i32 0, i32 13
  %159 = load i32, ptr %158, align 1
  %160 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 1
  store i32 %159, ptr %160, align 4
  %161 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  store i32 %159, ptr %161, align 4
  %162 = getelementptr inbounds %struct.nand_onfi_params, ptr %116, i32 0, i32 17
  %163 = load i32, ptr %162, align 1
  %164 = icmp eq i32 %163, 0
  %165 = call i32 @llvm.ctlz.i32(i32 %163, i1 false) #12, !range !9
  %166 = sub nsw i32 31, %165
  %167 = select i1 %164, i32 -1, i32 %166
  %168 = shl nuw i32 1, %167
  %169 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 3
  store i32 %168, ptr %169, align 4
  %170 = shl i32 %159, %167
  %171 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  store i32 %170, ptr %171, align 8
  %172 = getelementptr inbounds %struct.nand_onfi_params, ptr %116, i32 0, i32 14
  %173 = load i16, ptr %172, align 1
  %174 = zext i16 %173 to i32
  %175 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  store i32 %174, ptr %175, align 4
  %176 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  store i32 %174, ptr %176, align 4
  %177 = getelementptr inbounds %struct.nand_onfi_params, ptr %116, i32 0, i32 19
  %178 = load i8, ptr %177, align 1
  %179 = zext i8 %178 to i32
  %180 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 7
  store i32 %179, ptr %180, align 4
  %181 = getelementptr inbounds %struct.nand_onfi_params, ptr %116, i32 0, i32 29
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i32
  %184 = shl nuw i32 1, %183
  %185 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 6
  store i32 %184, ptr %185, align 4
  %186 = getelementptr inbounds %struct.nand_onfi_params, ptr %116, i32 0, i32 18
  %187 = load i32, ptr %186, align 1
  %188 = call i32 @llvm.ctlz.i32(i32 %187, i1 false) #12, !range !9
  %189 = lshr i32 -2147483648, %188
  %190 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 4
  store i32 %189, ptr %190, align 4
  %191 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 5
  store i32 %187, ptr %191, align 4
  %192 = getelementptr inbounds %struct.nand_onfi_params, ptr %116, i32 0, i32 21
  %193 = load i8, ptr %192, align 1
  %194 = zext i8 %193 to i32
  store i32 %194, ptr %4, align 4
  %195 = getelementptr inbounds %struct.nand_onfi_params, ptr %116, i32 0, i32 2
  %196 = load i16, ptr %195, align 1
  %197 = and i16 %196, 1
  %198 = icmp eq i16 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %157
  %200 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %201 = load i32, ptr %200, align 8
  %202 = or i32 %201, 2
  store i32 %202, ptr %200, align 8
  br label %203

203:                                              ; preds = %199, %157
  %204 = getelementptr inbounds %struct.nand_onfi_params, ptr %116, i32 0, i32 28
  %205 = load i8, ptr %204, align 1
  %206 = icmp eq i8 %205, -1
  br i1 %206, label %215, label %207

207:                                              ; preds = %203
  %208 = zext i8 %205 to i32
  %209 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1
  store i32 0, ptr %209, align 4
  %210 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 1
  store i32 0, ptr %210, align 4
  %211 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 2
  store i32 0, ptr %211, align 4
  %212 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 3
  store i32 %208, ptr %212, align 4
  %213 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 4
  store i32 512, ptr %213, align 4
  %214 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 5
  store i32 0, ptr %214, align 4
  br label %373

215:                                              ; preds = %203
  br i1 %151, label %216, label %371

216:                                              ; preds = %215
  %217 = load i16, ptr %195, align 1
  %218 = and i16 %217, 128
  %219 = icmp eq i16 %218, 0
  br i1 %219, label %371, label %220

220:                                              ; preds = %216
  call void @nand_legacy_adjust_cmdfunc(ptr noundef %0) #12
  %221 = getelementptr inbounds %struct.nand_onfi_params, ptr %116, i32 0, i32 5
  %222 = load i16, ptr %221, align 1
  %223 = zext i16 %222 to i32
  %224 = shl nuw nsw i32 %223, 4
  %225 = call noalias align 64 ptr @__kmalloc(i32 noundef %224, i32 noundef 3264) #15
  %226 = icmp eq ptr %225, null
  br i1 %226, label %369, label %227

227:                                              ; preds = %220
  %228 = getelementptr inbounds %struct.nand_onfi_params, ptr %116, i32 0, i32 6
  %229 = load i8, ptr %228, align 1
  %230 = zext i8 %229 to i32
  %231 = shl nuw nsw i32 %230, 8
  %232 = call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %231, ptr noundef nonnull %225, i32 noundef %224, i1 noundef zeroext true) #12
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %359

234:                                              ; preds = %227
  %235 = getelementptr i8, ptr %225, i32 2
  %236 = add nsw i32 %224, -2
  br label %237

237:                                              ; preds = %237, %234
  %238 = phi i32 [ %241, %237 ], [ %236, %234 ]
  %239 = phi ptr [ %278, %237 ], [ %235, %234 ]
  %240 = phi i16 [ %277, %237 ], [ 20302, %234 ]
  %241 = add i32 %238, -1
  %242 = load i8, ptr %239, align 1
  %243 = zext i8 %242 to i16
  %244 = shl nuw i16 %243, 8
  %245 = xor i16 %244, %240
  %246 = shl i16 %245, 1
  %247 = icmp slt i16 %245, 0
  %248 = select i1 %247, i16 -32763, i16 0
  %249 = xor i16 %248, %246
  %250 = shl i16 %249, 1
  %251 = icmp slt i16 %249, 0
  %252 = select i1 %251, i16 -32763, i16 0
  %253 = xor i16 %252, %250
  %254 = shl i16 %253, 1
  %255 = icmp slt i16 %253, 0
  %256 = select i1 %255, i16 -32763, i16 0
  %257 = xor i16 %256, %254
  %258 = shl i16 %257, 1
  %259 = icmp slt i16 %257, 0
  %260 = select i1 %259, i16 -32763, i16 0
  %261 = xor i16 %260, %258
  %262 = shl i16 %261, 1
  %263 = icmp slt i16 %261, 0
  %264 = select i1 %263, i16 -32763, i16 0
  %265 = xor i16 %264, %262
  %266 = shl i16 %265, 1
  %267 = icmp slt i16 %265, 0
  %268 = select i1 %267, i16 -32763, i16 0
  %269 = xor i16 %268, %266
  %270 = shl i16 %269, 1
  %271 = icmp slt i16 %269, 0
  %272 = select i1 %271, i16 -32763, i16 0
  %273 = xor i16 %272, %270
  %274 = shl i16 %273, 1
  %275 = icmp slt i16 %273, 0
  %276 = select i1 %275, i16 -32763, i16 0
  %277 = xor i16 %276, %274
  %278 = getelementptr i8, ptr %239, i32 1
  %279 = icmp eq i32 %241, 0
  br i1 %279, label %280, label %237

280:                                              ; preds = %237
  %281 = load i16, ptr %225, align 64
  %282 = icmp eq i16 %277, %281
  br i1 %282, label %283, label %359

283:                                              ; preds = %280
  %284 = call i32 @strncmp(ptr noundef %235, ptr noundef nonnull dereferenceable(5) @.str.6, i32 noundef 4) #12
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %359

286:                                              ; preds = %283
  %287 = getelementptr %struct.onfi_ext_param_page, ptr %225, i32 1
  %288 = getelementptr inbounds %struct.onfi_ext_param_page, ptr %225, i32 0, i32 3
  %289 = load i8, ptr %288, align 16
  %290 = icmp eq i8 %289, 2
  br i1 %290, label %354, label %291

291:                                              ; preds = %286
  %292 = getelementptr %struct.onfi_ext_param_page, ptr %225, i32 0, i32 3, i32 0, i32 1
  %293 = load i8, ptr %292, align 1
  %294 = zext i8 %293 to i32
  %295 = shl nuw nsw i32 %294, 4
  %296 = getelementptr i8, ptr %287, i32 %295
  %297 = getelementptr %struct.onfi_ext_param_page, ptr %225, i32 0, i32 3, i32 1
  %298 = load i8, ptr %297, align 2
  %299 = icmp eq i8 %298, 2
  br i1 %299, label %354, label %300

300:                                              ; preds = %291
  %301 = getelementptr %struct.onfi_ext_param_page, ptr %225, i32 0, i32 3, i32 1, i32 1
  %302 = load i8, ptr %301, align 1
  %303 = zext i8 %302 to i32
  %304 = shl nuw nsw i32 %303, 4
  %305 = getelementptr i8, ptr %296, i32 %304
  %306 = getelementptr %struct.onfi_ext_param_page, ptr %225, i32 0, i32 3, i32 2
  %307 = load i8, ptr %306, align 4
  %308 = icmp eq i8 %307, 2
  br i1 %308, label %354, label %309

309:                                              ; preds = %300
  %310 = getelementptr %struct.onfi_ext_param_page, ptr %225, i32 0, i32 3, i32 2, i32 1
  %311 = load i8, ptr %310, align 1
  %312 = zext i8 %311 to i32
  %313 = shl nuw nsw i32 %312, 4
  %314 = getelementptr i8, ptr %305, i32 %313
  %315 = getelementptr %struct.onfi_ext_param_page, ptr %225, i32 0, i32 3, i32 3
  %316 = load i8, ptr %315, align 2
  %317 = icmp eq i8 %316, 2
  br i1 %317, label %354, label %318

318:                                              ; preds = %309
  %319 = getelementptr %struct.onfi_ext_param_page, ptr %225, i32 0, i32 3, i32 3, i32 1
  %320 = load i8, ptr %319, align 1
  %321 = zext i8 %320 to i32
  %322 = shl nuw nsw i32 %321, 4
  %323 = getelementptr i8, ptr %314, i32 %322
  %324 = getelementptr %struct.onfi_ext_param_page, ptr %225, i32 0, i32 3, i32 4
  %325 = load i8, ptr %324, align 8
  %326 = icmp eq i8 %325, 2
  br i1 %326, label %354, label %327

327:                                              ; preds = %318
  %328 = getelementptr %struct.onfi_ext_param_page, ptr %225, i32 0, i32 3, i32 4, i32 1
  %329 = load i8, ptr %328, align 1
  %330 = zext i8 %329 to i32
  %331 = shl nuw nsw i32 %330, 4
  %332 = getelementptr i8, ptr %323, i32 %331
  %333 = getelementptr %struct.onfi_ext_param_page, ptr %225, i32 0, i32 3, i32 5
  %334 = load i8, ptr %333, align 2
  %335 = icmp eq i8 %334, 2
  br i1 %335, label %354, label %336

336:                                              ; preds = %327
  %337 = getelementptr %struct.onfi_ext_param_page, ptr %225, i32 0, i32 3, i32 5, i32 1
  %338 = load i8, ptr %337, align 1
  %339 = zext i8 %338 to i32
  %340 = shl nuw nsw i32 %339, 4
  %341 = getelementptr i8, ptr %332, i32 %340
  %342 = getelementptr %struct.onfi_ext_param_page, ptr %225, i32 0, i32 3, i32 6
  %343 = load i8, ptr %342, align 4
  %344 = icmp eq i8 %343, 2
  br i1 %344, label %354, label %345

345:                                              ; preds = %336
  %346 = getelementptr %struct.onfi_ext_param_page, ptr %225, i32 0, i32 3, i32 6, i32 1
  %347 = load i8, ptr %346, align 1
  %348 = zext i8 %347 to i32
  %349 = shl nuw nsw i32 %348, 4
  %350 = getelementptr i8, ptr %341, i32 %349
  %351 = getelementptr %struct.onfi_ext_param_page, ptr %225, i32 0, i32 3, i32 7
  %352 = load i8, ptr %351, align 2
  %353 = icmp eq i8 %352, 2
  br i1 %353, label %354, label %359

354:                                              ; preds = %345, %336, %327, %318, %309, %300, %291, %286
  %355 = phi ptr [ %287, %286 ], [ %296, %291 ], [ %305, %300 ], [ %314, %309 ], [ %323, %318 ], [ %332, %327 ], [ %341, %336 ], [ %350, %345 ]
  %356 = getelementptr inbounds %struct.onfi_ext_ecc_info, ptr %355, i32 0, i32 1
  %357 = load i8, ptr %356, align 1
  %358 = icmp eq i8 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %354, %345, %283, %280, %227
  call void @kfree(ptr noundef nonnull %225) #12
  br label %369

360:                                              ; preds = %354
  %361 = load i8, ptr %355, align 1
  %362 = zext i8 %361 to i32
  %363 = zext i8 %357 to i32
  %364 = shl nuw i32 1, %363
  %365 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %365, i8 0, i32 12, i1 false) #12
  %366 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 3
  store i32 %362, ptr %366, align 4
  %367 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 4
  store i32 %364, ptr %367, align 4
  %368 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 5
  store i32 0, ptr %368, align 4
  call void @kfree(ptr noundef nonnull %225) #12
  br label %373

369:                                              ; preds = %359, %220
  %370 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  br label %373

371:                                              ; preds = %216, %215
  %372 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #14
  br label %373

373:                                              ; preds = %371, %369, %360, %207
  %374 = getelementptr inbounds %struct.nand_onfi_params, ptr %116, i32 0, i32 3
  %375 = load i16, ptr %374, align 1
  %376 = and i16 %375, 4
  %377 = icmp eq i16 %376, 0
  br i1 %377, label %386, label %378

378:                                              ; preds = %373
  %379 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2, i32 1
  store i8 1, ptr %379, align 4
  %380 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2, i32 3
  %381 = load i32, ptr %380, align 4
  %382 = or i32 %381, 2
  store i32 %382, ptr %380, align 4
  %383 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2, i32 2
  %384 = load i32, ptr %383, align 4
  %385 = or i32 %384, 2
  store i32 %385, ptr %383, align 4
  br label %386

386:                                              ; preds = %378, %373
  %387 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %388 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %387, i32 noundef 3520, i32 noundef 108) #13
  %389 = icmp eq ptr %388, null
  br i1 %389, label %390, label %392

390:                                              ; preds = %386
  %391 = load ptr, ptr %155, align 4
  call void @kfree(ptr noundef %391) #12
  br label %427

392:                                              ; preds = %386
  store i32 %150, ptr %388, align 8
  %393 = getelementptr inbounds %struct.nand_onfi_params, ptr %116, i32 0, i32 35
  %394 = load i16, ptr %393, align 1
  %395 = getelementptr inbounds %struct.onfi_params, ptr %388, i32 0, i32 1
  store i16 %394, ptr %395, align 4
  %396 = getelementptr inbounds %struct.nand_onfi_params, ptr %116, i32 0, i32 36
  %397 = load i16, ptr %396, align 1
  %398 = getelementptr inbounds %struct.onfi_params, ptr %388, i32 0, i32 2
  store i16 %397, ptr %398, align 2
  %399 = getelementptr inbounds %struct.nand_onfi_params, ptr %116, i32 0, i32 37
  %400 = load i16, ptr %399, align 1
  %401 = getelementptr inbounds %struct.onfi_params, ptr %388, i32 0, i32 3
  store i16 %400, ptr %401, align 8
  %402 = getelementptr inbounds %struct.nand_onfi_params, ptr %116, i32 0, i32 38
  %403 = load i16, ptr %402, align 1
  %404 = getelementptr inbounds %struct.onfi_params, ptr %388, i32 0, i32 4
  store i16 %403, ptr %404, align 2
  %405 = getelementptr inbounds %struct.nand_onfi_params, ptr %116, i32 0, i32 41
  %406 = load i8, ptr %405, align 1
  %407 = and i8 %406, 1
  %408 = getelementptr inbounds %struct.onfi_params, ptr %388, i32 0, i32 5
  store i8 %407, ptr %408, align 4
  %409 = getelementptr inbounds %struct.nand_onfi_params, ptr %116, i32 0, i32 33
  %410 = load i16, ptr %409, align 1
  %411 = getelementptr inbounds %struct.onfi_params, ptr %388, i32 0, i32 6
  store i16 %410, ptr %411, align 2
  %412 = load i16, ptr %195, align 1
  %413 = and i16 %412, 32
  %414 = icmp eq i16 %413, 0
  br i1 %414, label %420, label %415

415:                                              ; preds = %392
  %416 = getelementptr inbounds %struct.nand_onfi_params, ptr %116, i32 0, i32 39
  %417 = load i8, ptr %416, align 1
  %418 = zext i8 %417 to i16
  %419 = getelementptr inbounds %struct.onfi_params, ptr %388, i32 0, i32 7
  store i16 %418, ptr %419, align 8
  br label %420

420:                                              ; preds = %415, %392
  %421 = getelementptr inbounds %struct.nand_onfi_params, ptr %116, i32 0, i32 50
  %422 = load i16, ptr %421, align 1
  %423 = getelementptr inbounds %struct.onfi_params, ptr %388, i32 0, i32 8
  store i16 %422, ptr %423, align 2
  %424 = getelementptr inbounds %struct.onfi_params, ptr %388, i32 0, i32 9
  %425 = getelementptr inbounds %struct.nand_onfi_params, ptr %116, i32 0, i32 51
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(88) %424, ptr noundef align 1 dereferenceable(88) %425, i32 88, i1 false)
  %426 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2, i32 4
  store ptr %388, ptr %426, align 4
  br label %427

427:                                              ; preds = %420, %390, %149, %147, %113, %45
  %428 = phi i32 [ 1, %420 ], [ 0, %113 ], [ -12, %390 ], [ 0, %147 ], [ -12, %149 ], [ 0, %45 ]
  call void @kfree(ptr noundef nonnull %12) #12
  br label %429

429:                                              ; preds = %427, %10, %1
  %430 = phi i32 [ 0, %1 ], [ -12, %10 ], [ %428, %427 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %430
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_readid_op(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_data_op(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_param_page_op(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_read_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nand_bit_wise_majority(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 {
  %3 = getelementptr ptr, ptr %0, i32 1
  %4 = getelementptr ptr, ptr %0, i32 2
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %101, %5 ]
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr i8, ptr %7, i32 %6
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = and i32 %10, 1
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 %6
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 1
  %17 = add nuw nsw i32 %16, %11
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr i8, ptr %18, i32 %6
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 1
  %23 = add nuw nsw i32 %22, %17
  %24 = icmp ugt i32 %23, 1
  %25 = zext i1 %24 to i8
  %26 = lshr i32 %10, 1
  %27 = and i32 %26, 1
  %28 = lshr i32 %15, 1
  %29 = and i32 %28, 1
  %30 = add nuw nsw i32 %29, %27
  %31 = lshr i32 %21, 1
  %32 = and i32 %31, 1
  %33 = add nuw nsw i32 %32, %30
  %34 = icmp ugt i32 %33, 1
  %35 = select i1 %34, i8 2, i8 0
  %36 = or i8 %35, %25
  %37 = lshr i32 %10, 2
  %38 = and i32 %37, 1
  %39 = lshr i32 %15, 2
  %40 = and i32 %39, 1
  %41 = add nuw nsw i32 %40, %38
  %42 = lshr i32 %21, 2
  %43 = and i32 %42, 1
  %44 = add nuw nsw i32 %43, %41
  %45 = icmp ugt i32 %44, 1
  %46 = select i1 %45, i8 4, i8 0
  %47 = or i8 %46, %36
  %48 = lshr i32 %10, 3
  %49 = and i32 %48, 1
  %50 = lshr i32 %15, 3
  %51 = and i32 %50, 1
  %52 = add nuw nsw i32 %51, %49
  %53 = lshr i32 %21, 3
  %54 = and i32 %53, 1
  %55 = add nuw nsw i32 %54, %52
  %56 = icmp ugt i32 %55, 1
  %57 = select i1 %56, i8 8, i8 0
  %58 = or i8 %57, %47
  %59 = lshr i32 %10, 4
  %60 = and i32 %59, 1
  %61 = lshr i32 %15, 4
  %62 = and i32 %61, 1
  %63 = add nuw nsw i32 %62, %60
  %64 = lshr i32 %21, 4
  %65 = and i32 %64, 1
  %66 = add nuw nsw i32 %65, %63
  %67 = icmp ugt i32 %66, 1
  %68 = select i1 %67, i8 16, i8 0
  %69 = or i8 %68, %58
  %70 = lshr i32 %10, 5
  %71 = and i32 %70, 1
  %72 = lshr i32 %15, 5
  %73 = and i32 %72, 1
  %74 = add nuw nsw i32 %73, %71
  %75 = lshr i32 %21, 5
  %76 = and i32 %75, 1
  %77 = add nuw nsw i32 %76, %74
  %78 = icmp ugt i32 %77, 1
  %79 = select i1 %78, i8 32, i8 0
  %80 = or i8 %79, %69
  %81 = lshr i32 %10, 6
  %82 = and i32 %81, 1
  %83 = lshr i32 %15, 6
  %84 = and i32 %83, 1
  %85 = add nuw nsw i32 %84, %82
  %86 = lshr i32 %21, 6
  %87 = and i32 %86, 1
  %88 = add nuw nsw i32 %87, %85
  %89 = icmp ugt i32 %88, 1
  %90 = select i1 %89, i8 64, i8 0
  %91 = or i8 %90, %80
  %92 = lshr i32 %10, 7
  %93 = lshr i32 %15, 7
  %94 = add nuw nsw i32 %93, %92
  %95 = lshr i32 %21, 7
  %96 = add nuw nsw i32 %95, %94
  %97 = icmp ugt i32 %96, 1
  %98 = select i1 %97, i8 -128, i8 0
  %99 = or i8 %98, %91
  %100 = getelementptr i8, ptr %1, i32 %6
  store i8 %99, ptr %100, align 1
  %101 = add nuw nsw i32 %6, 1
  %102 = icmp eq i32 %101, 256
  br i1 %102, label %103, label %5

103:                                              ; preds = %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sanitize_string(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_legacy_adjust_cmdfunc(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

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
!9 = !{i32 0, i32 33}
