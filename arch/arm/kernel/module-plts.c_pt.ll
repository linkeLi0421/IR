; ModuleID = '/llk/IR/arch/arm/kernel/module-plts.c_pt.bc'
source_filename = "../arch/arm/kernel/module-plts.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.elf32_shdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.plt_entries = type { [16 x i32], [16 x i32] }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf32_rel = type { i32, i32 }
%struct.elf32_sym = type { i32, i32, i32, i8, i8, i16 }

@constinit = private unnamed_addr constant [16 x i32] [i32 -442503112, i32 -442503112, i32 -442503112, i32 -442503112, i32 -442503112, i32 -442503112, i32 -442503112, i32 -442503112, i32 -442503112, i32 -442503112, i32 -442503112, i32 -442503112, i32 -442503112, i32 -442503112, i32 -442503112, i32 -442503112], align 4
@.str = private unnamed_addr constant [5 x i8] c".plt\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c".init.plt\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"\013%s: module PLT section(s) missing\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"\013%s: module symtab section missing\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c".init\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_module_plt(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 24
  %5 = load ptr, ptr %4, align 16
  %6 = ptrtoint ptr %5 to i32
  %7 = sub i32 %1, %6
  %8 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 24, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %7, %9
  %11 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 25, i32 1
  %12 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 25, i32 2
  %13 = select i1 %10, ptr %12, ptr %11
  %14 = getelementptr inbounds %struct.mod_plt_sec, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr inbounds %struct.elf32_shdr, ptr %18, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = inttoptr i32 %20 to ptr
  store ptr %21, ptr %14, align 4
  br label %22

22:                                               ; preds = %17, %3
  %23 = phi ptr [ %21, %17 ], [ %15, %3 ]
  %24 = getelementptr inbounds %struct.mod_plt_sec, ptr %13, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = add nsw i32 %25, -1
  %29 = lshr i32 %28, 4
  %30 = getelementptr %struct.plt_entries, ptr %23, i32 %29
  %31 = and i32 %28, 15
  %32 = getelementptr %struct.plt_entries, ptr %23, i32 %29, i32 1, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %2
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = getelementptr [16 x i32], ptr %30, i32 0, i32 %31
  br label %67

37:                                               ; preds = %27
  %38 = and i32 %25, 15
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = getelementptr %struct.plt_entries, ptr %30, i32 %40
  %42 = add nuw i32 %25, 1
  store i32 %42, ptr %24, align 4
  %43 = shl i32 %42, 3
  %44 = load ptr, ptr %13, align 4
  %45 = getelementptr inbounds %struct.elf32_shdr, ptr %44, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = icmp ugt i32 %43, %46
  br i1 %47, label %55, label %56, !prof !8

48:                                               ; preds = %22
  %49 = add nsw i32 %25, 1
  store i32 %49, ptr %24, align 4
  %50 = shl i32 %49, 3
  %51 = load ptr, ptr %13, align 4
  %52 = getelementptr inbounds %struct.elf32_shdr, ptr %51, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = icmp ugt i32 %50, %53
  br i1 %54, label %55, label %57, !prof !8

55:                                               ; preds = %48, %37
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/module-plts.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 88, 0\0A.popsection", ""() #7, !srcloc !9
  unreachable

56:                                               ; preds = %37
  br i1 %39, label %57, label %61

57:                                               ; preds = %56, %48
  %58 = phi ptr [ %41, %56 ], [ %23, %48 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %58, ptr noundef nonnull align 4 dereferenceable(64) @constinit, i32 64, i1 false)
  %59 = getelementptr inbounds i8, ptr %58, i32 64
  store i32 %2, ptr %59, align 4
  %60 = getelementptr inbounds i8, ptr %58, i32 68
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(60) %60, i8 0, i32 60, i1 false)
  br label %63

61:                                               ; preds = %56
  %62 = getelementptr %struct.plt_entries, ptr %41, i32 0, i32 1, i32 %38
  store i32 %2, ptr %62, align 4
  br label %63

63:                                               ; preds = %61, %57
  %64 = phi i32 [ %38, %61 ], [ 0, %57 ]
  %65 = phi ptr [ %41, %61 ], [ %58, %57 ]
  %66 = getelementptr [16 x i32], ptr %65, i32 0, i32 %64
  br label %67

