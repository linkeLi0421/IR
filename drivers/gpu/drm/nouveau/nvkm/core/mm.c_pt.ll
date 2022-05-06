; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/core/mm.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/mm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"\013nvkm: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"\013nvkm: node list:\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"\013nvkm: \09%08x %08x %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"\013nvkm: free list:\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"mm not clean!\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_mm_dump(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %1) #5
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #5
  %5 = load ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %19, label %7

7:                                                ; preds = %7, %2
  %8 = phi ptr [ %17, %7 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.nvkm_mm_node, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_mm_node, ptr %8, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_mm_node, ptr %8, i32 0, i32 4
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %10, i32 noundef %12, i32 noundef %15) #5
  %17 = load ptr, ptr %8, align 4
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %7

19:                                               ; preds = %7, %2
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #5
  %21 = getelementptr inbounds %struct.nvkm_mm, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %36, label %24

24:                                               ; preds = %24, %19
  %25 = phi ptr [ %34, %24 ], [ %22, %19 ]
  %26 = getelementptr i8, ptr %25, i32 16
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %25, i32 20
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr i8, ptr %25, i32 13
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %27, i32 noundef %29, i32 noundef %32) #5
  %34 = load ptr, ptr %25, align 4
  %35 = icmp eq ptr %34, %21
  br i1 %35, label %36, label %24

