; ModuleID = '/llk/IR/drivers/mtd/nand/raw/nand_hynix.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/nand_hynix.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nand_manufacturer_ops = type { ptr, ptr, ptr, ptr }
%struct.mtd_pairing_scheme = type { i32, ptr, ptr }
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
%struct.nand_op_instr = type { i32, %union.anon.9, i32 }
%union.anon.9 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.10, i8 }
%union.anon.10 = type { ptr }
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.hynix_read_retry = type { i32, ptr, [0 x i8] }

@hynix_nand_manuf_ops = dso_local local_unnamed_addr constant %struct.nand_manufacturer_ops { ptr @hynix_nand_decode_id, ptr @hynix_nand_init, ptr @hynix_nand_cleanup, ptr null }, align 4
@.str = private unnamed_addr constant [28 x i8] c"include/linux/mtd/rawnand.h\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"chip->bits_per_cell is used uninitialized\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"JEDEC\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"drivers/mtd/nand/raw/nand_hynix.c\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Invalid OOB size\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Invalid ECC requirements\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"H27UCG8T2ATR-BC\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"H27UCG8T2ETR-BC\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@dist3_pairing_scheme = external dso_local constant %struct.mtd_pairing_scheme, align 4
@.str.8 = private unnamed_addr constant [49 x i8] c"\014failed to initialize read-retry infrastructure\00", align 1
@hynix_1xnm_mlc_read_retry_regs = internal global [8 x i8] c"\CC\BF\AA\AB\CD\AD\AE\AF", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"drivers/mtd/nand/raw/internals.h\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hynix_nand_decode_id(ptr noundef %0) #0 {
  %2 = alloca [5 x i8], align 1
  %3 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 1, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = icmp slt i32 %5, 6
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr %3, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12, !prof !8

10:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1445, i32 noundef 9, ptr noundef nonnull @.str.1) #10
  %11 = load i32, ptr %3, align 8
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i32 [ %11, %10 ], [ %8, %7 ]
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %1
  tail call void @nand_decode_ext_id(ptr noundef %0) #10
  br label %179

16:                                               ; preds = %12
  %17 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 3
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, 3
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 2048, %20
  %22 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 1
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  store i32 %21, ptr %23, align 4
  %24 = lshr i8 %18, 4
  %25 = and i8 %24, 3
  %26 = icmp sgt i8 %18, -1
  br i1 %26, label %32, label %27

27:                                               ; preds = %16
  %28 = zext i8 %25 to i32
  %29 = shl nuw nsw i32 1048576, %28
  %30 = add nuw nsw i32 %20, 11
  %31 = lshr i32 %29, %30
  br label %41

32:                                               ; preds = %16
  %33 = icmp eq i8 %25, 3
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = lshr i32 384, %20
  br label %41

36:                                               ; preds = %32
  %37 = zext i8 %25 to i32
  %38 = shl nuw nsw i32 131072, %37
  %39 = add nuw nsw i32 %20, 11
  %40 = lshr i32 %38, %39
  br label %41

41:                                               ; preds = %36, %34, %27
  %42 = phi i32 [ %35, %34 ], [ %40, %36 ], [ %31, %27 ]
  %43 = phi i32 [ 786432, %34 ], [ %38, %36 ], [ %29, %27 ]
  %44 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 3
  store i32 %42, ptr %44, align 4
  %45 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  store i32 %43, ptr %45, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %2, i8 0, i32 5, i1 false) #10
  %46 = call i32 @nand_readid_op(ptr noundef %0, i8 noundef zeroext 64, ptr noundef nonnull %2, i32 noundef 5) #10
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #10
  %49 = load i8, ptr %17, align 1
  %50 = lshr i8 %49, 2
  %51 = and i8 %50, 3
  %52 = lshr i8 %49, 4
  %53 = and i8 %52, 4
  %54 = or i8 %51, %53
  br label %77

55:                                               ; preds = %41
  %56 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @.str.2, ptr noundef nonnull dereferenceable(5) %2, i32 5) #10
  %57 = icmp eq i32 %56, 0
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #10
  %58 = load i8, ptr %17, align 1
  %59 = lshr i8 %58, 2
  %60 = and i8 %59, 3
  %61 = lshr i8 %58, 4
  %62 = and i8 %61, 4
  %63 = or i8 %60, %62
  br i1 %57, label %64, label %77

64:                                               ; preds = %55
  %65 = zext i8 %63 to i32
  switch i32 %65, label %74 [
    i32 0, label %66
    i32 1, label %68
    i32 2, label %70
    i32 3, label %72
  ]

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  store i32 2048, ptr %67, align 4
  br label %107

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  store i32 1664, ptr %69, align 4
  br label %107

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  store i32 1024, ptr %71, align 4
  br label %107

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  store i32 640, ptr %73, align 4
  br label %107

74:                                               ; preds = %64
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 441, i32 noundef 9, ptr noundef nonnull @.str.4) #10
  %75 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  %76 = load i32, ptr %75, align 4
  br label %107

77:                                               ; preds = %55, %48
  %78 = phi i8 [ %54, %48 ], [ %63, %55 ]
  switch i8 %78, label %93 [
    i8 0, label %79
    i8 1, label %81
    i8 2, label %83
    i8 3, label %85
    i8 4, label %87
    i8 5, label %89
    i8 6, label %91
  ]

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  store i32 128, ptr %80, align 4
  br label %94

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  store i32 224, ptr %82, align 4
  br label %94

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  store i32 448, ptr %84, align 4
  br label %94

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  store i32 64, ptr %86, align 4
  br label %94

87:                                               ; preds = %77
  %88 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  store i32 32, ptr %88, align 4
  br label %94

89:                                               ; preds = %77
  %90 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  store i32 16, ptr %90, align 4
  br label %94

91:                                               ; preds = %77
  %92 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  store i32 640, ptr %92, align 4
  br label %94

93:                                               ; preds = %77
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 474, i32 noundef 9, ptr noundef nonnull @.str.4) #10
  br label %94

94:                                               ; preds = %93, %91, %89, %87, %85, %83, %81, %79
  %95 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 1
  %96 = load i8, ptr %95, align 1
  %97 = icmp eq i8 %96, -34
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  %100 = load i32, ptr %99, align 4
  br label %122

101:                                              ; preds = %94
  %102 = load i32, ptr %22, align 4
  %103 = lshr i32 %102, 13
  %104 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = mul i32 %105, %103
  store i32 %106, ptr %104, align 4
  br label %122

