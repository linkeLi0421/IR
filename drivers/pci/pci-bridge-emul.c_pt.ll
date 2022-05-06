; ModuleID = '/llk/IR/drivers/pci/pci-bridge-emul.c_pt.bc'
source_filename = "../drivers/pci/pci-bridge-emul.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bridge_emul_init:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bridge_emul_init\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bridge_emul_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bridge_emul_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bridge_emul_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bridge_emul_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bridge_emul_conf_read:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bridge_emul_conf_read\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bridge_emul_conf_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bridge_emul_conf_write:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bridge_emul_conf_write\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bridge_emul_conf_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pci_bridge_reg_behavior = type { i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_bridge_emul_conf = type { i16, i16, i16, i16, i32, i8, i8, i8, i8, [2 x i32], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i16, i16, i8, [3 x i8], i32, i8, i8, i16 }
%struct.pci_bridge_emul = type { %struct.pci_bridge_emul_conf, %struct.pci_bridge_emul_pcie_conf, ptr, ptr, ptr, ptr, i8 }
%struct.pci_bridge_emul_pcie_conf = type { i8, i8, i16, i32, i16, i16, i32, i16, i16, i32, i16, i16, i16, i16, i32, i32, i16, i16, i32, i16, i16, i32, i16, i16 }
%struct.pci_bridge_emul_ops = type { ptr, ptr, ptr, ptr }