36:                                               ; preds = %24, %19
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_mm_free(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %79, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %0
  %9 = load ptr, ptr %3, align 4
  %10 = icmp eq ptr %9, %0
  %11 = select i1 %10, ptr null, ptr %9
  %12 = icmp eq ptr %7, null
  %13 = or i1 %8, %12
  br i1 %13, label %27, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.nvkm_mm_node, ptr %7, i32 0, i32 4
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.nvkm_mm_node, ptr %3, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_mm_node, ptr %7, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %20
  store i32 %23, ptr %21, align 4
  %24 = load ptr, ptr %6, align 4
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %24, ptr %26, align 4
  store volatile ptr %25, ptr %24, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %6, align 4
  tail call void @kfree(ptr noundef nonnull %3) #6
  br label %27

27:                                               ; preds = %18, %14, %5
  %28 = phi ptr [ %7, %18 ], [ %3, %14 ], [ %3, %5 ]
  %29 = icmp eq ptr %11, null
  br i1 %29, label %57, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.nvkm_mm_node, ptr %11, i32 0, i32 4
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.nvkm_mm_node, ptr %28, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nvkm_mm_node, ptr %11, i32 0, i32 5
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.nvkm_mm_node, ptr %28, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nvkm_mm_node, ptr %11, i32 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %39
  store i32 %42, ptr %40, align 4
  %43 = getelementptr inbounds %struct.nvkm_mm_node, ptr %28, i32 0, i32 4
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.nvkm_mm_node, ptr %28, i32 0, i32 1
  %48 = getelementptr inbounds %struct.nvkm_mm_node, ptr %28, i32 0, i32 1, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %47, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %49, ptr %51, align 4
  store volatile ptr %50, ptr %49, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %47, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %48, align 4
  br label %52

52:                                               ; preds = %46, %34
  %53 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %28, align 4
  %56 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %54, ptr %56, align 4
  store volatile ptr %55, ptr %54, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %53, align 4
  tail call void @kfree(ptr noundef nonnull %28) #6
  br label %79

57:                                               ; preds = %30, %27
  %58 = getelementptr inbounds %struct.nvkm_mm_node, ptr %28, i32 0, i32 4
  %59 = load i8, ptr %58, align 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %79, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.nvkm_mm, ptr %0, i32 0, i32 1
  %63 = getelementptr inbounds %struct.nvkm_mm_node, ptr %28, i32 0, i32 5
  br label %64

64:                                               ; preds = %68, %61
  %65 = phi ptr [ %62, %61 ], [ %66, %68 ]
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %62
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = load i32, ptr %63, align 4
  %70 = getelementptr i8, ptr %66, i32 16
  %71 = load i32, ptr %70, align 4
  %72 = icmp ult i32 %69, %71
  br i1 %72, label %73, label %64

73:                                               ; preds = %68, %64
  %74 = phi ptr [ %66, %68 ], [ %62, %64 ]
  %75 = getelementptr inbounds %struct.nvkm_mm_node, ptr %28, i32 0, i32 1
  %76 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  store ptr %75, ptr %76, align 4
  store ptr %74, ptr %75, align 4
  %78 = getelementptr inbounds %struct.nvkm_mm_node, ptr %28, i32 0, i32 1, i32 1
  store ptr %77, ptr %78, align 4
  store volatile ptr %75, ptr %77, align 4
  store i8 0, ptr %58, align 1
  br label %79

79:                                               ; preds = %73, %57, %52, %2
  store ptr null, ptr %1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_mm_head(ptr noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = add i32 %5, -1
  %9 = add i8 %2, 1
  %10 = icmp ult i8 %9, 2
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/core/mm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.nvkm_mm, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %151, label %16

16:                                               ; preds = %12
  %17 = icmp eq i8 %1, 0
  %18 = getelementptr inbounds %struct.nvkm_mm, ptr %0, i32 0, i32 2
  %19 = sub i32 0, %5
  br label %20

20:                                               ; preds = %148, %16
  %21 = phi ptr [ %14, %16 ], [ %149, %148 ]
  %22 = getelementptr i8, ptr %21, i32 -8
  br i1 %17, label %27, label %23, !prof !10

23:                                               ; preds = %20
  %24 = getelementptr i8, ptr %21, i32 12
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, %1
  br i1 %26, label %27, label %148

27:                                               ; preds = %23, %20
  %28 = getelementptr i8, ptr %21, i32 16
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr i8, ptr %21, i32 20
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %29
  %33 = getelementptr i8, ptr %21, i32 -4
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %0
  %36 = icmp eq ptr %34, null
  %37 = or i1 %35, %36
  br i1 %37, label %48, label %38

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.nvkm_mm_node, ptr %34, i32 0, i32 4
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, %2
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr %18, align 4
  %44 = add i32 %29, -1
  %45 = add i32 %44, %43
  %46 = urem i32 %45, %43
  %47 = sub i32 %45, %46
  br label %48

48:                                               ; preds = %42, %38, %27
  %49 = phi i32 [ %47, %42 ], [ %29, %38 ], [ %29, %27 ]
  %50 = load ptr, ptr %22, align 4
  %51 = icmp eq ptr %50, %0
  %52 = icmp eq ptr %50, null
  %53 = or i1 %51, %52
  br i1 %53, label %62, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.nvkm_mm_node, ptr %50, i32 0, i32 4
  %56 = load i8, ptr %55, align 1
  %57 = icmp eq i8 %56, %2
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, ptr %18, align 4
  %60 = urem i32 %32, %59
  %61 = sub i32 %32, %60
  br label %62

62:                                               ; preds = %58, %54, %48
  %63 = phi i32 [ %61, %58 ], [ %32, %54 ], [ %32, %48 ]
  %64 = add i32 %8, %49
  %65 = and i32 %64, %19
  %66 = and i32 %63, %19
  %67 = icmp ult i32 %66, %65
  %68 = sub i32 %66, %65
  %69 = icmp ult i32 %68, %4
  %70 = or i1 %67, %69
  br i1 %70, label %148, label %71

71:                                               ; preds = %62
  %72 = getelementptr i8, ptr %21, i32 16
  %73 = getelementptr i8, ptr %21, i32 20
  %74 = getelementptr i8, ptr %21, i32 -4
  %75 = icmp eq i32 %65, %29
  br i1 %75, label %107, label %76

76:                                               ; preds = %71
  %77 = sub i32 %65, %29
  %78 = icmp eq i32 %31, %77
  br i1 %78, label %105, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %81 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %80, i32 noundef 3264, i32 noundef 32) #7
  %82 = icmp eq ptr %81, null
  br i1 %82, label %151, label %83, !prof !8

83:                                               ; preds = %79
  %84 = load i32, ptr %72, align 4
  %85 = getelementptr inbounds %struct.nvkm_mm_node, ptr %81, i32 0, i32 5
  store i32 %84, ptr %85, align 8
  %86 = getelementptr inbounds %struct.nvkm_mm_node, ptr %81, i32 0, i32 6
  store i32 %77, ptr %86, align 4
  %87 = getelementptr i8, ptr %21, i32 12
  %88 = load i8, ptr %87, align 4
  %89 = getelementptr inbounds %struct.nvkm_mm_node, ptr %81, i32 0, i32 3
  store i8 %88, ptr %89, align 4
  %90 = getelementptr i8, ptr %21, i32 13
  %91 = load i8, ptr %90, align 1
  %92 = getelementptr inbounds %struct.nvkm_mm_node, ptr %81, i32 0, i32 4
  store i8 %91, ptr %92, align 1
  %93 = add i32 %84, %77
  store i32 %93, ptr %72, align 4
  %94 = load i32, ptr %73, align 4
  %95 = sub i32 %94, %77
  store i32 %95, ptr %73, align 4
  %96 = load ptr, ptr %74, align 4
  store ptr %81, ptr %74, align 4
  store ptr %22, ptr %81, align 8
  %97 = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  store ptr %96, ptr %97, align 4
  store volatile ptr %81, ptr %96, align 4
  %98 = load i8, ptr %92, align 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %83
  %101 = getelementptr inbounds %struct.nvkm_mm_node, ptr %81, i32 0, i32 1
  %102 = getelementptr i8, ptr %21, i32 4
  %103 = load ptr, ptr %102, align 4
  store ptr %101, ptr %102, align 4
  store ptr %21, ptr %101, align 8
  %104 = getelementptr inbounds %struct.nvkm_mm_node, ptr %81, i32 0, i32 1, i32 1
  store ptr %103, ptr %104, align 4
  store volatile ptr %101, ptr %103, align 4
  br label %107

105:                                              ; preds = %76
  %106 = icmp eq ptr %22, null
  br i1 %106, label %151, label %107

107:                                              ; preds = %105, %100, %83, %71
  %108 = tail call i32 @llvm.umin.i32(i32 %68, i32 %3)
  %109 = load i32, ptr %73, align 4
  %110 = icmp eq i32 %109, %108
  br i1 %110, label %137, label %111

111:                                              ; preds = %107
  %112 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %113 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %112, i32 noundef 3264, i32 noundef 32) #7
  %114 = icmp eq ptr %113, null
  br i1 %114, label %151, label %115, !prof !8

