; ModuleID = '/llk/IR/drivers/base/regmap/regmap-mmio.c_pt.bc'
source_filename = "../drivers/base/regmap/regmap-mmio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___regmap_init_mmio_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22__regmap_init_mmio_clk\22\09\09\09\09\09"
module asm "__kstrtabns___regmap_init_mmio_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_regmap_init_mmio_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_regmap_init_mmio_clk\22\09\09\09\09\09"
module asm "__kstrtabns___devm_regmap_init_mmio_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_mmio_attach_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_mmio_attach_clk\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_mmio_attach_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_mmio_detach_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_mmio_detach_clk\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_mmio_detach_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regmap_mmio_context = type { ptr, i32, i8, i8, ptr, ptr, ptr }
%struct.regmap = type { %union.anon, ptr, ptr, ptr, i32, ptr, ptr, %struct.regmap_format, ptr, ptr, ptr, i8, %struct.spinlock, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, i8, ptr, ptr, i32, i32, i32, %struct.list_head, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, ptr, ptr, ptr, i8, i8, ptr, i32, i8, i8, i8, i32, i32, %struct.rb_root, ptr, ptr, i8 }
%union.anon = type { %struct.mutex }
%struct.regmap_format = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rb_root = type { ptr }

@regmap_mmio = internal constant %struct.regmap_bus { i8 1, ptr null, ptr null, ptr null, ptr @regmap_mmio_write, ptr null, ptr null, ptr @regmap_mmio_read, ptr @regmap_mmio_free_context, ptr null, i8 0, i32 0, i32 2, i32 0, i32 0, i8 0 }, align 4
@__kstrtab___regmap_init_mmio_clk = external dso_local constant [0 x i8], align 1
@__kstrtabns___regmap_init_mmio_clk = external dso_local constant [0 x i8], align 1
@__ksymtab___regmap_init_mmio_clk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__regmap_init_mmio_clk to i32), ptr @__kstrtab___regmap_init_mmio_clk, ptr @__kstrtabns___regmap_init_mmio_clk }, section "___ksymtab_gpl+__regmap_init_mmio_clk", align 4
@__kstrtab___devm_regmap_init_mmio_clk = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_regmap_init_mmio_clk = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_regmap_init_mmio_clk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_regmap_init_mmio_clk to i32), ptr @__kstrtab___devm_regmap_init_mmio_clk, ptr @__kstrtabns___devm_regmap_init_mmio_clk }, section "___ksymtab_gpl+__devm_regmap_init_mmio_clk", align 4
@__kstrtab_regmap_mmio_attach_clk = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_mmio_attach_clk = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_mmio_attach_clk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_mmio_attach_clk to i32), ptr @__kstrtab_regmap_mmio_attach_clk, ptr @__kstrtabns_regmap_mmio_attach_clk }, section "___ksymtab_gpl+regmap_mmio_attach_clk", align 4
@__kstrtab_regmap_mmio_detach_clk = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_mmio_detach_clk = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_mmio_detach_clk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_mmio_detach_clk to i32), ptr @__kstrtab_regmap_mmio_detach_clk, ptr @__kstrtabns_regmap_mmio_detach_clk }, section "___ksymtab_gpl+regmap_mmio_detach_clk", align 4
@__UNIQUE_ID_file206 = internal constant [49 x i8] c"regmap_mmio.file=drivers/base/regmap/regmap-mmio\00", section ".modinfo", align 1
@__UNIQUE_ID_license207 = internal constant [27 x i8] c"regmap_mmio.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_file206, ptr @__UNIQUE_ID_license207, ptr @__ksymtab___devm_regmap_init_mmio_clk, ptr @__ksymtab___regmap_init_mmio_clk, ptr @__ksymtab_regmap_mmio_attach_clk, ptr @__ksymtab_regmap_mmio_detach_clk], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__regmap_init_mmio_clk(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = tail call fastcc ptr @regmap_mmio_gen_context(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @__regmap_init(ptr noundef %0, ptr noundef nonnull @regmap_mmio, ptr noundef %7, ptr noundef %3, ptr noundef %4, ptr noundef %5) #4
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi ptr [ %10, %9 ], [ %7, %6 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @regmap_mmio_gen_context(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %80 [
    i32 8, label %7
    i32 16, label %7
    i32 32, label %7
  ]

7:                                                ; preds = %4, %4, %4
  %8 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %80

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %80 [
    i32 8, label %17
    i32 16, label %15
    i32 32, label %14
  ]

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i32 [ 4, %14 ], [ 2, %11 ]
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i32 [ 0, %11 ], [ %16, %15 ]
  %19 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp slt i32 %20, %18
  br i1 %21, label %80, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 24) #5
  %25 = icmp eq ptr %24, null
  br i1 %25, label %80, label %26

26:                                               ; preds = %22
  store ptr %2, ptr %24, align 8
  %27 = load i32, ptr %12, align 4
  %28 = sdiv i32 %27, 8
  %29 = getelementptr inbounds %struct.regmap_mmio_context, ptr %24, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 36
  %31 = load i8, ptr %30, align 1, !range !8
  %32 = getelementptr inbounds %struct.regmap_mmio_context, ptr %24, i32 0, i32 2
  store i8 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.regmap_mmio_context, ptr %24, i32 0, i32 4
  store ptr inttoptr (i32 -19 to ptr), ptr %33, align 4
  %34 = tail call i32 @regmap_get_val_endian(ptr noundef %0, ptr noundef nonnull @regmap_mmio, ptr noundef %3) #4
  switch i32 %34, label %77 [
    i32 0, label %35
    i32 2, label %35
    i32 3, label %35
    i32 1, label %55
  ]

35:                                               ; preds = %26, %26, %26
  %36 = load i32, ptr %12, align 4
  switch i32 %36, label %77 [
    i32 8, label %37
    i32 16, label %43
    i32 32, label %49
  ]

37:                                               ; preds = %35
  %38 = load i8, ptr %32, align 8, !range !8
  %39 = icmp eq i8 %38, 0
  %40 = getelementptr inbounds %struct.regmap_mmio_context, ptr %24, i32 0, i32 6
  br i1 %39, label %42, label %41

41:                                               ; preds = %37
  store ptr @regmap_mmio_read8_relaxed, ptr %40, align 4
  br label %63

42:                                               ; preds = %37
  store ptr @regmap_mmio_read8, ptr %40, align 4
  br label %63

43:                                               ; preds = %35
  %44 = load i8, ptr %32, align 8, !range !8
  %45 = icmp eq i8 %44, 0
  %46 = getelementptr inbounds %struct.regmap_mmio_context, ptr %24, i32 0, i32 6
  br i1 %45, label %48, label %47

47:                                               ; preds = %43
  store ptr @regmap_mmio_read16le_relaxed, ptr %46, align 4
  br label %63

48:                                               ; preds = %43
  store ptr @regmap_mmio_read16le, ptr %46, align 4
  br label %63

49:                                               ; preds = %35
  %50 = load i8, ptr %32, align 8, !range !8
  %51 = icmp eq i8 %50, 0
  %52 = getelementptr inbounds %struct.regmap_mmio_context, ptr %24, i32 0, i32 6
  br i1 %51, label %54, label %53

53:                                               ; preds = %49
  store ptr @regmap_mmio_read32le_relaxed, ptr %52, align 4
  br label %63

54:                                               ; preds = %49
  store ptr @regmap_mmio_read32le, ptr %52, align 4
  br label %63

55:                                               ; preds = %26
  %56 = load i32, ptr %12, align 4
  switch i32 %56, label %77 [
    i32 8, label %57
    i32 16, label %59
    i32 32, label %61
  ]

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.regmap_mmio_context, ptr %24, i32 0, i32 6
  store ptr @regmap_mmio_read8, ptr %58, align 4
  br label %63

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.regmap_mmio_context, ptr %24, i32 0, i32 6
  store ptr @regmap_mmio_read16be, ptr %60, align 4
  br label %63

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.regmap_mmio_context, ptr %24, i32 0, i32 6
  store ptr @regmap_mmio_read32be, ptr %62, align 4
  br label %63

63:                                               ; preds = %61, %59, %57, %54, %53, %48, %47, %42, %41
  %64 = phi ptr [ @regmap_mmio_write8, %57 ], [ @regmap_mmio_write16be, %59 ], [ @regmap_mmio_write32be, %61 ], [ @regmap_mmio_write8, %42 ], [ @regmap_mmio_write8_relaxed, %41 ], [ @regmap_mmio_write16le, %48 ], [ @regmap_mmio_write16le_relaxed, %47 ], [ @regmap_mmio_write32le, %54 ], [ @regmap_mmio_write32le_relaxed, %53 ]
  %65 = getelementptr inbounds %struct.regmap_mmio_context, ptr %24, i32 0, i32 5
  store ptr %64, ptr %65, align 8
  %66 = icmp eq ptr %1, null
  br i1 %66, label %80, label %67

67:                                               ; preds = %63
  %68 = tail call ptr @clk_get(ptr noundef %0, ptr noundef nonnull %1) #4
  store ptr %68, ptr %33, align 4
  %69 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = ptrtoint ptr %68 to i32
  br label %77

72:                                               ; preds = %67
  %73 = tail call i32 @clk_prepare(ptr noundef %68) #4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load ptr, ptr %33, align 4
  tail call void @clk_put(ptr noundef %76) #4
  br label %77

77:                                               ; preds = %75, %70, %55, %35, %26
  %78 = phi i32 [ %71, %70 ], [ %73, %75 ], [ -22, %35 ], [ -22, %55 ], [ -22, %26 ]
  tail call void @kfree(ptr noundef nonnull %24) #4
  %79 = inttoptr i32 %78 to ptr
  br label %80

80:                                               ; preds = %77, %72, %63, %22, %17, %11, %7, %4
  %81 = phi ptr [ %79, %77 ], [ %24, %63 ], [ %24, %72 ], [ inttoptr (i32 -22 to ptr), %7 ], [ inttoptr (i32 -22 to ptr), %17 ], [ inttoptr (i32 -12 to ptr), %22 ], [ inttoptr (i32 -22 to ptr), %4 ], [ inttoptr (i32 -22 to ptr), %11 ]
  ret ptr %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = tail call fastcc ptr @regmap_mmio_gen_context(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @__devm_regmap_init(ptr noundef %0, ptr noundef nonnull @regmap_mmio, ptr noundef %7, ptr noundef %3, ptr noundef %4, ptr noundef %5) #4
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi ptr [ %10, %9 ], [ %7, %6 ]
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_mmio_attach_clk(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.regmap_mmio_context, ptr %4, i32 0, i32 4
  store ptr %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.regmap_mmio_context, ptr %4, i32 0, i32 3
  store i8 1, ptr %6, align 1
  %7 = tail call i32 @clk_prepare(ptr noundef %1) #4
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @regmap_mmio_detach_clk(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.regmap_mmio_context, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_unprepare(ptr noundef %5) #4
  %6 = getelementptr inbounds %struct.regmap_mmio_context, ptr %3, i32 0, i32 3
  store i8 0, ptr %6, align 1
  store ptr null, ptr %4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_get_val_endian(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_mmio_read8_relaxed(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr i8, ptr %3, i32 %1
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #4, !srcloc !9
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @regmap_mmio_write8_relaxed(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = trunc i32 %2 to i8
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr i8, ptr %5, i32 %1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 %4) #4, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_mmio_read8(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr i8, ptr %3, i32 %1
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @regmap_mmio_write8(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %4 = trunc i32 %2 to i8
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr i8, ptr %5, i32 %1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 %4) #4, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_mmio_read16le_relaxed(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr i8, ptr %3, i32 %1
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %4) #4, !srcloc !13
  %6 = zext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @regmap_mmio_write16le_relaxed(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = trunc i32 %2 to i16
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr i8, ptr %5, i32 %1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %6, i16 %4) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_mmio_read16le(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr i8, ptr %3, i32 %1
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %4) #4, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !15
  %6 = zext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @regmap_mmio_write16le(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %4 = trunc i32 %2 to i16
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr i8, ptr %5, i32 %1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %6, i16 %4) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_mmio_read32le_relaxed(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr i8, ptr %3, i32 %1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !17
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @regmap_mmio_write32le_relaxed(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr i8, ptr %4, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %2) #4, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_mmio_read32le(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr i8, ptr %3, i32 %1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !19
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @regmap_mmio_write32le(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr i8, ptr %4, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %2) #4, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_mmio_read16be(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr i8, ptr %3, i32 %1
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %4) #4, !srcloc !13
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !21
  %7 = zext i16 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @regmap_mmio_write16be(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %4 = trunc i32 %2 to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr i8, ptr %6, i32 %1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 %5) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_mmio_read32be(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr i8, ptr %3, i32 %1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !17
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !23
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @regmap_mmio_write32be(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %4 = tail call i32 @llvm.bswap.i32(i32 %2)
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr i8, ptr %5, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #4, !srcloc !18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_mmio_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.regmap_mmio_context, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @clk_enable(ptr noundef %5) #4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct.regmap_mmio_context, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4
  %13 = load ptr, ptr %4, align 4
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @clk_disable(ptr noundef %13) #4
  br label %16

16:                                               ; preds = %15, %10, %7
  %17 = phi i32 [ %8, %7 ], [ 0, %15 ], [ 0, %10 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_mmio_read(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.regmap_mmio_context, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @clk_enable(ptr noundef %5) #4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct.regmap_mmio_context, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %0, i32 noundef %1) #4
  store i32 %13, ptr %2, align 4
  %14 = load ptr, ptr %4, align 4
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void @clk_disable(ptr noundef %14) #4
  br label %17

17:                                               ; preds = %16, %10, %7
  %18 = phi i32 [ %8, %7 ], [ 0, %16 ], [ 0, %10 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @regmap_mmio_free_context(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.regmap_mmio_context, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  tail call void @clk_unprepare(ptr noundef %3) #4
  %6 = getelementptr inbounds %struct.regmap_mmio_context, ptr %0, i32 0, i32 3
  %7 = load i8, ptr %6, align 1, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = load ptr, ptr %2, align 4
  tail call void @clk_put(ptr noundef %10) #4
  br label %11

11:                                               ; preds = %9, %5, %1
  tail call void @kfree(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(2) }

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
!9 = !{i64 1727040}
!10 = !{i64 1726645}
!11 = !{i64 2152116150}
!12 = !{i64 2152114337}
!13 = !{i64 1726422}
!14 = !{i64 1726222}
!15 = !{i64 2152116543}
!16 = !{i64 2152114624}
!17 = !{i64 1727260}
!18 = !{i64 1726842}
!19 = !{i64 2152117453}
!20 = !{i64 2152115379}
!21 = !{i64 2152117125}
!22 = !{i64 2152115086}
!23 = !{i64 2152118035}
!24 = !{i64 2152115841}
