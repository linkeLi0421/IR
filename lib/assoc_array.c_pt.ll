; ModuleID = '/llk/IR/lib/assoc_array.c_pt.bc'
source_filename = "../lib/assoc_array.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.assoc_array_shortcut = type { ptr, i32, i32, ptr, [0 x i32] }
%struct.assoc_array_node = type { ptr, i8, [16 x ptr], i32 }
%struct.assoc_array_walk_result = type { %struct.anon, %struct.anon.0 }
%struct.anon = type { ptr, i32, i32 }
%struct.anon.0 = type { ptr, i32, i32, i32, i32 }
%struct.assoc_array_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.assoc_array_edit = type { %struct.callback_head, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], [1 x ptr], ptr, [16 x ptr], ptr, ptr, i32, [2 x %struct.anon.1], [1 x %struct.anon.2], [17 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.anon.1 = type { ptr, ptr }
%struct.anon.2 = type { ptr, i8 }
%struct.assoc_array_delete_collapse_context = type { ptr, ptr, i32 }
%struct.assoc_array = type { ptr, i32 }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @assoc_array_iterate(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load volatile ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %87, label %6

6:                                                ; preds = %58, %3
  %7 = phi ptr [ %4, %3 ], [ %61, %58 ]
  %8 = ptrtoint ptr %7 to i32
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = and i32 %8, -4
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %13, i32 0, i32 3
  %15 = load volatile ptr, ptr %14, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %17

17:                                               ; preds = %11, %6
  %18 = phi i32 [ %16, %11 ], [ %8, %6 ]
  %19 = and i32 %18, -4
  %20 = inttoptr i32 %19 to ptr
  br label %21

21:                                               ; preds = %37, %17
  %22 = phi i32 [ 0, %17 ], [ %38, %37 ]
  %23 = phi i32 [ 0, %17 ], [ %27, %37 ]
  %24 = getelementptr %struct.assoc_array_node, ptr %20, i32 0, i32 2, i32 %22
  %25 = load volatile ptr, ptr %24, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = or i32 %23, %26
  %28 = icmp ne ptr %25, null
  %29 = and i32 %26, 1
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = and i32 %26, -2
  %34 = inttoptr i32 %33 to ptr
  %35 = tail call i32 %1(ptr noundef %34, ptr noundef %2) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %87

37:                                               ; preds = %32, %21
  %38 = add nuw nsw i32 %22, 1
  %39 = icmp eq i32 %38, 16
  br i1 %39, label %40, label %21

40:                                               ; preds = %37
  %41 = and i32 %27, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %65, label %52

43:                                               ; preds = %83, %71
  %44 = phi i32 [ %86, %83 ], [ %75, %71 ]
  %45 = phi i32 [ %85, %83 ], [ %74, %71 ]
  %46 = add i32 %45, 1
  %47 = and i32 %44, -4
  %48 = inttoptr i32 %47 to ptr
  %49 = icmp slt i32 %46, 16
  br i1 %49, label %50, label %67

50:                                               ; preds = %43
  %51 = inttoptr i32 %47 to ptr
  br label %52

52:                                               ; preds = %50, %40
  %53 = phi i32 [ 0, %40 ], [ %46, %50 ]
  %54 = phi ptr [ %20, %40 ], [ %51, %50 ]
  br label %58

55:                                               ; preds = %58
  %56 = add i32 %59, 1
  %57 = icmp eq i32 %56, 16
  br i1 %57, label %65, label %58

58:                                               ; preds = %55, %52
  %59 = phi i32 [ %56, %55 ], [ %53, %52 ]
  %60 = getelementptr %struct.assoc_array_node, ptr %54, i32 0, i32 2, i32 %59
  %61 = load volatile ptr, ptr %60, align 4
  %62 = ptrtoint ptr %61 to i32
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %55, label %6

65:                                               ; preds = %55, %40
  %66 = phi ptr [ %20, %40 ], [ %54, %55 ]
  br label %67

67:                                               ; preds = %65, %43
  %68 = phi ptr [ %48, %43 ], [ %66, %65 ]
  %69 = load volatile ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %87, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.assoc_array_node, ptr %68, i32 0, i32 1
  %73 = load i8, ptr %72, align 4
  %74 = zext i8 %73 to i32
  %75 = ptrtoint ptr %69 to i32
  %76 = and i32 %75, 2
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %43, label %78

78:                                               ; preds = %71
  %79 = and i32 %75, -4
  %80 = inttoptr i32 %79 to ptr
  %81 = load volatile ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %80, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = ptrtoint ptr %81 to i32
  br label %43

87:                                               ; preds = %78, %67, %32, %3
  %88 = phi i32 [ 0, %3 ], [ 0, %67 ], [ 0, %78 ], [ %35, %32 ]
  ret i32 %88
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @assoc_array_subtree_iterate(ptr noundef %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  br label %5

5:                                                ; preds = %57, %4
  %6 = phi ptr [ %0, %4 ], [ %60, %57 ]
  %7 = ptrtoint ptr %6 to i32
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %5
  %11 = and i32 %7, -4
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %12, i32 0, i32 3
  %14 = load volatile ptr, ptr %13, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %16

16:                                               ; preds = %10, %5
  %17 = phi i32 [ %15, %10 ], [ %7, %5 ]
  %18 = and i32 %17, -4
  %19 = inttoptr i32 %18 to ptr
  br label %20

20:                                               ; preds = %36, %16
  %21 = phi i32 [ 0, %16 ], [ %37, %36 ]
  %22 = phi i32 [ 0, %16 ], [ %26, %36 ]
  %23 = getelementptr %struct.assoc_array_node, ptr %19, i32 0, i32 2, i32 %21
  %24 = load volatile ptr, ptr %23, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = or i32 %22, %25
  %27 = icmp ne ptr %24, null
  %28 = and i32 %25, 1
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %36

31:                                               ; preds = %20
  %32 = and i32 %25, -2
  %33 = inttoptr i32 %32 to ptr
  %34 = tail call i32 %2(ptr noundef %33, ptr noundef %3) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %86

36:                                               ; preds = %31, %20
  %37 = add nuw nsw i32 %21, 1
  %38 = icmp eq i32 %37, 16
  br i1 %38, label %39, label %20

39:                                               ; preds = %36
  %40 = and i32 %26, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %64, label %51

42:                                               ; preds = %82, %70
  %43 = phi i32 [ %85, %82 ], [ %74, %70 ]
  %44 = phi i32 [ %84, %82 ], [ %73, %70 ]
  %45 = add i32 %44, 1
  %46 = and i32 %43, -4
  %47 = inttoptr i32 %46 to ptr
  %48 = icmp slt i32 %45, 16
  br i1 %48, label %49, label %66

49:                                               ; preds = %42
  %50 = inttoptr i32 %46 to ptr
  br label %51

51:                                               ; preds = %49, %39
  %52 = phi i32 [ 0, %39 ], [ %45, %49 ]
  %53 = phi ptr [ %19, %39 ], [ %50, %49 ]
  br label %57

54:                                               ; preds = %57
  %55 = add i32 %58, 1
  %56 = icmp eq i32 %55, 16
  br i1 %56, label %64, label %57

57:                                               ; preds = %54, %51
  %58 = phi i32 [ %55, %54 ], [ %52, %51 ]
  %59 = getelementptr %struct.assoc_array_node, ptr %53, i32 0, i32 2, i32 %58
  %60 = load volatile ptr, ptr %59, align 4
  %61 = ptrtoint ptr %60 to i32
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %54, label %5

64:                                               ; preds = %54, %39
  %65 = phi ptr [ %19, %39 ], [ %53, %54 ]
  br label %66

66:                                               ; preds = %64, %42
  %67 = phi ptr [ %47, %42 ], [ %65, %64 ]
  %68 = load volatile ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, %1
  br i1 %69, label %86, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.assoc_array_node, ptr %67, i32 0, i32 1
  %72 = load i8, ptr %71, align 4
  %73 = zext i8 %72 to i32
  %74 = ptrtoint ptr %68 to i32
  %75 = and i32 %74, 2
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %42, label %77

77:                                               ; preds = %70
  %78 = and i32 %74, -4
  %79 = inttoptr i32 %78 to ptr
  %80 = load volatile ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, %1
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %79, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = ptrtoint ptr %80 to i32
  br label %42

86:                                               ; preds = %77, %66, %31
  %87 = phi i32 [ 0, %66 ], [ 0, %77 ], [ %34, %31 ]
  ret i32 %87
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @assoc_array_find(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.assoc_array_walk_result, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !8
  %5 = call fastcc i32 @assoc_array_walk(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.assoc_array_ops, ptr %1, i32 0, i32 2
  br label %10

10:                                               ; preds = %24, %7
  %11 = phi i32 [ 0, %7 ], [ %25, %24 ]
  %12 = getelementptr %struct.assoc_array_node, ptr %8, i32 0, i32 2, i32 %11
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %10
  %16 = ptrtoint ptr %13 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = and i32 %16, -2
  %21 = inttoptr i32 %20 to ptr
  %22 = load ptr, ptr %9, align 4
  %23 = tail call zeroext i1 %22(ptr noundef %21, ptr noundef %2) #8
  br i1 %23, label %27, label %24

24:                                               ; preds = %19, %15, %10
  %25 = add nuw nsw i32 %11, 1
  %26 = icmp eq i32 %25, 16
  br i1 %26, label %29, label %10

27:                                               ; preds = %19
  %28 = inttoptr i32 %20 to ptr
  br label %29

29:                                               ; preds = %27, %24, %3
  %30 = phi ptr [ null, %3 ], [ %28, %27 ], [ null, %24 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #8
  ret ptr %30
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @assoc_array_walk(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = load volatile ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %107, label %7

7:                                                ; preds = %104, %4
  %8 = phi i32 [ %105, %104 ], [ 0, %4 ]
  %9 = phi ptr [ %106, %104 ], [ %5, %4 ]
  %10 = load ptr, ptr %1, align 4
  %11 = tail call i32 %10(ptr noundef %2, i32 noundef %8) #8
  %12 = ptrtoint ptr %9 to i32
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %99, %7
  %16 = phi i32 [ %87, %99 ], [ %8, %7 ]
  %17 = phi i32 [ %69, %99 ], [ %11, %7 ]
  %18 = phi ptr [ %101, %99 ], [ %9, %7 ]
  br label %19

19:                                               ; preds = %40, %15
  %20 = phi i32 [ %41, %40 ], [ %16, %15 ]
  %21 = phi ptr [ %29, %40 ], [ %18, %15 ]
  %22 = ptrtoint ptr %21 to i32
  %23 = and i32 %22, -4
  %24 = inttoptr i32 %23 to ptr
  %25 = and i32 %20, 31
  %26 = lshr i32 %17, %25
  %27 = and i32 %26, 15
  %28 = getelementptr %struct.assoc_array_node, ptr %24, i32 0, i32 2, i32 %27
  %29 = load volatile ptr, ptr %28, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %19
  %34 = inttoptr i32 %23 to ptr
  store ptr %34, ptr %3, align 4
  %35 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1
  store i32 %20, ptr %35, align 4
  %36 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 2
  store i32 %27, ptr %36, align 4
  br label %107

37:                                               ; preds = %19
  %38 = and i32 %30, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = add i32 %20, 4
  %42 = and i32 %41, 31
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %104, label %19

44:                                               ; preds = %37
  %45 = ptrtoint ptr %29 to i32
  br label %46

46:                                               ; preds = %44, %7
  %47 = phi i32 [ %12, %7 ], [ %45, %44 ]
  %48 = phi i32 [ %8, %7 ], [ %20, %44 ]
  %49 = phi i32 [ %11, %7 ], [ %17, %44 ]
  %50 = and i32 %47, -4
  %51 = inttoptr i32 %50 to ptr
  %52 = add i32 %48, 4
  %53 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %51, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = icmp sgt i32 %52, %54
  br i1 %55, label %56, label %57, !prof !9

56:                                               ; preds = %46
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 245, 0\0A.popsection", ""() #8, !srcloc !10
  unreachable

57:                                               ; preds = %97, %46
  %58 = phi i32 [ %68, %97 ], [ %54, %46 ]
  %59 = phi i32 [ %87, %97 ], [ %52, %46 ]
  %60 = phi i32 [ %69, %97 ], [ %49, %46 ]
  %61 = and i32 %59, 31
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load ptr, ptr %1, align 4
  %65 = tail call i32 %64(ptr noundef %2, i32 noundef %59) #8
  %66 = load i32, ptr %53, align 4
  br label %67

67:                                               ; preds = %63, %57
  %68 = phi i32 [ %66, %63 ], [ %58, %57 ]
  %69 = phi i32 [ %65, %63 ], [ %60, %57 ]
  %70 = ashr i32 %59, 5
  %71 = getelementptr %struct.assoc_array_shortcut, ptr %51, i32 0, i32 4, i32 %70
  %72 = load i32, ptr %71, align 4
  %73 = xor i32 %72, %69
  %74 = add i32 %59, -1
  %75 = or i32 %74, 31
  %76 = add i32 %75, 1
  %77 = icmp sgt i32 %76, %68
  br i1 %77, label %78, label %83

78:                                               ; preds = %67
  %79 = and i32 %68, 31
  %80 = shl nsw i32 -1, %79
  %81 = xor i32 %80, -1
  %82 = and i32 %73, %81
  br label %86

83:                                               ; preds = %67
  %84 = add i32 %59, 32
  %85 = and i32 %84, -32
  br label %86

86:                                               ; preds = %83, %78
  %87 = phi i32 [ %68, %78 ], [ %85, %83 ]
  %88 = phi i32 [ %82, %78 ], [ %73, %83 ]
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %86
  %91 = inttoptr i32 %50 to ptr
  %92 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %3, i32 0, i32 1
  store ptr %91, ptr %92, align 4
  %93 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %3, i32 0, i32 1, i32 1
  store i32 %48, ptr %93, align 4
  %94 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %3, i32 0, i32 1, i32 2
  store i32 %59, ptr %94, align 4
  %95 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %3, i32 0, i32 1, i32 3
  store i32 %72, ptr %95, align 4
  %96 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %3, i32 0, i32 1, i32 4
  store i32 %88, ptr %96, align 4
  br label %107

97:                                               ; preds = %86
  %98 = icmp slt i32 %87, %68
  br i1 %98, label %57, label %99

99:                                               ; preds = %97
  %100 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %51, i32 0, i32 3
  %101 = load volatile ptr, ptr %100, align 4
  %102 = xor i32 %87, %48
  %103 = icmp ult i32 %102, 32
  br i1 %103, label %15, label %104

104:                                              ; preds = %99, %40
  %105 = phi i32 [ %87, %99 ], [ %41, %40 ]
  %106 = phi ptr [ %101, %99 ], [ %29, %40 ]
  br label %7

107:                                              ; preds = %90, %33, %4
  %108 = phi i32 [ 2, %90 ], [ 1, %33 ], [ 0, %4 ]
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @assoc_array_destroy(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  tail call fastcc void @assoc_array_destroy_subtree(ptr noundef %3, ptr noundef %1)
  store ptr null, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @assoc_array_destroy_subtree(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %108, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds %struct.assoc_array_ops, ptr %1, i32 0, i32 4
  br label %7

7:                                                ; preds = %62, %4
  %8 = phi i32 [ -1, %4 ], [ %58, %62 ]
  %9 = phi ptr [ null, %4 ], [ %54, %62 ]
  %10 = phi ptr [ %0, %4 ], [ %60, %62 ]
  %11 = ptrtoint ptr %10 to i32
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  %14 = and i32 %11, -4
  %15 = inttoptr i32 %14 to ptr
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %9
  br i1 %13, label %34, label %18

18:                                               ; preds = %7
  br i1 %17, label %20, label %19, !prof !11

19:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 365, 0\0A.popsection", ""() #8, !srcloc !12
  unreachable

20:                                               ; preds = %18
  %21 = icmp eq i32 %8, -1
  br i1 %21, label %27, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %15, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %8
  br i1 %25, label %27, label %26, !prof !11

26:                                               ; preds = %22
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 366, 0\0A.popsection", ""() #8, !srcloc !13
  unreachable

27:                                               ; preds = %22, %20
  %28 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %15, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33, !prof !11

33:                                               ; preds = %27
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 370, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

34:                                               ; preds = %7
  br i1 %17, label %41, label %40, !prof !11

35:                                               ; preds = %27
  %36 = and i32 %30, -4
  %37 = inttoptr i32 %36 to ptr
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %10
  br i1 %39, label %48, label %40, !prof !11

40:                                               ; preds = %35, %34
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 375, 0\0A.popsection", ""() #8, !srcloc !15
  unreachable

41:                                               ; preds = %34
  %42 = icmp eq i32 %8, -1
  br i1 %42, label %48, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.assoc_array_node, ptr %15, i32 0, i32 1
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %8, %46
  br i1 %47, label %48, label %51, !prof !11

48:                                               ; preds = %43, %41, %35
  %49 = phi ptr [ %10, %43 ], [ %10, %41 ], [ %29, %35 ]
  %50 = phi ptr [ %15, %43 ], [ %15, %41 ], [ %37, %35 ]
  br label %52

51:                                               ; preds = %43
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 376, 0\0A.popsection", ""() #8, !srcloc !16
  unreachable

52:                                               ; preds = %101, %48
  %53 = phi i32 [ %107, %101 ], [ 0, %48 ]
  %54 = phi ptr [ %104, %101 ], [ %49, %48 ]
  %55 = phi ptr [ %106, %101 ], [ %50, %48 ]
  %56 = icmp slt i32 %53, 16
  br i1 %56, label %57, label %74

57:                                               ; preds = %71, %52
  %58 = phi i32 [ %72, %71 ], [ %53, %52 ]
  %59 = getelementptr %struct.assoc_array_node, ptr %55, i32 0, i32 2, i32 %58
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %71, label %62

62:                                               ; preds = %57
  %63 = ptrtoint ptr %60 to i32
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %7

66:                                               ; preds = %62
  br i1 %5, label %71, label %67

67:                                               ; preds = %66
  %68 = load ptr, ptr %6, align 4
  %69 = and i32 %63, -2
  %70 = inttoptr i32 %69 to ptr
  tail call void %68(ptr noundef %70) #8
  br label %71

71:                                               ; preds = %67, %66, %57
  %72 = add i32 %58, 1
  %73 = icmp eq i32 %72, 16
  br i1 %73, label %74, label %57

74:                                               ; preds = %71, %52
  %75 = load ptr, ptr %55, align 4
  %76 = getelementptr inbounds %struct.assoc_array_node, ptr %55, i32 0, i32 1
  %77 = load i8, ptr %76, align 4
  tail call void @kfree(ptr noundef %55) #8
  %78 = icmp eq ptr %75, null
  br i1 %78, label %108, label %79

79:                                               ; preds = %74
  %80 = zext i8 %77 to i32
  %81 = ptrtoint ptr %75 to i32
  %82 = and i32 %81, 2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %101, label %84

84:                                               ; preds = %79
  %85 = and i32 %81, -4
  %86 = inttoptr i32 %85 to ptr
  %87 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %86, i32 0, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, %54
  br i1 %89, label %91, label %90, !prof !11

90:                                               ; preds = %84
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 408, 0\0A.popsection", ""() #8, !srcloc !17
  unreachable

91:                                               ; preds = %84
  %92 = load ptr, ptr %86, align 4
  %93 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %86, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  tail call void @kfree(ptr noundef %86) #8
  %95 = icmp eq ptr %92, null
  br i1 %95, label %108, label %96

96:                                               ; preds = %91
  %97 = ptrtoint ptr %92 to i32
  %98 = and i32 %97, 2
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100, !prof !11

100:                                              ; preds = %96
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 417, 0\0A.popsection", ""() #8, !srcloc !18
  unreachable

101:                                              ; preds = %96, %79
  %102 = phi i32 [ %97, %96 ], [ %81, %79 ]
  %103 = phi i32 [ %94, %96 ], [ %80, %79 ]
  %104 = phi ptr [ %92, %96 ], [ %75, %79 ]
  %105 = and i32 %102, -4
  %106 = inttoptr i32 %105 to ptr
  %107 = add i32 %103, 1
  br label %52

108:                                              ; preds = %91, %74, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @assoc_array_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.assoc_array_walk_result, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !8
  %6 = ptrtoint ptr %3 to i32
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !11

9:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 978, 0\0A.popsection", ""() #8, !srcloc !19
  unreachable

10:                                               ; preds = %4
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 172) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %698, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 1
  store ptr %0, ptr %15, align 8
  %16 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 2
  store ptr %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 4
  store ptr %3, ptr %17, align 4
  %18 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 13
  store i32 1, ptr %18, align 4
  %19 = call fastcc i32 @assoc_array_walk(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5)
  switch i32 %19, label %673 [
    i32 0, label %20
    i32 1, label %35
    i32 2, label %533
  ]

20:                                               ; preds = %14
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 76) #9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %673, label %24

24:                                               ; preds = %20
  %25 = ptrtoint ptr %22 to i32
  %26 = or i32 %25, 1
  %27 = inttoptr i32 %26 to ptr
  %28 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 7
  store ptr %27, ptr %28, align 8
  %29 = getelementptr inbounds %struct.assoc_array_node, ptr %22, i32 0, i32 2
  %30 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 5
  store ptr %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 12
  store ptr %22, ptr %31, align 8
  %32 = load ptr, ptr %15, align 8
  %33 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 14
  store ptr %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 14, i32 0, i32 1
  store ptr %27, ptr %34, align 4
  br label %698

35:                                               ; preds = %14
  %36 = load ptr, ptr %5, align 4
  %37 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 16
  %43 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 16, i32 16
  store i8 %41, ptr %43, align 8
  %44 = getelementptr inbounds %struct.assoc_array_ops, ptr %1, i32 0, i32 2
  br label %45

45:                                               ; preds = %64, %35
  %46 = phi i32 [ 0, %35 ], [ %66, %64 ]
  %47 = phi i32 [ -1, %35 ], [ %65, %64 ]
  %48 = getelementptr %struct.assoc_array_node, ptr %36, i32 0, i32 2, i32 %46
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %64, label %51

51:                                               ; preds = %45
  %52 = ptrtoint ptr %49 to i32
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load ptr, ptr %44, align 4
  %57 = and i32 %52, -2
  %58 = inttoptr i32 %57 to ptr
  %59 = tail call zeroext i1 %56(ptr noundef %58, ptr noundef %2) #8
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 5
  store ptr %48, ptr %61, align 8
  %62 = load ptr, ptr %48, align 4
  %63 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 6
  store ptr %62, ptr %63, align 4
  br label %698

64:                                               ; preds = %55, %51, %45
  %65 = phi i32 [ %47, %55 ], [ %47, %51 ], [ %46, %45 ]
  %66 = add nuw nsw i32 %46, 1
  %67 = icmp eq i32 %66, 16
  br i1 %67, label %68, label %45

68:                                               ; preds = %64
  %69 = icmp sgt i32 %65, -1
  br i1 %69, label %70, label %74

70:                                               ; preds = %68
  %71 = getelementptr %struct.assoc_array_node, ptr %36, i32 0, i32 2, i32 %65
  %72 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 5
  store ptr %71, ptr %72, align 8
  %73 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 12
  store ptr %36, ptr %73, align 8
  br label %698

74:                                               ; preds = %68
  %75 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %76 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %75, i32 noundef 3520, i32 noundef 76) #9
  %77 = icmp eq ptr %76, null
  br i1 %77, label %673, label %78

78:                                               ; preds = %74
  %79 = ptrtoint ptr %76 to i32
  %80 = or i32 %79, 1
  %81 = inttoptr i32 %80 to ptr
  %82 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 7
  store ptr %81, ptr %82, align 8
  %83 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %84 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %83, i32 noundef 3520, i32 noundef 76) #9
  %85 = icmp eq ptr %84, null
  br i1 %85, label %673, label %86

86:                                               ; preds = %78
  %87 = ptrtoint ptr %84 to i32
  %88 = or i32 %87, 1
  %89 = inttoptr i32 %88 to ptr
  %90 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 7, i32 1
  store ptr %89, ptr %90, align 4
  %91 = getelementptr inbounds %struct.assoc_array_ops, ptr %1, i32 0, i32 1
  %92 = and i32 %38, 31
  br label %93

93:                                               ; preds = %114, %86
  %94 = phi i1 [ true, %114 ], [ false, %86 ]
  %95 = phi i32 [ %116, %114 ], [ 0, %86 ]
  br label %96

96:                                               ; preds = %103, %93
  %97 = phi i32 [ %112, %103 ], [ %95, %93 ]
  %98 = getelementptr %struct.assoc_array_node, ptr %36, i32 0, i32 2, i32 %97
  %99 = load ptr, ptr %98, align 4
  %100 = ptrtoint ptr %99 to i32
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %96
  %104 = load ptr, ptr %91, align 4
  %105 = and i32 %100, -2
  %106 = inttoptr i32 %105 to ptr
  %107 = tail call i32 %104(ptr noundef %106, i32 noundef %38) #8
  %108 = lshr i32 %107, %92
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 15
  %111 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 16, i32 %97
  store i8 %110, ptr %111, align 1
  %112 = add nuw nsw i32 %97, 1
  %113 = icmp eq i32 %112, 16
  br i1 %113, label %118, label %96

114:                                              ; preds = %96
  %115 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 16, i32 %97
  store i8 -1, ptr %115, align 1
  %116 = add nuw nsw i32 %97, 1
  %117 = icmp eq i32 %116, 16
  br i1 %117, label %187, label %93

118:                                              ; preds = %103
  br i1 %94, label %187, label %119

119:                                              ; preds = %118
  %120 = load i8, ptr %42, align 8
  %121 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 16, i32 1
  %122 = load i8, ptr %121, align 1
  %123 = xor i8 %122, %120
  %124 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 16, i32 2
  %125 = load i8, ptr %124, align 2
  %126 = xor i8 %125, %120
  %127 = or i8 %126, %123
  %128 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 16, i32 3
  %129 = load i8, ptr %128, align 1
  %130 = xor i8 %129, %120
  %131 = or i8 %127, %130
  %132 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 16, i32 4
  %133 = load i8, ptr %132, align 4
  %134 = xor i8 %133, %120
  %135 = or i8 %131, %134
  %136 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 16, i32 5
  %137 = load i8, ptr %136, align 1
  %138 = xor i8 %137, %120
  %139 = or i8 %135, %138
  %140 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 16, i32 6
  %141 = load i8, ptr %140, align 2
  %142 = xor i8 %141, %120
  %143 = or i8 %139, %142
  %144 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 16, i32 7
  %145 = load i8, ptr %144, align 1
  %146 = xor i8 %145, %120
  %147 = or i8 %143, %146
  %148 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 16, i32 8
  %149 = load i8, ptr %148, align 8
  %150 = xor i8 %149, %120
  %151 = or i8 %147, %150
  %152 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 16, i32 9
  %153 = load i8, ptr %152, align 1
  %154 = xor i8 %153, %120
  %155 = or i8 %151, %154
  %156 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 16, i32 10
  %157 = load i8, ptr %156, align 2
  %158 = xor i8 %157, %120
  %159 = or i8 %155, %158
  %160 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 16, i32 11
  %161 = load i8, ptr %160, align 1
  %162 = xor i8 %161, %120
  %163 = or i8 %159, %162
  %164 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 16, i32 12
  %165 = load i8, ptr %164, align 4
  %166 = xor i8 %165, %120
  %167 = or i8 %163, %166
  %168 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 16, i32 13
  %169 = load i8, ptr %168, align 1
  %170 = xor i8 %169, %120
  %171 = or i8 %167, %170
  %172 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 16, i32 14
  %173 = load i8, ptr %172, align 2
  %174 = xor i8 %173, %120
  %175 = or i8 %171, %174
  %176 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 16, i32 15
  %177 = load i8, ptr %176, align 1
  %178 = xor i8 %177, %120
  %179 = or i8 %175, %178
  %180 = and i8 %179, 15
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %119
  %183 = load i8, ptr %43, align 8
  %184 = icmp eq i8 %183, %120
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.assoc_array_ops, ptr %1, i32 0, i32 3
  br label %437

187:                                              ; preds = %182, %119, %118, %114
  %188 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 14, i32 0, i32 1
  store ptr %81, ptr %188, align 4
  %189 = load ptr, ptr %36, align 4
  store ptr %189, ptr %76, align 8
  %190 = getelementptr inbounds %struct.assoc_array_node, ptr %36, i32 0, i32 1
  %191 = load i8, ptr %190, align 4
  %192 = getelementptr inbounds %struct.assoc_array_node, ptr %76, i32 0, i32 1
  store i8 %191, ptr %192, align 4
  store ptr %81, ptr %84, align 8
  %193 = getelementptr inbounds %struct.assoc_array_node, ptr %84, i32 0, i32 1
  store i8 -1, ptr %193, align 4
  br label %194

194:                                              ; preds = %527, %187
  %195 = getelementptr inbounds %struct.assoc_array_node, ptr %36, i32 0, i32 3
  %196 = load i32, ptr %195, align 4
  %197 = getelementptr inbounds %struct.assoc_array_node, ptr %76, i32 0, i32 3
  store i32 %196, ptr %197, align 8
  %198 = getelementptr inbounds %struct.assoc_array_node, ptr %84, i32 0, i32 3
  store i32 0, ptr %198, align 8
  br label %199

199:                                              ; preds = %212, %194
  %200 = phi i32 [ 0, %194 ], [ %213, %212 ]
  %201 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 16, i32 %200
  %202 = load i8, ptr %201, align 1
  %203 = icmp eq i8 %202, -1
  br i1 %203, label %212, label %204

204:                                              ; preds = %207, %199
  %205 = phi i32 [ %208, %207 ], [ %200, %199 ]
  %206 = icmp eq i32 %205, 16
  br i1 %206, label %212, label %207

207:                                              ; preds = %204
  %208 = add nuw nsw i32 %205, 1
  %209 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 16, i32 %208
  %210 = load i8, ptr %209, align 1
  %211 = icmp eq i8 %210, %202
  br i1 %211, label %215, label %204

212:                                              ; preds = %204, %199
  %213 = add nuw nsw i32 %200, 1
  %214 = icmp eq i32 %213, 16
  br i1 %214, label %218, label %199

215:                                              ; preds = %207
  %216 = zext i8 %202 to i32
  %217 = icmp ugt i32 %200, 15
  br i1 %217, label %218, label %219, !prof !9

218:                                              ; preds = %215, %212
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 640, 0\0A.popsection", ""() #8, !srcloc !20
  unreachable

219:                                              ; preds = %215
  %220 = icmp ugt i8 %202, 15
  br i1 %220, label %221, label %222, !prof !9

221:                                              ; preds = %219
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 642, 0\0A.popsection", ""() #8, !srcloc !21
  unreachable

222:                                              ; preds = %219
  %223 = getelementptr inbounds %struct.assoc_array_node, ptr %84, i32 0, i32 1
  store i8 %202, ptr %223, align 4
  %224 = getelementptr %struct.assoc_array_node, ptr %36, i32 0, i32 2, i32 0
  %225 = load ptr, ptr %224, align 4
  %226 = ptrtoint ptr %225 to i32
  %227 = and i32 %226, 1
  %228 = icmp eq i32 %227, 0
  %229 = select i1 %228, ptr null, ptr %225
  %230 = getelementptr %struct.assoc_array_node, ptr %76, i32 0, i32 2, i32 0
  store ptr %229, ptr %230, align 8
  %231 = getelementptr %struct.assoc_array_node, ptr %36, i32 0, i32 2, i32 1
  %232 = load ptr, ptr %231, align 4
  %233 = ptrtoint ptr %232 to i32
  %234 = and i32 %233, 1
  %235 = icmp eq i32 %234, 0
  %236 = select i1 %235, ptr null, ptr %232
  %237 = getelementptr %struct.assoc_array_node, ptr %76, i32 0, i32 2, i32 1
  store ptr %236, ptr %237, align 4
  %238 = getelementptr %struct.assoc_array_node, ptr %36, i32 0, i32 2, i32 2
  %239 = load ptr, ptr %238, align 4
  %240 = ptrtoint ptr %239 to i32
  %241 = and i32 %240, 1
  %242 = icmp eq i32 %241, 0
  %243 = select i1 %242, ptr null, ptr %239
  %244 = getelementptr %struct.assoc_array_node, ptr %76, i32 0, i32 2, i32 2
  store ptr %243, ptr %244, align 8
  %245 = getelementptr %struct.assoc_array_node, ptr %36, i32 0, i32 2, i32 3
  %246 = load ptr, ptr %245, align 4
  %247 = ptrtoint ptr %246 to i32
  %248 = and i32 %247, 1
  %249 = icmp eq i32 %248, 0
  %250 = select i1 %249, ptr null, ptr %246
  %251 = getelementptr %struct.assoc_array_node, ptr %76, i32 0, i32 2, i32 3
  store ptr %250, ptr %251, align 4
  %252 = getelementptr %struct.assoc_array_node, ptr %36, i32 0, i32 2, i32 4
  %253 = load ptr, ptr %252, align 4
  %254 = ptrtoint ptr %253 to i32
  %255 = and i32 %254, 1
  %256 = icmp eq i32 %255, 0
  %257 = select i1 %256, ptr null, ptr %253
  %258 = getelementptr %struct.assoc_array_node, ptr %76, i32 0, i32 2, i32 4
  store ptr %257, ptr %258, align 8
  %259 = getelementptr %struct.assoc_array_node, ptr %36, i32 0, i32 2, i32 5
  %260 = load ptr, ptr %259, align 4
  %261 = ptrtoint ptr %260 to i32
  %262 = and i32 %261, 1
  %263 = icmp eq i32 %262, 0
  %264 = select i1 %263, ptr null, ptr %260
  %265 = getelementptr %struct.assoc_array_node, ptr %76, i32 0, i32 2, i32 5
  store ptr %264, ptr %265, align 4
  %266 = getelementptr %struct.assoc_array_node, ptr %36, i32 0, i32 2, i32 6
  %267 = load ptr, ptr %266, align 4
  %268 = ptrtoint ptr %267 to i32
  %269 = and i32 %268, 1
  %270 = icmp eq i32 %269, 0
  %271 = select i1 %270, ptr null, ptr %267
  %272 = getelementptr %struct.assoc_array_node, ptr %76, i32 0, i32 2, i32 6
  store ptr %271, ptr %272, align 8
  %273 = getelementptr %struct.assoc_array_node, ptr %36, i32 0, i32 2, i32 7
  %274 = load ptr, ptr %273, align 4
  %275 = ptrtoint ptr %274 to i32
  %276 = and i32 %275, 1
  %277 = icmp eq i32 %276, 0
  %278 = select i1 %277, ptr null, ptr %274
  %279 = getelementptr %struct.assoc_array_node, ptr %76, i32 0, i32 2, i32 7
  store ptr %278, ptr %279, align 4
  %280 = getelementptr %struct.assoc_array_node, ptr %36, i32 0, i32 2, i32 8
  %281 = load ptr, ptr %280, align 4
  %282 = ptrtoint ptr %281 to i32
  %283 = and i32 %282, 1
  %284 = icmp eq i32 %283, 0
  %285 = select i1 %284, ptr null, ptr %281
  %286 = getelementptr %struct.assoc_array_node, ptr %76, i32 0, i32 2, i32 8
  store ptr %285, ptr %286, align 8
  %287 = getelementptr %struct.assoc_array_node, ptr %36, i32 0, i32 2, i32 9
  %288 = load ptr, ptr %287, align 4
  %289 = ptrtoint ptr %288 to i32
  %290 = and i32 %289, 1
  %291 = icmp eq i32 %290, 0
  %292 = select i1 %291, ptr null, ptr %288
  %293 = getelementptr %struct.assoc_array_node, ptr %76, i32 0, i32 2, i32 9
  store ptr %292, ptr %293, align 4
  %294 = getelementptr %struct.assoc_array_node, ptr %36, i32 0, i32 2, i32 10
  %295 = load ptr, ptr %294, align 4
  %296 = ptrtoint ptr %295 to i32
  %297 = and i32 %296, 1
  %298 = icmp eq i32 %297, 0
  %299 = select i1 %298, ptr null, ptr %295
  %300 = getelementptr %struct.assoc_array_node, ptr %76, i32 0, i32 2, i32 10
  store ptr %299, ptr %300, align 8
  %301 = getelementptr %struct.assoc_array_node, ptr %36, i32 0, i32 2, i32 11
  %302 = load ptr, ptr %301, align 4
  %303 = ptrtoint ptr %302 to i32
  %304 = and i32 %303, 1
  %305 = icmp eq i32 %304, 0
  %306 = select i1 %305, ptr null, ptr %302
  %307 = getelementptr %struct.assoc_array_node, ptr %76, i32 0, i32 2, i32 11
  store ptr %306, ptr %307, align 4
  %308 = getelementptr %struct.assoc_array_node, ptr %36, i32 0, i32 2, i32 12
  %309 = load ptr, ptr %308, align 4
  %310 = ptrtoint ptr %309 to i32
  %311 = and i32 %310, 1
  %312 = icmp eq i32 %311, 0
  %313 = select i1 %312, ptr null, ptr %309
  %314 = getelementptr %struct.assoc_array_node, ptr %76, i32 0, i32 2, i32 12
  store ptr %313, ptr %314, align 8
  %315 = getelementptr %struct.assoc_array_node, ptr %36, i32 0, i32 2, i32 13
  %316 = load ptr, ptr %315, align 4
  %317 = ptrtoint ptr %316 to i32
  %318 = and i32 %317, 1
  %319 = icmp eq i32 %318, 0
  %320 = select i1 %319, ptr null, ptr %316
  %321 = getelementptr %struct.assoc_array_node, ptr %76, i32 0, i32 2, i32 13
  store ptr %320, ptr %321, align 4
  %322 = getelementptr %struct.assoc_array_node, ptr %36, i32 0, i32 2, i32 14
  %323 = load ptr, ptr %322, align 4
  %324 = ptrtoint ptr %323 to i32
  %325 = and i32 %324, 1
  %326 = icmp eq i32 %325, 0
  %327 = select i1 %326, ptr null, ptr %323
  %328 = getelementptr %struct.assoc_array_node, ptr %76, i32 0, i32 2, i32 14
  store ptr %327, ptr %328, align 8
  %329 = getelementptr %struct.assoc_array_node, ptr %36, i32 0, i32 2, i32 15
  %330 = load ptr, ptr %329, align 4
  %331 = ptrtoint ptr %330 to i32
  %332 = and i32 %331, 1
  %333 = icmp eq i32 %332, 0
  %334 = select i1 %333, ptr null, ptr %330
  %335 = getelementptr %struct.assoc_array_node, ptr %76, i32 0, i32 2, i32 15
  store ptr %334, ptr %335, align 4
  %336 = getelementptr %struct.assoc_array_node, ptr %76, i32 0, i32 2, i32 %216
  %337 = load ptr, ptr %336, align 4
  %338 = icmp eq ptr %337, null
  br i1 %338, label %340, label %339, !prof !11

339:                                              ; preds = %222
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 652, 0\0A.popsection", ""() #8, !srcloc !22
  unreachable

340:                                              ; preds = %222
  store ptr %89, ptr %336, align 4
  br label %341

341:                                              ; preds = %366, %340
  %342 = phi i32 [ 0, %340 ], [ %368, %366 ]
  %343 = phi i32 [ 0, %340 ], [ %369, %366 ]
  %344 = phi i32 [ -1, %340 ], [ %367, %366 ]
  %345 = getelementptr %struct.assoc_array_node, ptr %36, i32 0, i32 2, i32 %343
  %346 = load ptr, ptr %345, align 4
  %347 = ptrtoint ptr %346 to i32
  %348 = and i32 %347, 1
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %366

350:                                              ; preds = %341
  %351 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 16, i32 %343
  %352 = load i8, ptr %351, align 1
  %353 = icmp eq i8 %202, %352
  br i1 %353, label %354, label %359

354:                                              ; preds = %350
  %355 = add i32 %342, 1
  %356 = getelementptr %struct.assoc_array_node, ptr %84, i32 0, i32 2, i32 %342
  store ptr %346, ptr %356, align 4
  %357 = load i32, ptr %198, align 8
  %358 = add i32 %357, 1
  store i32 %358, ptr %198, align 8
  br label %366

359:                                              ; preds = %359, %350
  %360 = phi i32 [ %361, %359 ], [ %344, %350 ]
  %361 = add i32 %360, 1
  %362 = getelementptr %struct.assoc_array_node, ptr %76, i32 0, i32 2, i32 %361
  %363 = load ptr, ptr %362, align 4
  %364 = icmp eq ptr %363, null
  br i1 %364, label %365, label %359

365:                                              ; preds = %359
  store ptr %346, ptr %362, align 4
  br label %366

366:                                              ; preds = %365, %354, %341
  %367 = phi i32 [ %344, %341 ], [ %344, %354 ], [ %361, %365 ]
  %368 = phi i32 [ %342, %341 ], [ %355, %354 ], [ %342, %365 ]
  %369 = add nuw nsw i32 %343, 1
  %370 = icmp eq i32 %369, 16
  br i1 %370, label %371, label %341

371:                                              ; preds = %366
  %372 = load i8, ptr %43, align 8
  %373 = icmp eq i8 %202, %372
  br i1 %373, label %380, label %374

374:                                              ; preds = %374, %371
  %375 = phi i32 [ %376, %374 ], [ %367, %371 ]
  %376 = add i32 %375, 1
  %377 = getelementptr %struct.assoc_array_node, ptr %76, i32 0, i32 2, i32 %376
  %378 = load ptr, ptr %377, align 4
  %379 = icmp eq ptr %378, null
  br i1 %379, label %383, label %374

380:                                              ; preds = %371
  %381 = add i32 %368, 1
  %382 = getelementptr %struct.assoc_array_node, ptr %84, i32 0, i32 2, i32 %368
  br label %383

383:                                              ; preds = %380, %374
  %384 = phi ptr [ %382, %380 ], [ %377, %374 ]
  %385 = phi ptr [ %84, %380 ], [ %76, %374 ]
  %386 = phi i32 [ %381, %380 ], [ %368, %374 ]
  %387 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 5
  store ptr %384, ptr %387, align 8
  %388 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 12
  store ptr %385, ptr %388, align 8
  %389 = icmp slt i32 %386, 2
  br i1 %389, label %390, label %391, !prof !9

390:                                              ; preds = %383
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 685, 0\0A.popsection", ""() #8, !srcloc !23
  unreachable

391:                                              ; preds = %383
  %392 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 11
  store ptr %81, ptr %392, align 4
  br label %393

393:                                              ; preds = %409, %391
  %394 = phi i32 [ 0, %391 ], [ %410, %409 ]
  %395 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 16, i32 %394
  %396 = load i8, ptr %395, align 1
  %397 = icmp eq i8 %396, -1
  br i1 %397, label %398, label %409

398:                                              ; preds = %393
  %399 = getelementptr %struct.assoc_array_node, ptr %36, i32 0, i32 2, i32 %394
  %400 = load ptr, ptr %399, align 4
  %401 = ptrtoint ptr %400 to i32
  %402 = and i32 %401, 1
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %404, label %405, !prof !9

404:                                              ; preds = %398
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 691, 0\0A.popsection", ""() #8, !srcloc !24
  unreachable

405:                                              ; preds = %398
  %406 = and i32 %401, -4
  %407 = inttoptr i32 %406 to ptr
  %408 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 10, i32 %394
  store ptr %407, ptr %408, align 4
  br label %409

409:                                              ; preds = %405, %393
  %410 = add nuw nsw i32 %394, 1
  %411 = icmp eq i32 %410, 16
  br i1 %411, label %412, label %393

412:                                              ; preds = %409
  %413 = load ptr, ptr %36, align 4
  %414 = icmp eq ptr %413, null
  br i1 %414, label %415, label %417

415:                                              ; preds = %412
  %416 = load ptr, ptr %15, align 8
  br label %430

417:                                              ; preds = %412
  %418 = ptrtoint ptr %413 to i32
  %419 = and i32 %418, 2
  %420 = icmp eq i32 %419, 0
  %421 = and i32 %418, -4
  %422 = inttoptr i32 %421 to ptr
  br i1 %420, label %423, label %428

423:                                              ; preds = %417
  %424 = getelementptr inbounds %struct.assoc_array_node, ptr %36, i32 0, i32 1
  %425 = load i8, ptr %424, align 4
  %426 = zext i8 %425 to i32
  %427 = getelementptr %struct.assoc_array_node, ptr %422, i32 0, i32 2, i32 %426
  br label %430

428:                                              ; preds = %417
  %429 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %422, i32 0, i32 3
  br label %430

430:                                              ; preds = %428, %423, %415
  %431 = phi ptr [ %427, %423 ], [ %429, %428 ], [ %416, %415 ]
  %432 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 14
  store ptr %431, ptr %432, align 8
  %433 = ptrtoint ptr %36 to i32
  %434 = or i32 %433, 1
  %435 = inttoptr i32 %434 to ptr
  %436 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 8
  store ptr %435, ptr %436, align 4
  br label %698

437:                                              ; preds = %451, %185
  %438 = phi i32 [ 2147483647, %185 ], [ %452, %451 ]
  %439 = phi i32 [ 0, %185 ], [ %453, %451 ]
  %440 = load ptr, ptr %186, align 4
  %441 = getelementptr %struct.assoc_array_node, ptr %36, i32 0, i32 2, i32 %439
  %442 = load ptr, ptr %441, align 4
  %443 = ptrtoint ptr %442 to i32
  %444 = and i32 %443, -2
  %445 = inttoptr i32 %444 to ptr
  %446 = tail call i32 %440(ptr noundef %445, ptr noundef %2) #8
  %447 = icmp slt i32 %446, %438
  br i1 %447, label %448, label %451

448:                                              ; preds = %437
  %449 = icmp slt i32 %446, 0
  br i1 %449, label %450, label %451, !prof !9

450:                                              ; preds = %448
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 734, 0\0A.popsection", ""() #8, !srcloc !25
  unreachable

451:                                              ; preds = %448, %437
  %452 = phi i32 [ %438, %437 ], [ %446, %448 ]
  %453 = add nuw nsw i32 %439, 1
  %454 = icmp eq i32 %453, 16
  br i1 %454, label %455, label %437

455:                                              ; preds = %451
  %456 = icmp eq i32 %452, 2147483647
  br i1 %456, label %457, label %458, !prof !9

457:                                              ; preds = %455
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 738, 0\0A.popsection", ""() #8, !srcloc !26
  unreachable

458:                                              ; preds = %455
  %459 = add i32 %38, 4
  %460 = icmp slt i32 %452, %459
  br i1 %460, label %461, label %462, !prof !9

461:                                              ; preds = %458
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 739, 0\0A.popsection", ""() #8, !srcloc !27
  unreachable

462:                                              ; preds = %458
  %463 = add i32 %452, -1
  %464 = or i32 %463, 31
  %465 = add i32 %464, 1
  %466 = lshr exact i32 %465, 5
  %467 = lshr exact i32 %465, 3
  %468 = add nuw nsw i32 %467, 16
  %469 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %468, i32 noundef 3520) #10
  %470 = icmp eq ptr %469, null
  br i1 %470, label %673, label %471

471:                                              ; preds = %462
  %472 = ptrtoint ptr %469 to i32
  %473 = or i32 %472, 3
  %474 = inttoptr i32 %473 to ptr
  %475 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 7, i32 2
  store ptr %474, ptr %475, align 8
  %476 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 14, i32 0, i32 1
  store ptr %474, ptr %476, align 4
  %477 = load ptr, ptr %36, align 4
  store ptr %477, ptr %469, align 64
  %478 = getelementptr inbounds %struct.assoc_array_node, ptr %36, i32 0, i32 1
  %479 = load i8, ptr %478, align 4
  %480 = zext i8 %479 to i32
  %481 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %469, i32 0, i32 1
  store i32 %480, ptr %481, align 4
  %482 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %469, i32 0, i32 3
  store ptr %81, ptr %482, align 4
  store ptr %474, ptr %76, align 8
  %483 = getelementptr inbounds %struct.assoc_array_node, ptr %76, i32 0, i32 1
  store i8 0, ptr %483, align 4
  store ptr %81, ptr %84, align 8
  %484 = getelementptr inbounds %struct.assoc_array_node, ptr %84, i32 0, i32 1
  store i8 -1, ptr %484, align 4
  %485 = and i32 %452, -4
  %486 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %469, i32 0, i32 2
  store i32 %485, ptr %486, align 8
  %487 = icmp slt i32 %485, 1
  br i1 %487, label %492, label %488, !prof !9

488:                                              ; preds = %471
  %489 = icmp eq i32 %465, 0
  br i1 %489, label %501, label %490

490:                                              ; preds = %488
  %491 = tail call i32 @llvm.umax.i32(i32 %466, i32 1) #8
  br label %493

492:                                              ; preds = %471
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 760, 0\0A.popsection", ""() #8, !srcloc !28
  unreachable

493:                                              ; preds = %493, %490
  %494 = phi i32 [ %499, %493 ], [ 0, %490 ]
  %495 = load ptr, ptr %1, align 4
  %496 = shl i32 %494, 5
  %497 = tail call i32 %495(ptr noundef %2, i32 noundef %496) #8
  %498 = getelementptr %struct.assoc_array_shortcut, ptr %469, i32 0, i32 4, i32 %494
  store i32 %497, ptr %498, align 4
  %499 = add nuw nsw i32 %494, 1
  %500 = icmp eq i32 %499, %491
  br i1 %500, label %501, label %493

501:                                              ; preds = %493, %488
  %502 = and i32 %452, 28
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %511, label %504

504:                                              ; preds = %501
  %505 = shl nsw i32 -1, %502
  %506 = xor i32 %505, -1
  %507 = add nsw i32 %466, -1
  %508 = getelementptr %struct.assoc_array_shortcut, ptr %469, i32 0, i32 4, i32 %507
  %509 = load i32, ptr %508, align 4
  %510 = and i32 %509, %506
  store i32 %510, ptr %508, align 4
  br label %511

511:                                              ; preds = %504, %501
  br label %512

512:                                              ; preds = %512, %511
  %513 = phi i32 [ %525, %512 ], [ 0, %511 ]
  %514 = getelementptr %struct.assoc_array_node, ptr %36, i32 0, i32 2, i32 %513
  %515 = load ptr, ptr %514, align 4
  %516 = load ptr, ptr %91, align 4
  %517 = ptrtoint ptr %515 to i32
  %518 = and i32 %517, -2
  %519 = inttoptr i32 %518 to ptr
  %520 = tail call i32 %516(ptr noundef %519, i32 noundef %485) #8
  %521 = lshr i32 %520, %502
  %522 = trunc i32 %521 to i8
  %523 = and i8 %522, 15
  %524 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 16, i32 %513
  store i8 %523, ptr %524, align 1
  %525 = add nuw nsw i32 %513, 1
  %526 = icmp eq i32 %525, 16
  br i1 %526, label %527, label %512

527:                                              ; preds = %512
  %528 = load ptr, ptr %1, align 4
  %529 = tail call i32 %528(ptr noundef %2, i32 noundef %485) #8
  %530 = lshr i32 %529, %502
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 15
  store i8 %532, ptr %43, align 8
  br label %194

533:                                              ; preds = %14
  %534 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %5, i32 0, i32 1
  %535 = load ptr, ptr %534, align 4
  %536 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %5, i32 0, i32 1, i32 1
  %537 = load i32, ptr %536, align 4
  %538 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %5, i32 0, i32 1, i32 2
  %539 = load i32, ptr %538, align 4
  %540 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %5, i32 0, i32 1, i32 3
  %541 = load i32, ptr %540, align 4
  %542 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %5, i32 0, i32 1, i32 4
  %543 = load i32, ptr %542, align 4
  %544 = tail call i32 @llvm.cttz.i32(i32 %543, i1 false) #8, !range !29
  %545 = and i32 %544, 60
  %546 = and i32 %539, -32
  %547 = add i32 %545, %546
  %548 = load ptr, ptr %535, align 4
  %549 = icmp eq ptr %548, null
  br i1 %549, label %550, label %552

550:                                              ; preds = %533
  %551 = load ptr, ptr %15, align 8
  br label %563

552:                                              ; preds = %533
  %553 = ptrtoint ptr %548 to i32
  %554 = and i32 %553, 2
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %562

556:                                              ; preds = %552
  %557 = and i32 %553, -4
  %558 = inttoptr i32 %557 to ptr
  %559 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %535, i32 0, i32 1
  %560 = load i32, ptr %559, align 4
  %561 = getelementptr %struct.assoc_array_node, ptr %558, i32 0, i32 2, i32 %560
  br label %563

562:                                              ; preds = %552
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 829, 0\0A.popsection", ""() #8, !srcloc !30
  unreachable

563:                                              ; preds = %556, %550
  %564 = phi ptr [ %561, %556 ], [ %551, %550 ]
  %565 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 14
  store ptr %564, ptr %565, align 8
  %566 = ptrtoint ptr %535 to i32
  %567 = or i32 %566, 3
  %568 = inttoptr i32 %567 to ptr
  %569 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 8
  store ptr %568, ptr %569, align 4
  %570 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %571 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %570, i32 noundef 3520, i32 noundef 76) #9
  %572 = icmp eq ptr %571, null
  br i1 %572, label %673, label %573

573:                                              ; preds = %563
  %574 = ptrtoint ptr %571 to i32
  %575 = or i32 %574, 1
  %576 = inttoptr i32 %575 to ptr
  %577 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 7
  store ptr %576, ptr %577, align 8
  %578 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 12
  store ptr %571, ptr %578, align 8
  %579 = add i32 %537, 4
  %580 = icmp sgt i32 %547, %579
  br i1 %580, label %581, label %612

581:                                              ; preds = %573
  %582 = add nsw i32 %547, -1
  %583 = or i32 %582, 31
  %584 = add i32 %583, 1
  %585 = lshr exact i32 %584, 3
  %586 = add nuw nsw i32 %585, 16
  %587 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %586, i32 noundef 3520) #10
  %588 = icmp eq ptr %587, null
  br i1 %588, label %673, label %589

589:                                              ; preds = %581
  %590 = lshr exact i32 %584, 5
  %591 = ptrtoint ptr %587 to i32
  %592 = or i32 %591, 3
  %593 = inttoptr i32 %592 to ptr
  %594 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 7, i32 1
  store ptr %593, ptr %594, align 4
  %595 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 14, i32 0, i32 1
  store ptr %593, ptr %595, align 4
  %596 = load ptr, ptr %535, align 4
  store ptr %596, ptr %587, align 64
  %597 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %535, i32 0, i32 1
  %598 = load i32, ptr %597, align 4
  %599 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %587, i32 0, i32 1
  store i32 %598, ptr %599, align 4
  %600 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %587, i32 0, i32 3
  store ptr %576, ptr %600, align 4
  %601 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %587, i32 0, i32 2
  store i32 %547, ptr %601, align 8
  store ptr %593, ptr %571, align 8
  %602 = getelementptr inbounds %struct.assoc_array_node, ptr %571, i32 0, i32 1
  store i8 0, ptr %602, align 4
  %603 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %587, i32 0, i32 4
  %604 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %535, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 16 %603, ptr align 4 %604, i32 %585, i1 false) #8
  %605 = and i32 %547, 28
  %606 = shl nsw i32 -1, %605
  %607 = xor i32 %606, -1
  %608 = add nsw i32 %590, -1
  %609 = getelementptr %struct.assoc_array_shortcut, ptr %587, i32 0, i32 4, i32 %608
  %610 = load i32, ptr %609, align 4
  %611 = and i32 %610, %607
  store i32 %611, ptr %609, align 4
  br label %620

612:                                              ; preds = %573
  %613 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 14, i32 0, i32 1
  store ptr %576, ptr %613, align 4
  %614 = load ptr, ptr %535, align 4
  store ptr %614, ptr %571, align 8
  %615 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %535, i32 0, i32 1
  %616 = load i32, ptr %615, align 4
  %617 = trunc i32 %616 to i8
  %618 = getelementptr inbounds %struct.assoc_array_node, ptr %571, i32 0, i32 1
  store i8 %617, ptr %618, align 4
  %619 = and i32 %547, 28
  br label %620

620:                                              ; preds = %612, %589
  %621 = phi i32 [ %619, %612 ], [ %605, %589 ]
  %622 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %535, i32 0, i32 3
  %623 = load ptr, ptr %622, align 4
  %624 = ptrtoint ptr %623 to i32
  %625 = and i32 %624, -4
  %626 = inttoptr i32 %625 to ptr
  %627 = getelementptr inbounds %struct.assoc_array_node, ptr %626, i32 0, i32 3
  %628 = load i32, ptr %627, align 4
  %629 = getelementptr inbounds %struct.assoc_array_node, ptr %571, i32 0, i32 3
  store i32 %628, ptr %629, align 8
  %630 = lshr i32 %541, %621
  %631 = and i32 %630, 15
  %632 = add i32 %547, 4
  %633 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %535, i32 0, i32 2
  %634 = load i32, ptr %633, align 4
  %635 = icmp slt i32 %632, %634
  br i1 %635, label %636, label %657

636:                                              ; preds = %620
  %637 = add nsw i32 %634, -1
  %638 = or i32 %637, 31
  %639 = add i32 %638, 1
  %640 = lshr exact i32 %639, 3
  %641 = add nuw nsw i32 %640, 16
  %642 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %641, i32 noundef 3520) #10
  %643 = icmp eq ptr %642, null
  br i1 %643, label %673, label %644

