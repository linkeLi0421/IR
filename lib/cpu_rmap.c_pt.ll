; ModuleID = '/llk/IR/lib/cpu_rmap.c_pt.bc'
source_filename = "../lib/cpu_rmap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_cpu_rmap:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_cpu_rmap\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_cpu_rmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_rmap_put:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_rmap_put\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_rmap_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_rmap_add:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_rmap_add\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_rmap_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_rmap_update:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_rmap_update\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_rmap_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_irq_cpu_rmap:\09\09\09\09\09"
module asm "\09.asciz \09\22free_irq_cpu_rmap\22\09\09\09\09\09"
module asm "__kstrtabns_free_irq_cpu_rmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_cpu_rmap_add:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_cpu_rmap_add\22\09\09\09\09\09"
module asm "__kstrtabns_irq_cpu_rmap_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.cpumask = type { [1 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpu_topology = type { i32, i32, i32, i32, i32, %struct.cpumask, %struct.cpumask, %struct.cpumask, %struct.cpumask }
%struct.cpu_rmap = type { %struct.kref, i16, i16, ptr, [0 x %struct.anon] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.anon = type { i16, i16 }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.irq_glue = type { %struct.irq_affinity_notify, ptr, i16 }

@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_alloc_cpu_rmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_cpu_rmap = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_cpu_rmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_cpu_rmap to i32), ptr @__kstrtab_alloc_cpu_rmap, ptr @__kstrtabns_alloc_cpu_rmap }, section "___ksymtab+alloc_cpu_rmap", align 4
@__kstrtab_cpu_rmap_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_rmap_put = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_rmap_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_rmap_put to i32), ptr @__kstrtab_cpu_rmap_put, ptr @__kstrtabns_cpu_rmap_put }, section "___ksymtab+cpu_rmap_put", align 4
@__kstrtab_cpu_rmap_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_rmap_add = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_rmap_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_rmap_add to i32), ptr @__kstrtab_cpu_rmap_add, ptr @__kstrtabns_cpu_rmap_add }, section "___ksymtab+cpu_rmap_add", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_topology = external dso_local global [16 x %struct.cpu_topology], align 4
@__kstrtab_cpu_rmap_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_rmap_update = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_rmap_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_rmap_update to i32), ptr @__kstrtab_cpu_rmap_update, ptr @__kstrtabns_cpu_rmap_update }, section "___ksymtab+cpu_rmap_update", align 4
@__kstrtab_free_irq_cpu_rmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_irq_cpu_rmap = external dso_local constant [0 x i8], align 1
@__ksymtab_free_irq_cpu_rmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_irq_cpu_rmap to i32), ptr @__kstrtab_free_irq_cpu_rmap, ptr @__kstrtabns_free_irq_cpu_rmap }, section "___ksymtab+free_irq_cpu_rmap", align 4
@__kstrtab_irq_cpu_rmap_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_cpu_rmap_add = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_cpu_rmap_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_cpu_rmap_add to i32), ptr @__kstrtab_irq_cpu_rmap_add, ptr @__kstrtabns_irq_cpu_rmap_add }, section "___ksymtab+irq_cpu_rmap_add", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_alloc_cpu_rmap, ptr @__ksymtab_cpu_rmap_add, ptr @__ksymtab_cpu_rmap_put, ptr @__ksymtab_cpu_rmap_update, ptr @__ksymtab_free_irq_cpu_rmap, ptr @__ksymtab_irq_cpu_rmap_add], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_cpu_rmap(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp ugt i32 %0, 65535
  br i1 %3, label %33, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %6 = shl i32 %5, 2
  %7 = add i32 %6, 15
  %8 = and i32 %7, -4
  %9 = or i32 %1, 256
  %10 = shl nuw nsw i32 %0, 2
  %11 = add i32 %8, %10
  %12 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef %9) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %4
  store volatile i32 1, ptr %12, align 64
  %15 = getelementptr i8, ptr %12, i32 %8
  %16 = getelementptr inbounds %struct.cpu_rmap, ptr %12, i32 0, i32 3
  store ptr %15, ptr %16, align 8
  %17 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #7
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load i32, ptr @nr_cpu_ids, align 4
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i32 [ %28, %22 ], [ %17, %20 ]
  %24 = urem i32 %23, %0
  %25 = trunc i32 %24 to i16
  %26 = getelementptr %struct.cpu_rmap, ptr %12, i32 0, i32 4, i32 %23
  store i16 %25, ptr %26, align 4
  %27 = getelementptr %struct.cpu_rmap, ptr %12, i32 0, i32 4, i32 %23, i32 1
  store i16 -1, ptr %27, align 2
  %28 = tail call i32 @cpumask_next(i32 noundef %23, ptr noundef nonnull @__cpu_possible_mask) #7
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %22, label %30