107:                                              ; preds = %74, %72, %70, %68, %66
  %108 = phi i32 [ 2048, %66 ], [ 1664, %68 ], [ 1024, %70 ], [ 640, %72 ], [ %76, %74 ]
  %109 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  store i32 %108, ptr %109, align 4
  %110 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 4
  %111 = load i8, ptr %110, align 4
  %112 = lshr i8 %111, 4
  %113 = and i8 %112, 7
  %114 = zext i8 %113 to i32
  switch i32 %114, label %121 [
    i32 0, label %153
    i32 1, label %115
    i32 2, label %116
    i32 3, label %117
    i32 4, label %118
    i32 5, label %119
    i32 6, label %120
  ]

115:                                              ; preds = %107
  br label %153

116:                                              ; preds = %107
  br label %153

117:                                              ; preds = %107
  br label %153

118:                                              ; preds = %107
  br label %153

119:                                              ; preds = %107
  br label %153

120:                                              ; preds = %107
  br label %153

121:                                              ; preds = %107
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 536, i32 noundef 9, ptr noundef nonnull @.str.5) #10
  br label %153

122:                                              ; preds = %101, %98
  %123 = phi i32 [ %100, %98 ], [ %106, %101 ]
  %124 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  store i32 %123, ptr %124, align 4
  %125 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 4
  %126 = load i8, ptr %125, align 4
  %127 = lshr i8 %126, 4
  %128 = and i8 %127, 7
  %129 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 5
  %130 = load i8, ptr %129, align 1
  %131 = and i8 %130, 7
  %132 = icmp ult i8 %131, 3
  br i1 %132, label %133, label %142

133:                                              ; preds = %122
  %134 = icmp ult i8 %128, 5
  br i1 %134, label %135, label %138

135:                                              ; preds = %133
  %136 = zext i8 %128 to i32
  %137 = shl nuw nsw i32 1, %136
  br label %153

138:                                              ; preds = %133
  %139 = trunc i8 %127 to i3
  switch i3 %139, label %140 [
    i3 -1, label %141
    i3 -3, label %153
  ]

140:                                              ; preds = %138
  br label %153

141:                                              ; preds = %138
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 563, i32 noundef 9, ptr noundef nonnull @.str.5) #10
  br label %153

142:                                              ; preds = %122
  %143 = icmp eq i8 %128, 0
  br i1 %143, label %153, label %144

144:                                              ; preds = %142
  %145 = zext i8 %128 to i32
  %146 = icmp ult i8 %128, 5
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = add nsw i32 %145, -1
  %149 = shl nuw nsw i32 1, %148
  br label %153

150:                                              ; preds = %144
  %151 = shl nuw nsw i32 %145, 3
  %152 = add nsw i32 %151, -16
  br label %153

153:                                              ; preds = %150, %147, %142, %141, %140, %138, %135, %121, %120, %119, %118, %117, %116, %115, %107
  %154 = phi i1 [ true, %121 ], [ true, %120 ], [ true, %119 ], [ true, %118 ], [ true, %117 ], [ true, %116 ], [ true, %115 ], [ false, %135 ], [ false, %141 ], [ false, %147 ], [ false, %150 ], [ true, %107 ], [ false, %140 ], [ false, %138 ], [ false, %142 ]
  %155 = phi i32 [ 1024, %121 ], [ 1024, %120 ], [ 1024, %119 ], [ 1024, %118 ], [ 1024, %117 ], [ 1024, %116 ], [ 1024, %115 ], [ 512, %135 ], [ 0, %141 ], [ 512, %147 ], [ 1024, %150 ], [ %114, %107 ], [ 1024, %140 ], [ 2048, %138 ], [ 0, %142 ]
  %156 = phi i32 [ 0, %121 ], [ 60, %120 ], [ 50, %119 ], [ 40, %118 ], [ 32, %117 ], [ 24, %116 ], [ 4, %115 ], [ %137, %135 ], [ 0, %141 ], [ %149, %147 ], [ %152, %150 ], [ %114, %107 ], [ 24, %140 ], [ 24, %138 ], [ 0, %142 ]
  %157 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %157, i8 0, i32 12, i1 false) #10
  %158 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 3
  store i32 %156, ptr %158, align 4
  %159 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 4
  store i32 %155, ptr %159, align 4
  %160 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 5
  store i32 0, ptr %160, align 4
  %161 = load i32, ptr %3, align 8
  %162 = icmp ugt i32 %161, 2
  br i1 %162, label %163, label %167

163:                                              ; preds = %153
  %164 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %165 = load i32, ptr %164, align 8
  %166 = or i32 %165, 8192
  store i32 %166, ptr %164, align 8
  br label %167

167:                                              ; preds = %163, %153
  %168 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 5
  %169 = load i8, ptr %168, align 1
  br i1 %154, label %170, label %172

170:                                              ; preds = %167
  %171 = icmp ult i8 %169, 16
  br i1 %171, label %179, label %175

172:                                              ; preds = %167
  %173 = and i8 %169, 7
  %174 = icmp ugt i8 %173, 2
  br i1 %174, label %175, label %179

175:                                              ; preds = %172, %170
  %176 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %177 = load i32, ptr %176, align 8
  %178 = or i32 %177, 8192
  store i32 %178, ptr %176, align 8
  br label %179

179:                                              ; preds = %175, %172, %170, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hynix_nand_init(ptr noundef %0) #0 {
  %2 = alloca [1 x %struct.nand_op_instr], align 4
  %3 = alloca %struct.nand_operation, align 4
  %4 = alloca [1 x %struct.nand_op_instr], align 4
  %5 = alloca %struct.nand_operation, align 4
  %6 = alloca [1 x %struct.nand_op_instr], align 4
  %7 = alloca %struct.nand_operation, align 4
  %8 = alloca [1 x %struct.nand_op_instr], align 4
  %9 = alloca %struct.nand_operation, align 4
  %10 = alloca [1 x %struct.nand_op_instr], align 4
  %11 = alloca %struct.nand_operation, align 4
  %12 = alloca [8 x i8], align 8
  %13 = alloca [8 x i8], align 8
  %14 = alloca [1 x %struct.nand_op_instr], align 4
  %15 = alloca %struct.nand_operation, align 4
  %16 = alloca [1 x %struct.nand_op_instr], align 4
  %17 = alloca %struct.nand_operation, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca [5 x i8], align 1
  %21 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26, !prof !8

24:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1445, i32 noundef 9, ptr noundef nonnull @.str.1) #10
  %25 = load i32, ptr %21, align 8
  br label %26