644:                                              ; preds = %636
  %645 = ptrtoint ptr %642 to i32
  %646 = or i32 %645, 3
  %647 = inttoptr i32 %646 to ptr
  %648 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 7, i32 2
  store ptr %647, ptr %648, align 8
  store ptr %576, ptr %642, align 64
  %649 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %642, i32 0, i32 1
  store i32 %631, ptr %649, align 4
  %650 = load ptr, ptr %622, align 4
  %651 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %642, i32 0, i32 3
  store ptr %650, ptr %651, align 4
  %652 = load i32, ptr %633, align 4
  %653 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %642, i32 0, i32 2
  store i32 %652, ptr %653, align 8
  %654 = getelementptr %struct.assoc_array_node, ptr %571, i32 0, i32 2, i32 %631
  store ptr %647, ptr %654, align 4
  %655 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %642, i32 0, i32 4
  %656 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %535, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 16 %655, ptr align 4 %656, i32 %640, i1 false) #8
  br label %664

657:                                              ; preds = %620
  %658 = load ptr, ptr %622, align 4
  %659 = getelementptr %struct.assoc_array_node, ptr %571, i32 0, i32 2, i32 %631
  store ptr %658, ptr %659, align 4
  %660 = getelementptr inbounds %struct.assoc_array_node, ptr %626, i32 0, i32 1
  %661 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 15
  store ptr %660, ptr %661, align 8
  %662 = trunc i32 %631 to i8
  %663 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 15, i32 0, i32 1
  store i8 %662, ptr %663, align 4
  br label %664