115:                                              ; preds = %111
  %116 = load i32, ptr %72, align 4
  %117 = getelementptr inbounds %struct.nvkm_mm_node, ptr %113, i32 0, i32 5
  store i32 %116, ptr %117, align 8
  %118 = getelementptr inbounds %struct.nvkm_mm_node, ptr %113, i32 0, i32 6
  store i32 %108, ptr %118, align 4
  %119 = getelementptr i8, ptr %21, i32 12
  %120 = load i8, ptr %119, align 4
  %121 = getelementptr inbounds %struct.nvkm_mm_node, ptr %113, i32 0, i32 3
  store i8 %120, ptr %121, align 4
  %122 = getelementptr i8, ptr %21, i32 13
  %123 = load i8, ptr %122, align 1
  %124 = getelementptr inbounds %struct.nvkm_mm_node, ptr %113, i32 0, i32 4
  store i8 %123, ptr %124, align 1
  %125 = add i32 %116, %108
  store i32 %125, ptr %72, align 4
  %126 = load i32, ptr %73, align 4
  %127 = sub i32 %126, %108
  store i32 %127, ptr %73, align 4
  %128 = load ptr, ptr %74, align 4
  store ptr %113, ptr %74, align 4
  store ptr %22, ptr %113, align 8
  %129 = getelementptr inbounds %struct.list_head, ptr %113, i32 0, i32 1
  store ptr %128, ptr %129, align 4
  store volatile ptr %113, ptr %128, align 4
  %130 = load i8, ptr %124, align 1
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %115
  %133 = getelementptr inbounds %struct.nvkm_mm_node, ptr %113, i32 0, i32 1
  %134 = getelementptr i8, ptr %21, i32 4
  %135 = load ptr, ptr %134, align 4
  store ptr %133, ptr %134, align 4
  store ptr %21, ptr %133, align 8
  %136 = getelementptr inbounds %struct.nvkm_mm_node, ptr %113, i32 0, i32 1, i32 1
  store ptr %135, ptr %136, align 4
  store volatile ptr %133, ptr %135, align 4
  br label %139