26:                                               ; preds = %24, %1
  %27 = phi i32 [ %25, %24 ], [ %22, %1 ]
  %28 = icmp eq i32 %27, 1
  %29 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %30 = load i32, ptr %29, align 8
  %31 = select i1 %28, i32 50331648, i32 67108864
  %32 = or i32 %30, %31
  store i32 %32, ptr %29, align 8
  %33 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %34 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 4) #11
  %35 = icmp eq ptr %34, null
  br i1 %35, label %472, label %36

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 3, i32 1
  store ptr %34, ptr %37, align 4
  %38 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(16) @.str.6, ptr noundef %39, i32 noundef 15)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 4, i32 5
  store ptr @h27ucg8t2atrbc_choose_interface_config, ptr %43, align 4
  br label %44

44:                                               ; preds = %42, %36
  %45 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(16) @.str.7, ptr noundef %39, i32 noundef 15)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %49 = load i32, ptr %48, align 8
  %50 = or i32 %49, 8192
  store i32 %50, ptr %48, align 8
  %51 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 16
  store ptr @dist3_pairing_scheme, ptr %51, align 4
  br label %52

52:                                               ; preds = %47, %44
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %20) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %20, i8 0, i32 5, i1 false) #10
  %53 = call i32 @nand_readid_op(ptr noundef %0, i8 noundef zeroext 64, ptr noundef nonnull %20, i32 noundef 5) #10
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %20) #10
  br label %472

56:                                               ; preds = %52
  %57 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @.str.2, ptr noundef nonnull dereferenceable(5) %20, i32 5) #10
  %58 = icmp eq i32 %57, 0
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %20) #10
  br i1 %58, label %59, label %472

59:                                               ; preds = %56
  %60 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 5
  %61 = load i8, ptr %60, align 1
  %62 = and i8 %61, -16
  %63 = icmp eq i8 %62, 64
  br i1 %63, label %64, label %472

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %66 = getelementptr inbounds %struct.nand_op_instr, ptr %16, i32 0, i32 1
  %67 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %68 = getelementptr inbounds %struct.nand_operation, ptr %17, i32 0, i32 1
  %69 = getelementptr inbounds %struct.nand_operation, ptr %17, i32 0, i32 2
  %70 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %71 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %72 = getelementptr inbounds %struct.nand_op_instr, ptr %14, i32 0, i32 1
  %73 = getelementptr inbounds %struct.nand_operation, ptr %15, i32 0, i32 1
  %74 = getelementptr inbounds %struct.nand_operation, ptr %15, i32 0, i32 2
  %75 = getelementptr inbounds %struct.nand_op_instr, ptr %8, i32 0, i32 1
  %76 = getelementptr inbounds %struct.nand_operation, ptr %9, i32 0, i32 1
  %77 = getelementptr inbounds %struct.nand_operation, ptr %9, i32 0, i32 2
  %78 = getelementptr inbounds %struct.nand_op_instr, ptr %10, i32 0, i32 1
  %79 = getelementptr inbounds %struct.nand_operation, ptr %11, i32 0, i32 1
  %80 = getelementptr inbounds %struct.nand_operation, ptr %11, i32 0, i32 2
  %81 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 0, i32 1
  %82 = getelementptr inbounds %struct.nand_operation, ptr %7, i32 0, i32 1
  %83 = getelementptr inbounds %struct.nand_operation, ptr %7, i32 0, i32 2
  %84 = getelementptr inbounds [8 x i8], ptr %13, i32 0, i32 1
  %85 = getelementptr inbounds [8 x i8], ptr %13, i32 0, i32 2
  %86 = getelementptr inbounds [8 x i8], ptr %13, i32 0, i32 3
  %87 = getelementptr inbounds [8 x i8], ptr %13, i32 0, i32 4
  %88 = getelementptr inbounds [8 x i8], ptr %13, i32 0, i32 5
  %89 = getelementptr inbounds [8 x i8], ptr %13, i32 0, i32 6
  %90 = getelementptr inbounds [8 x i8], ptr %13, i32 0, i32 7
  %91 = getelementptr inbounds [8 x i8], ptr %12, i32 0, i32 1
  %92 = getelementptr inbounds [8 x i8], ptr %12, i32 0, i32 2
  %93 = getelementptr inbounds [8 x i8], ptr %12, i32 0, i32 3
  %94 = getelementptr inbounds [8 x i8], ptr %12, i32 0, i32 4
  %95 = getelementptr inbounds [8 x i8], ptr %12, i32 0, i32 5
  %96 = getelementptr inbounds [8 x i8], ptr %12, i32 0, i32 6
  %97 = getelementptr inbounds [8 x i8], ptr %12, i32 0, i32 7
  %98 = getelementptr inbounds %struct.nand_op_instr, ptr %2, i32 0, i32 1
  %99 = getelementptr inbounds %struct.nand_operation, ptr %3, i32 0, i32 1
  %100 = getelementptr inbounds %struct.nand_operation, ptr %3, i32 0, i32 2
  %101 = getelementptr inbounds %struct.nand_op_instr, ptr %4, i32 0, i32 1
  %102 = getelementptr inbounds %struct.nand_operation, ptr %5, i32 0, i32 1
  %103 = getelementptr inbounds %struct.nand_operation, ptr %5, i32 0, i32 2
  br label %104

104:                                              ; preds = %467, %64
  %105 = phi i32 [ 0, %64 ], [ %468, %467 ]
  %106 = load ptr, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #10
  store i8 0, ptr %18, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #10
  store i8 0, ptr %19, align 1, !annotation !9
  %107 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %108 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %107, i32 noundef 3264, i32 noundef 784) #11
  %109 = icmp eq ptr %108, null
  br i1 %109, label %467, label %110

110:                                              ; preds = %104
  %111 = call i32 @nand_reset_op(ptr noundef %0) #10
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %457

113:                                              ; preds = %110
  %114 = load ptr, ptr %65, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %132, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.nand_controller, ptr %114, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %132, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.nand_controller_ops, ptr %118, i32 0, i32 2
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %132, label %124

124:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %16) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %16, i8 0, i64 20, i1 false) #10
  store i8 54, ptr %66, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  %125 = load i32, ptr %67, align 4
  store i32 %125, ptr %17, align 4
  store ptr %16, ptr %68, align 4
  store i32 1, ptr %69, align 4
  %126 = load ptr, ptr %121, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %134, label %128

128:                                              ; preds = %124
  %129 = load i32, ptr %70, align 8
  %130 = icmp ult i32 %125, %129
  br i1 %130, label %135, label %131, !prof !10

131:                                              ; preds = %128
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 139, i32 noundef 9, ptr noundef null) #10
  br label %134

132:                                              ; preds = %120, %116, %113
  %133 = load ptr, ptr %71, align 8
  call void %133(ptr noundef %0, i32 noundef 54, i32 noundef -1, i32 noundef -1) #10
  br label %138