@pci_regs_behavior = internal constant [16 x %struct.pci_bridge_reg_behavior] [%struct.pci_bridge_reg_behavior { i32 -1, i32 0, i32 0 }, %struct.pci_bridge_reg_behavior { i32 112198328, i32 327, i32 -117440512 }, %struct.pci_bridge_reg_behavior { i32 -1, i32 0, i32 0 }, %struct.pci_bridge_reg_behavior { i32 -1, i32 0, i32 0 }, %struct.pci_bridge_reg_behavior { i32 -1, i32 0, i32 0 }, %struct.pci_bridge_reg_behavior { i32 -1, i32 0, i32 0 }, %struct.pci_bridge_reg_behavior { i32 -16777216, i32 33554431, i32 0 }, %struct.pci_bridge_reg_behavior { i32 111152911, i32 61680, i32 -117440512 }, %struct.pci_bridge_reg_behavior { i32 983055, i32 -983056, i32 0 }, %struct.pci_bridge_reg_behavior { i32 983055, i32 -983056, i32 0 }, %struct.pci_bridge_reg_behavior { i32 0, i32 -1, i32 0 }, %struct.pci_bridge_reg_behavior { i32 0, i32 -1, i32 0 }, %struct.pci_bridge_reg_behavior { i32 0, i32 -1, i32 0 }, %struct.pci_bridge_reg_behavior { i32 255, i32 0, i32 0 }, %struct.pci_bridge_reg_behavior { i32 -1, i32 0, i32 0 }, %struct.pci_bridge_reg_behavior { i32 8453888, i32 191824127, i32 67108864 }], align 4
@pcie_cap_regs_behavior = internal constant [15 x %struct.pci_bridge_reg_behavior] [%struct.pci_bridge_reg_behavior { i32 2147483647, i32 0, i32 0 }, %struct.pci_bridge_reg_behavior { i32 32831, i32 0, i32 0 }, %struct.pci_bridge_reg_behavior { i32 3145728, i32 32767, i32 983040 }, %struct.pci_bridge_reg_behavior { i32 -8650753, i32 0, i32 0 }, %struct.pci_bridge_reg_behavior { i32 1073676288, i32 52987, i32 -1073741824 }, %struct.pci_bridge_reg_behavior { i32 -1, i32 0, i32 0 }, %struct.pci_bridge_reg_behavior { i32 14680064, i32 32767, i32 18808832 }, %struct.pci_bridge_reg_behavior { i32 65536, i32 31, i32 0 }, %struct.pci_bridge_reg_behavior { i32 196607, i32 0, i32 65536 }, %struct.pci_bridge_reg_behavior { i32 -2130706433, i32 0, i32 0 }, %struct.pci_bridge_reg_behavior { i32 0, i32 63487, i32 0 }, %struct.pci_bridge_reg_behavior { i32 -2113929218, i32 0, i32 0 }, %struct.pci_bridge_reg_behavior { i32 1943994368, i32 65535, i32 -2145386496 }, %struct.pci_bridge_reg_behavior zeroinitializer, %struct.pci_bridge_reg_behavior zeroinitializer], align 4
@__kstrtab_pci_bridge_emul_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bridge_emul_init = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bridge_emul_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bridge_emul_init to i32), ptr @__kstrtab_pci_bridge_emul_init, ptr @__kstrtabns_pci_bridge_emul_init }, section "___ksymtab_gpl+pci_bridge_emul_init", align 4
@__kstrtab_pci_bridge_emul_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bridge_emul_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bridge_emul_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bridge_emul_cleanup to i32), ptr @__kstrtab_pci_bridge_emul_cleanup, ptr @__kstrtabns_pci_bridge_emul_cleanup }, section "___ksymtab_gpl+pci_bridge_emul_cleanup", align 4
@__kstrtab_pci_bridge_emul_conf_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bridge_emul_conf_read = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bridge_emul_conf_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bridge_emul_conf_read to i32), ptr @__kstrtab_pci_bridge_emul_conf_read, ptr @__kstrtabns_pci_bridge_emul_conf_read }, section "___ksymtab_gpl+pci_bridge_emul_conf_read", align 4
@__kstrtab_pci_bridge_emul_conf_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bridge_emul_conf_write = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bridge_emul_conf_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bridge_emul_conf_write to i32), ptr @__kstrtab_pci_bridge_emul_conf_write, ptr @__kstrtabns_pci_bridge_emul_conf_write }, section "___ksymtab_gpl+pci_bridge_emul_conf_write", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_pci_bridge_emul_cleanup, ptr @__ksymtab_pci_bridge_emul_conf_read, ptr @__ksymtab_pci_bridge_emul_conf_write, ptr @__ksymtab_pci_bridge_emul_init], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_bridge_emul_init(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = or i32 %4, 100925440
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %0, i32 0, i32 7
  store i8 1, ptr %6, align 2
  %7 = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %0, i32 0, i32 5
  store i8 16, ptr %7, align 4
  %8 = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %0, i32 0, i32 3
  store i16 16, ptr %8, align 2
  %9 = tail call ptr @kmemdup(ptr noundef nonnull @pci_regs_behavior, i32 noundef 192, i32 noundef 3264) #3
  %10 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 3
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %65, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 6
  %14 = load i8, ptr %13, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %57, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %0, i32 0, i32 25
  store i8 64, ptr %17, align 4
  %18 = load i16, ptr %8, align 2
  %19 = or i16 %18, 16
  store i16 %19, ptr %8, align 2
  %20 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 1
  store i8 16, ptr %20, align 4
  %21 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 1, i32 2
  %22 = load i16, ptr %21, align 2
  %23 = or i16 %22, 64
  store i16 %23, ptr %21, align 2
  %24 = tail call ptr @kmemdup(ptr noundef nonnull @pcie_cap_regs_behavior, i32 noundef 180, i32 noundef 3264) #3
  %25 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 4
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  %27 = load ptr, ptr %10, align 4
  br i1 %26, label %28, label %29

28:                                               ; preds = %16
  tail call void @kfree(ptr noundef %27) #3
  br label %65

29:                                               ; preds = %16
  %30 = getelementptr %struct.pci_bridge_reg_behavior, ptr %27, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, -65281
  store i32 %32, ptr %30, align 4
  %33 = load ptr, ptr %10, align 4
  %34 = getelementptr %struct.pci_bridge_reg_behavior, ptr %33, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, -111149753
  store i32 %36, ptr %34, align 4
  %37 = load ptr, ptr %10, align 4
  %38 = getelementptr %struct.pci_bridge_reg_behavior, ptr %37, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 16777215
  store i32 %40, ptr %38, align 4
  %41 = load ptr, ptr %10, align 4
  %42 = getelementptr %struct.pci_bridge_reg_behavior, ptr %41, i32 7
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, -111149057
  store i32 %44, ptr %42, align 4
  %45 = load ptr, ptr %10, align 4
  %46 = getelementptr %struct.pci_bridge_reg_behavior, ptr %45, i32 15, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, -186646529
  store i32 %48, ptr %46, align 4
  %49 = load ptr, ptr %10, align 4
  %50 = getelementptr %struct.pci_bridge_reg_behavior, ptr %49, i32 15
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, -8388609
  store i32 %52, ptr %50, align 4
  %53 = load ptr, ptr %10, align 4
  %54 = getelementptr %struct.pci_bridge_reg_behavior, ptr %53, i32 15, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, -67108865
  store i32 %56, ptr %54, align 4
  br label %57

57:                                               ; preds = %29, %12
  %58 = and i32 %1, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %10, align 4
  %62 = getelementptr %struct.pci_bridge_reg_behavior, ptr %61, i32 9
  store i32 -1, ptr %62, align 4
  %63 = load ptr, ptr %10, align 4
  %64 = getelementptr %struct.pci_bridge_reg_behavior, ptr %63, i32 9, i32 1
  store i32 0, ptr %64, align 4
  br label %65

65:                                               ; preds = %60, %57, %28, %2
  %66 = phi i32 [ -12, %28 ], [ -12, %2 ], [ 0, %60 ], [ 0, %57 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_bridge_emul_cleanup(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 6
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #3
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %10) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_bridge_emul_conf_read(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = and i32 %1, -4
  %6 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 6
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp ne i8 %7, 0
  %9 = icmp sgt i32 %5, 123
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  store i32 0, ptr %3, align 4
  br label %68

12:                                               ; preds = %4
  %13 = xor i1 %8, true
  %14 = icmp sgt i32 %5, 63
  %15 = and i1 %14, %13
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, ptr %3, align 4
  br label %68

17:                                               ; preds = %12
  %18 = and i1 %14, %8
  br i1 %18, label %19, label %26

19:                                               ; preds = %17
  %20 = add nsw i32 %5, -64
  %21 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.pci_bridge_emul_ops, ptr %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 1
  %25 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 4
  br label %30

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 3
  br label %30

30:                                               ; preds = %26, %19
  %31 = phi i32 [ %20, %19 ], [ %5, %26 ]
  %32 = phi ptr [ %23, %19 ], [ %28, %26 ]
  %33 = phi ptr [ %24, %19 ], [ %0, %26 ]
  %34 = phi ptr [ %25, %19 ], [ %29, %26 ]
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %32, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %30
  %39 = tail call i32 %36(ptr noundef %0, i32 noundef %31, ptr noundef %3) #3
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr %3, align 4
  %43 = sdiv i32 %31, 4
  br label %48

44:                                               ; preds = %38, %30
  %45 = sdiv i32 %31, 4
  %46 = getelementptr i32, ptr %33, i32 %45
  %47 = load i32, ptr %46, align 4
  store i32 %47, ptr %3, align 4
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i32 [ %43, %41 ], [ %45, %44 ]
  %50 = phi i32 [ %42, %41 ], [ %47, %44 ]
  %51 = getelementptr %struct.pci_bridge_reg_behavior, ptr %35, i32 %49
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr %struct.pci_bridge_reg_behavior, ptr %35, i32 %49, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = or i32 %54, %52
  %56 = getelementptr %struct.pci_bridge_reg_behavior, ptr %35, i32 %49, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = or i32 %55, %57
  %59 = and i32 %50, %58
  store i32 %59, ptr %3, align 4
  switch i32 %2, label %68 [
    i32 1, label %61
    i32 2, label %60
    i32 4, label %67
  ]

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %48
  %62 = phi i32 [ 65535, %60 ], [ 255, %48 ]
  %63 = shl i32 %1, 3
  %64 = and i32 %63, 24
  %65 = lshr i32 %59, %64
  %66 = and i32 %65, %62
  store i32 %66, ptr %3, align 4
  br label %67

67:                                               ; preds = %61, %48
  br label %68

68:                                               ; preds = %67, %48, %16, %11
  %69 = phi i32 [ 0, %11 ], [ 0, %16 ], [ 0, %67 ], [ 135, %48 ]
  ret i32 %69
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_bridge_emul_conf_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = and i32 %1, -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #3
  store i32 0, ptr %5, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 6
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp ne i8 %8, 0
  %10 = icmp sgt i32 %6, 123
  %11 = and i1 %10, %9
  br i1 %11, label %112, label %12

12:                                               ; preds = %4
  %13 = xor i1 %9, true
  %14 = icmp sgt i32 %6, 63
  %15 = and i1 %14, %13
  br i1 %15, label %112, label %16

16:                                               ; preds = %12
  %17 = shl i32 %1, 3
  %18 = and i32 %17, 24
  switch i32 %2, label %112 [
    i32 4, label %23
    i32 2, label %19
    i32 1, label %21
  ]

19:                                               ; preds = %16
  %20 = shl i32 65535, %18
  br label %23

21:                                               ; preds = %16
  %22 = shl nuw i32 255, %18
  br label %23

23:                                               ; preds = %21, %19, %16
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ], [ -1, %16 ]
  %25 = and i1 %14, %9
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = add nsw i32 %6, -64
  %28 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.pci_bridge_emul_ops, ptr %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 1
  %32 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 4
  br label %37

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 3
  br label %37

37:                                               ; preds = %33, %26
  %38 = phi i32 [ %27, %26 ], [ %6, %33 ]
  %39 = phi ptr [ %30, %26 ], [ %35, %33 ]
  %40 = phi ptr [ %31, %26 ], [ %0, %33 ]
  %41 = phi ptr [ %32, %26 ], [ %36, %33 ]
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %39, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %37
  %46 = call i32 %43(ptr noundef %0, i32 noundef %38, ptr noundef nonnull %5) #3
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = sdiv i32 %38, 4
  br label %53

50:                                               ; preds = %45, %37
  %51 = sdiv i32 %38, 4
  %52 = getelementptr i32, ptr %40, i32 %51
  br label %53

53:                                               ; preds = %50, %48
  %54 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %55 = phi ptr [ %5, %48 ], [ %52, %50 ]
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr %struct.pci_bridge_reg_behavior, ptr %42, i32 %54
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr %struct.pci_bridge_reg_behavior, ptr %42, i32 %54, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = or i32 %60, %58
  %62 = getelementptr %struct.pci_bridge_reg_behavior, ptr %42, i32 %54, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = or i32 %61, %63
  %65 = and i32 %64, %56
  store i32 %65, ptr %5, align 4
  %66 = load i8, ptr %7, align 4, !range !8
  %67 = icmp ne i8 %66, 0
  %68 = and i1 %14, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %53
  %70 = add nsw i32 %6, -64
  %71 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.pci_bridge_emul_ops, ptr %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 1
  %75 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 4
  br label %81

76:                                               ; preds = %53
  %77 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.pci_bridge_emul_ops, ptr %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 3
  br label %81

81:                                               ; preds = %76, %69
  %82 = phi i32 [ %70, %69 ], [ %6, %76 ]
  %83 = phi ptr [ %73, %69 ], [ %79, %76 ]
  %84 = phi ptr [ %74, %69 ], [ %0, %76 ]
  %85 = phi ptr [ %75, %69 ], [ %80, %76 ]
  %86 = load ptr, ptr %85, align 4
  %87 = load ptr, ptr %83, align 4
  %88 = sdiv i32 %82, 4
  %89 = getelementptr %struct.pci_bridge_reg_behavior, ptr %86, i32 %88, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, %24
  %92 = xor i32 %91, -1
  %93 = and i32 %65, %92
  %94 = shl i32 %3, %18
  %95 = and i32 %91, %94
  %96 = or i32 %93, %95
  %97 = getelementptr %struct.pci_bridge_reg_behavior, ptr %86, i32 %88, i32 2
  %98 = load i32, ptr %97, align 4
  %99 = and i32 %24, %94
  %100 = and i32 %99, %98
  %101 = xor i32 %100, -1
  %102 = and i32 %96, %101
  %103 = getelementptr i32, ptr %84, i32 %88
  store i32 %102, ptr %103, align 4
  %104 = icmp eq ptr %87, null
  br i1 %104, label %112, label %105

105:                                              ; preds = %81
  %106 = load i32, ptr %97, align 4
  %107 = xor i32 %106, -1
  %108 = or i32 %24, %107
  %109 = and i32 %108, %102
  %110 = and i32 %99, %106
  %111 = or i32 %109, %110
  call void %87(ptr noundef %0, i32 noundef %82, i32 noundef %65, i32 noundef %111, i32 noundef %24) #3
  br label %112

112:                                              ; preds = %105, %81, %16, %12, %4
  %113 = phi i32 [ 0, %4 ], [ 0, %12 ], [ 135, %16 ], [ 0, %105 ], [ 0, %81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #3
  ret i32 %113
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }

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