137:                                              ; preds = %107
  %138 = icmp eq ptr %22, null
  br i1 %138, label %151, label %139

139:                                              ; preds = %137, %132, %115
  %140 = phi ptr [ %22, %137 ], [ %113, %132 ], [ %113, %115 ]
  %141 = getelementptr inbounds %struct.nvkm_mm_node, ptr %140, i32 0, i32 2
  store ptr null, ptr %141, align 4
  %142 = getelementptr inbounds %struct.nvkm_mm_node, ptr %140, i32 0, i32 4
  store i8 %2, ptr %142, align 1
  %143 = getelementptr inbounds %struct.nvkm_mm_node, ptr %140, i32 0, i32 1
  %144 = getelementptr inbounds %struct.nvkm_mm_node, ptr %140, i32 0, i32 1, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = load ptr, ptr %143, align 4
  %147 = getelementptr inbounds %struct.list_head, ptr %146, i32 0, i32 1
  store ptr %145, ptr %147, align 4
  store volatile ptr %146, ptr %145, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %143, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %144, align 4
  store ptr %140, ptr %6, align 4
  br label %151

148:                                              ; preds = %62, %23
  %149 = load ptr, ptr %21, align 4
  %150 = icmp eq ptr %149, %13
  br i1 %150, label %151, label %20

