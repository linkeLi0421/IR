; ModuleID = '/llk/IR/block/badblocks.c_pt.bc'
source_filename = "../block/badblocks.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_badblocks_check:\09\09\09\09\09"
module asm "\09.asciz \09\22badblocks_check\22\09\09\09\09\09"
module asm "__kstrtabns_badblocks_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_badblocks_set:\09\09\09\09\09"
module asm "\09.asciz \09\22badblocks_set\22\09\09\09\09\09"
module asm "__kstrtabns_badblocks_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_badblocks_clear:\09\09\09\09\09"
module asm "\09.asciz \09\22badblocks_clear\22\09\09\09\09\09"
module asm "__kstrtabns_badblocks_clear:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ack_all_badblocks:\09\09\09\09\09"
module asm "\09.asciz \09\22ack_all_badblocks\22\09\09\09\09\09"
module asm "__kstrtabns_ack_all_badblocks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_badblocks_show:\09\09\09\09\09"
module asm "\09.asciz \09\22badblocks_show\22\09\09\09\09\09"
module asm "__kstrtabns_badblocks_show:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_badblocks_store:\09\09\09\09\09"
module asm "\09.asciz \09\22badblocks_store\22\09\09\09\09\09"
module asm "__kstrtabns_badblocks_store:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_badblocks_init:\09\09\09\09\09"
module asm "\09.asciz \09\22badblocks_init\22\09\09\09\09\09"
module asm "__kstrtabns_badblocks_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_init_badblocks:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_init_badblocks\22\09\09\09\09\09"
module asm "__kstrtabns_devm_init_badblocks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_badblocks_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22badblocks_exit\22\09\09\09\09\09"
module asm "__kstrtabns_badblocks_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.badblocks = type { ptr, i32, i32, i32, ptr, i32, %struct.seqlock_t, i64, i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }

@__kstrtab_badblocks_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_badblocks_check = external dso_local constant [0 x i8], align 1
@__ksymtab_badblocks_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @badblocks_check to i32), ptr @__kstrtab_badblocks_check, ptr @__kstrtabns_badblocks_check }, section "___ksymtab_gpl+badblocks_check", align 4
@__kstrtab_badblocks_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_badblocks_set = external dso_local constant [0 x i8], align 1
@__ksymtab_badblocks_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @badblocks_set to i32), ptr @__kstrtab_badblocks_set, ptr @__kstrtabns_badblocks_set }, section "___ksymtab_gpl+badblocks_set", align 4
@__kstrtab_badblocks_clear = external dso_local constant [0 x i8], align 1
@__kstrtabns_badblocks_clear = external dso_local constant [0 x i8], align 1
@__ksymtab_badblocks_clear = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @badblocks_clear to i32), ptr @__kstrtab_badblocks_clear, ptr @__kstrtabns_badblocks_clear }, section "___ksymtab_gpl+badblocks_clear", align 4
@__kstrtab_ack_all_badblocks = external dso_local constant [0 x i8], align 1
@__kstrtabns_ack_all_badblocks = external dso_local constant [0 x i8], align 1
@__ksymtab_ack_all_badblocks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ack_all_badblocks to i32), ptr @__kstrtab_ack_all_badblocks, ptr @__kstrtabns_ack_all_badblocks }, section "___ksymtab_gpl+ack_all_badblocks", align 4
@.str = private unnamed_addr constant [9 x i8] c"%llu %u\0A\00", align 1
@__kstrtab_badblocks_show = external dso_local constant [0 x i8], align 1
@__kstrtabns_badblocks_show = external dso_local constant [0 x i8], align 1
@__ksymtab_badblocks_show = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @badblocks_show to i32), ptr @__kstrtab_badblocks_show, ptr @__kstrtabns_badblocks_show }, section "___ksymtab_gpl+badblocks_show", align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%llu %d%c\00", align 1
@__kstrtab_badblocks_store = external dso_local constant [0 x i8], align 1
@__kstrtabns_badblocks_store = external dso_local constant [0 x i8], align 1
@__ksymtab_badblocks_store = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @badblocks_store to i32), ptr @__kstrtab_badblocks_store, ptr @__kstrtabns_badblocks_store }, section "___ksymtab_gpl+badblocks_store", align 4
@__kstrtab_badblocks_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_badblocks_init = external dso_local constant [0 x i8], align 1
@__ksymtab_badblocks_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @badblocks_init to i32), ptr @__kstrtab_badblocks_init, ptr @__kstrtabns_badblocks_init }, section "___ksymtab_gpl+badblocks_init", align 4
@__kstrtab_devm_init_badblocks = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_init_badblocks = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_init_badblocks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_init_badblocks to i32), ptr @__kstrtab_devm_init_badblocks, ptr @__kstrtabns_devm_init_badblocks }, section "___ksymtab_gpl+devm_init_badblocks", align 4
@__kstrtab_badblocks_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_badblocks_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_badblocks_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @badblocks_exit to i32), ptr @__kstrtab_badblocks_exit, ptr @__kstrtabns_badblocks_exit }, section "___ksymtab_gpl+badblocks_exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_ack_all_badblocks, ptr @__ksymtab_badblocks_check, ptr @__ksymtab_badblocks_clear, ptr @__ksymtab_badblocks_exit, ptr @__ksymtab_badblocks_init, ptr @__ksymtab_badblocks_set, ptr @__ksymtab_badblocks_show, ptr @__ksymtab_badblocks_store, ptr @__ksymtab_devm_init_badblocks], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @badblocks_check(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = sext i32 %2 to i64
  %9 = add i64 %8, %1
  %10 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %5
  %14 = zext i32 %11 to i64
  %15 = lshr i64 %1, %14
  %16 = shl nsw i32 -1, %11
  %17 = xor i32 %16, -1
  %18 = sext i32 %17 to i64
  %19 = add i64 %9, %18
  %20 = lshr i64 %19, %14
  br label %21