30:                                               ; preds = %22, %14
  %31 = trunc i32 %0 to i16
  %32 = getelementptr inbounds %struct.cpu_rmap, ptr %12, i32 0, i32 1
  store i16 %31, ptr %32, align 4
  br label %33

33:                                               ; preds = %30, %4, %2
  %34 = phi ptr [ %12, %30 ], [ null, %2 ], [ null, %4 ]
  ret ptr %34
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpu_rmap_put(ptr noundef %0) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #8, !srcloc !10
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %9, label %7, !prof !11

7:                                                ; preds = %5
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #8
  br label %9

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  tail call void @kfree(ptr noundef %0) #8
  br label %9

9:                                                ; preds = %8, %7, %5
  %10 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %7 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpu_rmap_add(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.cpu_rmap, ptr %0, i32 0, i32 2
  %4 = load i16, ptr %3, align 2
  %5 = getelementptr inbounds %struct.cpu_rmap, ptr %0, i32 0, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = icmp ult i16 %4, %6
  br i1 %7, label %9, label %8, !prof !11

8:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/cpu_rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 142, 0\0A.popsection", ""() #8, !srcloc !13
  unreachable

9:                                                ; preds = %2
  %10 = zext i16 %4 to i32
  %11 = add nuw i16 %4, 1
  store i16 %11, ptr %3, align 2
  %12 = getelementptr inbounds %struct.cpu_rmap, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr ptr, ptr %13, i32 %10
  store ptr %1, ptr %14, align 4
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpu_rmap_update(ptr nocapture noundef %0, i16 noundef zeroext %1, ptr noundef %2) #0 {
  %4 = alloca [1 x %struct.cpumask], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4
  %5 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #7
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %23, %3
  %9 = phi i32 [ %6, %3 ], [ %24, %23 ]
  %10 = call i32 @cpumask_next(i32 noundef -1, ptr noundef %2) #7
  %11 = icmp ult i32 %10, %9
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load i32, ptr %4, align 4
  br label %31

14:                                               ; preds = %23, %3
  %15 = phi i32 [ %24, %23 ], [ %6, %3 ]
  %16 = phi i32 [ %25, %23 ], [ %5, %3 ]
  %17 = getelementptr %struct.cpu_rmap, ptr %0, i32 0, i32 4, i32 %16
  %18 = load i16, ptr %17, align 4
  %19 = icmp eq i16 %18, %1
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = getelementptr %struct.cpu_rmap, ptr %0, i32 0, i32 4, i32 %16, i32 1
  store i16 -1, ptr %21, align 2
  call void @_set_bit(i32 noundef %16, ptr noundef nonnull %4) #8
  %22 = load i32, ptr @nr_cpu_ids, align 4
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi i32 [ %22, %20 ], [ %15, %14 ]
  %25 = call i32 @cpumask_next(i32 noundef %16, ptr noundef nonnull @__cpu_online_mask) #7
  %26 = icmp ult i32 %25, %24
  br i1 %26, label %14, label %8

27:                                               ; preds = %31, %8
  %28 = phi i32 [ %9, %8 ], [ %39, %31 ]
  %29 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull %4) #7
  %30 = icmp ult i32 %29, %28
  br i1 %30, label %41, label %109

31:                                               ; preds = %31, %12
  %32 = phi i32 [ %37, %31 ], [ %13, %12 ]
  %33 = phi i32 [ %38, %31 ], [ %10, %12 ]
  %34 = getelementptr %struct.cpu_rmap, ptr %0, i32 0, i32 4, i32 %33
  store i16 %1, ptr %34, align 4
  %35 = getelementptr %struct.cpu_rmap, ptr %0, i32 0, i32 4, i32 %33, i32 1
  store i16 0, ptr %35, align 2
  %36 = load i32, ptr @__cpu_online_mask, align 4
  %37 = or i32 %36, %32
  store i32 %37, ptr %4, align 4
  %38 = call i32 @cpumask_next(i32 noundef %33, ptr noundef %2) #7
  %39 = load i32, ptr @nr_cpu_ids, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %31, label %27

41:                                               ; preds = %105, %27
  %42 = phi i32 [ %107, %105 ], [ %28, %27 ]
  %43 = phi i32 [ %106, %105 ], [ %29, %27 ]
  %44 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %43, i32 5
  %45 = call i32 @cpumask_next(i32 noundef -1, ptr noundef %44) #7
  %46 = icmp ult i32 %45, %42
  br i1 %46, label %47, label %64

47:                                               ; preds = %41
  %48 = getelementptr %struct.cpu_rmap, ptr %0, i32 0, i32 4, i32 %43, i32 1
  %49 = load i16, ptr %48, align 2
  %50 = icmp ugt i16 %49, 1
  br label %51