67:                                               ; preds = %63, %35
  %68 = phi ptr [ %36, %35 ], [ %66, %63 ]
  %69 = ptrtoint ptr %68 to i32
  ret i32 %69
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @module_frob_arch_sections(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.elf32_hdr, ptr %0, i32 0, i32 12
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr %struct.elf32_shdr, ptr %1, i32 %7
  %9 = icmp ugt ptr %8, %1
  br i1 %9, label %10, label %37

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.module, ptr %3, i32 0, i32 25, i32 2
  %12 = getelementptr inbounds %struct.module, ptr %3, i32 0, i32 25, i32 1
  br label %13

13:                                               ; preds = %33, %10
  %14 = phi ptr [ null, %10 ], [ %34, %33 ]
  %15 = phi ptr [ %1, %10 ], [ %35, %33 ]
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %2, i32 %16
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str, ptr noundef %17)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store ptr %15, ptr %12, align 4
  br label %33

21:                                               ; preds = %13
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.1, ptr noundef %17)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store ptr %15, ptr %11, align 8
  br label %33

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.elf32_shdr, ptr %15, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.elf32_shdr, ptr %15, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = inttoptr i32 %31 to ptr
  br label %33

33:                                               ; preds = %29, %25, %24, %20
  %34 = phi ptr [ %14, %20 ], [ %14, %24 ], [ %32, %29 ], [ %14, %25 ]
  %35 = getelementptr %struct.elf32_shdr, ptr %15, i32 1
  %36 = icmp ult ptr %35, %8
  br i1 %36, label %13, label %37

37:                                               ; preds = %33, %4
  %38 = phi ptr [ null, %4 ], [ %34, %33 ]
  %39 = getelementptr inbounds %struct.module, ptr %3, i32 0, i32 25, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.module, ptr %3, i32 0, i32 25, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %37
  %47 = getelementptr inbounds %struct.module, ptr %3, i32 0, i32 2
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %47) #8
  br label %130

49:                                               ; preds = %42
  %50 = icmp eq ptr %38, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %49
  %52 = getelementptr %struct.elf32_shdr, ptr %1, i32 1
  %53 = icmp ult ptr %52, %8
  br i1 %53, label %57, label %99

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.module, ptr %3, i32 0, i32 2
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %55) #8
  br label %130

57:                                               ; preds = %92, %51
  %58 = phi ptr [ %95, %92 ], [ %52, %51 ]
  %59 = phi i32 [ %94, %92 ], [ 0, %51 ]
  %60 = phi i32 [ %93, %92 ], [ 0, %51 ]
  %61 = phi ptr [ %58, %92 ], [ %1, %51 ]
  %62 = getelementptr %struct.elf32_shdr, ptr %61, i32 1, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr i8, ptr %0, i32 %63
  %65 = getelementptr %struct.elf32_shdr, ptr %61, i32 1, i32 5
  %66 = load i32, ptr %65, align 4
  %67 = lshr i32 %66, 3
  %68 = getelementptr %struct.elf32_shdr, ptr %61, i32 1, i32 7
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr %struct.elf32_shdr, ptr %1, i32 %69
  %71 = getelementptr %struct.elf32_shdr, ptr %61, i32 1, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 9
  br i1 %73, label %74, label %92

74:                                               ; preds = %57
  %75 = getelementptr %struct.elf32_shdr, ptr %1, i32 %69, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %74
  tail call void @sort(ptr noundef %64, i32 noundef %67, i32 noundef 8, ptr noundef nonnull @cmp_rel, ptr noundef null) #7
  %80 = load i32, ptr %70, align 4
  %81 = getelementptr i8, ptr %2, i32 %80
  %82 = tail call i32 @strncmp(ptr noundef %81, ptr noundef nonnull dereferenceable(6) @.str.4, i32 noundef 5)
  %83 = icmp eq i32 %82, 0
  %84 = getelementptr %struct.elf32_shdr, ptr %1, i32 %69, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = load i32, ptr %68, align 4
  %87 = tail call fastcc i32 @count_plts(ptr noundef nonnull %38, i32 noundef %85, ptr noundef %64, i32 noundef %67, i32 noundef %86)
  br i1 %83, label %90, label %88

88:                                               ; preds = %79
  %89 = add i32 %87, %59
  br label %92

90:                                               ; preds = %79
  %91 = add i32 %87, %60
  br label %92