151:                                              ; preds = %148, %139, %137, %111, %105, %79, %12
  %152 = phi i32 [ 0, %139 ], [ -12, %105 ], [ -12, %137 ], [ -12, %79 ], [ -12, %111 ], [ -28, %12 ], [ -28, %148 ]
  ret i32 %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_mm_tail(ptr noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = add i32 %5, -1
  %9 = add i8 %2, 1
  %10 = icmp ult i8 %9, 2
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/core/mm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 192, 0\0A.popsection", ""() #6, !srcloc !11
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.nvkm_mm, ptr %0, i32 0, i32 1
  %14 = getelementptr inbounds %struct.nvkm_mm, ptr %0, i32 0, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %13
  br i1 %16, label %161, label %17

17:                                               ; preds = %12
  %18 = icmp eq i8 %1, 0
  %19 = getelementptr inbounds %struct.nvkm_mm, ptr %0, i32 0, i32 2
  %20 = sub i32 0, %5
  br label %21

21:                                               ; preds = %157, %17
  %22 = phi ptr [ %15, %17 ], [ %159, %157 ]
  %23 = getelementptr i8, ptr %22, i32 -8
  %24 = getelementptr i8, ptr %22, i32 16
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %22, i32 20
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  br i1 %18, label %33, label %29, !prof !10

29:                                               ; preds = %21
  %30 = getelementptr i8, ptr %22, i32 12
  %31 = load i8, ptr %30, align 4
  %32 = icmp eq i8 %31, %1
  br i1 %32, label %33, label %157

33:                                               ; preds = %29, %21
  %34 = getelementptr i8, ptr %22, i32 -4
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %0
  %37 = icmp eq ptr %35, null
  %38 = or i1 %36, %37
  br i1 %38, label %49, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.nvkm_mm_node, ptr %35, i32 0, i32 4
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, %2
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr %19, align 4
  %45 = add i32 %25, -1
  %46 = add i32 %45, %44
  %47 = urem i32 %46, %44
  %48 = sub i32 %46, %47
  br label %49

49:                                               ; preds = %43, %39, %33
  %50 = phi i32 [ %48, %43 ], [ %25, %39 ], [ %25, %33 ]
  %51 = load ptr, ptr %23, align 4
  %52 = icmp eq ptr %51, %0
  %53 = icmp eq ptr %51, null
  %54 = or i1 %52, %53
  br i1 %54, label %66, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.nvkm_mm_node, ptr %51, i32 0, i32 4
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, %2
  br i1 %58, label %66, label %59

59:                                               ; preds = %55
  %60 = load i32, ptr %19, align 4
  %61 = urem i32 %28, %60
  %62 = sub i32 %28, %61
  %63 = getelementptr inbounds %struct.nvkm_mm_node, ptr %51, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  %65 = sub i32 %64, %62
  br label %66

66:                                               ; preds = %59, %55, %49
  %67 = phi i32 [ %65, %59 ], [ 0, %55 ], [ 0, %49 ]
  %68 = phi i32 [ %62, %59 ], [ %28, %55 ], [ %28, %49 ]
  %69 = add i32 %8, %50
  %70 = and i32 %69, %20
  %71 = sub i32 %68, %70
  %72 = icmp ult i32 %68, %70
  %73 = icmp ult i32 %71, %4
  %74 = or i1 %72, %73
  br i1 %74, label %157, label %75

75:                                               ; preds = %66
  %76 = getelementptr i8, ptr %22, i32 16
  %77 = getelementptr i8, ptr %22, i32 20
  %78 = tail call i32 @llvm.umin.i32(i32 %71, i32 %3)
  %79 = sub i32 %68, %78
  %80 = and i32 %79, %20
  %81 = add i32 %68, %67
  %82 = add i32 %78, %80
  %83 = sub i32 %81, %82
  %84 = icmp eq i32 %81, %82
  br i1 %84, label %116, label %85

85:                                               ; preds = %75
  %86 = icmp eq i32 %27, %83
  br i1 %86, label %114, label %87

87:                                               ; preds = %85
  %88 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %89 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %88, i32 noundef 3264, i32 noundef 32) #7
  %90 = icmp eq ptr %89, null
  br i1 %90, label %161, label %91, !prof !8

91:                                               ; preds = %87
  %92 = load i32, ptr %77, align 4
  %93 = sub i32 %92, %83
  store i32 %93, ptr %77, align 4
  %94 = load i32, ptr %76, align 4
  %95 = add i32 %94, %93
  %96 = getelementptr inbounds %struct.nvkm_mm_node, ptr %89, i32 0, i32 5
  store i32 %95, ptr %96, align 8
  %97 = getelementptr inbounds %struct.nvkm_mm_node, ptr %89, i32 0, i32 6
  store i32 %83, ptr %97, align 4
  %98 = getelementptr i8, ptr %22, i32 12
  %99 = load i8, ptr %98, align 4
  %100 = getelementptr inbounds %struct.nvkm_mm_node, ptr %89, i32 0, i32 3
  store i8 %99, ptr %100, align 4
  %101 = getelementptr i8, ptr %22, i32 13
  %102 = load i8, ptr %101, align 1
  %103 = getelementptr inbounds %struct.nvkm_mm_node, ptr %89, i32 0, i32 4
  store i8 %102, ptr %103, align 1
  %104 = load ptr, ptr %23, align 4
  %105 = getelementptr inbounds %struct.list_head, ptr %104, i32 0, i32 1
  store ptr %89, ptr %105, align 4
  store ptr %104, ptr %89, align 8
  %106 = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  store ptr %23, ptr %106, align 4
  store volatile ptr %89, ptr %23, align 4
  %107 = load i8, ptr %103, align 1
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %91
  %110 = getelementptr inbounds %struct.nvkm_mm_node, ptr %89, i32 0, i32 1
  %111 = load ptr, ptr %22, align 4
  %112 = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  store ptr %110, ptr %112, align 4
  store ptr %111, ptr %110, align 8
  %113 = getelementptr inbounds %struct.nvkm_mm_node, ptr %89, i32 0, i32 1, i32 1
  store ptr %22, ptr %113, align 4
  store volatile ptr %110, ptr %22, align 4
  br label %116

