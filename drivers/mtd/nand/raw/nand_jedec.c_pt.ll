; ModuleID = '/llk/IR/drivers/mtd/nand/raw/nand_jedec.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/nand_jedec.c"
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
%struct.nand_jedec_params = type <{ [4 x i8], i16, i16, [3 x i8], i16, i8, [18 x i8], [12 x i8], [20 x i8], [6 x i8], [10 x i8], i32, i16, [6 x i8], i32, i32, i8, i8, i8, i8, i8, i8, [38 x i8], i16, i16, i16, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i8, i16, [36 x i8], i8, i16, [4 x %struct.jedec_ecc_info], [29 x i8], [148 x i8], i16, [88 x i8], i16 }>
%struct.jedec_ecc_info = type { i8, i8, i16, i16, [2 x i8] }

@.str = private unnamed_addr constant [6 x i8] c"JEDEC\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"\013Could not find valid JEDEC parameter page; aborting\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\016unsupported JEDEC version: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\014Invalid codeword size\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_jedec_detect(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %2, i8 0, i32 5, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1
  %4 = call i32 @nand_readid_op(ptr noundef %0, i8 noundef zeroext 64, ptr noundef nonnull %2, i32 noundef 5) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %143

6:                                                ; preds = %1
  %7 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %2, ptr noundef nonnull dereferenceable(5) @.str, i32 5)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %143

9:                                                ; preds = %6
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %11 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 512) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %143, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nand_controller, ptr %15, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.nand_controller_ops, ptr %19, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = call i32 @nand_read_data_op(ptr noundef %0, ptr noundef nonnull %11, i32 noundef 512, i1 noundef zeroext true, i1 noundef zeroext true) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %21, %17, %13
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i1 [ false, %25 ], [ true, %28 ]
  %31 = getelementptr inbounds %struct.nand_jedec_params, ptr %11, i32 0, i32 47
  %32 = call i32 @nand_read_param_page_op(ptr noundef %0, i8 noundef zeroext 64, ptr noundef nonnull %11, i32 noundef 512) #8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %141

34:                                               ; preds = %29
  %35 = call zeroext i16 @onfi_crc16(i16 noundef zeroext 20302, ptr noundef nonnull %11, i32 noundef 510) #8
  %36 = load i16, ptr %31, align 2
  %37 = icmp eq i16 %35, %36
  br i1 %37, label %64, label %38

38:                                               ; preds = %34
  br i1 %30, label %41, label %39

39:                                               ; preds = %38
  %40 = call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef 512, ptr noundef nonnull %11, i32 noundef 512, i1 noundef zeroext true) #8
  br label %43

41:                                               ; preds = %38
  %42 = call i32 @nand_read_data_op(ptr noundef %0, ptr noundef nonnull %11, i32 noundef 512, i1 noundef zeroext true, i1 noundef zeroext false) #8
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %42, %41 ], [ %40, %39 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %141

46:                                               ; preds = %43
  %47 = call zeroext i16 @onfi_crc16(i16 noundef zeroext 20302, ptr noundef nonnull %11, i32 noundef 510) #8
  %48 = load i16, ptr %31, align 2
  %49 = icmp eq i16 %47, %48
  br i1 %49, label %64, label %50

50:                                               ; preds = %46
  br i1 %30, label %53, label %51

51:                                               ; preds = %50
  %52 = call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef 1024, ptr noundef nonnull %11, i32 noundef 512, i1 noundef zeroext true) #8
  br label %55

53:                                               ; preds = %50
  %54 = call i32 @nand_read_data_op(ptr noundef %0, ptr noundef nonnull %11, i32 noundef 512, i1 noundef zeroext true, i1 noundef zeroext false) #8
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %54, %53 ], [ %52, %51 ]
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %141

58:                                               ; preds = %55
  %59 = call zeroext i16 @onfi_crc16(i16 noundef zeroext 20302, ptr noundef nonnull %11, i32 noundef 510) #8
  %60 = load i16, ptr %31, align 2
  %61 = icmp eq i16 %59, %60
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %141