51:                                               ; preds = %57, %47
  %52 = phi i32 [ %45, %47 ], [ %58, %57 ]
  br i1 %50, label %53, label %57

53:                                               ; preds = %51
  %54 = getelementptr %struct.cpu_rmap, ptr %0, i32 0, i32 4, i32 %52, i32 1
  %55 = load i16, ptr %54, align 2
  %56 = icmp ugt i16 %55, 1
  br i1 %56, label %57, label %60

57:                                               ; preds = %53, %51
  %58 = call i32 @cpumask_next(i32 noundef %52, ptr noundef %44) #7
  %59 = icmp ult i32 %58, %42
  br i1 %59, label %51, label %64

60:                                               ; preds = %53
  %61 = getelementptr %struct.cpu_rmap, ptr %0, i32 0, i32 4, i32 %43
  %62 = getelementptr %struct.cpu_rmap, ptr %0, i32 0, i32 4, i32 %52
  %63 = load i16, ptr %62, align 4
  store i16 %63, ptr %61, align 4
  store i16 1, ptr %48, align 2
  br label %105

64:                                               ; preds = %57, %41
  %65 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %43, i32 6
  %66 = call i32 @cpumask_next(i32 noundef -1, ptr noundef %65) #7
  %67 = icmp ult i32 %66, %42
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = getelementptr %struct.cpu_rmap, ptr %0, i32 0, i32 4, i32 %43, i32 1
  %70 = load i16, ptr %69, align 2
  %71 = icmp ugt i16 %70, 2
  br label %72

72:                                               ; preds = %78, %68
  %73 = phi i32 [ %66, %68 ], [ %79, %78 ]
  br i1 %71, label %74, label %78

74:                                               ; preds = %72
  %75 = getelementptr %struct.cpu_rmap, ptr %0, i32 0, i32 4, i32 %73, i32 1
  %76 = load i16, ptr %75, align 2
  %77 = icmp ugt i16 %76, 2
  br i1 %77, label %78, label %81

78:                                               ; preds = %74, %72
  %79 = call i32 @cpumask_next(i32 noundef %73, ptr noundef %65) #7
  %80 = icmp ult i32 %79, %42
  br i1 %80, label %72, label %85

81:                                               ; preds = %74
  %82 = getelementptr %struct.cpu_rmap, ptr %0, i32 0, i32 4, i32 %43
  %83 = getelementptr %struct.cpu_rmap, ptr %0, i32 0, i32 4, i32 %73
  %84 = load i16, ptr %83, align 4
  store i16 %84, ptr %82, align 4
  store i16 2, ptr %69, align 2
  br label %105

85:                                               ; preds = %78, %64
  %86 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #7
  %87 = icmp ult i32 %86, %42
  br i1 %87, label %88, label %105

88:                                               ; preds = %85
  %89 = getelementptr %struct.cpu_rmap, ptr %0, i32 0, i32 4, i32 %43, i32 1
  %90 = load i16, ptr %89, align 2
  %91 = icmp ugt i16 %90, 3
  br label %92

92:                                               ; preds = %102, %88
  %93 = phi i32 [ %86, %88 ], [ %103, %102 ]
  br i1 %91, label %94, label %102

94:                                               ; preds = %92
  %95 = getelementptr %struct.cpu_rmap, ptr %0, i32 0, i32 4, i32 %93, i32 1
  %96 = load i16, ptr %95, align 2
  %97 = icmp ugt i16 %96, 3
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = getelementptr %struct.cpu_rmap, ptr %0, i32 0, i32 4, i32 %43
  %100 = getelementptr %struct.cpu_rmap, ptr %0, i32 0, i32 4, i32 %93
  %101 = load i16, ptr %100, align 4
  store i16 %101, ptr %99, align 4
  store i16 3, ptr %89, align 2
  br label %105

102:                                              ; preds = %94, %92
  %103 = call i32 @cpumask_next(i32 noundef %93, ptr noundef nonnull @__cpu_online_mask) #7
  %104 = icmp ult i32 %103, %42
  br i1 %104, label %92, label %105

105:                                              ; preds = %102, %98, %85, %81, %60
  %106 = call i32 @cpumask_next(i32 noundef %43, ptr noundef nonnull %4) #7
  %107 = load i32, ptr @nr_cpu_ids, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %41, label %109

109:                                              ; preds = %105, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_irq_cpu_rmap(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.cpu_rmap, ptr %0, i32 0, i32 2
  %5 = load i16, ptr %4, align 2
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cpu_rmap, ptr %0, i32 0, i32 3
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ 0, %7 ], [ %16, %9 ]
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr ptr, ptr %11, i32 %10
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_affinity_notifier(i32 noundef %14, ptr noundef null) #8
  %16 = add nuw nsw i32 %10, 1
  %17 = load i16, ptr %4, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %9, label %20