114:                                              ; preds = %85
  %115 = icmp eq ptr %23, null
  br i1 %115, label %161, label %116

116:                                              ; preds = %114, %109, %91, %75
  %117 = load i32, ptr %77, align 4
  %118 = icmp eq i32 %117, %78
  br i1 %118, label %146, label %119

119:                                              ; preds = %116
  %120 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %121 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %120, i32 noundef 3264, i32 noundef 32) #7
  %122 = icmp eq ptr %121, null
  br i1 %122, label %161, label %123, !prof !8

123:                                              ; preds = %119
  %124 = load i32, ptr %77, align 4
  %125 = sub i32 %124, %78
  store i32 %125, ptr %77, align 4
  %126 = load i32, ptr %76, align 4
  %127 = add i32 %126, %125
  %128 = getelementptr inbounds %struct.nvkm_mm_node, ptr %121, i32 0, i32 5
  store i32 %127, ptr %128, align 8
  %129 = getelementptr inbounds %struct.nvkm_mm_node, ptr %121, i32 0, i32 6
  store i32 %78, ptr %129, align 4
  %130 = getelementptr i8, ptr %22, i32 12
  %131 = load i8, ptr %130, align 4
  %132 = getelementptr inbounds %struct.nvkm_mm_node, ptr %121, i32 0, i32 3
  store i8 %131, ptr %132, align 4
  %133 = getelementptr i8, ptr %22, i32 13
  %134 = load i8, ptr %133, align 1
  %135 = getelementptr inbounds %struct.nvkm_mm_node, ptr %121, i32 0, i32 4
  store i8 %134, ptr %135, align 1
  %136 = load ptr, ptr %23, align 4
  %137 = getelementptr inbounds %struct.list_head, ptr %136, i32 0, i32 1
  store ptr %121, ptr %137, align 4
  store ptr %136, ptr %121, align 8
  %138 = getelementptr inbounds %struct.list_head, ptr %121, i32 0, i32 1
  store ptr %23, ptr %138, align 4
  store volatile ptr %121, ptr %23, align 4
  %139 = load i8, ptr %135, align 1
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %123
  %142 = getelementptr inbounds %struct.nvkm_mm_node, ptr %121, i32 0, i32 1
  %143 = load ptr, ptr %22, align 4
  %144 = getelementptr inbounds %struct.list_head, ptr %143, i32 0, i32 1
  store ptr %142, ptr %144, align 4
  store ptr %143, ptr %142, align 8
  %145 = getelementptr inbounds %struct.nvkm_mm_node, ptr %121, i32 0, i32 1, i32 1
  store ptr %22, ptr %145, align 4
  store volatile ptr %142, ptr %22, align 4
  br label %148

146:                                              ; preds = %116
  %147 = icmp eq ptr %23, null
  br i1 %147, label %161, label %148