134:                                              ; preds = %131, %124
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %16) #10
  br label %457

135:                                              ; preds = %128
  %136 = call i32 %126(ptr noundef %0, ptr noundef nonnull %17, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %16) #10
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %457

138:                                              ; preds = %135, %132
  %139 = call fastcc i32 @hynix_nand_reg_write_op(ptr noundef %0, i8 noundef zeroext 56, i8 noundef zeroext 82) #10
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %457

141:                                              ; preds = %138
  %142 = load ptr, ptr %65, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %160, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.nand_controller, ptr %142, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %160, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.nand_controller_ops, ptr %146, i32 0, i32 2
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %160, label %152

152:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %14) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %14, i8 0, i64 20, i1 false) #10
  store i8 22, ptr %72, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  %153 = load i32, ptr %67, align 4
  store i32 %153, ptr %15, align 4
  store ptr %14, ptr %73, align 4
  store i32 1, ptr %74, align 4
  %154 = load ptr, ptr %149, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %162, label %156

156:                                              ; preds = %152
  %157 = load i32, ptr %70, align 8
  %158 = icmp ult i32 %153, %157
  br i1 %158, label %163, label %159, !prof !10

159:                                              ; preds = %156
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 139, i32 noundef 9, ptr noundef null) #10
  br label %162

160:                                              ; preds = %148, %144, %141
  %161 = load ptr, ptr %71, align 8
  call void %161(ptr noundef %0, i32 noundef 22, i32 noundef -1, i32 noundef -1) #10
  br label %166

162:                                              ; preds = %159, %152
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %14) #10
  br label %457

163:                                              ; preds = %156
  %164 = call i32 %154(ptr noundef %0, ptr noundef nonnull %15, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %14) #10
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %457

166:                                              ; preds = %163, %160
  %167 = load ptr, ptr %65, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %185, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.nand_controller, ptr %167, i32 0, i32 1
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %185, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.nand_controller_ops, ptr %171, i32 0, i32 2
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %185, label %177

177:                                              ; preds = %173
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %8, i8 0, i64 20, i1 false) #10
  store i8 23, ptr %75, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %178 = load i32, ptr %67, align 4
  store i32 %178, ptr %9, align 4
  store ptr %8, ptr %76, align 4
  store i32 1, ptr %77, align 4
  %179 = load ptr, ptr %174, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %187, label %181

181:                                              ; preds = %177
  %182 = load i32, ptr %70, align 8
  %183 = icmp ult i32 %178, %182
  br i1 %183, label %188, label %184, !prof !10

184:                                              ; preds = %181
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 139, i32 noundef 9, ptr noundef null) #10
  br label %187

185:                                              ; preds = %173, %169, %166
  %186 = load ptr, ptr %71, align 8
  call void %186(ptr noundef %0, i32 noundef 23, i32 noundef -1, i32 noundef -1) #10
  br label %191

187:                                              ; preds = %184, %177
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #10
  br label %457

188:                                              ; preds = %181
  %189 = call i32 %179(ptr noundef %0, ptr noundef nonnull %9, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #10
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %457

191:                                              ; preds = %188, %185
  %192 = load ptr, ptr %65, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %210, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.nand_controller, ptr %192, i32 0, i32 1
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %210, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.nand_controller_ops, ptr %196, i32 0, i32 2
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %210, label %202

202:                                              ; preds = %198
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %10) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %10, i8 0, i64 20, i1 false) #10
  store i8 4, ptr %78, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  %203 = load i32, ptr %67, align 4
  store i32 %203, ptr %11, align 4
  store ptr %10, ptr %79, align 4
  store i32 1, ptr %80, align 4
  %204 = load ptr, ptr %199, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %212, label %206

206:                                              ; preds = %202
  %207 = load i32, ptr %70, align 8
  %208 = icmp ult i32 %203, %207
  br i1 %208, label %213, label %209, !prof !10

209:                                              ; preds = %206
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 139, i32 noundef 9, ptr noundef null) #10
  br label %212

210:                                              ; preds = %198, %194, %191
  %211 = load ptr, ptr %71, align 8
  call void %211(ptr noundef %0, i32 noundef 4, i32 noundef -1, i32 noundef -1) #10
  br label %216

212:                                              ; preds = %209, %202
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %10) #10
  br label %457

213:                                              ; preds = %206
  %214 = call i32 %204(ptr noundef %0, ptr noundef nonnull %11, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %10) #10
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %457

216:                                              ; preds = %213, %210
  %217 = load ptr, ptr %65, align 4
  %218 = icmp eq ptr %217, null
  br i1 %218, label %235, label %219

219:                                              ; preds = %216
  %220 = getelementptr inbounds %struct.nand_controller, ptr %217, i32 0, i32 1
  %221 = load ptr, ptr %220, align 4
  %222 = icmp eq ptr %221, null
  br i1 %222, label %235, label %223

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.nand_controller_ops, ptr %221, i32 0, i32 2
  %225 = load ptr, ptr %224, align 4
  %226 = icmp eq ptr %225, null
  br i1 %226, label %235, label %227

227:                                              ; preds = %223
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i64 20, i1 false) #10
  store i8 25, ptr %81, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %228 = load i32, ptr %67, align 4
  store i32 %228, ptr %7, align 4
  store ptr %6, ptr %82, align 4
  store i32 1, ptr %83, align 4
  %229 = load ptr, ptr %224, align 4
  %230 = icmp eq ptr %229, null
  br i1 %230, label %237, label %231

231:                                              ; preds = %227
  %232 = load i32, ptr %70, align 8
  %233 = icmp ult i32 %228, %232
  br i1 %233, label %238, label %234, !prof !10

234:                                              ; preds = %231
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 139, i32 noundef 9, ptr noundef null) #10
  br label %237

235:                                              ; preds = %223, %219, %216
  %236 = load ptr, ptr %71, align 8
  call void %236(ptr noundef %0, i32 noundef 25, i32 noundef -1, i32 noundef -1) #10
  br label %241

237:                                              ; preds = %234, %227
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #10
  br label %457