20:                                               ; preds = %9, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #8, !srcloc !9
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #8, !srcloc !10
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = icmp sgt i32 %22, 0
  br i1 %25, label %28, label %26, !prof !11

26:                                               ; preds = %24
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 3) #8
  br label %28

27:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  tail call void @kfree(ptr noundef nonnull %0) #8
  br label %28

28:                                               ; preds = %27, %26, %24, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_affinity_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_cpu_rmap_add(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 40) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.irq_affinity_notify, ptr %4, i32 0, i32 3
  store ptr @irq_cpu_rmap_notify, ptr %7, align 8
  %8 = getelementptr inbounds %struct.irq_affinity_notify, ptr %4, i32 0, i32 4
  store ptr @irq_cpu_rmap_release, ptr %8, align 4
  %9 = getelementptr inbounds %struct.irq_glue, ptr %4, i32 0, i32 1
  store ptr %0, ptr %9, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #8, !srcloc !14
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13, !prof !15

13:                                               ; preds = %6
  %14 = add i32 %11, 1
  %15 = or i32 %14, %11
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %19, label %17, !prof !11

17:                                               ; preds = %13, %6
  %18 = phi i32 [ 2, %6 ], [ 1, %13 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %18) #8
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.cpu_rmap, ptr %0, i32 0, i32 2
  %21 = load i16, ptr %20, align 2
  %22 = getelementptr inbounds %struct.cpu_rmap, ptr %0, i32 0, i32 1
  %23 = load i16, ptr %22, align 4
  %24 = icmp ult i16 %21, %23
  br i1 %24, label %26, label %25, !prof !11

25:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/cpu_rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 142, 0\0A.popsection", ""() #8, !srcloc !13
  unreachable

26:                                               ; preds = %19
  %27 = zext i16 %21 to i32
  %28 = add nuw i16 %21, 1
  store i16 %28, ptr %20, align 2
  %29 = getelementptr inbounds %struct.cpu_rmap, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr ptr, ptr %30, i32 %27
  store ptr %4, ptr %31, align 4
  %32 = getelementptr inbounds %struct.irq_glue, ptr %4, i32 0, i32 2
  store i16 %21, ptr %32, align 4
  %33 = tail call i32 @irq_set_affinity_notifier(i32 noundef %1, ptr noundef nonnull %4) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %26
  %36 = load ptr, ptr %9, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #8, !srcloc !9
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #8, !srcloc !10
  %38 = extractvalue { i32, i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = icmp sgt i32 %38, 0
  br i1 %41, label %44, label %42, !prof !11

42:                                               ; preds = %40
  tail call void @refcount_warn_saturate(ptr noundef %36, i32 noundef 3) #8
  br label %44

43:                                               ; preds = %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  tail call void @kfree(ptr noundef %36) #8
  br label %44

44:                                               ; preds = %43, %42, %40
  tail call void @kfree(ptr noundef nonnull %4) #8
  br label %45

45:                                               ; preds = %44, %26, %2
  %46 = phi i32 [ -12, %2 ], [ %33, %44 ], [ 0, %26 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @irq_cpu_rmap_notify(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_glue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_glue, ptr %0, i32 0, i32 2
  %6 = load i16, ptr %5, align 4
  %7 = tail call i32 @cpu_rmap_update(ptr noundef %4, i16 noundef zeroext %6, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @irq_cpu_rmap_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 28
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #8, !srcloc !9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #8, !srcloc !10
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %11, label %9, !prof !11

9:                                                ; preds = %7
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef 3) #8
  br label %11

10:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  tail call void @kfree(ptr noundef %3) #8
  br label %11

11:                                               ; preds = %10, %9, %7
  %12 = getelementptr i8, ptr %0, i32 -4
  tail call void @kfree(ptr noundef %12) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!8 = !{i64 2148051629}
!9 = !{i64 447790, i64 2147937761, i64 2147937787, i64 2147937834, i64 2147937856, i64 2147937884, i64 2147937904}
!10 = !{i64 2147953788, i64 2147953820, i64 2147953849, i64 2147953883, i64 2147953914, i64 2147953937}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149257159}
!13 = !{i64 2151121410, i64 2151121889, i64 2151121447, i64 2151121503, i64 2151121537, i64 2151121561, i64 2151121602, i64 2151121623, i64 2151121651, i64 2151121685}
!14 = !{i64 2147951431, i64 2147951463, i64 2147951492, i64 2147951526, i64 2147951557, i64 2147951580}
!15 = !{!"branch_weights", i32 1, i32 2000}