664:                                              ; preds = %657, %644
  %665 = phi ptr [ %576, %657 ], [ %647, %644 ]
  %666 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 14, i32 1
  store ptr %626, ptr %666, align 8
  %667 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 14, i32 1, i32 1
  store ptr %665, ptr %667, align 4
  %668 = icmp eq i32 %631, 0
  %669 = getelementptr %struct.assoc_array_node, ptr %571, i32 0, i32 2, i32 1
  %670 = getelementptr inbounds %struct.assoc_array_node, ptr %571, i32 0, i32 2
  %671 = select i1 %668, ptr %669, ptr %670
  %672 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 5
  store ptr %671, ptr %672, align 8
  br label %698

673:                                              ; preds = %636, %581, %563, %462, %78, %74, %20, %14
  %674 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 7, i32 0
  %675 = load ptr, ptr %674, align 8
  %676 = icmp eq ptr %675, null
  br i1 %676, label %681, label %677

677:                                              ; preds = %673
  %678 = ptrtoint ptr %675 to i32
  %679 = and i32 %678, -4
  %680 = inttoptr i32 %679 to ptr
  tail call void @kfree(ptr noundef %680) #8
  br label %681

681:                                              ; preds = %677, %673
  %682 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 7, i32 1
  %683 = load ptr, ptr %682, align 4
  %684 = icmp eq ptr %683, null
  br i1 %684, label %689, label %685