238:                                              ; preds = %231
  %239 = call i32 %229(ptr noundef %0, ptr noundef nonnull %7, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #10
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %457

241:                                              ; preds = %238, %235
  %242 = call i32 @nand_read_page_op(ptr noundef %0, i32 noundef 543, i32 noundef 0, ptr noundef nonnull %108, i32 noundef 784) #10
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %457

244:                                              ; preds = %241
  %245 = call i32 @nand_reset_op(ptr noundef %0) #10
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %457

247:                                              ; preds = %244
  %248 = load ptr, ptr %65, align 4
  %249 = icmp eq ptr %248, null
  br i1 %249, label %266, label %250

250:                                              ; preds = %247
  %251 = getelementptr inbounds %struct.nand_controller, ptr %248, i32 0, i32 1
  %252 = load ptr, ptr %251, align 4
  %253 = icmp eq ptr %252, null
  br i1 %253, label %266, label %254

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.nand_controller_ops, ptr %252, i32 0, i32 2
  %256 = load ptr, ptr %255, align 4
  %257 = icmp eq ptr %256, null
  br i1 %257, label %266, label %258

258:                                              ; preds = %254
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i64 20, i1 false) #10
  store i8 54, ptr %98, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %259 = load i32, ptr %67, align 4
  store i32 %259, ptr %3, align 4
  store ptr %2, ptr %99, align 4
  store i32 1, ptr %100, align 4
  %260 = load ptr, ptr %255, align 4
  %261 = icmp eq ptr %260, null
  br i1 %261, label %268, label %262

262:                                              ; preds = %258
  %263 = load i32, ptr %70, align 8
  %264 = icmp ult i32 %259, %263
  br i1 %264, label %269, label %265, !prof !10

265:                                              ; preds = %262
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 139, i32 noundef 9, ptr noundef null) #10
  br label %268

266:                                              ; preds = %254, %250, %247
  %267 = load ptr, ptr %71, align 8
  call void %267(ptr noundef %0, i32 noundef 54, i32 noundef -1, i32 noundef -1) #10
  br label %272

268:                                              ; preds = %265, %258
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  br label %457

269:                                              ; preds = %262
  %270 = call i32 %260(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %457

272:                                              ; preds = %269, %266
  %273 = call fastcc i32 @hynix_nand_reg_write_op(ptr noundef %0, i8 noundef zeroext 56, i8 noundef zeroext 0) #10
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %457

275:                                              ; preds = %272
  %276 = load ptr, ptr %65, align 4
  %277 = icmp eq ptr %276, null
  br i1 %277, label %294, label %278

278:                                              ; preds = %275
  %279 = getelementptr inbounds %struct.nand_controller, ptr %276, i32 0, i32 1
  %280 = load ptr, ptr %279, align 4
  %281 = icmp eq ptr %280, null
  br i1 %281, label %294, label %282

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.nand_controller_ops, ptr %280, i32 0, i32 2
  %284 = load ptr, ptr %283, align 4
  %285 = icmp eq ptr %284, null
  br i1 %285, label %294, label %286

286:                                              ; preds = %282
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i64 20, i1 false) #10
  store i8 22, ptr %101, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %287 = load i32, ptr %67, align 4
  store i32 %287, ptr %5, align 4
  store ptr %4, ptr %102, align 4
  store i32 1, ptr %103, align 4
  %288 = load ptr, ptr %283, align 4
  %289 = icmp eq ptr %288, null
  br i1 %289, label %296, label %290

290:                                              ; preds = %286
  %291 = load i32, ptr %70, align 8
  %292 = icmp ult i32 %287, %291
  br i1 %292, label %297, label %293, !prof !10

293:                                              ; preds = %290
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 139, i32 noundef 9, ptr noundef null) #10
  br label %296

294:                                              ; preds = %282, %278, %275
  %295 = load ptr, ptr %71, align 8
  call void %295(ptr noundef %0, i32 noundef 22, i32 noundef -1, i32 noundef -1) #10
  br label %300

296:                                              ; preds = %293, %286
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #10
  br label %457