21:                                               ; preds = %13, %5
  %22 = phi i64 [ %20, %13 ], [ %9, %5 ]
  %23 = phi i64 [ %15, %13 ], [ %1, %5 ]
  %24 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 6
  %25 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 1
  br label %26

26:                                               ; preds = %84, %21
  %27 = load volatile i32, ptr %24, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %30, %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !9
  %31 = load volatile i32, ptr %24, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %30

34:                                               ; preds = %30, %26
  %35 = phi i32 [ %27, %26 ], [ %31, %30 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %36 = load i32, ptr %25, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %52

38:                                               ; preds = %38, %34
  %39 = phi i32 [ %49, %38 ], [ 0, %34 ]
  %40 = phi i32 [ %48, %38 ], [ %36, %34 ]
  %41 = add i32 %39, %40
  %42 = sdiv i32 %41, 2
  %43 = getelementptr i64, ptr %7, i32 %42
  %44 = load i64, ptr %43, align 8
  %45 = lshr i64 %44, 9
  %46 = and i64 %45, 18014398509481983
  %47 = icmp ult i64 %46, %22
  %48 = select i1 %47, i32 %40, i32 %42
  %49 = select i1 %47, i32 %42, i32 %39
  %50 = sub i32 %48, %49
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %38, label %52

52:                                               ; preds = %38, %34
  %53 = phi i32 [ %36, %34 ], [ %48, %38 ]
  %54 = phi i32 [ 0, %34 ], [ %49, %38 ]
  %55 = icmp sgt i32 %53, %54
  %56 = icmp sgt i32 %54, -1
  %57 = and i1 %55, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %80, %52
  %59 = phi i32 [ %82, %80 ], [ %54, %52 ]
  %60 = phi i32 [ %81, %80 ], [ 0, %52 ]
  %61 = getelementptr i64, ptr %7, i32 %59
  %62 = load i64, ptr %61, align 8
  %63 = lshr i64 %62, 9
  %64 = and i64 %63, 18014398509481983
  %65 = and i64 %62, 511
  %66 = add nuw nsw i64 %65, 1
  %67 = add nuw nsw i64 %66, %64
  %68 = icmp ugt i64 %67, %23
  br i1 %68, label %69, label %84

69:                                               ; preds = %58
  %70 = icmp ult i64 %64, %22
  br i1 %70, label %71, label %80

71:                                               ; preds = %69
  %72 = icmp eq i32 %60, -1
  %73 = icmp sgt i64 %62, -1
  %74 = select i1 %72, i1 true, i1 %73
  %75 = select i1 %74, i32 -1, i32 1
  store i64 %64, ptr %3, align 8
  %76 = load i64, ptr %61, align 8
  %77 = trunc i64 %76 to i32
  %78 = and i32 %77, 511
  %79 = add nuw nsw i32 %78, 1
  store i32 %79, ptr %4, align 4
  br label %80

80:                                               ; preds = %71, %69
  %81 = phi i32 [ %75, %71 ], [ %60, %69 ]
  %82 = add nsw i32 %59, -1
  %83 = icmp sgt i32 %59, 0
  br i1 %83, label %58, label %84

84:                                               ; preds = %80, %58, %52
  %85 = phi i32 [ 0, %52 ], [ %60, %58 ], [ %81, %80 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %86 = load volatile i32, ptr %24, align 4
  %87 = icmp eq i32 %86, %35
  br i1 %87, label %88, label %26

88:                                               ; preds = %84
  ret i32 %85
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @badblocks_set(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %249, label %8

8:                                                ; preds = %4
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %8
  %11 = sext i32 %2 to i64
  %12 = add i64 %11, %1
  %13 = zext i32 %6 to i64
  %14 = lshr i64 %1, %13
  %15 = shl nsw i32 -1, %6
  %16 = xor i32 %15, -1
  %17 = sext i32 %16 to i64
  %18 = add i64 %12, %17
  %19 = lshr i64 %18, %13
  %20 = sub nsw i64 %19, %14
  %21 = trunc i64 %20 to i32
  br label %22

22:                                               ; preds = %10, %8
  %23 = phi i32 [ %21, %10 ], [ %2, %8 ]
  %24 = phi i64 [ %14, %10 ], [ %1, %8 ]
  %25 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 6
  %26 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 6, i32 1
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #7
  %28 = load i32, ptr %25, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %25, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !12
  %30 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 4
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %49

35:                                               ; preds = %35, %22
  %36 = phi i32 [ %46, %35 ], [ 0, %22 ]
  %37 = phi i32 [ %45, %35 ], [ %33, %22 ]
  %38 = add i32 %36, %37
  %39 = sdiv i32 %38, 2
  %40 = getelementptr i64, ptr %31, i32 %39
  %41 = load i64, ptr %40, align 8
  %42 = lshr i64 %41, 9
  %43 = and i64 %42, 18014398509481983
  %44 = icmp ugt i64 %43, %24
  %45 = select i1 %44, i32 %39, i32 %37
  %46 = select i1 %44, i32 %36, i32 %39
  %47 = sub i32 %45, %46
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %35, label %49

49:                                               ; preds = %35, %22
  %50 = phi i32 [ %33, %22 ], [ %45, %35 ]
  %51 = phi i32 [ 0, %22 ], [ %46, %35 ]
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = getelementptr i64, ptr %31, i32 %51
  %55 = load i64, ptr %54, align 8
  %56 = lshr i64 %55, 9
  %57 = and i64 %56, 18014398509481983
  %58 = icmp ugt i64 %57, %24
  %59 = select i1 %58, i32 %51, i32 %50
  br label %60

60:                                               ; preds = %53, %49
  %61 = phi i32 [ %50, %49 ], [ %59, %53 ]
  %62 = icmp sgt i32 %61, %51
  br i1 %62, label %63, label %107

63:                                               ; preds = %60
  %64 = getelementptr i64, ptr %31, i32 %51
  %65 = load i64, ptr %64, align 8
  %66 = lshr i64 %65, 9
  %67 = and i64 %66, 18014398509481983
  %68 = and i64 %65, 511
  %69 = add nuw nsw i64 %68, 1
  %70 = add nuw nsw i64 %69, %67
  %71 = icmp ult i64 %70, %24
  br i1 %71, label %107, label %72

72:                                               ; preds = %63
  %73 = icmp slt i64 %65, 0
  %74 = icmp ne i64 %24, %67
  %75 = sext i32 %23 to i64
  %76 = add i64 %24, %75
  %77 = icmp ult i64 %76, %70
  %78 = select i1 %74, i1 true, i1 %77
  %79 = icmp ne i32 %3, 0
  %80 = and i1 %79, %73
  %81 = zext i1 %80 to i32
  %82 = select i1 %78, i32 %81, i32 %3
  %83 = tail call i64 @llvm.umax.i64(i64 %70, i64 %76)
  %84 = sub i64 %83, %67
  %85 = icmp ult i64 %84, 513
  br i1 %85, label %86, label %93

86:                                               ; preds = %72
  %87 = shl nuw nsw i64 %67, 9
  %88 = add nsw i64 %84, -1
  %89 = or i64 %88, %87
  %90 = icmp eq i32 %82, 0
  %91 = select i1 %90, i64 0, i64 -9223372036854775808
  %92 = or i64 %89, %91
  store i64 %92, ptr %64, align 8
  br label %103

93:                                               ; preds = %72
  %94 = icmp eq i64 %68, 511
  br i1 %94, label %101, label %95

95:                                               ; preds = %93
  %96 = shl nuw nsw i64 %67, 9
  %97 = icmp eq i32 %82, 0
  %98 = select i1 %97, i64 0, i64 -9223372036854775808
  %99 = or i64 %98, %96
  %100 = or i64 %99, 511
  store i64 %100, ptr %64, align 8
  br label %101

101:                                              ; preds = %95, %93
  %102 = add nuw nsw i64 %67, 512
  br label %103

103:                                              ; preds = %101, %86
  %104 = phi i64 [ %83, %86 ], [ %102, %101 ]
  %105 = sub i64 %83, %104
  %106 = trunc i64 %105 to i32
  br label %107

107:                                              ; preds = %103, %63, %60
  %108 = phi i32 [ %23, %60 ], [ %106, %103 ], [ %23, %63 ]
  %109 = phi i64 [ %24, %60 ], [ %104, %103 ], [ %24, %63 ]
  %110 = icmp eq i32 %108, 0
  br i1 %110, label %154, label %111

111:                                              ; preds = %107
  %112 = load i32, ptr %32, align 4
  %113 = icmp slt i32 %61, %112
  br i1 %113, label %114, label %195

114:                                              ; preds = %111
  %115 = getelementptr i64, ptr %31, i32 %61
  %116 = load i64, ptr %115, align 8
  %117 = lshr i64 %116, 9
  %118 = and i64 %117, 18014398509481983
  %119 = sext i32 %108 to i64
  %120 = add i64 %109, %119
  %121 = icmp ugt i64 %118, %120
  br i1 %121, label %195, label %122

122:                                              ; preds = %114
  %123 = icmp slt i64 %116, 0
  %124 = and i64 %116, 511
  %125 = add nuw nsw i64 %124, 1
  %126 = add nuw nsw i64 %125, %118
  %127 = icmp ugt i64 %126, %120
  %128 = icmp ne i32 %3, 0
  %129 = and i1 %128, %123
  %130 = zext i1 %129 to i32
  %131 = tail call i64 @llvm.umax.i64(i64 %126, i64 %120)
  %132 = select i1 %127, i32 %130, i32 %3
  %133 = sub i64 %131, %109
  %134 = icmp ult i64 %133, 513
  %135 = shl i64 %109, 9
  br i1 %134, label %136, label %142

136:                                              ; preds = %122
  %137 = add nsw i64 %133, -1
  %138 = or i64 %137, %135
  %139 = icmp eq i32 %132, 0
  %140 = select i1 %139, i64 0, i64 -9223372036854775808
  %141 = or i64 %138, %140
  store i64 %141, ptr %115, align 8
  br label %148

142:                                              ; preds = %122
  %143 = icmp eq i32 %132, 0
  %144 = select i1 %143, i64 0, i64 -9223372036854775808
  %145 = or i64 %135, %144
  %146 = or i64 %145, 511
  store i64 %146, ptr %115, align 8
  %147 = add i64 %109, 512
  br label %148

148:                                              ; preds = %142, %136
  %149 = phi i64 [ %131, %136 ], [ %147, %142 ]
  %150 = sub i64 %131, %149
  %151 = trunc i64 %150 to i32
  %152 = add nsw i32 %61, 1
  %153 = icmp eq i32 %151, 0
  br i1 %153, label %154, label %195

154:                                              ; preds = %148, %107
  %155 = phi i64 [ %149, %148 ], [ %109, %107 ]
  %156 = phi i32 [ %61, %148 ], [ %51, %107 ]
  %157 = phi i32 [ %152, %148 ], [ %61, %107 ]
  %158 = load i32, ptr %32, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %223

160:                                              ; preds = %154
  %161 = getelementptr i64, ptr %31, i32 %157
  %162 = load i64, ptr %161, align 8
  %163 = lshr i64 %162, 9
  %164 = and i64 %163, 18014398509481983
  %165 = getelementptr i64, ptr %31, i32 %156
  %166 = load i64, ptr %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = and i32 %167, 511
  %169 = trunc i64 %162 to i32
  %170 = and i32 %169, 511
  %171 = sub i64 %163, %155
  %172 = trunc i64 %171 to i32
  %173 = add nuw nsw i32 %170, 2
  %174 = add nuw nsw i32 %173, %168
  %175 = add i32 %174, %172
  %176 = icmp uge i64 %155, %164
  %177 = icmp slt i32 %175, 512
  %178 = select i1 %176, i1 %177, i1 false
  br i1 %178, label %179, label %223

179:                                              ; preds = %160
  %180 = and i64 %162, -9223372036854775808
  %181 = and i64 %166, 9223372036854775296
  %182 = add i32 %175, -1
  %183 = sext i32 %182 to i64
  %184 = icmp slt i64 %166, 0
  %185 = select i1 %184, i64 %180, i64 0
  %186 = or i64 %185, %181
  %187 = or i64 %186, %183
  store i64 %187, ptr %165, align 8
  %188 = getelementptr i64, ptr %161, i32 1
  %189 = load i32, ptr %32, align 4
  %190 = xor i32 %157, -1
  %191 = add i32 %189, %190
  %192 = shl i32 %191, 3
  tail call void @llvm.memmove.p0.p0.i32(ptr align 8 %161, ptr align 8 %188, i32 %192, i1 false)
  %193 = load i32, ptr %32, align 4
  %194 = add i32 %193, -1
  store i32 %194, ptr %32, align 4
  br label %223

195:                                              ; preds = %148, %114, %111
  %196 = phi i64 [ %149, %148 ], [ %109, %111 ], [ %109, %114 ]
  %197 = phi i32 [ %151, %148 ], [ %108, %111 ], [ %108, %114 ]
  %198 = phi i32 [ %152, %148 ], [ %61, %111 ], [ %61, %114 ]
  %199 = getelementptr i64, ptr %31, i32 %198
  %200 = getelementptr i64, ptr %199, i32 1
  %201 = icmp eq i32 %3, 0
  %202 = select i1 %201, i64 0, i64 -9223372036854775808
  br label %203

203:                                              ; preds = %208, %195
  %204 = phi i64 [ %196, %195 ], [ %221, %208 ]
  %205 = phi i32 [ %197, %195 ], [ %219, %208 ]
  %206 = load i32, ptr %32, align 4
  %207 = icmp ugt i32 %206, 511
  br i1 %207, label %223, label %208

208:                                              ; preds = %203
  %209 = sub i32 %206, %198
  %210 = shl i32 %209, 3
  tail call void @llvm.memmove.p0.p0.i32(ptr align 8 %200, ptr align 8 %199, i32 %210, i1 false)
  %211 = load i32, ptr %32, align 4
  %212 = add i32 %211, 1
  store i32 %212, ptr %32, align 4
  %213 = tail call i32 @llvm.smin.i32(i32 %205, i32 512)
  %214 = shl i64 %204, 9
  %215 = add i32 %213, -1
  %216 = sext i32 %215 to i64
  %217 = or i64 %214, %202
  %218 = or i64 %217, %216
  store i64 %218, ptr %199, align 8
  %219 = sub i32 %205, %213
  %220 = sext i32 %213 to i64
  %221 = add i64 %204, %220
  %222 = icmp eq i32 %219, 0
  br i1 %222, label %223, label %203

223:                                              ; preds = %208, %203, %179, %160, %154
  %224 = phi i32 [ 0, %160 ], [ 0, %179 ], [ 0, %154 ], [ 1, %203 ], [ 0, %208 ]
  %225 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 5
  store i32 1, ptr %225, align 4
  %226 = icmp eq i32 %3, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 2
  store i32 1, ptr %228, align 8
  br label %246

229:                                              ; preds = %223
  %230 = load ptr, ptr %30, align 8
  %231 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 2
  %232 = load i32, ptr %231, align 8
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %246, label %234

234:                                              ; preds = %229
  %235 = load i32, ptr %32, align 4
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %240, label %245

237:                                              ; preds = %240
  %238 = add nuw nsw i32 %241, 1
  %239 = icmp eq i32 %238, %235
  br i1 %239, label %245, label %240

240:                                              ; preds = %237, %234
  %241 = phi i32 [ %238, %237 ], [ 0, %234 ]
  %242 = getelementptr i64, ptr %230, i32 %241
  %243 = load i64, ptr %242, align 8
  %244 = icmp sgt i64 %243, -1
  br i1 %244, label %246, label %237

245:                                              ; preds = %237, %234
  store i32 0, ptr %231, align 8
  br label %246

246:                                              ; preds = %245, %240, %229, %227
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !13
  %247 = load i32, ptr %25, align 4
  %248 = add i32 %247, 1
  store i32 %248, ptr %25, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #7
  br label %249

249:                                              ; preds = %246, %4
  %250 = phi i32 [ %224, %246 ], [ 1, %4 ]
  ret i32 %250
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @badblocks_clear(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = sext i32 %2 to i64
  %5 = add i64 %4, %1
  %6 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = shl nsw i32 -1, %7
  %11 = xor i32 %10, -1
  %12 = sext i32 %11 to i64
  %13 = add i64 %12, %1
  %14 = zext i32 %7 to i64
  %15 = lshr i64 %13, %14
  %16 = lshr i64 %5, %14
  br label %17

17:                                               ; preds = %9, %3
  %18 = phi i64 [ %16, %9 ], [ %5, %3 ]
  %19 = phi i64 [ %15, %9 ], [ %1, %3 ]
  %20 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 6, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %21) #7
  %22 = load i32, ptr %20, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %20, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !12
  %24 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %43

29:                                               ; preds = %29, %17
  %30 = phi i32 [ %40, %29 ], [ %27, %17 ]
  %31 = phi i32 [ %39, %29 ], [ 0, %17 ]
  %32 = add i32 %30, %31
  %33 = sdiv i32 %32, 2
  %34 = getelementptr i64, ptr %25, i32 %33
  %35 = load i64, ptr %34, align 8
  %36 = lshr i64 %35, 9
  %37 = and i64 %36, 18014398509481983
  %38 = icmp ult i64 %37, %18
  %39 = select i1 %38, i32 %33, i32 %31
  %40 = select i1 %38, i32 %30, i32 %33
  %41 = sub i32 %40, %39
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %29, label %43

43:                                               ; preds = %29, %17
  %44 = phi i32 [ 0, %17 ], [ %39, %29 ]
  %45 = phi i32 [ %27, %17 ], [ %40, %29 ]
  %46 = icmp sgt i32 %45, %44
  br i1 %46, label %47, label %126

47:                                               ; preds = %43
  %48 = getelementptr i64, ptr %25, i32 %44
  %49 = load i64, ptr %48, align 8
  %50 = lshr i64 %49, 9
  %51 = and i64 %50, 18014398509481983
  %52 = and i64 %49, 511
  %53 = add nuw nsw i64 %52, 1
  %54 = add nuw nsw i64 %53, %51
  %55 = icmp ugt i64 %54, %18
  %56 = icmp ult i64 %51, %18
  %57 = and i1 %56, %55
  br i1 %57, label %58, label %84

58:                                               ; preds = %47
  %59 = and i64 %49, -9223372036854775808
  %60 = icmp ugt i64 %19, %51
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = icmp ugt i32 %27, 511
  br i1 %62, label %145, label %63

63:                                               ; preds = %61
  %64 = getelementptr i64, ptr %48, i32 1
  %65 = sub i32 %27, %44
  %66 = shl i32 %65, 3
  tail call void @llvm.memmove.p0.p0.i32(ptr align 8 %64, ptr align 8 %48, i32 %66, i1 false)
  %67 = load i32, ptr %26, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %26, align 4
  %69 = shl nuw nsw i64 %51, 9
  %70 = xor i64 %51, -1
  %71 = add i64 %19, %70
  %72 = or i64 %71, %59
  %73 = or i64 %72, %69
  store i64 %73, ptr %48, align 8
  %74 = add nsw i32 %44, 1
  br label %75

75:                                               ; preds = %63, %58
  %76 = phi i32 [ %74, %63 ], [ %44, %58 ]
  %77 = shl i64 %18, 9
  %78 = xor i64 %18, -1
  %79 = add i64 %54, %78
  %80 = or i64 %59, %77
  %81 = or i64 %80, %79
  %82 = getelementptr i64, ptr %25, i32 %76
  store i64 %81, ptr %82, align 8
  %83 = add i32 %76, -1
  br label %84

84:                                               ; preds = %75, %47
  %85 = phi i32 [ %44, %47 ], [ %83, %75 ]
  %86 = phi i32 [ %45, %47 ], [ %76, %75 ]
  %87 = icmp sgt i32 %85, -1
  br i1 %87, label %88, label %112

88:                                               ; preds = %109, %84
  %89 = phi i32 [ %110, %109 ], [ %85, %84 ]
  %90 = getelementptr i64, ptr %25, i32 %89
  %91 = load i64, ptr %90, align 8
  %92 = lshr i64 %91, 9
  %93 = and i64 %92, 18014398509481983
  %94 = and i64 %91, 511
  %95 = add nuw nsw i64 %94, 1
  %96 = add nuw nsw i64 %95, %93
  %97 = icmp ugt i64 %96, %19
  %98 = icmp ult i64 %93, %18
  %99 = select i1 %97, i1 %98, i1 false
  br i1 %99, label %100, label %112

100:                                              ; preds = %88
  %101 = icmp ugt i64 %19, %93
  br i1 %101, label %102, label %109

102:                                              ; preds = %100
  %103 = and i64 %91, -9223372036854775808
  %104 = shl nuw nsw i64 %93, 9
  %105 = xor i64 %93, -1
  %106 = add i64 %19, %105
  %107 = or i64 %106, %103
  %108 = or i64 %107, %104
  store i64 %108, ptr %90, align 8
  br label %112

109:                                              ; preds = %100
  %110 = add nsw i32 %89, -1
  %111 = icmp sgt i32 %89, 0
  br i1 %111, label %88, label %112

112:                                              ; preds = %109, %102, %88, %84
  %113 = phi i32 [ %89, %102 ], [ %85, %84 ], [ %89, %88 ], [ -1, %109 ]
  %114 = sub i32 %86, %113
  %115 = icmp sgt i32 %114, 1
  br i1 %115, label %116, label %126

116:                                              ; preds = %112
  %117 = getelementptr i64, ptr %25, i32 %113
  %118 = getelementptr i64, ptr %117, i32 1
  %119 = getelementptr i64, ptr %25, i32 %86
  %120 = load i32, ptr %26, align 4
  %121 = sub i32 %120, %86
  %122 = shl i32 %121, 3
  tail call void @llvm.memmove.p0.p0.i32(ptr align 8 %118, ptr align 8 %119, i32 %122, i1 false)
  %123 = load i32, ptr %26, align 4
  %124 = sub nsw i32 1, %114
  %125 = add i32 %124, %123
  store i32 %125, ptr %26, align 4
  br label %126

126:                                              ; preds = %116, %112, %43
  %127 = load ptr, ptr %24, align 8
  %128 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 2
  %129 = load i32, ptr %128, align 8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %143, label %131

131:                                              ; preds = %126
  %132 = load i32, ptr %26, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %137, label %142

134:                                              ; preds = %137
  %135 = add nuw nsw i32 %138, 1
  %136 = icmp eq i32 %135, %132
  br i1 %136, label %142, label %137

137:                                              ; preds = %134, %131
  %138 = phi i32 [ %135, %134 ], [ 0, %131 ]
  %139 = getelementptr i64, ptr %127, i32 %138
  %140 = load i64, ptr %139, align 8
  %141 = icmp sgt i64 %140, -1
  br i1 %141, label %143, label %134

142:                                              ; preds = %134, %131
  store i32 0, ptr %128, align 8
  br label %143

143:                                              ; preds = %142, %137, %126
  %144 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 5
  store i32 1, ptr %144, align 4
  br label %145

145:                                              ; preds = %143, %61
  %146 = phi i32 [ 0, %143 ], [ -28, %61 ]
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !13
  %147 = load i32, ptr %20, align 4
  %148 = add i32 %147, 1
  store i32 %148, ptr %20, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %149 = load i16, ptr %21, align 4
  %150 = add i16 %149, 1
  store i16 %150, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  ret i32 %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ack_all_badblocks(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %44, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 6, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %11) #7
  %12 = load i32, ptr %10, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %10, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !12
  %14 = load i32, ptr %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %34, %20
  %26 = phi i32 [ %35, %34 ], [ %23, %20 ]
  %27 = phi i32 [ %36, %34 ], [ 0, %20 ]
  %28 = getelementptr i64, ptr %21, i32 %27
  %29 = load i64, ptr %28, align 8
  %30 = icmp sgt i64 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = or i64 %29, -9223372036854775808
  store i64 %32, ptr %28, align 8
  %33 = load i32, ptr %22, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = phi i32 [ %26, %25 ], [ %33, %31 ]
  %36 = add nuw nsw i32 %27, 1
  %37 = icmp slt i32 %36, %35
  br i1 %37, label %25, label %38

38:                                               ; preds = %34, %20
  store i32 0, ptr %17, align 8
  br label %39

39:                                               ; preds = %38, %16, %9
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !13
  %40 = load i32, ptr %10, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %10, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %42 = load i16, ptr %11, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  br label %44

44:                                               ; preds = %39, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @badblocks_show(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %60, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 1
  %12 = icmp ne i32 %2, 0
  %13 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 2
  br label %14

14:                                               ; preds = %56, %9
  %15 = load volatile i32, ptr %10, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %18, %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !9
  %19 = load volatile i32, ptr %10, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %18

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %15, %14 ], [ %19, %18 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  br label %24

24:                                               ; preds = %49, %22
  %25 = phi i32 [ 0, %22 ], [ %33, %49 ]
  %26 = phi i32 [ 0, %22 ], [ %50, %49 ]
  %27 = load i32, ptr %11, align 4
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %24
  %30 = getelementptr i64, ptr %5, i32 %25
  %31 = load i64, ptr %30, align 8
  %32 = icmp slt i64 %31, 0
  %33 = add nuw nsw i32 %25, 1
  %34 = select i1 %12, i1 %32, i1 false
  br i1 %34, label %49, label %35

35:                                               ; preds = %29
  %36 = trunc i64 %31 to i32
  %37 = and i32 %36, 511
  %38 = add nuw nsw i32 %37, 1
  %39 = lshr i64 %31, 9
  %40 = and i64 %39, 18014398509481983
  %41 = getelementptr i8, ptr %1, i32 %26
  %42 = sub nuw nsw i32 4096, %26
  %43 = load i32, ptr %6, align 4
  %44 = zext i32 %43 to i64
  %45 = shl i64 %40, %44
  %46 = shl i32 %38, %43
  %47 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %41, i32 noundef %42, ptr noundef nonnull @.str, i64 noundef %45, i32 noundef %46)
  %48 = add i32 %47, %26
  br label %49

49:                                               ; preds = %35, %29
  %50 = phi i32 [ %48, %35 ], [ %26, %29 ]
  %51 = icmp ult i32 %50, 4096
  br i1 %51, label %24, label %56

52:                                               ; preds = %24
  %53 = icmp eq i32 %26, 0
  %54 = select i1 %12, i1 %53, i1 false
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 0, ptr %13, align 8
  br label %56

56:                                               ; preds = %55, %52, %49
  %57 = phi i32 [ 0, %55 ], [ %26, %52 ], [ %50, %49 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %58 = load volatile i32, ptr %10, align 4
  %59 = icmp eq i32 %58, %23
  br i1 %59, label %60, label %14

60:                                               ; preds = %56, %3
  %61 = phi i32 [ 0, %3 ], [ %57, %56 ]
  ret i32 %61
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @badblocks_store(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  store i64 0, ptr %5, align 8, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #7
  store i8 0, ptr %7, align 1, !annotation !19
  %8 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7)
  switch i32 %8, label %22 [
    i32 3, label %9
    i32 2, label %12
  ]

9:                                                ; preds = %4
  %10 = load i8, ptr %7, align 1
  %11 = icmp eq i8 %10, 10
  br i1 %11, label %12, label %22

12:                                               ; preds = %9, %4
  %13 = load i32, ptr %6, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = load i64, ptr %5, align 8
  %17 = icmp eq i32 %3, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @badblocks_set(ptr noundef %0, i64 noundef %16, i32 noundef %13, i32 noundef %18)
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 %2, i32 -28
  br label %22

22:                                               ; preds = %15, %12, %9, %4
  %23 = phi i32 [ -22, %9 ], [ -22, %12 ], [ -22, %4 ], [ %21, %15 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret i32 %23
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @badblocks_init(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  store ptr null, ptr %0, align 8
  %3 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = icmp eq i32 %1, 0
  %5 = sext i1 %4 to i32
  %6 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 3
  store i32 %5, ptr %6, align 4
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 4096) #8
  %9 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 4
  store ptr %8, ptr %9, align 8
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, ptr %6, align 4
  br label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 6, i32 1
  store i32 0, ptr %14, align 4
  store i32 0, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %11
  %16 = phi i32 [ 0, %12 ], [ -12, %11 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_init_badblocks(ptr noundef %0, ptr noundef writeonly %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  store ptr %0, ptr %1, align 8
  %5 = getelementptr inbounds %struct.badblocks, ptr %1, i32 0, i32 1
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.badblocks, ptr %1, i32 0, i32 3
  store i32 0, ptr %6, align 4
  %7 = icmp eq ptr %0, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %0, i32 noundef 4096, i32 noundef 3520) #7
  br label %13

10:                                               ; preds = %4
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 4096) #8
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi ptr [ %12, %10 ], [ %9, %8 ]
  %15 = getelementptr inbounds %struct.badblocks, ptr %1, i32 0, i32 4
  store ptr %14, ptr %15, align 8
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 -1, ptr %6, align 4
  br label %21

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.badblocks, ptr %1, i32 0, i32 6
  %20 = getelementptr inbounds %struct.badblocks, ptr %1, i32 0, i32 6, i32 1
  store i32 0, ptr %20, align 4
  store i32 0, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %17, %2
  %22 = phi i32 [ -22, %2 ], [ 0, %18 ], [ -12, %17 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @badblocks_exit(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  br i1 %5, label %9, label %8

8:                                                ; preds = %3
  tail call void @devm_kfree(ptr noundef nonnull %4, ptr noundef %7) #7
  br label %10

9:                                                ; preds = %3
  tail call void @kfree(ptr noundef %7) #7
  br label %10

10:                                               ; preds = %9, %8
  %11 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 4
  store ptr null, ptr %11, align 8
  br label %12

12:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!8 = !{i64 2149037231}
!9 = !{i64 2149037073}
!10 = !{i64 2149037375}
!11 = !{i64 2149027869}
!12 = !{i64 2149028168}
!13 = !{i64 2149028469}
!14 = !{i64 2148909394}
!15 = !{i64 2148905218}
!16 = !{i64 2148905293, i64 2148905320, i64 2148905367, i64 2148905389, i64 2148905417, i64 2148905437}
!17 = !{i64 530039}
!18 = !{i64 2148933538}
!19 = !{!"auto-init"}