148:                                              ; preds = %146, %141, %123
  %149 = phi ptr [ %23, %146 ], [ %121, %141 ], [ %121, %123 ]
  %150 = getelementptr inbounds %struct.nvkm_mm_node, ptr %149, i32 0, i32 2
  store ptr null, ptr %150, align 4
  %151 = getelementptr inbounds %struct.nvkm_mm_node, ptr %149, i32 0, i32 4
  store i8 %2, ptr %151, align 1
  %152 = getelementptr inbounds %struct.nvkm_mm_node, ptr %149, i32 0, i32 1
  %153 = getelementptr inbounds %struct.nvkm_mm_node, ptr %149, i32 0, i32 1, i32 1
  %154 = load ptr, ptr %153, align 4
  %155 = load ptr, ptr %152, align 4
  %156 = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  store ptr %154, ptr %156, align 4
  store volatile ptr %155, ptr %154, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %152, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %153, align 4
  store ptr %149, ptr %6, align 4
  br label %161

157:                                              ; preds = %66, %29
  %158 = getelementptr i8, ptr %22, i32 4
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, %13
  br i1 %160, label %161, label %21

161:                                              ; preds = %157, %148, %146, %119, %114, %87, %12
  %162 = phi i32 [ -12, %146 ], [ -12, %114 ], [ 0, %148 ], [ -12, %87 ], [ -12, %119 ], [ -28, %12 ], [ -28, %157 ]
  ret i32 %162
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_mm_init(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nvkm_mm, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_mm_node, ptr %11, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_mm_node, ptr %11, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %13
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %32, label %18

18:                                               ; preds = %9
  %19 = icmp ugt i32 %16, %2
  br i1 %19, label %20, label %21, !prof !8

20:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/core/mm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 249, 0\0A.popsection", ""() #6, !srcloc !12
  unreachable

21:                                               ; preds = %18
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 32) #7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %73, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.nvkm_mm_node, ptr %23, i32 0, i32 4
  store i8 -1, ptr %26, align 1
  %27 = getelementptr inbounds %struct.nvkm_mm_node, ptr %23, i32 0, i32 5
  store i32 %16, ptr %27, align 8
  %28 = sub i32 %2, %16
  %29 = getelementptr inbounds %struct.nvkm_mm_node, ptr %23, i32 0, i32 6
  store i32 %28, ptr %29, align 4
  %30 = load ptr, ptr %10, align 4
  store ptr %23, ptr %10, align 4
  store ptr %0, ptr %23, align 8
  %31 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  store volatile ptr %23, ptr %30, align 4
  br label %32

32:                                               ; preds = %25, %9
  %33 = getelementptr inbounds %struct.nvkm_mm, ptr %0, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, %4
  br i1 %35, label %42, label %36, !prof !10

36:                                               ; preds = %32
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/core/mm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 257, 0\0A.popsection", ""() #6, !srcloc !13
  unreachable

37:                                               ; preds = %5
  store volatile ptr %0, ptr %0, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.nvkm_mm, ptr %0, i32 0, i32 1
  store volatile ptr %39, ptr %39, align 4
  %40 = getelementptr inbounds %struct.nvkm_mm, ptr %0, i32 0, i32 1, i32 1
  store ptr %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.nvkm_mm, ptr %0, i32 0, i32 2
  store i32 %4, ptr %41, align 4
  store i32 0, ptr %6, align 4
  br label %42

42:                                               ; preds = %37, %32
  %43 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %44 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3520, i32 noundef 32) #7
  %45 = icmp eq ptr %44, null
  br i1 %45, label %73, label %46

46:                                               ; preds = %42
  %47 = icmp eq i32 %3, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.nvkm_mm, ptr %0, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %2, -1
  %52 = add i32 %51, %50
  %53 = urem i32 %52, %50
  %54 = sub i32 %52, %53
  %55 = getelementptr inbounds %struct.nvkm_mm_node, ptr %44, i32 0, i32 5
  store i32 %54, ptr %55, align 8
  %56 = add i32 %3, %2
  %57 = urem i32 %56, %50
  %58 = getelementptr inbounds %struct.nvkm_mm_node, ptr %44, i32 0, i32 6
  %59 = add i32 %54, %57
  %60 = sub i32 %56, %59
  store i32 %60, ptr %58, align 4
  br label %61