685:                                              ; preds = %681
  %686 = ptrtoint ptr %683 to i32
  %687 = and i32 %686, -4
  %688 = inttoptr i32 %687 to ptr
  tail call void @kfree(ptr noundef %688) #8
  br label %689

689:                                              ; preds = %685, %681
  %690 = getelementptr %struct.assoc_array_edit, ptr %12, i32 0, i32 7, i32 2
  %691 = load ptr, ptr %690, align 8
  %692 = icmp eq ptr %691, null
  br i1 %692, label %697, label %693

693:                                              ; preds = %689
  %694 = ptrtoint ptr %691 to i32
  %695 = and i32 %694, -4
  %696 = inttoptr i32 %695 to ptr
  tail call void @kfree(ptr noundef %696) #8
  br label %697

697:                                              ; preds = %693, %689
  tail call void @kfree(ptr noundef %12) #8
  br label %698

698:                                              ; preds = %697, %664, %430, %70, %60, %24, %10
  %699 = phi ptr [ inttoptr (i32 -12 to ptr), %697 ], [ %12, %664 ], [ inttoptr (i32 -12 to ptr), %10 ], [ %12, %24 ], [ %12, %60 ], [ %12, %70 ], [ %12, %430 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  ret ptr %699
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @assoc_array_cancel_edit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr %struct.assoc_array_edit, ptr %0, i32 0, i32 7, i32 0
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = ptrtoint ptr %3 to i32
  %7 = and i32 %6, -4
  %8 = inttoptr i32 %7 to ptr
  tail call void @kfree(ptr noundef %8) #8
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr %struct.assoc_array_edit, ptr %0, i32 0, i32 7, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = ptrtoint ptr %11 to i32
  %15 = and i32 %14, -4
  %16 = inttoptr i32 %15 to ptr
  tail call void @kfree(ptr noundef %16) #8
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr %struct.assoc_array_edit, ptr %0, i32 0, i32 7, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = ptrtoint ptr %19 to i32
  %23 = and i32 %22, -4
  %24 = inttoptr i32 %23 to ptr
  tail call void @kfree(ptr noundef %24) #8
  br label %25

25:                                               ; preds = %21, %17
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @assoc_array_insert_set_object(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5, !prof !9

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1032, 0\0A.popsection", ""() #8, !srcloc !31
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.assoc_array_edit, ptr %0, i32 0, i32 4
  store ptr %1, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @assoc_array_delete(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.assoc_array_delete_collapse_context, align 4
  %5 = alloca %struct.assoc_array_walk_result, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !8
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 172) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %261, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.assoc_array_edit, ptr %7, i32 0, i32 1
  store ptr %0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.assoc_array_edit, ptr %7, i32 0, i32 2
  store ptr %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.assoc_array_edit, ptr %7, i32 0, i32 13
  store i32 -1, ptr %12, align 4
  %13 = call fastcc i32 @assoc_array_walk(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5)
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %35

15:                                               ; preds = %9
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.assoc_array_ops, ptr %1, i32 0, i32 2
  br label %18

18:                                               ; preds = %32, %15
  %19 = phi i32 [ 0, %15 ], [ %33, %32 ]
  %20 = getelementptr %struct.assoc_array_node, ptr %16, i32 0, i32 2, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %18
  %24 = ptrtoint ptr %21 to i32
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load ptr, ptr %17, align 4
  %29 = and i32 %24, -2
  %30 = inttoptr i32 %29 to ptr
  %31 = tail call zeroext i1 %28(ptr noundef %30, ptr noundef %2) #8
  br i1 %31, label %60, label %32

32:                                               ; preds = %27, %23, %18
  %33 = add nuw nsw i32 %19, 1
  %34 = icmp eq i32 %33, 16
  br i1 %34, label %35, label %18

35:                                               ; preds = %32, %9
  %36 = getelementptr %struct.assoc_array_edit, ptr %7, i32 0, i32 7, i32 0
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = ptrtoint ptr %37 to i32
  %41 = and i32 %40, -4
  %42 = inttoptr i32 %41 to ptr
  tail call void @kfree(ptr noundef %42) #8
  br label %43

43:                                               ; preds = %39, %35
  %44 = getelementptr %struct.assoc_array_edit, ptr %7, i32 0, i32 7, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = ptrtoint ptr %45 to i32
  %49 = and i32 %48, -4
  %50 = inttoptr i32 %49 to ptr
  tail call void @kfree(ptr noundef %50) #8
  br label %51

51:                                               ; preds = %47, %43
  %52 = getelementptr %struct.assoc_array_edit, ptr %7, i32 0, i32 7, i32 2
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = ptrtoint ptr %53 to i32
  %57 = and i32 %56, -4
  %58 = inttoptr i32 %57 to ptr
  tail call void @kfree(ptr noundef %58) #8
  br label %59

59:                                               ; preds = %55, %51
  tail call void @kfree(ptr noundef nonnull %7) #8
  br label %261

60:                                               ; preds = %27
  %61 = getelementptr inbounds %struct.assoc_array, ptr %0, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65, !prof !9

64:                                               ; preds = %60
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1125, 0\0A.popsection", ""() #8, !srcloc !32
  unreachable

65:                                               ; preds = %60
  %66 = load ptr, ptr %20, align 4
  %67 = getelementptr inbounds %struct.assoc_array_edit, ptr %7, i32 0, i32 6
  store ptr %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.assoc_array_edit, ptr %7, i32 0, i32 14
  store ptr %20, ptr %68, align 8
  %69 = getelementptr inbounds %struct.assoc_array_edit, ptr %7, i32 0, i32 14, i32 0, i32 1
  store ptr null, ptr %69, align 4
  %70 = getelementptr inbounds %struct.assoc_array_edit, ptr %7, i32 0, i32 12
  store ptr %16, ptr %70, align 8
  %71 = icmp eq i32 %62, 1
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = getelementptr %struct.assoc_array_edit, ptr %7, i32 0, i32 14, i32 1
  store ptr %0, ptr %73, align 8
  %74 = getelementptr %struct.assoc_array_edit, ptr %7, i32 0, i32 14, i32 1, i32 1
  store ptr null, ptr %74, align 4
  store ptr null, ptr %70, align 8
  %75 = load ptr, ptr %0, align 4
  %76 = getelementptr inbounds %struct.assoc_array_edit, ptr %7, i32 0, i32 9
  store ptr %75, ptr %76, align 8
  br label %261

77:                                               ; preds = %65
  %78 = getelementptr inbounds %struct.assoc_array_node, ptr %16, i32 0, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = icmp ult i32 %79, 18
  br i1 %80, label %81, label %261

81:                                               ; preds = %77
  %82 = getelementptr %struct.assoc_array_node, ptr %16, i32 0, i32 2, i32 0
  %83 = load ptr, ptr %82, align 4
  %84 = ptrtoint ptr %83 to i32
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %177

87:                                               ; preds = %81
  %88 = getelementptr %struct.assoc_array_node, ptr %16, i32 0, i32 2, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = ptrtoint ptr %89 to i32
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %177

93:                                               ; preds = %87
  %94 = getelementptr %struct.assoc_array_node, ptr %16, i32 0, i32 2, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = ptrtoint ptr %95 to i32
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %177

99:                                               ; preds = %93
  %100 = getelementptr %struct.assoc_array_node, ptr %16, i32 0, i32 2, i32 3
  %101 = load ptr, ptr %100, align 4
  %102 = ptrtoint ptr %101 to i32
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %177

105:                                              ; preds = %99
  %106 = getelementptr %struct.assoc_array_node, ptr %16, i32 0, i32 2, i32 4
  %107 = load ptr, ptr %106, align 4
  %108 = ptrtoint ptr %107 to i32
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %177

111:                                              ; preds = %105
  %112 = getelementptr %struct.assoc_array_node, ptr %16, i32 0, i32 2, i32 5
  %113 = load ptr, ptr %112, align 4
  %114 = ptrtoint ptr %113 to i32
  %115 = and i32 %114, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %177

117:                                              ; preds = %111
  %118 = getelementptr %struct.assoc_array_node, ptr %16, i32 0, i32 2, i32 6
  %119 = load ptr, ptr %118, align 4
  %120 = ptrtoint ptr %119 to i32
  %121 = and i32 %120, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %177

123:                                              ; preds = %117
  %124 = getelementptr %struct.assoc_array_node, ptr %16, i32 0, i32 2, i32 7
  %125 = load ptr, ptr %124, align 4
  %126 = ptrtoint ptr %125 to i32
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %177

129:                                              ; preds = %123
  %130 = getelementptr %struct.assoc_array_node, ptr %16, i32 0, i32 2, i32 8
  %131 = load ptr, ptr %130, align 4
  %132 = ptrtoint ptr %131 to i32
  %133 = and i32 %132, 1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %177

135:                                              ; preds = %129
  %136 = getelementptr %struct.assoc_array_node, ptr %16, i32 0, i32 2, i32 9
  %137 = load ptr, ptr %136, align 4
  %138 = ptrtoint ptr %137 to i32
  %139 = and i32 %138, 1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %177

141:                                              ; preds = %135
  %142 = getelementptr %struct.assoc_array_node, ptr %16, i32 0, i32 2, i32 10
  %143 = load ptr, ptr %142, align 4
  %144 = ptrtoint ptr %143 to i32
  %145 = and i32 %144, 1
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %177

147:                                              ; preds = %141
  %148 = getelementptr %struct.assoc_array_node, ptr %16, i32 0, i32 2, i32 11
  %149 = load ptr, ptr %148, align 4
  %150 = ptrtoint ptr %149 to i32
  %151 = and i32 %150, 1
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %177

153:                                              ; preds = %147
  %154 = getelementptr %struct.assoc_array_node, ptr %16, i32 0, i32 2, i32 12
  %155 = load ptr, ptr %154, align 4
  %156 = ptrtoint ptr %155 to i32
  %157 = and i32 %156, 1
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %177

159:                                              ; preds = %153
  %160 = getelementptr %struct.assoc_array_node, ptr %16, i32 0, i32 2, i32 13
  %161 = load ptr, ptr %160, align 4
  %162 = ptrtoint ptr %161 to i32
  %163 = and i32 %162, 1
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %177

165:                                              ; preds = %159
  %166 = getelementptr %struct.assoc_array_node, ptr %16, i32 0, i32 2, i32 14
  %167 = load ptr, ptr %166, align 4
  %168 = ptrtoint ptr %167 to i32
  %169 = and i32 %168, 1
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %165
  %172 = getelementptr %struct.assoc_array_node, ptr %16, i32 0, i32 2, i32 15
  %173 = load ptr, ptr %172, align 4
  %174 = ptrtoint ptr %173 to i32
  %175 = and i32 %174, 1
  %176 = icmp eq i32 %175, 0
  br label %177

177:                                              ; preds = %171, %165, %159, %153, %147, %141, %135, %129, %123, %117, %111, %105, %99, %93, %87, %81
  %178 = phi i1 [ false, %81 ], [ false, %87 ], [ false, %93 ], [ false, %99 ], [ false, %105 ], [ false, %111 ], [ false, %117 ], [ false, %123 ], [ false, %129 ], [ false, %135 ], [ false, %141 ], [ false, %147 ], [ false, %153 ], [ false, %159 ], [ false, %165 ], [ %176, %171 ]
  br label %179

179:                                              ; preds = %194, %177
  %180 = phi ptr [ %16, %177 ], [ %197, %194 ]
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %201, label %183

183:                                              ; preds = %179
  %184 = ptrtoint ptr %181 to i32
  %185 = and i32 %184, 2
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %194, label %187

187:                                              ; preds = %183
  %188 = and i32 %184, -4
  %189 = inttoptr i32 %188 to ptr
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %201, label %192

192:                                              ; preds = %187
  %193 = ptrtoint ptr %190 to i32
  br label %194

194:                                              ; preds = %192, %183
  %195 = phi i32 [ %193, %192 ], [ %184, %183 ]
  %196 = and i32 %195, -4
  %197 = inttoptr i32 %196 to ptr
  %198 = getelementptr inbounds %struct.assoc_array_node, ptr %197, i32 0, i32 3
  %199 = load i32, ptr %198, align 4
  %200 = icmp ult i32 %199, 18
  br i1 %200, label %179, label %201

201:                                              ; preds = %194, %187, %179
  %202 = icmp eq ptr %180, %16
  %203 = select i1 %178, i1 %202, i1 false
  br i1 %203, label %261, label %204

204:                                              ; preds = %201
  %205 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %206 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %205, i32 noundef 3520, i32 noundef 76) #9
  %207 = icmp eq ptr %206, null
  br i1 %207, label %260, label %208

208:                                              ; preds = %204
  %209 = ptrtoint ptr %206 to i32
  %210 = or i32 %209, 1
  %211 = inttoptr i32 %210 to ptr
  %212 = getelementptr inbounds %struct.assoc_array_edit, ptr %7, i32 0, i32 7
  store ptr %211, ptr %212, align 8
  %213 = load ptr, ptr %180, align 4
  store ptr %213, ptr %206, align 8
  %214 = getelementptr inbounds %struct.assoc_array_node, ptr %180, i32 0, i32 1
  %215 = load i8, ptr %214, align 4
  %216 = getelementptr inbounds %struct.assoc_array_node, ptr %206, i32 0, i32 1
  store i8 %215, ptr %216, align 4
  %217 = getelementptr inbounds %struct.assoc_array_node, ptr %180, i32 0, i32 3
  %218 = load i32, ptr %217, align 4
  %219 = getelementptr inbounds %struct.assoc_array_node, ptr %206, i32 0, i32 3
  store i32 %218, ptr %219, align 8
  store ptr %206, ptr %70, align 8
  store ptr %206, ptr %4, align 4
  %220 = load ptr, ptr %67, align 4
  %221 = ptrtoint ptr %220 to i32
  %222 = and i32 %221, -2
  %223 = inttoptr i32 %222 to ptr
  %224 = getelementptr inbounds %struct.assoc_array_delete_collapse_context, ptr %4, i32 0, i32 1
  store ptr %223, ptr %224, align 4
  %225 = getelementptr inbounds %struct.assoc_array_delete_collapse_context, ptr %4, i32 0, i32 2
  store i32 0, ptr %225, align 4
  %226 = ptrtoint ptr %180 to i32
  %227 = or i32 %226, 1
  %228 = inttoptr i32 %227 to ptr
  %229 = load ptr, ptr %180, align 4
  %230 = call fastcc i32 @assoc_array_subtree_iterate(ptr noundef nonnull %228, ptr noundef %229, ptr noundef nonnull @assoc_array_delete_collapse_iterator, ptr noundef nonnull %4)
  %231 = load i32, ptr %225, align 4
  %232 = load i32, ptr %219, align 8
  %233 = add i32 %232, -1
  %234 = icmp eq i32 %231, %233
  br i1 %234, label %236, label %235, !prof !11

235:                                              ; preds = %208
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1227, 0\0A.popsection", ""() #8, !srcloc !33
  unreachable

236:                                              ; preds = %208
  %237 = load ptr, ptr %180, align 4
  %238 = icmp eq ptr %237, null
  br i1 %238, label %255, label %239

239:                                              ; preds = %236
  %240 = ptrtoint ptr %237 to i32
  %241 = and i32 %240, 1
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %239
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1232, 0\0A.popsection", ""() #8, !srcloc !34
  unreachable

244:                                              ; preds = %239
  %245 = and i32 %240, 2
  %246 = icmp eq i32 %245, 0
  %247 = and i32 %240, -4
  %248 = inttoptr i32 %247 to ptr
  br i1 %246, label %249, label %253

249:                                              ; preds = %244
  %250 = load i8, ptr %214, align 4
  %251 = zext i8 %250 to i32
  %252 = getelementptr %struct.assoc_array_node, ptr %248, i32 0, i32 2, i32 %251
  br label %255

253:                                              ; preds = %244
  %254 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %248, i32 0, i32 3
  br label %255

255:                                              ; preds = %253, %249, %236
  %256 = phi ptr [ %254, %253 ], [ %252, %249 ], [ %0, %236 ]
  %257 = getelementptr %struct.assoc_array_edit, ptr %7, i32 0, i32 14, i32 1
  store ptr %256, ptr %257, align 8
  %258 = getelementptr %struct.assoc_array_edit, ptr %7, i32 0, i32 14, i32 1, i32 1
  store ptr %211, ptr %258, align 4
  %259 = getelementptr inbounds %struct.assoc_array_edit, ptr %7, i32 0, i32 9
  store ptr %228, ptr %259, align 8
  br label %261

260:                                              ; preds = %204
  tail call void @assoc_array_cancel_edit(ptr noundef nonnull %7)
  br label %261

261:                                              ; preds = %260, %255, %201, %77, %72, %59, %3
  %262 = phi ptr [ %7, %72 ], [ inttoptr (i32 -12 to ptr), %260 ], [ null, %59 ], [ %7, %77 ], [ inttoptr (i32 -12 to ptr), %3 ], [ %7, %201 ], [ %7, %255 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  ret ptr %262
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @assoc_array_delete_collapse_iterator(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.assoc_array_delete_collapse_context, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.assoc_array_delete_collapse_context, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 15
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1053, 0\0A.popsection", ""() #8, !srcloc !35
  unreachable

11:                                               ; preds = %6
  %12 = load ptr, ptr %1, align 4
  %13 = add nsw i32 %8, 1
  store i32 %13, ptr %7, align 4
  %14 = getelementptr %struct.assoc_array_node, ptr %12, i32 0, i32 2, i32 %8
  store ptr %0, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @assoc_array_clear(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 172) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.assoc_array_edit, ptr %7, i32 0, i32 1
  store ptr %0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.assoc_array_edit, ptr %7, i32 0, i32 2
  store ptr %1, ptr %11, align 4
  %12 = getelementptr %struct.assoc_array_edit, ptr %7, i32 0, i32 14, i32 1
  store ptr %0, ptr %12, align 8
  %13 = getelementptr %struct.assoc_array_edit, ptr %7, i32 0, i32 14, i32 1, i32 1
  store ptr null, ptr %13, align 4
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.assoc_array_edit, ptr %7, i32 0, i32 9
  store ptr %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.assoc_array_edit, ptr %7, i32 0, i32 3
  store ptr %1, ptr %16, align 8
  br label %17

17:                                               ; preds = %9, %5, %2
  %18 = phi ptr [ %7, %9 ], [ null, %2 ], [ inttoptr (i32 -12 to ptr), %5 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @assoc_array_apply_edit(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !36
  %2 = getelementptr inbounds %struct.assoc_array_edit, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.assoc_array_edit, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  store ptr %7, ptr %3, align 4
  br label %8

8:                                                ; preds = %5, %1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !37
  %9 = getelementptr inbounds %struct.assoc_array_edit, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.assoc_array_edit, ptr %0, i32 0, i32 15, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  store i8 %14, ptr %10, align 1
  br label %15

15:                                               ; preds = %12, %8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !38
  %16 = getelementptr inbounds %struct.assoc_array_edit, ptr %0, i32 0, i32 11
  %17 = getelementptr %struct.assoc_array_edit, ptr %0, i32 0, i32 10, i32 0
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %16, align 4
  store ptr %21, ptr %18, align 4
  br label %22

22:                                               ; preds = %20, %15
  %23 = getelementptr %struct.assoc_array_edit, ptr %0, i32 0, i32 10, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %16, align 4
  store ptr %27, ptr %24, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr %struct.assoc_array_edit, ptr %0, i32 0, i32 10, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %16, align 4
  store ptr %33, ptr %30, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = getelementptr %struct.assoc_array_edit, ptr %0, i32 0, i32 10, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %16, align 4
  store ptr %39, ptr %36, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = getelementptr %struct.assoc_array_edit, ptr %0, i32 0, i32 10, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %16, align 4
  store ptr %45, ptr %42, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = getelementptr %struct.assoc_array_edit, ptr %0, i32 0, i32 10, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %16, align 4
  store ptr %51, ptr %48, align 4
  br label %52

52:                                               ; preds = %50, %46
  %53 = getelementptr %struct.assoc_array_edit, ptr %0, i32 0, i32 10, i32 6
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %16, align 4
  store ptr %57, ptr %54, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = getelementptr %struct.assoc_array_edit, ptr %0, i32 0, i32 10, i32 7
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %16, align 4
  store ptr %63, ptr %60, align 4
  br label %64

64:                                               ; preds = %62, %58
  %65 = getelementptr %struct.assoc_array_edit, ptr %0, i32 0, i32 10, i32 8
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %16, align 4
  store ptr %69, ptr %66, align 4
  br label %70

70:                                               ; preds = %68, %64
  %71 = getelementptr %struct.assoc_array_edit, ptr %0, i32 0, i32 10, i32 9
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %16, align 4
  store ptr %75, ptr %72, align 4
  br label %76

76:                                               ; preds = %74, %70
  %77 = getelementptr %struct.assoc_array_edit, ptr %0, i32 0, i32 10, i32 10
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %16, align 4
  store ptr %81, ptr %78, align 4
  br label %82

82:                                               ; preds = %80, %76
  %83 = getelementptr %struct.assoc_array_edit, ptr %0, i32 0, i32 10, i32 11
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %16, align 4
  store ptr %87, ptr %84, align 4
  br label %88

88:                                               ; preds = %86, %82
  %89 = getelementptr %struct.assoc_array_edit, ptr %0, i32 0, i32 10, i32 12
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %16, align 4
  store ptr %93, ptr %90, align 4
  br label %94

94:                                               ; preds = %92, %88
  %95 = getelementptr %struct.assoc_array_edit, ptr %0, i32 0, i32 10, i32 13
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr %16, align 4
  store ptr %99, ptr %96, align 4
  br label %100

100:                                              ; preds = %98, %94
  %101 = getelementptr %struct.assoc_array_edit, ptr %0, i32 0, i32 10, i32 14
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr %16, align 4
  store ptr %105, ptr %102, align 4
  br label %106

106:                                              ; preds = %104, %100
  %107 = getelementptr %struct.assoc_array_edit, ptr %0, i32 0, i32 10, i32 15
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = load ptr, ptr %16, align 4
  store ptr %111, ptr %108, align 4
  br label %112

112:                                              ; preds = %110, %106
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !39
  %113 = getelementptr %struct.assoc_array_edit, ptr %0, i32 0, i32 14, i32 0
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = getelementptr %struct.assoc_array_edit, ptr %0, i32 0, i32 14, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  store ptr %118, ptr %114, align 4
  br label %119

119:                                              ; preds = %116, %112
  %120 = getelementptr %struct.assoc_array_edit, ptr %0, i32 0, i32 14, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = getelementptr %struct.assoc_array_edit, ptr %0, i32 0, i32 14, i32 1, i32 1
  %125 = load ptr, ptr %124, align 4
  store ptr %125, ptr %121, align 4
  br label %126

126:                                              ; preds = %123, %119
  %127 = getelementptr inbounds %struct.assoc_array_edit, ptr %0, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.assoc_array, ptr %128, i32 0, i32 1
  store i32 0, ptr %132, align 4
  br label %177

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.assoc_array_edit, ptr %0, i32 0, i32 12
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %177, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.assoc_array_edit, ptr %0, i32 0, i32 13
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr inbounds %struct.assoc_array_node, ptr %135, i32 0, i32 3
  %141 = load i32, ptr %140, align 4
  %142 = add i32 %141, %139
  store i32 %142, ptr %140, align 4
  %143 = load ptr, ptr %135, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %171, label %145

145:                                              ; preds = %162, %137
  %146 = phi ptr [ %169, %162 ], [ %143, %137 ]
  %147 = ptrtoint ptr %146 to i32
  %148 = and i32 %147, 2
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %145
  %151 = and i32 %147, -4
  %152 = inttoptr i32 %151 to ptr
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %171, label %155

155:                                              ; preds = %150
  %156 = ptrtoint ptr %153 to i32
  br label %157

157:                                              ; preds = %155, %145
  %158 = phi i32 [ %156, %155 ], [ %147, %145 ]
  %159 = and i32 %158, 2
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %162, label %161, !prof !11

161:                                              ; preds = %157
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1389, 0\0A.popsection", ""() #8, !srcloc !40
  unreachable

162:                                              ; preds = %157
  %163 = and i32 %158, -4
  %164 = inttoptr i32 %163 to ptr
  %165 = load i32, ptr %138, align 4
  %166 = getelementptr inbounds %struct.assoc_array_node, ptr %164, i32 0, i32 3
  %167 = load i32, ptr %166, align 4
  %168 = add i32 %167, %165
  store i32 %168, ptr %166, align 4
  %169 = load ptr, ptr %164, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %145

171:                                              ; preds = %162, %150, %137
  %172 = load i32, ptr %138, align 4
  %173 = load ptr, ptr %127, align 4
  %174 = getelementptr inbounds %struct.assoc_array, ptr %173, i32 0, i32 1
  %175 = load i32, ptr %174, align 4
  %176 = add i32 %175, %172
  store i32 %176, ptr %174, align 4
  br label %177

177:                                              ; preds = %171, %133, %131
  tail call void @call_rcu(ptr noundef %0, ptr noundef nonnull @assoc_array_rcu_cleanup) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @assoc_array_rcu_cleanup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.assoc_array_edit, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.assoc_array_edit, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.assoc_array_ops, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %3 to i32
  %11 = and i32 %10, -2
  %12 = inttoptr i32 %11 to ptr
  tail call void %9(ptr noundef %12) #8
  br label %13

13:                                               ; preds = %5, %1
  %14 = getelementptr inbounds %struct.assoc_array_edit, ptr %0, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = ptrtoint ptr %15 to i32
  %19 = and i32 %18, -4
  %20 = inttoptr i32 %19 to ptr
  tail call void @kfree(ptr noundef %20) #8
  br label %21

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %struct.assoc_array_edit, ptr %0, i32 0, i32 9
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %21
  %26 = ptrtoint ptr %23 to i32
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30, !prof !9

29:                                               ; preds = %25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1315, 0\0A.popsection", ""() #8, !srcloc !41
  unreachable

30:                                               ; preds = %25
  %31 = and i32 %26, -4
  %32 = inttoptr i32 %31 to ptr
  store ptr null, ptr %32, align 4
  %33 = load ptr, ptr %22, align 4
  %34 = getelementptr inbounds %struct.assoc_array_edit, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  tail call fastcc void @assoc_array_destroy_subtree(ptr noundef %33, ptr noundef %35)
  br label %36

36:                                               ; preds = %30, %21
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @assoc_array_gc(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %369, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 172) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %369, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.assoc_array_edit, ptr %10, i32 0, i32 1
  store ptr %0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.assoc_array_edit, ptr %10, i32 0, i32 2
  store ptr %1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.assoc_array_edit, ptr %10, i32 0, i32 3
  store ptr %1, ptr %15, align 8
  %16 = getelementptr inbounds %struct.assoc_array_edit, ptr %10, i32 0, i32 14
  store ptr %0, ptr %16, align 8
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.assoc_array_edit, ptr %10, i32 0, i32 9
  store ptr %17, ptr %18, align 8
  store ptr null, ptr %5, align 4
  br label %19

19:                                               ; preds = %90, %12
  %20 = phi ptr [ %5, %12 ], [ %91, %90 ]
  %21 = phi ptr [ null, %12 ], [ %71, %90 ]
  %22 = phi ptr [ %17, %12 ], [ %78, %90 ]
  %23 = ptrtoint ptr %22 to i32
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %52, label %26

26:                                               ; preds = %19
  %27 = and i32 %23, -4
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, -1
  %32 = or i32 %31, 31
  %33 = add i32 %32, 1
  %34 = ashr exact i32 %33, 5
  %35 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %34, i32 4) #8
  %36 = extractvalue { i32, i1 } %35, 1
  %37 = extractvalue { i32, i1 } %35, 0
  %38 = tail call i32 @llvm.uadd.sat.i32(i32 %37, i32 16) #8
  %39 = select i1 %36, i32 -1, i32 %38
  %40 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %39, i32 noundef 3264) #10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %366, label %42

42:                                               ; preds = %26
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %40, ptr align 4 %28, i32 %39, i1 false)
  store ptr %21, ptr %40, align 64
  %43 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %28, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %40, i32 0, i32 1
  store i32 %44, ptr %45, align 4
  %46 = ptrtoint ptr %40 to i32
  %47 = or i32 %46, 3
  %48 = inttoptr i32 %47 to ptr
  store ptr %48, ptr %20, align 4
  %49 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %40, i32 0, i32 3
  %50 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %28, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  br label %52

52:                                               ; preds = %42, %19
  %53 = phi ptr [ %49, %42 ], [ %20, %19 ]
  %54 = phi ptr [ %48, %42 ], [ %21, %19 ]
  %55 = phi ptr [ %51, %42 ], [ %22, %19 ]
  %56 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %57 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3520, i32 noundef 76) #9
  %58 = icmp eq ptr %57, null
  br i1 %58, label %366, label %59

59:                                               ; preds = %52
  %60 = ptrtoint ptr %55 to i32
  %61 = and i32 %60, -4
  %62 = inttoptr i32 %61 to ptr
  store ptr %54, ptr %57, align 8
  %63 = getelementptr inbounds %struct.assoc_array_node, ptr %62, i32 0, i32 1
  %64 = load i8, ptr %63, align 4
  %65 = getelementptr inbounds %struct.assoc_array_node, ptr %57, i32 0, i32 1
  store i8 %64, ptr %65, align 4
  %66 = ptrtoint ptr %57 to i32
  %67 = or i32 %66, 1
  %68 = inttoptr i32 %67 to ptr
  store ptr %68, ptr %53, align 4
  br label %69

69:                                               ; preds = %354, %59
  %70 = phi i32 [ 0, %59 ], [ %359, %354 ]
  %71 = phi ptr [ %68, %59 ], [ %333, %354 ]
  %72 = phi ptr [ %57, %59 ], [ %334, %354 ]
  %73 = phi ptr [ %62, %59 ], [ %358, %354 ]
  %74 = icmp slt i32 %70, 16
  br i1 %74, label %75, label %95

75:                                               ; preds = %92, %69
  %76 = phi i32 [ %93, %92 ], [ %70, %69 ]
  %77 = getelementptr %struct.assoc_array_node, ptr %73, i32 0, i32 2, i32 %76
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %92, label %80

80:                                               ; preds = %75
  %81 = ptrtoint ptr %78 to i32
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = and i32 %81, -2
  %86 = inttoptr i32 %85 to ptr
  %87 = tail call zeroext i1 %2(ptr noundef %86, ptr noundef %3) #8
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = getelementptr %struct.assoc_array_node, ptr %72, i32 0, i32 2, i32 %76
  store ptr %78, ptr %89, align 4
  br label %92

90:                                               ; preds = %80
  %91 = getelementptr %struct.assoc_array_node, ptr %72, i32 0, i32 2, i32 %76
  br label %19

92:                                               ; preds = %88, %84, %75
  %93 = add i32 %76, 1
  %94 = icmp eq i32 %93, 16
  br i1 %94, label %95, label %75

95:                                               ; preds = %92, %69
  %96 = getelementptr inbounds %struct.assoc_array_node, ptr %72, i32 0, i32 3
  store i32 0, ptr %96, align 4
  br label %97

97:                                               ; preds = %112, %95
  %98 = phi i32 [ 0, %95 ], [ %113, %112 ]
  %99 = phi i32 [ 0, %95 ], [ %115, %112 ]
  %100 = phi i32 [ 0, %95 ], [ %114, %112 ]
  %101 = getelementptr %struct.assoc_array_node, ptr %72, i32 0, i32 2, i32 %99
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = add i32 %100, 1
  br label %112

106:                                              ; preds = %97
  %107 = ptrtoint ptr %102 to i32
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = add i32 %98, 1
  store i32 %111, ptr %96, align 4
  br label %112

112:                                              ; preds = %110, %106, %104
  %113 = phi i32 [ %111, %110 ], [ %98, %106 ], [ %98, %104 ]
  %114 = phi i32 [ %100, %110 ], [ %100, %106 ], [ %105, %104 ]
  %115 = add nuw nsw i32 %99, 1
  %116 = icmp eq i32 %115, 16
  br i1 %116, label %117, label %97

117:                                              ; preds = %183, %112
  %118 = phi i32 [ %186, %183 ], [ 0, %112 ]
  %119 = phi i32 [ %185, %183 ], [ 0, %112 ]
  %120 = phi i32 [ %184, %183 ], [ %114, %112 ]
  %121 = getelementptr %struct.assoc_array_node, ptr %72, i32 0, i32 2, i32 %118
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %183, label %124

124:                                              ; preds = %117
  %125 = ptrtoint ptr %122 to i32
  %126 = and i32 %125, 1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %183, label %128

128:                                              ; preds = %124
  %129 = and i32 %125, 2
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %128
  %132 = and i32 %125, -4
  %133 = inttoptr i32 %132 to ptr
  %134 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %133, i32 0, i32 3
  %135 = load ptr, ptr %134, align 4
  %136 = ptrtoint ptr %135 to i32
  br label %137

137:                                              ; preds = %131, %128
  %138 = phi i32 [ %136, %131 ], [ %125, %128 ]
  %139 = phi ptr [ %133, %131 ], [ null, %128 ]
  %140 = and i32 %138, -4
  %141 = inttoptr i32 %140 to ptr
  %142 = getelementptr inbounds %struct.assoc_array_node, ptr %141, i32 0, i32 3
  %143 = load i32, ptr %142, align 4
  %144 = load i32, ptr %96, align 4
  %145 = add i32 %144, %143
  store i32 %145, ptr %96, align 4
  %146 = load i32, ptr %142, align 4
  %147 = add i32 %120, 1
  %148 = icmp ugt i32 %146, %147
  br i1 %148, label %183, label %149

149:                                              ; preds = %137
  %150 = icmp eq ptr %139, null
  br i1 %150, label %152, label %151, !prof !11

151:                                              ; preds = %149
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1583, 0\0A.popsection", ""() #8, !srcloc !42
  unreachable

152:                                              ; preds = %149
  store ptr null, ptr %121, align 4
  %153 = tail call i32 @llvm.smin.i32(i32 %118, i32 %119)
  br label %154

154:                                              ; preds = %177, %152
  %155 = phi i32 [ 0, %152 ], [ %180, %177 ]
  %156 = phi i32 [ %153, %152 ], [ %179, %177 ]
  %157 = phi i32 [ %147, %152 ], [ %178, %177 ]
  %158 = getelementptr %struct.assoc_array_node, ptr %141, i32 0, i32 2, i32 %155
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %177, label %161

161:                                              ; preds = %154
  %162 = ptrtoint ptr %159 to i32
  %163 = and i32 %162, 1
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %166, label %165, !prof !11

165:                                              ; preds = %161
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1593, 0\0A.popsection", ""() #8, !srcloc !43
  unreachable

166:                                              ; preds = %166, %161
  %167 = phi i32 [ %171, %166 ], [ %156, %161 ]
  %168 = getelementptr %struct.assoc_array_node, ptr %72, i32 0, i32 2, i32 %167
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, null
  %171 = add i32 %167, 1
  br i1 %170, label %172, label %166

172:                                              ; preds = %166
  %173 = icmp sgt i32 %167, 15
  br i1 %173, label %174, label %175, !prof !9

174:                                              ; preds = %172
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1596, 0\0A.popsection", ""() #8, !srcloc !44
  unreachable

175:                                              ; preds = %172
  store ptr %159, ptr %168, align 4
  %176 = add i32 %157, -1
  br label %177

177:                                              ; preds = %175, %154
  %178 = phi i32 [ %176, %175 ], [ %157, %154 ]
  %179 = phi i32 [ %171, %175 ], [ %156, %154 ]
  %180 = add nuw nsw i32 %155, 1
  %181 = icmp eq i32 %180, 16
  br i1 %181, label %182, label %154

182:                                              ; preds = %177
  tail call void @kfree(ptr noundef %141) #8
  br label %183

183:                                              ; preds = %182, %137, %124, %117
  %184 = phi i32 [ %120, %124 ], [ %120, %117 ], [ %178, %182 ], [ %120, %137 ]
  %185 = phi i32 [ %119, %124 ], [ %119, %117 ], [ %179, %182 ], [ %119, %137 ]
  %186 = add nuw nsw i32 %118, 1
  %187 = icmp eq i32 %186, 16
  br i1 %187, label %188, label %117

188:                                              ; preds = %183
  %189 = load i32, ptr %96, align 4
  %190 = icmp eq i32 %184, 15
  br i1 %190, label %191, label %295

191:                                              ; preds = %188
  %192 = getelementptr %struct.assoc_array_node, ptr %72, i32 0, i32 2, i32 0
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %254

195:                                              ; preds = %191
  %196 = getelementptr %struct.assoc_array_node, ptr %72, i32 0, i32 2, i32 1
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %254

199:                                              ; preds = %195
  %200 = getelementptr %struct.assoc_array_node, ptr %72, i32 0, i32 2, i32 2
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %254

203:                                              ; preds = %199
  %204 = getelementptr %struct.assoc_array_node, ptr %72, i32 0, i32 2, i32 3
  %205 = load ptr, ptr %204, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %254

207:                                              ; preds = %203
  %208 = getelementptr %struct.assoc_array_node, ptr %72, i32 0, i32 2, i32 4
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %254

211:                                              ; preds = %207
  %212 = getelementptr %struct.assoc_array_node, ptr %72, i32 0, i32 2, i32 5
  %213 = load ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %254

215:                                              ; preds = %211
  %216 = getelementptr %struct.assoc_array_node, ptr %72, i32 0, i32 2, i32 6
  %217 = load ptr, ptr %216, align 4
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %254

219:                                              ; preds = %215
  %220 = getelementptr %struct.assoc_array_node, ptr %72, i32 0, i32 2, i32 7
  %221 = load ptr, ptr %220, align 4
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %254

223:                                              ; preds = %219
  %224 = getelementptr %struct.assoc_array_node, ptr %72, i32 0, i32 2, i32 8
  %225 = load ptr, ptr %224, align 4
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %254

227:                                              ; preds = %223
  %228 = getelementptr %struct.assoc_array_node, ptr %72, i32 0, i32 2, i32 9
  %229 = load ptr, ptr %228, align 4
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %254

231:                                              ; preds = %227
  %232 = getelementptr %struct.assoc_array_node, ptr %72, i32 0, i32 2, i32 10
  %233 = load ptr, ptr %232, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %235, label %254

235:                                              ; preds = %231
  %236 = getelementptr %struct.assoc_array_node, ptr %72, i32 0, i32 2, i32 11
  %237 = load ptr, ptr %236, align 4
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %254

239:                                              ; preds = %235
  %240 = getelementptr %struct.assoc_array_node, ptr %72, i32 0, i32 2, i32 12
  %241 = load ptr, ptr %240, align 4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %254

243:                                              ; preds = %239
  %244 = getelementptr %struct.assoc_array_node, ptr %72, i32 0, i32 2, i32 13
  %245 = load ptr, ptr %244, align 4
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %254

247:                                              ; preds = %243
  %248 = getelementptr %struct.assoc_array_node, ptr %72, i32 0, i32 2, i32 14
  %249 = load ptr, ptr %248, align 4
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %254

251:                                              ; preds = %247
  %252 = getelementptr %struct.assoc_array_node, ptr %72, i32 0, i32 2, i32 15
  %253 = load ptr, ptr %252, align 4
  br label %254

254:                                              ; preds = %251, %247, %243, %239, %235, %231, %227, %223, %219, %215, %211, %207, %203, %199, %195, %191
  %255 = phi ptr [ %193, %191 ], [ %197, %195 ], [ %201, %199 ], [ %205, %203 ], [ %209, %207 ], [ %213, %211 ], [ %217, %215 ], [ %221, %219 ], [ %225, %223 ], [ %229, %227 ], [ %233, %231 ], [ %237, %235 ], [ %241, %239 ], [ %245, %243 ], [ %249, %247 ], [ %253, %251 ]
  %256 = ptrtoint ptr %255 to i32
  %257 = and i32 %256, 3
  %258 = icmp eq i32 %257, 3
  br i1 %258, label %259, label %295

259:                                              ; preds = %254
  %260 = and i32 %256, -4
  %261 = inttoptr i32 %260 to ptr
  %262 = load ptr, ptr %72, align 4
  %263 = getelementptr inbounds %struct.assoc_array_node, ptr %72, i32 0, i32 1
  %264 = load i8, ptr %263, align 4
  tail call void @kfree(ptr noundef %72) #8
  %265 = icmp eq ptr %262, null
  br i1 %265, label %266, label %269

266:                                              ; preds = %259
  %267 = inttoptr i32 %260 to ptr
  store ptr null, ptr %267, align 4
  %268 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %267, i32 0, i32 1
  store i32 0, ptr %268, align 4
  br label %362

269:                                              ; preds = %259
  %270 = zext i8 %264 to i32
  %271 = ptrtoint ptr %262 to i32
  %272 = and i32 %271, 2
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %287, label %274

274:                                              ; preds = %269
  %275 = and i32 %271, -4
  %276 = inttoptr i32 %275 to ptr
  %277 = load ptr, ptr %276, align 4
  store ptr %277, ptr %261, align 4
  %278 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %276, i32 0, i32 1
  %279 = load i32, ptr %278, align 4
  %280 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %261, i32 0, i32 1
  store i32 %279, ptr %280, align 4
  tail call void @kfree(ptr noundef %276) #8
  %281 = icmp eq ptr %277, null
  br i1 %281, label %284, label %282

282:                                              ; preds = %274
  %283 = ptrtoint ptr %277 to i32
  br label %287

284:                                              ; preds = %274
  %285 = inttoptr i32 %260 to ptr
  %286 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %285, i32 0, i32 1
  store ptr null, ptr %285, align 4
  store i32 0, ptr %286, align 4
  br label %362

287:                                              ; preds = %282, %269
  %288 = phi i32 [ %283, %282 ], [ %271, %269 ]
  %289 = phi i32 [ %279, %282 ], [ %270, %269 ]
  %290 = phi ptr [ %277, %282 ], [ %262, %269 ]
  store ptr %290, ptr %261, align 4
  %291 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %261, i32 0, i32 1
  store i32 %289, ptr %291, align 4
  %292 = and i32 %288, -4
  %293 = inttoptr i32 %292 to ptr
  %294 = getelementptr %struct.assoc_array_node, ptr %293, i32 0, i32 2, i32 %289
  store ptr %255, ptr %294, align 4
  br label %332

295:                                              ; preds = %254, %188
  %296 = load ptr, ptr %72, align 4
  %297 = icmp eq ptr %296, null
  br i1 %297, label %360, label %298

298:                                              ; preds = %295
  %299 = ptrtoint ptr %296 to i32
  %300 = and i32 %299, 2
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %327, label %302

302:                                              ; preds = %298
  %303 = and i32 %299, -4
  %304 = inttoptr i32 %303 to ptr
  %305 = load ptr, ptr %304, align 4
  %306 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %304, i32 0, i32 1
  %307 = load i32, ptr %306, align 4
  %308 = icmp ult i32 %189, 17
  br i1 %308, label %311, label %309

309:                                              ; preds = %302
  %310 = ptrtoint ptr %305 to i32
  br label %327

311:                                              ; preds = %302
  store ptr %305, ptr %72, align 4
  %312 = trunc i32 %307 to i8
  %313 = getelementptr inbounds %struct.assoc_array_node, ptr %72, i32 0, i32 1
  store i8 %312, ptr %313, align 4
  tail call void @kfree(ptr noundef %304) #8
  %314 = icmp eq ptr %305, null
  br i1 %314, label %323, label %315

315:                                              ; preds = %311
  %316 = ptrtoint ptr %305 to i32
  %317 = and i32 %316, -4
  %318 = inttoptr i32 %317 to ptr
  %319 = ptrtoint ptr %72 to i32
  %320 = or i32 %319, 1
  %321 = inttoptr i32 %320 to ptr
  %322 = getelementptr %struct.assoc_array_node, ptr %318, i32 0, i32 2, i32 %307
  store ptr %321, ptr %322, align 4
  br label %327

323:                                              ; preds = %311
  %324 = ptrtoint ptr %72 to i32
  %325 = or i32 %324, 1
  %326 = inttoptr i32 %325 to ptr
  br label %362

327:                                              ; preds = %315, %309, %298
  %328 = phi i32 [ %310, %309 ], [ %316, %315 ], [ %299, %298 ]
  %329 = phi ptr [ %305, %309 ], [ %305, %315 ], [ %296, %298 ]
  %330 = and i32 %328, -4
  %331 = inttoptr i32 %330 to ptr
  br label %332

332:                                              ; preds = %327, %287
  %333 = phi ptr [ %290, %287 ], [ %329, %327 ]
  %334 = phi ptr [ %293, %287 ], [ %331, %327 ]
  %335 = load ptr, ptr %73, align 4
  %336 = ptrtoint ptr %335 to i32
  %337 = and i32 %336, 2
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %348, label %339

339:                                              ; preds = %332
  %340 = and i32 %336, -4
  %341 = inttoptr i32 %340 to ptr
  %342 = load ptr, ptr %341, align 4
  %343 = icmp eq ptr %342, null
  br i1 %343, label %360, label %344

344:                                              ; preds = %339
  %345 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %341, i32 0, i32 1
  %346 = load i32, ptr %345, align 4
  %347 = ptrtoint ptr %342 to i32
  br label %354

348:                                              ; preds = %332
  %349 = getelementptr inbounds %struct.assoc_array_node, ptr %73, i32 0, i32 1
  %350 = load i8, ptr %349, align 4
  %351 = zext i8 %350 to i32
  %352 = icmp eq ptr %335, null
  br i1 %352, label %353, label %354, !prof !9

353:                                              ; preds = %348
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1702, 0\0A.popsection", ""() #8, !srcloc !45
  unreachable

354:                                              ; preds = %348, %344
  %355 = phi i32 [ %347, %344 ], [ %336, %348 ]
  %356 = phi i32 [ %346, %344 ], [ %351, %348 ]
  %357 = and i32 %355, -4
  %358 = inttoptr i32 %357 to ptr
  %359 = add i32 %356, 1
  br label %69

360:                                              ; preds = %339, %295
  %361 = load ptr, ptr %5, align 4
  br label %362

362:                                              ; preds = %360, %323, %284, %266
  %363 = phi ptr [ %361, %360 ], [ %326, %323 ], [ %255, %284 ], [ %255, %266 ]
  %364 = getelementptr inbounds %struct.assoc_array_edit, ptr %10, i32 0, i32 14, i32 0, i32 1
  store ptr %363, ptr %364, align 4
  tail call void @assoc_array_apply_edit(ptr noundef nonnull %10)
  %365 = getelementptr inbounds %struct.assoc_array, ptr %0, i32 0, i32 1
  store i32 %189, ptr %365, align 4
  br label %369

366:                                              ; preds = %52, %26
  %367 = load ptr, ptr %5, align 4
  %368 = load ptr, ptr %14, align 4
  tail call fastcc void @assoc_array_destroy_subtree(ptr noundef %367, ptr noundef %368)
  tail call void @kfree(ptr noundef nonnull %10) #8
  br label %369

369:                                              ; preds = %366, %362, %8, %4
  %370 = phi i32 [ 0, %362 ], [ -12, %366 ], [ 0, %4 ], [ -12, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  ret i32 %370
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2150160498, i64 2150160980, i64 2150160535, i64 2150160591, i64 2150160625, i64 2150160649, i64 2150160690, i64 2150160711, i64 2150160739, i64 2150160773}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2150170579, i64 2150171061, i64 2150170616, i64 2150170672, i64 2150170706, i64 2150170730, i64 2150170771, i64 2150170792, i64 2150170820, i64 2150170854}
!13 = !{i64 2150171651, i64 2150172133, i64 2150171688, i64 2150171744, i64 2150171778, i64 2150171802, i64 2150171843, i64 2150171864, i64 2150171892, i64 2150171926}
!14 = !{i64 2150172701, i64 2150173183, i64 2150172738, i64 2150172794, i64 2150172828, i64 2150172852, i64 2150172893, i64 2150172914, i64 2150172942, i64 2150172976}
!15 = !{i64 2150174208, i64 2150174690, i64 2150174245, i64 2150174301, i64 2150174335, i64 2150174359, i64 2150174400, i64 2150174421, i64 2150174449, i64 2150174483}
!16 = !{i64 2150175272, i64 2150175754, i64 2150175309, i64 2150175365, i64 2150175399, i64 2150175423, i64 2150175464, i64 2150175485, i64 2150175513, i64 2150175547}
!17 = !{i64 2150177852, i64 2150178334, i64 2150177889, i64 2150177945, i64 2150177979, i64 2150178003, i64 2150178044, i64 2150178065, i64 2150178093, i64 2150178127}
!18 = !{i64 2150179371, i64 2150179853, i64 2150179408, i64 2150179464, i64 2150179498, i64 2150179522, i64 2150179563, i64 2150179584, i64 2150179612, i64 2150179646}
!19 = !{i64 2150219072, i64 2150219554, i64 2150219109, i64 2150219165, i64 2150219199, i64 2150219223, i64 2150219264, i64 2150219285, i64 2150219313, i64 2150219347}
!20 = !{i64 2150188941, i64 2150189423, i64 2150188978, i64 2150189034, i64 2150189068, i64 2150189092, i64 2150189133, i64 2150189154, i64 2150189182, i64 2150189216}
!21 = !{i64 2150190961, i64 2150191443, i64 2150190998, i64 2150191054, i64 2150191088, i64 2150191112, i64 2150191153, i64 2150191174, i64 2150191202, i64 2150191236}
!22 = !{i64 2150192042, i64 2150192524, i64 2150192079, i64 2150192135, i64 2150192169, i64 2150192193, i64 2150192234, i64 2150192255, i64 2150192283, i64 2150192317}
!23 = !{i64 2150193675, i64 2150194157, i64 2150193712, i64 2150193768, i64 2150193802, i64 2150193826, i64 2150193867, i64 2150193888, i64 2150193916, i64 2150193950}
!24 = !{i64 2150194720, i64 2150199263, i64 2150194757, i64 2150194813, i64 2150194847, i64 2150194871, i64 2150194912, i64 2150194933, i64 2150194961, i64 2150194995}
!25 = !{i64 2150200928, i64 2150201410, i64 2150200965, i64 2150201021, i64 2150201055, i64 2150201079, i64 2150201120, i64 2150201141, i64 2150201169, i64 2150201203}
!26 = !{i64 2150201982, i64 2150202464, i64 2150202019, i64 2150202075, i64 2150202109, i64 2150202133, i64 2150202174, i64 2150202195, i64 2150202223, i64 2150202257}
!27 = !{i64 2150203549, i64 2150204031, i64 2150203586, i64 2150203642, i64 2150203676, i64 2150203700, i64 2150203741, i64 2150203762, i64 2150203790, i64 2150203824}
!28 = !{i64 2150206375, i64 2150206857, i64 2150206412, i64 2150206468, i64 2150206502, i64 2150206526, i64 2150206567, i64 2150206588, i64 2150206616, i64 2150206650}
!29 = !{i32 0, i32 33}
!30 = !{i64 2150209658, i64 2150210140, i64 2150209695, i64 2150209751, i64 2150209785, i64 2150209809, i64 2150209850, i64 2150209871, i64 2150209899, i64 2150209933}
!31 = !{i64 2150220688, i64 2150221171, i64 2150220725, i64 2150220781, i64 2150220815, i64 2150220839, i64 2150220880, i64 2150220901, i64 2150220929, i64 2150220963}
!32 = !{i64 2150224382, i64 2150224865, i64 2150224419, i64 2150224475, i64 2150224509, i64 2150224533, i64 2150224574, i64 2150224595, i64 2150224623, i64 2150224657}
!33 = !{i64 2150228079, i64 2150228562, i64 2150228116, i64 2150228172, i64 2150228206, i64 2150228230, i64 2150228271, i64 2150228292, i64 2150228320, i64 2150228354}
!34 = !{i64 2150228990, i64 2150229473, i64 2150229027, i64 2150229083, i64 2150229117, i64 2150229141, i64 2150229182, i64 2150229203, i64 2150229231, i64 2150229265}
!35 = !{i64 2150221720, i64 2150222203, i64 2150221757, i64 2150221813, i64 2150221847, i64 2150221871, i64 2150221912, i64 2150221933, i64 2150221961, i64 2150221995}
!36 = !{i64 2150235071}
!37 = !{i64 2150235203}
!38 = !{i64 2150235802}
!39 = !{i64 2150236410}
!40 = !{i64 2150237125, i64 2150237608, i64 2150237162, i64 2150237218, i64 2150237252, i64 2150237276, i64 2150237317, i64 2150237338, i64 2150237366, i64 2150237400}
!41 = !{i64 2150233743, i64 2150234226, i64 2150233780, i64 2150233836, i64 2150233870, i64 2150233894, i64 2150233935, i64 2150233956, i64 2150233984, i64 2150234018}
!42 = !{i64 2150244524, i64 2150245007, i64 2150244561, i64 2150244617, i64 2150244651, i64 2150244675, i64 2150244716, i64 2150244737, i64 2150244765, i64 2150244799}
!43 = !{i64 2150245580, i64 2150246063, i64 2150245617, i64 2150245673, i64 2150245707, i64 2150245731, i64 2150245772, i64 2150245793, i64 2150245821, i64 2150245855}
!44 = !{i64 2150246602, i64 2150247085, i64 2150246639, i64 2150246695, i64 2150246729, i64 2150246753, i64 2150246794, i64 2150246815, i64 2150246843, i64 2150246877}
!45 = !{i64 2150250639, i64 2150251122, i64 2150250676, i64 2150250732, i64 2150250766, i64 2150250790, i64 2150250831, i64 2150250852, i64 2150250880, i64 2150250914}