92:                                               ; preds = %90, %88, %74, %57
  %93 = phi i32 [ %60, %57 ], [ %60, %74 ], [ %60, %88 ], [ %91, %90 ]
  %94 = phi i32 [ %59, %57 ], [ %59, %74 ], [ %89, %88 ], [ %59, %90 ]
  %95 = getelementptr %struct.elf32_shdr, ptr %58, i32 1
  %96 = icmp ult ptr %95, %8
  br i1 %96, label %57, label %97

97:                                               ; preds = %92
  %98 = load ptr, ptr %39, align 4
  br label %99

99:                                               ; preds = %97, %51
  %100 = phi ptr [ %40, %51 ], [ %98, %97 ]
  %101 = phi i32 [ 0, %51 ], [ %93, %97 ]
  %102 = phi i32 [ 0, %51 ], [ %94, %97 ]
  %103 = getelementptr inbounds %struct.elf32_shdr, ptr %100, i32 0, i32 1
  store i32 8, ptr %103, align 4
  %104 = load ptr, ptr %39, align 4
  %105 = getelementptr inbounds %struct.elf32_shdr, ptr %104, i32 0, i32 2
  store i32 6, ptr %105, align 4
  %106 = load ptr, ptr %39, align 4
  %107 = getelementptr inbounds %struct.elf32_shdr, ptr %106, i32 0, i32 8
  store i32 64, ptr %107, align 4
  %108 = shl i32 %102, 3
  %109 = add i32 %108, -1
  %110 = or i32 %109, 127
  %111 = add i32 %110, 1
  %112 = load ptr, ptr %39, align 4
  %113 = getelementptr inbounds %struct.elf32_shdr, ptr %112, i32 0, i32 5
  store i32 %111, ptr %113, align 4
  %114 = getelementptr inbounds %struct.module, ptr %3, i32 0, i32 25, i32 1, i32 2
  store i32 0, ptr %114, align 4
  %115 = getelementptr inbounds %struct.module, ptr %3, i32 0, i32 25, i32 1, i32 1
  store ptr null, ptr %115, align 4
  %116 = load ptr, ptr %43, align 8
  %117 = getelementptr inbounds %struct.elf32_shdr, ptr %116, i32 0, i32 1
  store i32 8, ptr %117, align 4
  %118 = load ptr, ptr %43, align 8
  %119 = getelementptr inbounds %struct.elf32_shdr, ptr %118, i32 0, i32 2
  store i32 6, ptr %119, align 4
  %120 = load ptr, ptr %43, align 8
  %121 = getelementptr inbounds %struct.elf32_shdr, ptr %120, i32 0, i32 8
  store i32 64, ptr %121, align 4
  %122 = shl i32 %101, 3
  %123 = add i32 %122, -1
  %124 = or i32 %123, 127
  %125 = add i32 %124, 1
  %126 = load ptr, ptr %43, align 8
  %127 = getelementptr inbounds %struct.elf32_shdr, ptr %126, i32 0, i32 5
  store i32 %125, ptr %127, align 4
  %128 = getelementptr inbounds %struct.module, ptr %3, i32 0, i32 25, i32 2, i32 2
  store i32 0, ptr %128, align 8
  %129 = getelementptr inbounds %struct.module, ptr %3, i32 0, i32 25, i32 2, i32 1
  store ptr null, ptr %129, align 4
  br label %130