61:                                               ; preds = %48, %46
  %62 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  store ptr %44, ptr %62, align 4
  store ptr %0, ptr %44, align 8
  %64 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  store ptr %63, ptr %64, align 4
  store volatile ptr %44, ptr %63, align 4
  %65 = getelementptr inbounds %struct.nvkm_mm_node, ptr %44, i32 0, i32 1
  %66 = getelementptr inbounds %struct.nvkm_mm, ptr %0, i32 0, i32 1
  %67 = getelementptr inbounds %struct.nvkm_mm, ptr %0, i32 0, i32 1, i32 1
  %68 = load ptr, ptr %67, align 4
  store ptr %65, ptr %67, align 4
  store ptr %66, ptr %65, align 8
  %69 = getelementptr inbounds %struct.nvkm_mm_node, ptr %44, i32 0, i32 1, i32 1
  store ptr %68, ptr %69, align 4
  store volatile ptr %65, ptr %68, align 4
  %70 = getelementptr inbounds %struct.nvkm_mm_node, ptr %44, i32 0, i32 3
  store i8 %1, ptr %70, align 4
  %71 = load i32, ptr %6, align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr %6, align 4
  br label %73

73:                                               ; preds = %61, %42, %21
  %74 = phi i32 [ 0, %61 ], [ -12, %21 ], [ -12, %42 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_mm_fini(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_mm, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %30, label %8

8:                                                ; preds = %18, %5
  %9 = phi ptr [ %20, %18 ], [ %6, %5 ]
  %10 = phi i32 [ %19, %18 ], [ 0, %5 ]
  %11 = getelementptr inbounds %struct.nvkm_mm_node, ptr %9, i32 0, i32 4
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, -1
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = add i32 %10, 1
  %16 = icmp sgt i32 %15, %3
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @nvkm_mm_dump(ptr noundef %0, ptr noundef nonnull @.str.4)
  br label %31

18:                                               ; preds = %14, %8
  %19 = phi i32 [ %15, %14 ], [ %10, %8 ]
  %20 = load ptr, ptr %9, align 4
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %8

22:                                               ; preds = %18
  br i1 %7, label %30, label %23

23:                                               ; preds = %23, %22
  %24 = phi ptr [ %25, %23 ], [ %6, %22 ]
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  store volatile ptr %25, ptr %27, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %26, align 4
  tail call void @kfree(ptr noundef %24) #6
  %29 = icmp eq ptr %25, %0
  br i1 %29, label %30, label %23

30:                                               ; preds = %23, %22, %5
  store i32 0, ptr %2, align 4
  br label %31

31:                                               ; preds = %30, %17, %1
  %32 = phi i32 [ -16, %17 ], [ 0, %30 ], [ 0, %1 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

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
!9 = !{i64 2154727624, i64 2154728127, i64 2154727661, i64 2154727717, i64 2154727751, i64 2154727775, i64 2154727816, i64 2154727837, i64 2154727865, i64 2154727899}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2154737280, i64 2154737783, i64 2154737317, i64 2154737373, i64 2154737407, i64 2154737431, i64 2154737472, i64 2154737493, i64 2154737521, i64 2154737555}
!12 = !{i64 2154748064, i64 2154748567, i64 2154748101, i64 2154748157, i64 2154748191, i64 2154748215, i64 2154748256, i64 2154748277, i64 2154748305, i64 2154748339}
!13 = !{i64 2154749348, i64 2154749851, i64 2154749385, i64 2154749441, i64 2154749475, i64 2154749499, i64 2154749540, i64 2154749561, i64 2154749589, i64 2154749623}