64:                                               ; preds = %58, %46, %34
  %65 = getelementptr inbounds %struct.nand_jedec_params, ptr %11, i32 0, i32 1
  %66 = load i16, ptr %65, align 4
  %67 = zext i16 %66 to i32
  %68 = and i32 %67, 6
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %67) #10
  br label %141

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.nand_jedec_params, ptr %11, i32 0, i32 7
  call void @sanitize_string(ptr noundef %73, i32 noundef 12) #8
  %74 = getelementptr inbounds %struct.nand_jedec_params, ptr %11, i32 0, i32 8
  call void @sanitize_string(ptr noundef %74, i32 noundef 20) #8
  %75 = call noalias ptr @kstrdup(ptr noundef %74, i32 noundef 3264) #8
  %76 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2
  store ptr %75, ptr %76, align 4
  %77 = icmp eq ptr %75, null
  br i1 %77, label %141, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.nand_jedec_params, ptr %11, i32 0, i32 11
  %80 = load i32, ptr %79, align 8
  %81 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 1
  store i32 %80, ptr %81, align 4
  %82 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  store i32 %80, ptr %82, align 4
  %83 = getelementptr inbounds %struct.nand_jedec_params, ptr %11, i32 0, i32 14
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  %86 = call i32 @llvm.ctlz.i32(i32 %84, i1 false) #8, !range !9
  %87 = sub nsw i32 31, %86
  %88 = select i1 %85, i32 -1, i32 %87
  %89 = shl nuw i32 1, %88
  %90 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 3
  store i32 %89, ptr %90, align 4
  %91 = shl i32 %80, %88
  %92 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  store i32 %91, ptr %92, align 8
  %93 = getelementptr inbounds %struct.nand_jedec_params, ptr %11, i32 0, i32 12
  %94 = load i16, ptr %93, align 4
  %95 = zext i16 %94 to i32
  %96 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  store i32 %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  store i32 %95, ptr %97, align 4
  %98 = getelementptr inbounds %struct.nand_jedec_params, ptr %11, i32 0, i32 16
  %99 = load i8, ptr %98, align 4
  %100 = zext i8 %99 to i32
  %101 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 7
  store i32 %100, ptr %101, align 4
  %102 = getelementptr inbounds %struct.nand_jedec_params, ptr %11, i32 0, i32 20
  %103 = load i8, ptr %102, align 8
  %104 = zext i8 %103 to i32
  %105 = shl nuw i32 1, %104
  %106 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 6
  store i32 %105, ptr %106, align 4
  %107 = getelementptr inbounds %struct.nand_jedec_params, ptr %11, i32 0, i32 15
  %108 = load i32, ptr %107, align 8
  %109 = call i32 @llvm.ctlz.i32(i32 %108, i1 false) #8, !range !9
  %110 = lshr i32 -2147483648, %109
  %111 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 4
  store i32 %110, ptr %111, align 4
  %112 = getelementptr inbounds %struct.nand_jedec_params, ptr %11, i32 0, i32 18
  %113 = load i8, ptr %112, align 2
  %114 = zext i8 %113 to i32
  store i32 %114, ptr %3, align 4
  %115 = getelementptr inbounds %struct.nand_jedec_params, ptr %11, i32 0, i32 2
  %116 = load i16, ptr %115, align 2
  %117 = and i16 %116, 1
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %78
  %120 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %121 = load i32, ptr %120, align 8
  %122 = or i32 %121, 2
  store i32 %122, ptr %120, align 8
  br label %123

123:                                              ; preds = %119, %78
  %124 = getelementptr inbounds %struct.nand_jedec_params, ptr %11, i32 0, i32 42, i32 0, i32 1
  %125 = load i8, ptr %124, align 4
  %126 = icmp ugt i8 %125, 8
  br i1 %126, label %127, label %139

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.nand_jedec_params, ptr %11, i32 0, i32 42
  %129 = load i8, ptr %128, align 1
  %130 = zext i8 %129 to i32
  %131 = zext i8 %125 to i32
  %132 = shl nuw i32 1, %131
  %133 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1
  store i32 0, ptr %133, align 4
  %134 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 1
  store i32 0, ptr %134, align 4
  %135 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 2
  store i32 0, ptr %135, align 4
  %136 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 3
  store i32 %130, ptr %136, align 4
  %137 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 4
  store i32 %132, ptr %137, align 4
  %138 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 5
  store i32 0, ptr %138, align 4
  br label %141

139:                                              ; preds = %123
  %140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %141

141:                                              ; preds = %139, %127, %72, %70, %62, %55, %43, %29
  %142 = phi i32 [ 0, %62 ], [ 0, %70 ], [ -12, %72 ], [ 1, %139 ], [ 1, %127 ], [ 0, %55 ], [ 0, %43 ], [ 0, %29 ]
  call void @kfree(ptr noundef nonnull %11) #8
  br label %143

143:                                              ; preds = %141, %9, %6, %1
  %144 = phi i32 [ %142, %141 ], [ 0, %6 ], [ 0, %1 ], [ -12, %9 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #8
  ret i32 %144
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_readid_op(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_data_op(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_param_page_op(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_read_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @onfi_crc16(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sanitize_string(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