130:                                              ; preds = %99, %54, %46
  %131 = phi i32 [ 0, %99 ], [ -8, %54 ], [ -8, %46 ]
  ret i32 %131
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @cmp_rel(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.elf32_rel, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 255
  %6 = getelementptr inbounds %struct.elf32_rel, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 255
  %9 = icmp ult i32 %5, %8
  %10 = icmp ugt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = lshr i32 %4, 8
  %16 = lshr i32 %7, 8
  %17 = icmp ult i32 %15, %16
  %18 = icmp ugt i32 %15, %16
  %19 = zext i1 %18 to i32
  %20 = select i1 %17, i32 -1, i32 %19
  br label %21

21:                                               ; preds = %14, %2
  %22 = phi i32 [ %20, %14 ], [ %12, %2 ]
  ret i32 %22
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @count_plts(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %86

7:                                                ; preds = %82, %5
  %8 = phi i32 [ %84, %82 ], [ 0, %5 ]
  %9 = phi i32 [ %83, %82 ], [ 0, %5 ]
  %10 = getelementptr %struct.elf32_rel, ptr %2, i32 %8
  %11 = getelementptr %struct.elf32_rel, ptr %2, i32 %8, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = trunc i32 %12 to i8
  switch i8 %13, label %82 [
    i8 28, label %14
    i8 1, label %14
    i8 29, label %14
    i8 10, label %14
    i8 30, label %14
  ]

14:                                               ; preds = %7, %7, %7, %7, %7
  %15 = lshr i32 %12, 8
  %16 = getelementptr %struct.elf32_sym, ptr %0, i32 %15, i32 5
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp eq i32 %18, %4
  br i1 %19, label %82, label %20

20:                                               ; preds = %14
  %21 = load i32, ptr %10, align 4
  %22 = add i32 %21, %1
  %23 = inttoptr i32 %22 to ptr
  switch i8 %13, label %30 [
    i8 10, label %31
    i8 30, label %31
    i8 28, label %24
    i8 1, label %24
    i8 29, label %24
  ]

24:                                               ; preds = %20, %20, %20
  %25 = load i32, ptr %23, align 4
  %26 = and i32 %25, 16777215
  %27 = icmp ne i32 %26, 16777214
  %28 = icmp eq i32 %8, 0
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %80, label %42

30:                                               ; preds = %20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/module-plts.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

31:                                               ; preds = %20, %20
  %32 = load i16, ptr %23, align 2
  %33 = getelementptr i16, ptr %23, i32 1
  %34 = load i16, ptr %33, align 2
  %35 = and i16 %32, 2047
  %36 = icmp ne i16 %35, 2047
  %37 = and i16 %34, 12287
  %38 = icmp ne i16 %37, 12286
  %39 = select i1 %36, i1 true, i1 %38
  %40 = icmp eq i32 %8, 0
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %80, label %42

42:                                               ; preds = %31, %24
  %43 = getelementptr %struct.elf32_rel, ptr %10, i32 -1
  %44 = and i32 %12, 255
  %45 = getelementptr inbounds %struct.elf32_rel, ptr %43, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 255
  %48 = icmp ult i32 %44, %47
  %49 = icmp ugt i32 %44, %47
  %50 = zext i1 %49 to i32
  %51 = select i1 %48, i32 -1, i32 %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %42
  %54 = lshr i32 %46, 8
  %55 = icmp ult i32 %15, %54
  %56 = icmp ugt i32 %15, %54
  %57 = zext i1 %56 to i32
  br i1 %55, label %80, label %58

58:                                               ; preds = %53, %42
  %59 = phi i32 [ %57, %53 ], [ %51, %42 ]
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %58
  %62 = load i32, ptr %43, align 4
  %63 = add i32 %62, %1
  %64 = inttoptr i32 %63 to ptr
  %65 = trunc i32 %46 to i8
  switch i8 %65, label %70 [
    i8 10, label %71
    i8 30, label %71
    i8 28, label %66
    i8 1, label %66
    i8 29, label %66
  ]

66:                                               ; preds = %61, %61, %61
  %67 = load i32, ptr %64, align 4
  %68 = and i32 %67, 16777215
  %69 = icmp eq i32 %68, 16777214
  br i1 %69, label %82, label %80

70:                                               ; preds = %61
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/module-plts.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

71:                                               ; preds = %61, %61
  %72 = load i16, ptr %64, align 2
  %73 = getelementptr i16, ptr %64, i32 1
  %74 = load i16, ptr %73, align 2
  %75 = and i16 %72, 2047
  %76 = icmp eq i16 %75, 2047
  %77 = and i16 %74, 12287
  %78 = icmp eq i16 %77, 12286
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %82, label %80

80:                                               ; preds = %71, %66, %58, %53, %31, %24
  %81 = add i32 %9, 1
  br label %82

82:                                               ; preds = %80, %71, %66, %14, %7
  %83 = phi i32 [ %9, %7 ], [ %9, %14 ], [ %9, %71 ], [ %81, %80 ], [ %9, %66 ]
  %84 = add nuw nsw i32 %8, 1
  %85 = icmp eq i32 %84, %3
  br i1 %85, label %86, label %7

86:                                               ; preds = %82, %5
  %87 = phi i32 [ 0, %5 ], [ %83, %82 ]
  ret i32 %87
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!9 = !{i64 2152659513, i64 2152660006, i64 2152659550, i64 2152659606, i64 2152659640, i64 2152659664, i64 2152659705, i64 2152659726, i64 2152659754, i64 2152659788}
!10 = !{i64 2152661466, i64 2152661960, i64 2152661503, i64 2152661559, i64 2152661593, i64 2152661617, i64 2152661658, i64 2152661679, i64 2152661707, i64 2152661741}