297:                                              ; preds = %290
  %298 = call i32 %288(ptr noundef %0, ptr noundef nonnull %5, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #10
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %457

300:                                              ; preds = %297, %294
  %301 = call i32 @nand_read_page_op(ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #10
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %457

303:                                              ; preds = %300
  %304 = call fastcc i32 @hynix_get_majority(ptr noundef nonnull %108, ptr noundef nonnull %19) #10
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %457

306:                                              ; preds = %303
  %307 = getelementptr i8, ptr %108, i32 8
  %308 = call fastcc i32 @hynix_get_majority(ptr noundef %307, ptr noundef nonnull %18) #10
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %457

310:                                              ; preds = %306
  %311 = load i8, ptr %18, align 1
  %312 = load i8, ptr %19, align 1
  %313 = zext i8 %312 to i32
  %314 = zext i8 %311 to i32
  %315 = mul nuw nsw i32 %313, %314
  %316 = add nuw nsw i32 %315, 8
  %317 = call noalias align 64 ptr @__kmalloc(i32 noundef %316, i32 noundef 3520) #12
  %318 = icmp eq ptr %317, null
  br i1 %318, label %457, label %319

319:                                              ; preds = %310
  %320 = icmp eq i8 %312, 0
  br i1 %320, label %459, label %321

321:                                              ; preds = %319
  %322 = getelementptr inbounds %struct.hynix_read_retry, ptr %317, i32 0, i32 2
  %323 = load i8, ptr %19, align 1
  %324 = zext i8 %323 to i32
  %325 = load i8, ptr %18, align 1
  %326 = zext i8 %325 to i32
  %327 = mul nuw nsw i32 %324, 3
  %328 = mul nuw nsw i32 %324, 5
  %329 = mul nuw nsw i32 %324, 7
  %330 = mul nuw nsw i32 %324, 9
  %331 = mul nuw nsw i32 %324, 11
  %332 = mul nuw nsw i32 %324, 13
  %333 = mul nuw nsw i32 %324, 15
  %334 = load i8, ptr %18, align 1
  %335 = zext i8 %334 to i32
  %336 = load i8, ptr %19, align 1
  br label %337

337:                                              ; preds = %450, %321
  %338 = phi i8 [ %311, %321 ], [ %451, %450 ]
  %339 = phi i8 [ %312, %321 ], [ %452, %450 ]
  %340 = phi i8 [ %311, %321 ], [ %453, %450 ]
  %341 = phi i32 [ 0, %321 ], [ %454, %450 ]
  %342 = icmp eq i8 %340, 0
  br i1 %342, label %450, label %343

343:                                              ; preds = %337
  %344 = zext i8 %340 to i32
  %345 = add nuw nsw i32 %341, %324
  %346 = mul i32 %345, %326
  %347 = add nuw nsw i32 %327, %341
  %348 = mul i32 %347, %326
  %349 = add nuw nsw i32 %328, %341
  %350 = mul i32 %349, %326
  %351 = add nuw nsw i32 %329, %341
  %352 = mul i32 %351, %326
  %353 = add nuw i32 %330, %341
  %354 = mul i32 %353, %326
  %355 = add nuw i32 %331, %341
  %356 = mul i32 %355, %326
  %357 = add nuw i32 %332, %341
  %358 = mul i32 %357, %326
  %359 = add nuw i32 %333, %341
  %360 = mul i32 %359, %326
  br label %361

361:                                              ; preds = %447, %343
  %362 = phi i8 [ %339, %343 ], [ %336, %447 ]
  %363 = phi i32 [ %344, %343 ], [ %335, %447 ]
  %364 = phi i32 [ 0, %343 ], [ %448, %447 ]
  %365 = mul i32 %363, %341
  %366 = getelementptr i8, ptr %322, i32 %365
  %367 = zext i8 %362 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #10
  %368 = add nuw nsw i32 %364, 16
  %369 = add i32 %368, %365
  %370 = getelementptr i8, ptr %108, i32 %369
  %371 = load i8, ptr %370, align 1
  store i8 %371, ptr %13, align 8
  %372 = shl nuw nsw i32 %367, 1
  %373 = add nuw nsw i32 %372, %341
  %374 = mul i32 %373, %363
  %375 = add i32 %374, %368
  %376 = getelementptr i8, ptr %108, i32 %375
  %377 = load i8, ptr %376, align 1
  store i8 %377, ptr %84, align 1
  %378 = shl nuw nsw i32 %367, 2
  %379 = add nuw nsw i32 %378, %341
  %380 = mul i32 %379, %363
  %381 = add i32 %380, %368
  %382 = getelementptr i8, ptr %108, i32 %381
  %383 = load i8, ptr %382, align 1
  store i8 %383, ptr %85, align 2
  %384 = mul nuw nsw i32 %367, 6
  %385 = add nuw nsw i32 %384, %341
  %386 = mul i32 %385, %363
  %387 = add i32 %386, %368
  %388 = getelementptr i8, ptr %108, i32 %387
  %389 = load i8, ptr %388, align 1
  store i8 %389, ptr %86, align 1
  %390 = shl nuw nsw i32 %367, 3
  %391 = add nuw i32 %390, %341
  %392 = mul i32 %391, %363
  %393 = add i32 %392, %368
  %394 = getelementptr i8, ptr %108, i32 %393
  %395 = load i8, ptr %394, align 1
  store i8 %395, ptr %87, align 4
  %396 = mul nuw nsw i32 %367, 10
  %397 = add nuw i32 %396, %341
  %398 = mul i32 %397, %363
  %399 = add i32 %398, %368
  %400 = getelementptr i8, ptr %108, i32 %399
  %401 = load i8, ptr %400, align 1
  store i8 %401, ptr %88, align 1
  %402 = mul nuw nsw i32 %367, 12
  %403 = add nuw i32 %402, %341
  %404 = mul i32 %403, %363
  %405 = add i32 %404, %368
  %406 = getelementptr i8, ptr %108, i32 %405
  %407 = load i8, ptr %406, align 1
  store i8 %407, ptr %89, align 2
  %408 = mul nuw nsw i32 %367, 14
  %409 = add nuw i32 %408, %341
  %410 = mul i32 %409, %363
  %411 = add i32 %410, %368
  %412 = getelementptr i8, ptr %108, i32 %411
  %413 = load i8, ptr %412, align 1
  store i8 %413, ptr %90, align 1
  %414 = call fastcc i32 @hynix_get_majority(ptr noundef nonnull %13, ptr noundef %366) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #10
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %447, label %416

416:                                              ; preds = %361
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #10
  %417 = add i32 %346, %368
  %418 = getelementptr i8, ptr %108, i32 %417
  %419 = load i8, ptr %418, align 1
  store i8 %419, ptr %12, align 8
  %420 = add i32 %348, %368
  %421 = getelementptr i8, ptr %108, i32 %420
  %422 = load i8, ptr %421, align 1
  store i8 %422, ptr %91, align 1
  %423 = add i32 %350, %368
  %424 = getelementptr i8, ptr %108, i32 %423
  %425 = load i8, ptr %424, align 1
  store i8 %425, ptr %92, align 2
  %426 = add i32 %352, %368
  %427 = getelementptr i8, ptr %108, i32 %426
  %428 = load i8, ptr %427, align 1
  store i8 %428, ptr %93, align 1
  %429 = add i32 %354, %368
  %430 = getelementptr i8, ptr %108, i32 %429
  %431 = load i8, ptr %430, align 1
  store i8 %431, ptr %94, align 4
  %432 = add i32 %356, %368
  %433 = getelementptr i8, ptr %108, i32 %432
  %434 = load i8, ptr %433, align 1
  store i8 %434, ptr %95, align 1
  %435 = add i32 %358, %368
  %436 = getelementptr i8, ptr %108, i32 %435
  %437 = load i8, ptr %436, align 1
  store i8 %437, ptr %96, align 2
  %438 = add i32 %360, %368
  %439 = getelementptr i8, ptr %108, i32 %438
  %440 = load i8, ptr %439, align 1
  store i8 %440, ptr %97, align 1
  %441 = call fastcc i32 @hynix_get_majority(ptr noundef nonnull %12, ptr noundef %366) #10
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %443, label %446

443:                                              ; preds = %416
  %444 = load i8, ptr %366, align 1
  %445 = xor i8 %444, -1
  store i8 %445, ptr %366, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #10
  br label %447

446:                                              ; preds = %416
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #10
  br label %457

447:                                              ; preds = %443, %361
  %448 = add nuw nsw i32 %364, 1
  %449 = icmp ult i32 %448, %335
  br i1 %449, label %361, label %450

450:                                              ; preds = %447, %337
  %451 = phi i8 [ %338, %337 ], [ %334, %447 ]
  %452 = phi i8 [ %339, %337 ], [ %336, %447 ]
  %453 = phi i8 [ 0, %337 ], [ %334, %447 ]
  %454 = add nuw nsw i32 %341, 1
  %455 = zext i8 %452 to i32
  %456 = icmp ult i32 %454, %455
  br i1 %456, label %337, label %459

457:                                              ; preds = %446, %310, %306, %303, %300, %297, %296, %272, %269, %268, %244, %241, %238, %237, %213, %212, %188, %187, %163, %162, %138, %135, %134, %110
  %458 = phi ptr [ null, %310 ], [ %317, %446 ], [ null, %306 ], [ null, %303 ], [ null, %300 ], [ null, %110 ], [ null, %135 ], [ null, %138 ], [ null, %163 ], [ null, %188 ], [ null, %213 ], [ null, %238 ], [ null, %241 ], [ null, %244 ], [ null, %269 ], [ null, %272 ], [ null, %297 ], [ null, %134 ], [ null, %162 ], [ null, %187 ], [ null, %212 ], [ null, %237 ], [ null, %268 ], [ null, %296 ]
  call void @kfree(ptr noundef nonnull %108) #10
  call void @kfree(ptr noundef %458) #10
  br label %467

459:                                              ; preds = %450, %319
  %460 = phi i8 [ %451, %450 ], [ %311, %319 ]
  %461 = phi i8 [ %452, %450 ], [ 0, %319 ]
  %462 = zext i8 %460 to i32
  %463 = zext i8 %461 to i32
  store i32 %462, ptr %317, align 64
  %464 = getelementptr inbounds %struct.hynix_read_retry, ptr %317, i32 0, i32 1
  store ptr @hynix_1xnm_mlc_read_retry_regs, ptr %464, align 4
  store ptr %317, ptr %106, align 4
  %465 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 4, i32 4
  store ptr @hynix_nand_setup_read_retry, ptr %465, align 8
  %466 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 29
  store i32 %463, ptr %466, align 8
  call void @kfree(ptr noundef nonnull %108) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #10
  br label %472

467:                                              ; preds = %457, %104
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #10
  %468 = add nuw nsw i32 %105, 1
  %469 = icmp eq i32 %468, 2
  br i1 %469, label %470, label %104

470:                                              ; preds = %467
  %471 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #13
  br label %472

472:                                              ; preds = %470, %459, %59, %56, %55, %26
  %473 = phi i32 [ -12, %26 ], [ 0, %55 ], [ 0, %56 ], [ 0, %59 ], [ 0, %459 ], [ 0, %470 ]
  ret i32 %473
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hynix_nand_cleanup(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 3, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %6) #10
  tail call void @kfree(ptr noundef nonnull %3) #10
  store ptr null, ptr %2, align 4
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_decode_ext_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_readid_op(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @h27ucg8t2atrbc_choose_interface_config(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @onfi_fill_interface_config(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 4) #10
  %3 = tail call i32 @nand_choose_best_sdr_timings(ptr noundef %0, ptr noundef %1, ptr noundef null) #10
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @onfi_fill_interface_config(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_choose_best_sdr_timings(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hynix_get_majority(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #8 {
  %3 = load i8, ptr %0, align 1
  %4 = getelementptr i8, ptr %0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, %3
  %7 = zext i1 %6 to i32
  %8 = getelementptr i8, ptr %0, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, %3
  %11 = zext i1 %10 to i32
  %12 = add nuw nsw i32 %7, %11
  %13 = getelementptr i8, ptr %0, i32 3
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, %3
  %16 = zext i1 %15 to i32
  %17 = add nuw nsw i32 %12, %16
  %18 = getelementptr i8, ptr %0, i32 4
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, %3
  %21 = zext i1 %20 to i32
  %22 = add nuw nsw i32 %17, %21
  %23 = getelementptr i8, ptr %0, i32 5
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, %3
  %26 = zext i1 %25 to i32
  %27 = add nuw nsw i32 %22, %26
  %28 = getelementptr i8, ptr %0, i32 6
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, %3
  %31 = zext i1 %30 to i32
  %32 = add nuw nsw i32 %27, %31
  %33 = getelementptr i8, ptr %0, i32 7
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, %3
  %36 = zext i1 %35 to i32
  %37 = add nuw nsw i32 %32, %36
  %38 = icmp ugt i32 %37, 4
  br i1 %38, label %100, label %39

39:                                               ; preds = %2
  %40 = getelementptr i8, ptr %0, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = getelementptr i8, ptr %0, i32 2
  %43 = load i8, ptr %42, align 1
  %44 = icmp eq i8 %43, %41
  %45 = zext i1 %44 to i32
  %46 = getelementptr i8, ptr %0, i32 3
  %47 = load i8, ptr %46, align 1
  %48 = icmp eq i8 %47, %41
  %49 = zext i1 %48 to i32
  %50 = add nuw nsw i32 %45, %49
  %51 = getelementptr i8, ptr %0, i32 4
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, %41
  %54 = zext i1 %53 to i32
  %55 = add nuw nsw i32 %50, %54
  %56 = getelementptr i8, ptr %0, i32 5
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, %41
  %59 = zext i1 %58 to i32
  %60 = add nuw nsw i32 %55, %59
  %61 = getelementptr i8, ptr %0, i32 6
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, %41
  %64 = zext i1 %63 to i32
  %65 = add nuw nsw i32 %60, %64
  %66 = getelementptr i8, ptr %0, i32 7
  %67 = load i8, ptr %66, align 1
  %68 = icmp eq i8 %67, %41
  %69 = zext i1 %68 to i32
  %70 = add nuw nsw i32 %65, %69
  %71 = icmp ugt i32 %70, 4
  br i1 %71, label %100, label %72

72:                                               ; preds = %39
  %73 = getelementptr i8, ptr %0, i32 2
  %74 = load i8, ptr %73, align 1
  %75 = getelementptr i8, ptr %0, i32 3
  %76 = load i8, ptr %75, align 1
  %77 = icmp eq i8 %76, %74
  %78 = zext i1 %77 to i32
  %79 = getelementptr i8, ptr %0, i32 4
  %80 = load i8, ptr %79, align 1
  %81 = icmp eq i8 %80, %74
  %82 = zext i1 %81 to i32
  %83 = add nuw nsw i32 %78, %82
  %84 = getelementptr i8, ptr %0, i32 5
  %85 = load i8, ptr %84, align 1
  %86 = icmp eq i8 %85, %74
  %87 = zext i1 %86 to i32
  %88 = add nuw nsw i32 %83, %87
  %89 = getelementptr i8, ptr %0, i32 6
  %90 = load i8, ptr %89, align 1
  %91 = icmp eq i8 %90, %74
  %92 = zext i1 %91 to i32
  %93 = add nuw nsw i32 %88, %92
  %94 = getelementptr i8, ptr %0, i32 7
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %95, %74
  %97 = zext i1 %96 to i32
  %98 = add nuw nsw i32 %93, %97
  %99 = icmp ugt i32 %98, 4
  br i1 %99, label %100, label %102

100:                                              ; preds = %72, %39, %2
  %101 = phi i8 [ %3, %2 ], [ %41, %39 ], [ %74, %72 ]
  store i8 %101, ptr %1, align 1
  br label %102

102:                                              ; preds = %100, %72
  %103 = phi i32 [ 0, %100 ], [ -5, %72 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hynix_nand_setup_read_retry(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca [1 x %struct.nand_op_instr], align 4
  %4 = alloca %struct.nand_operation, align 4
  %5 = alloca [1 x %struct.nand_op_instr], align 4
  %6 = alloca %struct.nand_operation, align 4
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.hynix_read_retry, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %9, align 4
  %12 = mul i32 %11, %1
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %38, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.nand_controller, ptr %15, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.nand_controller_ops, ptr %19, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #10
  %26 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i64 20, i1 false) #10
  store i8 54, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %27 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %6, align 4
  %29 = getelementptr inbounds %struct.nand_operation, ptr %6, i32 0, i32 1
  store ptr %5, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nand_operation, ptr %6, i32 0, i32 2
  store i32 1, ptr %30, align 4
  %31 = load ptr, ptr %22, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %35 = load i32, ptr %34, align 8
  %36 = icmp ult i32 %28, %35
  br i1 %36, label %43, label %37, !prof !10

37:                                               ; preds = %33
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 139, i32 noundef 9, ptr noundef null) #10
  br label %41

38:                                               ; preds = %21, %17, %2
  %39 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef %0, i32 noundef 54, i32 noundef -1, i32 noundef -1) #10
  br label %46

41:                                               ; preds = %37, %25
  %42 = phi i32 [ -524, %25 ], [ -22, %37 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #10
  br label %97

43:                                               ; preds = %33
  %44 = call i32 %31(ptr noundef %0, ptr noundef nonnull %6, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #10
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %97

46:                                               ; preds = %43, %38
  %47 = load ptr, ptr %8, align 4
  %48 = load i32, ptr %47, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %55, label %66

50:                                               ; preds = %55
  %51 = add nuw nsw i32 %57, 1
  %52 = load ptr, ptr %8, align 4
  %53 = load i32, ptr %52, align 4
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %50, %46
  %56 = phi ptr [ %52, %50 ], [ %47, %46 ]
  %57 = phi i32 [ %51, %50 ], [ 0, %46 ]
  %58 = getelementptr inbounds %struct.hynix_read_retry, ptr %56, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 %57
  %61 = load i8, ptr %60, align 1
  %62 = getelementptr i8, ptr %13, i32 %57
  %63 = load i8, ptr %62, align 1
  %64 = call fastcc i32 @hynix_nand_reg_write_op(ptr noundef %0, i8 noundef zeroext %61, i8 noundef zeroext %63)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %50, label %97

66:                                               ; preds = %50, %46
  %67 = load ptr, ptr %14, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %94, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.nand_controller, ptr %67, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %94, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.nand_controller_ops, ptr %71, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %94, label %77

77:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #10
  %78 = getelementptr inbounds %struct.nand_op_instr, ptr %3, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i64 20, i1 false) #10
  store i8 22, ptr %78, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %79 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %80 = load i32, ptr %79, align 4
  store i32 %80, ptr %4, align 4
  %81 = getelementptr inbounds %struct.nand_operation, ptr %4, i32 0, i32 1
  store ptr %3, ptr %81, align 4
  %82 = getelementptr inbounds %struct.nand_operation, ptr %4, i32 0, i32 2
  store i32 1, ptr %82, align 4
  %83 = load ptr, ptr %74, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %87 = load i32, ptr %86, align 8
  %88 = icmp ult i32 %80, %87
  br i1 %88, label %90, label %89, !prof !10

89:                                               ; preds = %85
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 139, i32 noundef 9, ptr noundef null) #10
  br label %92

90:                                               ; preds = %85
  %91 = call i32 %83(ptr noundef %0, ptr noundef nonnull %4, i1 noundef zeroext false) #10
  br label %92

92:                                               ; preds = %90, %89, %77
  %93 = phi i32 [ -22, %89 ], [ %91, %90 ], [ -524, %77 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #10
  br label %97

94:                                               ; preds = %73, %69, %66
  %95 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %96 = load ptr, ptr %95, align 8
  call void %96(ptr noundef %0, i32 noundef 22, i32 noundef -1, i32 noundef -1) #10
  br label %97

97:                                               ; preds = %94, %92, %55, %43, %41
  %98 = phi i32 [ %44, %43 ], [ %93, %92 ], [ 0, %94 ], [ %42, %41 ], [ %64, %55 ]
  ret i32 %98
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_reset_op(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hynix_nand_reg_write_op(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.nand_op_instr], align 4
  %7 = alloca %struct.nand_operation, align 4
  store i8 %1, ptr %4, align 1
  store i8 %2, ptr %5, align 1
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %47, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.nand_controller, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %47, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.nand_controller_ops, ptr %13, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %47, label %19

19:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #10
  %20 = getelementptr inbounds i8, ptr %6, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %20, i8 0, i32 24, i1 false), !annotation !9
  store i32 1, ptr %6, align 4
  %21 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 0, i32 1
  store i32 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 0, i32 1, i32 0, i32 1
  store ptr %4, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 1
  store i32 3, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 1, i32 1
  store i32 1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 1, i32 1, i32 0, i32 1
  store ptr %5, ptr %25, align 4
  %26 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 1, i32 1, i32 0, i32 2
  store i8 1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 1, i32 2
  store i32 0, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %28 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %29 = load i32, ptr %28, align 4
  store i32 %29, ptr %7, align 4
  %30 = getelementptr inbounds %struct.nand_operation, ptr %7, i32 0, i32 1
  store ptr %6, ptr %30, align 4
  %31 = getelementptr inbounds %struct.nand_operation, ptr %7, i32 0, i32 2
  store i32 2, ptr %31, align 4
  %32 = load ptr, ptr %12, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.nand_controller_ops, ptr %32, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %40 = load i32, ptr %39, align 8
  %41 = icmp ult i32 %29, %40
  br i1 %41, label %43, label %42, !prof !10

42:                                               ; preds = %38
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 139, i32 noundef 9, ptr noundef null) #10
  br label %45

43:                                               ; preds = %38
  %44 = call i32 %36(ptr noundef %0, ptr noundef nonnull %7, i1 noundef zeroext false) #10
  br label %45

45:                                               ; preds = %43, %42, %34, %19
  %46 = phi i32 [ -22, %42 ], [ %44, %43 ], [ -524, %34 ], [ -524, %19 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #10
  br label %54

47:                                               ; preds = %15, %11, %3
  %48 = zext i8 %1 to i32
  %49 = mul nuw nsw i32 %48, 257
  %50 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef %0, i32 noundef -1, i32 noundef %49, i32 noundef -1) #10
  %52 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 4
  %53 = load ptr, ptr %52, align 8
  tail call void %53(ptr noundef %0, i8 noundef zeroext %2) #10
  br label %54

54:                                               ; preds = %47, %45
  %55 = phi i32 [ %46, %45 ], [ 0, %47 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
