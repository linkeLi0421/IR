; ModuleID = '/llk/IR/drivers/base/regmap/regmap-i2c.c_pt.bc'
source_filename = "../drivers/base/regmap/regmap-i2c.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___regmap_init_i2c:\09\09\09\09\09"
module asm "\09.asciz \09\22__regmap_init_i2c\22\09\09\09\09\09"
module asm "__kstrtabns___regmap_init_i2c:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_regmap_init_i2c:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_regmap_init_i2c\22\09\09\09\09\09"
module asm "__kstrtabns___devm_regmap_init_i2c:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__kstrtab___regmap_init_i2c = external dso_local constant [0 x i8], align 1
@__kstrtabns___regmap_init_i2c = external dso_local constant [0 x i8], align 1
@__ksymtab___regmap_init_i2c = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__regmap_init_i2c to i32), ptr @__kstrtab___regmap_init_i2c, ptr @__kstrtabns___regmap_init_i2c }, section "___ksymtab_gpl+__regmap_init_i2c", align 4
@__kstrtab___devm_regmap_init_i2c = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_regmap_init_i2c = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_regmap_init_i2c = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_regmap_init_i2c to i32), ptr @__kstrtab___devm_regmap_init_i2c, ptr @__kstrtabns___devm_regmap_init_i2c }, section "___ksymtab_gpl+__devm_regmap_init_i2c", align 4
@__UNIQUE_ID_file247 = internal constant [47 x i8] c"regmap_i2c.file=drivers/base/regmap/regmap-i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [23 x i8] c"regmap_i2c.license=GPL\00", section ".modinfo", align 1
@regmap_i2c = internal constant %struct.regmap_bus { i8 0, ptr @regmap_i2c_write, ptr @regmap_i2c_gather_write, ptr null, ptr null, ptr null, ptr @regmap_i2c_read, ptr null, ptr null, ptr null, i8 0, i32 1, i32 1, i32 0, i32 0, i8 0 }, align 4
@regmap_i2c_smbus_i2c_block = internal constant %struct.regmap_bus { i8 0, ptr @regmap_i2c_smbus_i2c_write, ptr null, ptr null, ptr null, ptr null, ptr @regmap_i2c_smbus_i2c_read, ptr null, ptr null, ptr null, i8 0, i32 0, i32 0, i32 32, i32 32, i8 0 }, align 4
@regmap_i2c_smbus_i2c_block_reg16 = internal constant %struct.regmap_bus { i8 0, ptr @regmap_i2c_smbus_i2c_write_reg16, ptr null, ptr null, ptr null, ptr null, ptr @regmap_i2c_smbus_i2c_read_reg16, ptr null, ptr null, ptr null, i8 0, i32 0, i32 0, i32 32, i32 32, i8 0 }, align 4
@regmap_smbus_word = internal constant %struct.regmap_bus { i8 0, ptr null, ptr null, ptr null, ptr @regmap_smbus_word_reg_write, ptr null, ptr null, ptr @regmap_smbus_word_reg_read, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, align 4
@regmap_smbus_word_swapped = internal constant %struct.regmap_bus { i8 0, ptr null, ptr null, ptr null, ptr @regmap_smbus_word_write_swapped, ptr null, ptr null, ptr @regmap_smbus_word_read_swapped, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, align 4
@regmap_smbus_byte = internal constant %struct.regmap_bus { i8 0, ptr null, ptr null, ptr null, ptr @regmap_smbus_byte_reg_write, ptr null, ptr null, ptr @regmap_smbus_byte_reg_read, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_license248, ptr @__ksymtab___devm_regmap_init_i2c, ptr @__ksymtab___regmap_init_i2c], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__regmap_init_i2c(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call fastcc ptr @regmap_get_i2c_bus(ptr noundef %0, ptr noundef %1)
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %9 = tail call ptr @__regmap_init(ptr noundef %8, ptr noundef %5, ptr noundef %8, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi ptr [ %9, %7 ], [ %5, %4 ]
  ret ptr %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @regmap_get_i2c_bus(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.i2c_algorithm, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %4) #5
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %86

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.regmap_config, ptr %1, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 8
  br i1 %15, label %16, label %48

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.regmap_config, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 8
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.i2c_adapter, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.i2c_algorithm, ptr %23, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef %21) #5
  %27 = and i32 %26, 201326592
  %28 = icmp eq i32 %27, 201326592
  br i1 %28, label %86, label %29

29:                                               ; preds = %20
  %30 = load i32, ptr %13, align 4
  %31 = icmp eq i32 %30, 8
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load i32, ptr %17, align 4
  br label %34

34:                                               ; preds = %32, %16
  %35 = phi i32 [ %33, %32 ], [ %18, %16 ]
  %36 = icmp eq i32 %35, 16
  br i1 %36, label %37, label %73

37:                                               ; preds = %34
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds %struct.i2c_adapter, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.i2c_algorithm, ptr %40, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 %42(ptr noundef %38) #5
  %44 = and i32 %43, 201326592
  %45 = icmp eq i32 %44, 201326592
  br i1 %45, label %86, label %46

46:                                               ; preds = %37
  %47 = load i32, ptr %13, align 4
  br label %48

48:                                               ; preds = %46, %29, %12
  %49 = phi i32 [ %30, %29 ], [ %14, %12 ], [ %47, %46 ]
  %50 = icmp eq i32 %49, 16
  br i1 %50, label %51, label %70

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.regmap_config, ptr %1, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 8
  br i1 %54, label %55, label %129

55:                                               ; preds = %51
  %56 = load ptr, ptr %3, align 8
  %57 = getelementptr inbounds %struct.i2c_adapter, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.i2c_algorithm, ptr %58, i32 0, i32 4
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 %60(ptr noundef %56) #5
  %62 = and i32 %61, 6291456
  %63 = icmp eq i32 %62, 6291456
  br i1 %63, label %66, label %64

64:                                               ; preds = %55
  %65 = load i32, ptr %13, align 4
  br label %70

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %68 = tail call i32 @regmap_get_val_endian(ptr noundef %67, ptr noundef null, ptr noundef %1) #5
  switch i32 %68, label %129 [
    i32 2, label %86
    i32 1, label %69
  ]

69:                                               ; preds = %66
  br label %86

70:                                               ; preds = %64, %48
  %71 = phi i32 [ %65, %64 ], [ %49, %48 ]
  %72 = icmp eq i32 %71, 8
  br i1 %72, label %73, label %129

73:                                               ; preds = %70, %34
  %74 = getelementptr inbounds %struct.regmap_config, ptr %1, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 8
  br i1 %76, label %77, label %129

77:                                               ; preds = %73
  %78 = load ptr, ptr %3, align 8
  %79 = getelementptr inbounds %struct.i2c_adapter, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.i2c_algorithm, ptr %80, i32 0, i32 4
  %82 = load ptr, ptr %81, align 4
  %83 = tail call i32 %82(ptr noundef %78) #5
  %84 = and i32 %83, 1572864
  %85 = icmp eq i32 %84, 1572864
  br i1 %85, label %86, label %129

86:                                               ; preds = %77, %69, %66, %37, %20, %2
  %87 = phi ptr [ @regmap_smbus_byte, %77 ], [ @regmap_i2c_smbus_i2c_block_reg16, %37 ], [ @regmap_i2c_smbus_i2c_block, %20 ], [ @regmap_i2c, %2 ], [ @regmap_smbus_word_swapped, %69 ], [ @regmap_smbus_word, %66 ]
  %88 = load ptr, ptr %3, align 8
  %89 = getelementptr inbounds %struct.i2c_adapter, ptr %88, i32 0, i32 17
  %90 = load ptr, ptr %89, align 8
  %91 = icmp eq ptr %90, null
  br i1 %91, label %129, label %92

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.i2c_adapter_quirks, ptr %90, i32 0, i32 3
  %94 = load i16, ptr %93, align 2
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %92
  %97 = zext i16 %94 to i32
  %98 = getelementptr inbounds %struct.regmap_bus, ptr %87, i32 0, i32 13
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  %101 = icmp ugt i32 %99, %97
  %102 = select i1 %100, i1 true, i1 %101
  %103 = select i1 %102, i32 %97, i32 0
  br label %104

104:                                              ; preds = %96, %92
  %105 = phi i32 [ 0, %92 ], [ %103, %96 ]
  %106 = getelementptr inbounds %struct.i2c_adapter_quirks, ptr %90, i32 0, i32 2
  %107 = load i16, ptr %106, align 4
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %104
  %110 = zext i16 %107 to i32
  %111 = getelementptr inbounds %struct.regmap_bus, ptr %87, i32 0, i32 14
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  %114 = icmp ugt i32 %112, %110
  %115 = select i1 %113, i1 true, i1 %114
  %116 = select i1 %115, i32 %110, i32 0
  br label %117

117:                                              ; preds = %109, %104
  %118 = phi i32 [ 0, %104 ], [ %116, %109 ]
  %119 = icmp ne i32 %105, 0
  %120 = icmp ne i32 %118, 0
  %121 = select i1 %119, i1 true, i1 %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = tail call ptr @kmemdup(ptr noundef nonnull %87, i32 noundef 64, i32 noundef 3264) #5
  %124 = icmp eq ptr %123, null
  br i1 %124, label %129, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.regmap_bus, ptr %123, i32 0, i32 15
  store i8 1, ptr %126, align 4
  %127 = getelementptr inbounds %struct.regmap_bus, ptr %123, i32 0, i32 13
  store i32 %105, ptr %127, align 4
  %128 = getelementptr inbounds %struct.regmap_bus, ptr %123, i32 0, i32 14
  store i32 %118, ptr %128, align 4
  br label %129

129:                                              ; preds = %125, %122, %117, %86, %77, %73, %70, %66, %51
  %130 = phi ptr [ %123, %125 ], [ %87, %117 ], [ %87, %86 ], [ inttoptr (i32 -524 to ptr), %77 ], [ inttoptr (i32 -12 to ptr), %122 ], [ inttoptr (i32 -524 to ptr), %66 ], [ inttoptr (i32 -524 to ptr), %73 ], [ inttoptr (i32 -524 to ptr), %70 ], [ inttoptr (i32 -524 to ptr), %51 ]
  ret ptr %130
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call fastcc ptr @regmap_get_i2c_bus(ptr noundef %0, ptr noundef %1)
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %9 = tail call ptr @__devm_regmap_init(ptr noundef %8, ptr noundef %5, ptr noundef %8, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi ptr [ %9, %7 ], [ %5, %4 ]
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_get_val_endian(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_i2c_write(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -32
  %5 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %4, ptr noundef %1, i32 noundef %2, i16 noundef zeroext 0) #5
  %6 = icmp eq i32 %5, %2
  %7 = icmp slt i32 %5, 0
  %8 = select i1 %7, i32 %5, i32 -5
  %9 = select i1 %6, i32 0, i32 %8
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_i2c_gather_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #5
  %7 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false), !annotation !8
  %8 = getelementptr i8, ptr %0, i32 -8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.i2c_algorithm, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %9) #5
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %5
  %18 = getelementptr i8, ptr %0, i32 -30
  %19 = load i16, ptr %18, align 2
  store i16 %19, ptr %6, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %20, align 2
  %21 = trunc i32 %2 to i16
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  store i16 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %1, ptr %23, align 4
  %24 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %6, i32 0, i32 1
  store i16 %19, ptr %24, align 4
  %25 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %6, i32 0, i32 1, i32 1
  store i16 16384, ptr %25, align 2
  %26 = trunc i32 %4 to i16
  %27 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %6, i32 0, i32 1, i32 2
  store i16 %26, ptr %27, align 4
  %28 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %6, i32 0, i32 1, i32 3
  store ptr %3, ptr %28, align 4
  %29 = load ptr, ptr %8, align 8
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %6, i32 noundef 2) #5
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %35, label %32

32:                                               ; preds = %17
  %33 = icmp slt i32 %30, 0
  %34 = select i1 %33, i32 %30, i32 -5
  br label %35

35:                                               ; preds = %32, %17, %5
  %36 = phi i32 [ -524, %5 ], [ 0, %17 ], [ %34, %32 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #5
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_i2c_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #5
  %7 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false), !annotation !8
  %8 = getelementptr i8, ptr %0, i32 -30
  %9 = load i16, ptr %8, align 2
  store i16 %9, ptr %6, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = trunc i32 %2 to i16
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  store i16 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %6, i32 0, i32 1
  store i16 %9, ptr %14, align 4
  %15 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %6, i32 0, i32 1, i32 1
  store i16 1, ptr %15, align 2
  %16 = trunc i32 %4 to i16
  %17 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %6, i32 0, i32 1, i32 2
  store i16 %16, ptr %17, align 4
  %18 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %6, i32 0, i32 1, i32 3
  store ptr %3, ptr %18, align 4
  %19 = getelementptr i8, ptr %0, i32 -8
  %20 = load ptr, ptr %19, align 8
  %21 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %6, i32 noundef 2) #5
  %22 = icmp eq i32 %21, 2
  %23 = icmp slt i32 %21, 0
  %24 = select i1 %23, i32 %21, i32 -5
  %25 = select i1 %22, i32 0, i32 %24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #5
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_i2c_smbus_i2c_write(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 -32
  %7 = load i8, ptr %1, align 1
  %8 = trunc i32 %2 to i8
  %9 = add i8 %8, -1
  %10 = getelementptr i8, ptr %1, i32 1
  %11 = tail call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %6, i8 noundef zeroext %7, i8 noundef zeroext %9, ptr noundef %10) #5
  br label %12

12:                                               ; preds = %5, %3
  %13 = phi i32 [ %11, %5 ], [ -22, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_i2c_smbus_i2c_read(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = icmp ne i32 %2, 1
  %7 = icmp eq i32 %4, 0
  %8 = or i1 %6, %7
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %0, i32 -32
  %11 = load i8, ptr %1, align 1
  %12 = trunc i32 %4 to i8
  %13 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %10, i8 noundef zeroext %11, i8 noundef zeroext %12, ptr noundef %3) #5
  %14 = icmp eq i32 %13, %4
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = icmp slt i32 %13, 0
  %17 = select i1 %16, i32 %13, i32 -5
  br label %18

18:                                               ; preds = %15, %9, %5
  %19 = phi i32 [ -22, %5 ], [ 0, %9 ], [ %17, %15 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_i2c_smbus_i2c_write_reg16(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp ult i32 %2, 2
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 -32
  %7 = load i8, ptr %1, align 1
  %8 = trunc i32 %2 to i8
  %9 = add i8 %8, -1
  %10 = getelementptr i8, ptr %1, i32 1
  %11 = tail call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %6, i8 noundef zeroext %7, i8 noundef zeroext %9, ptr noundef %10) #5
  br label %12

12:                                               ; preds = %5, %3
  %13 = phi i32 [ %11, %5 ], [ -22, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_i2c_smbus_i2c_read_reg16(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #0 {
  %6 = getelementptr i8, ptr %0, i32 -32
  %7 = icmp eq i32 %2, 2
  br i1 %7, label %8, label %32

8:                                                ; preds = %5
  %9 = load i16, ptr %1, align 2
  %10 = trunc i16 %9 to i8
  %11 = lshr i16 %9, 8
  %12 = trunc i16 %11 to i8
  %13 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext %10, i8 noundef zeroext %12) #5
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %21, %8
  %16 = phi ptr [ %23, %21 ], [ %3, %8 ]
  %17 = phi i32 [ %24, %21 ], [ 0, %8 ]
  %18 = phi i32 [ %25, %21 ], [ %4, %8 ]
  %19 = tail call i32 @i2c_smbus_read_byte(ptr noundef %6) #5
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = trunc i32 %19 to i8
  %23 = getelementptr i8, ptr %16, i32 1
  store i8 %22, ptr %16, align 1
  %24 = add nuw i32 %17, 1
  %25 = add i32 %18, -1
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %15, label %27

27:                                               ; preds = %21, %15
  %28 = phi i32 [ %19, %15 ], [ -5, %21 ]
  %29 = phi i32 [ %17, %15 ], [ %24, %21 ]
  %30 = icmp eq i32 %29, %4
  %31 = select i1 %30, i32 0, i32 %28
  br label %32

32:                                               ; preds = %27, %8, %5
  %33 = phi i32 [ -22, %5 ], [ %13, %8 ], [ %31, %27 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_smbus_word_reg_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp ugt i32 %2, 65535
  %5 = icmp ugt i32 %1, 255
  %6 = or i1 %5, %4
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -32
  %9 = trunc i32 %1 to i8
  %10 = trunc i32 %2 to i16
  %11 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %8, i8 noundef zeroext %9, i16 noundef zeroext %10) #5
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %11, %7 ], [ -22, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_smbus_word_reg_read(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = icmp ugt i32 %1, 255
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 -32
  %7 = trunc i32 %1 to i8
  %8 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %6, i8 noundef zeroext %7) #5
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  store i32 %8, ptr %2, align 4
  br label %11

11:                                               ; preds = %10, %5, %3
  %12 = phi i32 [ 0, %10 ], [ -22, %3 ], [ %8, %5 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_smbus_word_write_swapped(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp ugt i32 %2, 65535
  %5 = icmp ugt i32 %1, 255
  %6 = or i1 %5, %4
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -32
  %9 = trunc i32 %1 to i8
  %10 = trunc i32 %2 to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #5
  %12 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %8, i8 noundef zeroext %9, i16 noundef zeroext %11) #5
  br label %13

13:                                               ; preds = %7, %3
  %14 = phi i32 [ %12, %7 ], [ -22, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_smbus_word_read_swapped(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = icmp ugt i32 %1, 255
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 -32
  %7 = trunc i32 %1 to i8
  %8 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %6, i8 noundef zeroext %7) #5
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = trunc i32 %8 to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #5
  %13 = zext i16 %12 to i32
  store i32 %13, ptr %2, align 4
  br label %14

14:                                               ; preds = %10, %5, %3
  %15 = phi i32 [ 0, %10 ], [ -22, %3 ], [ %8, %5 ]
  ret i32 %15
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_smbus_byte_reg_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %1
  %5 = icmp ult i32 %4, 256
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 -32
  %8 = trunc i32 %1 to i8
  %9 = trunc i32 %2 to i8
  %10 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext %8, i8 noundef zeroext %9) #5
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i32 [ %10, %6 ], [ -22, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_smbus_byte_reg_read(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = icmp ugt i32 %1, 255
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 -32
  %7 = trunc i32 %1 to i8
  %8 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext %7) #5
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  store i32 %8, ptr %2, align 4
  br label %11

11:                                               ; preds = %10, %5, %3
  %12 = phi i32 [ 0, %10 ], [ -22, %3 ], [ %8, %5 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"auto-init"}
