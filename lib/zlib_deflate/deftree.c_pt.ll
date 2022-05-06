; ModuleID = '/llk/IR/lib/zlib_deflate/deftree.c_pt.bc'
source_filename = "../lib/zlib_deflate/deftree.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_tree_desc_s = type { ptr, ptr, i32, i32, i32 }
%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }
%struct.deflate_state = type { ptr, i32, ptr, i32, ptr, i32, i32, i8, i8, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [573 x %struct.ct_data_s], [61 x %struct.ct_data_s], [39 x %struct.ct_data_s], %struct.tree_desc_s, %struct.tree_desc_s, %struct.tree_desc_s, [16 x i16], [573 x i32], i32, i32, [573 x i8], ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i16, i32 }
%struct.tree_desc_s = type { ptr, i32, ptr }

@static_l_desc = internal global %struct.static_tree_desc_s { ptr @static_ltree, ptr @extra_lbits, i32 257, i32 286, i32 15 }, align 4
@static_d_desc = internal global %struct.static_tree_desc_s { ptr @static_dtree, ptr @extra_dbits, i32 0, i32 30, i32 15 }, align 4
@static_bl_desc = internal global %struct.static_tree_desc_s { ptr null, ptr @extra_blbits, i32 0, i32 19, i32 7 }, align 4
@static_ltree = internal global [288 x %struct.ct_data_s] zeroinitializer, align 2
@static_dtree = internal global [30 x %struct.ct_data_s] zeroinitializer, align 2
@length_code = internal unnamed_addr global [256 x i8] zeroinitializer, align 1
@dist_code = internal unnamed_addr global [512 x i8] zeroinitializer, align 1
@extra_dbits = internal constant [30 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13], align 4
@tr_static_init.static_init_done = internal unnamed_addr global i1 false, align 4
@base_length = internal unnamed_addr global [29 x i32] zeroinitializer, align 4
@extra_lbits = internal constant [29 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 0], align 4
@base_dist = internal unnamed_addr global [30 x i32] zeroinitializer, align 4
@extra_blbits = internal constant [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3, i32 7], align 4
@bl_order = internal unnamed_addr constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @zlib_tr_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [16 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #10
  %3 = load i1, ptr @tr_static_init.static_init_done, align 4
  br i1 %3, label %76, label %4

4:                                                ; preds = %4, %1
  %5 = phi i32 [ %14, %4 ], [ 0, %1 ]
  %6 = phi i32 [ %15, %4 ], [ 0, %1 ]
  %7 = getelementptr [29 x i32], ptr @base_length, i32 0, i32 %6
  store i32 %5, ptr %7, align 4
  %8 = getelementptr [29 x i32], ptr @extra_lbits, i32 0, i32 %6
  %9 = load i32, ptr %8, align 4
  %10 = shl nuw i32 1, %9
  %11 = trunc i32 %6 to i8
  %12 = getelementptr i8, ptr @length_code, i32 %5
  %13 = tail call i32 @llvm.smax.i32(i32 %10, i32 1) #10
  tail call void @llvm.memset.p0.i32(ptr align 1 %12, i8 %11, i32 %13, i1 false) #10
  %14 = add i32 %13, %5
  %15 = add nuw nsw i32 %6, 1
  %16 = icmp eq i32 %15, 28
  br i1 %16, label %17, label %4

17:                                               ; preds = %4
  store i8 28, ptr getelementptr inbounds ([256 x i8], ptr @length_code, i32 0, i32 255), align 1
  br label %18

18:                                               ; preds = %18, %17
  %19 = phi i32 [ 0, %17 ], [ %28, %18 ]
  %20 = phi i32 [ 0, %17 ], [ %29, %18 ]
  %21 = getelementptr [30 x i32], ptr @base_dist, i32 0, i32 %20
  store i32 %19, ptr %21, align 4
  %22 = getelementptr [30 x i32], ptr @extra_dbits, i32 0, i32 %20
  %23 = load i32, ptr %22, align 4
  %24 = shl nuw i32 1, %23
  %25 = trunc i32 %20 to i8
  %26 = getelementptr i8, ptr @dist_code, i32 %19
  %27 = tail call i32 @llvm.smax.i32(i32 %24, i32 1) #10
  tail call void @llvm.memset.p0.i32(ptr align 1 %26, i8 %25, i32 %27, i1 false) #10
  %28 = add i32 %27, %19
  %29 = add nuw nsw i32 %20, 1
  %30 = icmp eq i32 %29, 16
  br i1 %30, label %32, label %18

31:                                               ; preds = %47
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(32) %2, i8 0, i32 32, i1 false) #10
  br label %53

32:                                               ; preds = %47, %18
  %33 = phi i32 [ %48, %47 ], [ 2, %18 ]
  %34 = phi i32 [ %49, %47 ], [ 16, %18 ]
  %35 = shl i32 %33, 7
  %36 = getelementptr [30 x i32], ptr @base_dist, i32 0, i32 %34
  store i32 %35, ptr %36, align 4
  %37 = getelementptr [30 x i32], ptr @extra_dbits, i32 0, i32 %34
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, -7
  %40 = icmp eq i32 %39, 31
  br i1 %40, label %47, label %41

41:                                               ; preds = %32
  %42 = shl nuw nsw i32 1, %39
  %43 = trunc i32 %34 to i8
  %44 = getelementptr i8, ptr getelementptr inbounds ([512 x i8], ptr @dist_code, i32 0, i32 256), i32 %33
  %45 = tail call i32 @llvm.smax.i32(i32 %42, i32 1) #10
  tail call void @llvm.memset.p0.i32(ptr align 1 %44, i8 %43, i32 %45, i1 false) #10
  %46 = add i32 %45, %33
  br label %47

47:                                               ; preds = %41, %32
  %48 = phi i32 [ %33, %32 ], [ %46, %41 ]
  %49 = add nuw nsw i32 %34, 1
  %50 = icmp eq i32 %49, 30
  br i1 %50, label %31, label %32

51:                                               ; preds = %53
  %52 = getelementptr inbounds [16 x i16], ptr %2, i32 0, i32 8
  br label %58

53:                                               ; preds = %53, %31
  %54 = phi i32 [ 0, %31 ], [ %55, %53 ]
  %55 = add nuw nsw i32 %54, 1
  %56 = getelementptr [288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 %54, i32 1
  store i16 8, ptr %56, align 2
  %57 = icmp eq i32 %55, 144
  br i1 %57, label %51, label %53

58:                                               ; preds = %58, %51
  %59 = phi i32 [ 144, %51 ], [ %60, %58 ]
  %60 = add nuw nsw i32 %59, 1
  %61 = getelementptr [288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 %59, i32 1
  store i16 9, ptr %61, align 2
  %62 = icmp eq i32 %60, 256
  br i1 %62, label %63, label %58

63:                                               ; preds = %58
  %64 = getelementptr inbounds [16 x i16], ptr %2, i32 0, i32 9
  store i16 112, ptr %64, align 2
  %65 = getelementptr inbounds [16 x i16], ptr %2, i32 0, i32 7
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 256, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 257, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 258, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 259, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 260, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 261, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 262, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 263, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 264, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 265, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 266, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 267, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 268, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 269, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 270, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 271, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 272, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 273, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 274, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 275, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 276, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 277, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 278, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 279, i32 1), align 2
  store i16 24, ptr %65, align 2
  store i16 8, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 280, i32 1), align 2
  store i16 8, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 281, i32 1), align 2
  store i16 8, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 282, i32 1), align 2
  store i16 8, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 283, i32 1), align 2
  store i16 8, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 284, i32 1), align 2
  store i16 8, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 285, i32 1), align 2
  store i16 8, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 286, i32 1), align 2
  store i16 8, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 287, i32 1), align 2
  store i16 152, ptr %52, align 2
  call fastcc void @gen_codes(ptr noundef nonnull @static_ltree, i32 noundef 287, ptr noundef nonnull %2) #10
  br label %66

66:                                               ; preds = %66, %63
  %67 = phi i32 [ 0, %63 ], [ %73, %66 ]
  %68 = getelementptr [30 x %struct.ct_data_s], ptr @static_dtree, i32 0, i32 %67
  %69 = getelementptr [30 x %struct.ct_data_s], ptr @static_dtree, i32 0, i32 %67, i32 1
  store i16 5, ptr %69, align 2
  %70 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %67) #11, !srcloc !8
  %71 = lshr i32 %70, 27
  %72 = trunc i32 %71 to i16
  store i16 %72, ptr %68, align 2
  %73 = add nuw nsw i32 %67, 1
  %74 = icmp eq i32 %73, 30
  br i1 %74, label %75, label %66

75:                                               ; preds = %66
  store i1 true, ptr @tr_static_init.static_init_done, align 4
  br label %76

76:                                               ; preds = %75, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #10
  %77 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 53
  store i32 0, ptr %77, align 4
  %78 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 36
  %79 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 39
  store ptr %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 39, i32 2
  store ptr @static_l_desc, ptr %80, align 4
  %81 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 37
  %82 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 40
  store ptr %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 40, i32 2
  store ptr @static_d_desc, ptr %83, align 4
  %84 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 38
  %85 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 41
  store ptr %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 41, i32 2
  store ptr @static_bl_desc, ptr %86, align 4
  %87 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  store i16 0, ptr %87, align 4
  %88 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 57
  store i32 0, ptr %88, align 4
  %89 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 55
  store i32 8, ptr %89, align 4
  tail call fastcc void @init_block(ptr noundef %0)
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define internal fastcc void @init_block(ptr nocapture noundef writeonly %0) unnamed_addr #1 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ 0, %1 ], [ %5, %2 ]
  %4 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 36, i32 %3
  store i16 0, ptr %4, align 4
  %5 = add nuw nsw i32 %3, 1
  %6 = icmp eq i32 %5, 286
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  %8 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 0
  store i16 0, ptr %8, align 4
  %9 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 1
  store i16 0, ptr %9, align 4
  %10 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 2
  store i16 0, ptr %10, align 4
  %11 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 3
  store i16 0, ptr %11, align 4
  %12 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 4
  store i16 0, ptr %12, align 4
  %13 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 5
  store i16 0, ptr %13, align 4
  %14 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 6
  store i16 0, ptr %14, align 4
  %15 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 7
  store i16 0, ptr %15, align 4
  %16 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 8
  store i16 0, ptr %16, align 4
  %17 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 9
  store i16 0, ptr %17, align 4
  %18 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 10
  store i16 0, ptr %18, align 4
  %19 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 11
  store i16 0, ptr %19, align 4
  %20 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 12
  store i16 0, ptr %20, align 4
  %21 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 13
  store i16 0, ptr %21, align 4
  %22 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 14
  store i16 0, ptr %22, align 4
  %23 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 15
  store i16 0, ptr %23, align 4
  %24 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 16
  store i16 0, ptr %24, align 4
  %25 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 17
  store i16 0, ptr %25, align 4
  %26 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 18
  store i16 0, ptr %26, align 4
  %27 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 19
  store i16 0, ptr %27, align 4
  %28 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 20
  store i16 0, ptr %28, align 4
  %29 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 21
  store i16 0, ptr %29, align 4
  %30 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 22
  store i16 0, ptr %30, align 4
  %31 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 23
  store i16 0, ptr %31, align 4
  %32 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 24
  store i16 0, ptr %32, align 4
  %33 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 25
  store i16 0, ptr %33, align 4
  %34 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 26
  store i16 0, ptr %34, align 4
  %35 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 27
  store i16 0, ptr %35, align 4
  %36 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 28
  store i16 0, ptr %36, align 4
  %37 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 29
  store i16 0, ptr %37, align 4
  %38 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 0
  store i16 0, ptr %38, align 4
  %39 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 1
  store i16 0, ptr %39, align 4
  %40 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 2
  store i16 0, ptr %40, align 4
  %41 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 3
  store i16 0, ptr %41, align 4
  %42 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 4
  store i16 0, ptr %42, align 4
  %43 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 5
  store i16 0, ptr %43, align 4
  %44 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 6
  store i16 0, ptr %44, align 4
  %45 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 7
  store i16 0, ptr %45, align 4
  %46 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 8
  store i16 0, ptr %46, align 4
  %47 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 9
  store i16 0, ptr %47, align 4
  %48 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 10
  store i16 0, ptr %48, align 4
  %49 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 11
  store i16 0, ptr %49, align 4
  %50 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 12
  store i16 0, ptr %50, align 4
  %51 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 13
  store i16 0, ptr %51, align 4
  %52 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 14
  store i16 0, ptr %52, align 4
  %53 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 15
  store i16 0, ptr %53, align 4
  %54 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 16
  store i16 0, ptr %54, align 4
  %55 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 17
  store i16 0, ptr %55, align 4
  %56 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 18
  store i16 0, ptr %56, align 4
  %57 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 36, i32 256
  store i16 1, ptr %57, align 4
  %58 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 52
  store i32 0, ptr %58, align 4
  %59 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 51
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 54
  store i32 0, ptr %60, align 4
  %61 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 49
  store i32 0, ptr %61, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @zlib_tr_stored_block(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 57
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 13
  %8 = shl i32 %3, %6
  %9 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  %10 = load i16, ptr %9, align 4
  %11 = trunc i32 %8 to i16
  %12 = or i16 %10, %11
  store i16 %12, ptr %9, align 4
  br i1 %7, label %13, label %35

13:                                               ; preds = %4
  %14 = trunc i16 %12 to i8
  %15 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4
  %20 = getelementptr i8, ptr %16, i32 %18
  store i8 %14, ptr %20, align 1
  %21 = load i16, ptr %9, align 4
  %22 = lshr i16 %21, 8
  %23 = trunc i16 %22 to i8
  %24 = load ptr, ptr %15, align 4
  %25 = load i32, ptr %17, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %17, align 4
  %27 = getelementptr i8, ptr %24, i32 %25
  store i8 %23, ptr %27, align 1
  %28 = and i32 %3, 65535
  %29 = load i32, ptr %5, align 4
  %30 = sub i32 16, %29
  %31 = lshr i32 %28, %30
  %32 = trunc i32 %31 to i16
  store i16 %32, ptr %9, align 4
  %33 = add i32 %29, -13
  %34 = trunc i32 %31 to i8
  br label %38

35:                                               ; preds = %4
  %36 = add nsw i32 %6, 3
  %37 = trunc i16 %12 to i8
  br label %38

38:                                               ; preds = %35, %13
  %39 = phi i8 [ %37, %35 ], [ %34, %13 ]
  %40 = phi i32 [ %36, %35 ], [ %33, %13 ]
  %41 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 53
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 10
  %44 = and i32 %43, -8
  %45 = shl i32 %2, 3
  %46 = add i32 %45, 32
  %47 = add i32 %46, %44
  store i32 %47, ptr %41, align 4
  %48 = icmp sgt i32 %40, 8
  br i1 %48, label %49, label %64

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  %51 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %53, align 4
  %56 = getelementptr i8, ptr %52, i32 %54
  store i8 %39, ptr %56, align 1
  %57 = load i16, ptr %50, align 4
  %58 = lshr i16 %57, 8
  %59 = trunc i16 %58 to i8
  %60 = load ptr, ptr %51, align 4
  %61 = load i32, ptr %53, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %53, align 4
  %63 = getelementptr i8, ptr %60, i32 %61
  store i8 %59, ptr %63, align 1
  br label %73

64:                                               ; preds = %38
  %65 = icmp sgt i32 %40, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 4
  %72 = getelementptr i8, ptr %68, i32 %70
  store i8 %39, ptr %72, align 1
  br label %73

73:                                               ; preds = %66, %64, %49
  %74 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  store i16 0, ptr %74, align 4
  store i32 0, ptr %5, align 4
  %75 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 55
  store i32 8, ptr %75, align 4
  %76 = trunc i32 %2 to i8
  %77 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 5
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %79, align 4
  %82 = getelementptr i8, ptr %78, i32 %80
  store i8 %76, ptr %82, align 1
  %83 = lshr i32 %2, 8
  %84 = trunc i32 %83 to i8
  %85 = load ptr, ptr %77, align 4
  %86 = load i32, ptr %79, align 4
  %87 = add i32 %86, 1
  store i32 %87, ptr %79, align 4
  %88 = getelementptr i8, ptr %85, i32 %86
  store i8 %84, ptr %88, align 1
  %89 = and i32 %2, 65535
  %90 = xor i32 %89, 65535
  %91 = trunc i32 %90 to i8
  %92 = load ptr, ptr %77, align 4
  %93 = load i32, ptr %79, align 4
  %94 = add i32 %93, 1
  store i32 %94, ptr %79, align 4
  %95 = getelementptr i8, ptr %92, i32 %93
  store i8 %91, ptr %95, align 1
  %96 = lshr i32 %90, 8
  %97 = trunc i32 %96 to i8
  %98 = load ptr, ptr %77, align 4
  %99 = load i32, ptr %79, align 4
  %100 = add i32 %99, 1
  store i32 %100, ptr %79, align 4
  %101 = getelementptr i8, ptr %98, i32 %99
  store i8 %97, ptr %101, align 1
  %102 = load ptr, ptr %77, align 4
  %103 = load i32, ptr %79, align 4
  %104 = getelementptr i8, ptr %102, i32 %103
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %104, ptr align 1 %1, i32 %2, i1 false) #10
  %105 = load i32, ptr %79, align 4
  %106 = add i32 %105, %2
  store i32 %106, ptr %79, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @zlib_tr_stored_type_only(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 57
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 13
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  %7 = load i16, ptr %6, align 4
  %8 = trunc i16 %7 to i8
  %9 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  %14 = getelementptr i8, ptr %10, i32 %12
  store i8 %8, ptr %14, align 1
  %15 = load i16, ptr %6, align 4
  %16 = lshr i16 %15, 8
  %17 = trunc i16 %16 to i8
  %18 = load ptr, ptr %9, align 4
  %19 = load i32, ptr %11, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %11, align 4
  %21 = getelementptr i8, ptr %18, i32 %19
  store i8 %17, ptr %21, align 1
  store i16 0, ptr %6, align 4
  %22 = load i32, ptr %2, align 4
  %23 = add i32 %22, -13
  br label %26

24:                                               ; preds = %1
  %25 = add nsw i32 %3, 3
  br label %26

26:                                               ; preds = %24, %5
  %27 = phi i32 [ %25, %24 ], [ %23, %5 ]
  %28 = icmp sgt i32 %27, 8
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  %31 = load i16, ptr %30, align 4
  %32 = trunc i16 %31 to i8
  %33 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 4
  %38 = getelementptr i8, ptr %34, i32 %36
  store i8 %32, ptr %38, align 1
  %39 = load i16, ptr %30, align 4
  %40 = lshr i16 %39, 8
  %41 = trunc i16 %40 to i8
  %42 = load ptr, ptr %33, align 4
  %43 = load i32, ptr %35, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %35, align 4
  %45 = getelementptr i8, ptr %42, i32 %43
  store i8 %41, ptr %45, align 1
  br label %58

46:                                               ; preds = %26
  %47 = icmp sgt i32 %27, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  %50 = load i16, ptr %49, align 4
  %51 = trunc i16 %50 to i8
  %52 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 4
  %57 = getelementptr i8, ptr %53, i32 %55
  store i8 %51, ptr %57, align 1
  br label %58

58:                                               ; preds = %48, %46, %29
  %59 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  store i16 0, ptr %59, align 4
  store i32 0, ptr %2, align 4
  %60 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 53
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, 3
  %63 = and i32 %62, -8
  store i32 %63, ptr %60, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @zlib_tr_align(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 57
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 13
  %5 = shl i32 2, %3
  %6 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  %7 = load i16, ptr %6, align 4
  %8 = trunc i32 %5 to i16
  %9 = or i16 %7, %8
  br i1 %4, label %10, label %30

10:                                               ; preds = %1
  store i16 %9, ptr %6, align 4
  %11 = trunc i16 %9 to i8
  %12 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  %17 = getelementptr i8, ptr %13, i32 %15
  store i8 %11, ptr %17, align 1
  %18 = load i16, ptr %6, align 4
  %19 = lshr i16 %18, 8
  %20 = trunc i16 %19 to i8
  %21 = load ptr, ptr %12, align 4
  %22 = load i32, ptr %14, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %14, align 4
  %24 = getelementptr i8, ptr %21, i32 %22
  store i8 %20, ptr %24, align 1
  %25 = load i32, ptr %2, align 4
  %26 = sub i32 16, %25
  %27 = lshr i32 2, %26
  %28 = trunc i32 %27 to i16
  %29 = add i32 %25, -13
  br label %32

30:                                               ; preds = %1
  %31 = add nsw i32 %3, 3
  br label %32

32:                                               ; preds = %30, %10
  %33 = phi i16 [ %9, %30 ], [ %28, %10 ]
  %34 = phi i32 [ %31, %30 ], [ %29, %10 ]
  store i32 %34, ptr %2, align 4
  %35 = load i16, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 256, i32 1), align 2
  %36 = zext i16 %35 to i32
  %37 = sub nsw i32 16, %36
  %38 = icmp sgt i32 %34, %37
  %39 = load i16, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 256), align 2
  %40 = zext i16 %39 to i32
  %41 = shl i32 %40, %34
  %42 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  %43 = trunc i32 %41 to i16
  %44 = or i16 %33, %43
  store i16 %44, ptr %42, align 4
  br i1 %38, label %45, label %66

45:                                               ; preds = %32
  %46 = trunc i16 %44 to i8
  %47 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4
  %52 = getelementptr i8, ptr %48, i32 %50
  store i8 %46, ptr %52, align 1
  %53 = load i16, ptr %42, align 4
  %54 = lshr i16 %53, 8
  %55 = trunc i16 %54 to i8
  %56 = load ptr, ptr %47, align 4
  %57 = load i32, ptr %49, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %49, align 4
  %59 = getelementptr i8, ptr %56, i32 %57
  store i8 %55, ptr %59, align 1
  %60 = load i32, ptr %2, align 4
  %61 = sub i32 16, %60
  %62 = lshr i32 %40, %61
  %63 = trunc i32 %62 to i16
  store i16 %63, ptr %42, align 4
  %64 = add nsw i32 %36, -16
  %65 = add i32 %64, %60
  br label %68

66:                                               ; preds = %32
  %67 = add i32 %34, %36
  br label %68

68:                                               ; preds = %66, %45
  %69 = phi i16 [ %44, %66 ], [ %63, %45 ]
  %70 = phi i32 [ %67, %66 ], [ %65, %45 ]
  store i32 %70, ptr %2, align 4
  %71 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 53
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, 10
  store i32 %73, ptr %71, align 4
  %74 = icmp eq i32 %70, 16
  br i1 %74, label %75, label %91

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  %77 = trunc i16 %69 to i8
  %78 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 5
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %80, align 4
  %83 = getelementptr i8, ptr %79, i32 %81
  store i8 %77, ptr %83, align 1
  %84 = load i16, ptr %76, align 4
  %85 = lshr i16 %84, 8
  %86 = trunc i16 %85 to i8
  %87 = load ptr, ptr %78, align 4
  %88 = load i32, ptr %80, align 4
  %89 = add i32 %88, 1
  store i32 %89, ptr %80, align 4
  %90 = getelementptr i8, ptr %87, i32 %88
  store i8 %86, ptr %90, align 1
  store i16 0, ptr %76, align 4
  br label %106

91:                                               ; preds = %68
  %92 = icmp sgt i32 %70, 7
  br i1 %92, label %93, label %109

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  %95 = trunc i16 %69 to i8
  %96 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 5
  %99 = load i32, ptr %98, align 4
  %100 = add i32 %99, 1
  store i32 %100, ptr %98, align 4
  %101 = getelementptr i8, ptr %97, i32 %99
  store i8 %95, ptr %101, align 1
  %102 = load i16, ptr %94, align 4
  %103 = lshr i16 %102, 8
  store i16 %103, ptr %94, align 4
  %104 = load i32, ptr %2, align 4
  %105 = add i32 %104, -8
  br label %106

106:                                              ; preds = %93, %75
  %107 = phi i16 [ %103, %93 ], [ 0, %75 ]
  %108 = phi i32 [ %105, %93 ], [ 0, %75 ]
  store i32 %108, ptr %2, align 4
  br label %109

109:                                              ; preds = %106, %91
  %110 = phi i16 [ %107, %106 ], [ %69, %91 ]
  %111 = phi i32 [ %108, %106 ], [ %70, %91 ]
  %112 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 55
  %113 = load i32, ptr %112, align 4
  %114 = sub i32 11, %111
  %115 = add i32 %114, %113
  %116 = icmp slt i32 %115, 9
  br i1 %116, label %117, label %222

117:                                              ; preds = %109
  %118 = icmp sgt i32 %111, 13
  %119 = shl i32 2, %111
  br i1 %118, label %120, label %143

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  %122 = trunc i32 %119 to i16
  %123 = or i16 %110, %122
  store i16 %123, ptr %121, align 4
  %124 = trunc i16 %123 to i8
  %125 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 2
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 5
  %128 = load i32, ptr %127, align 4
  %129 = add i32 %128, 1
  store i32 %129, ptr %127, align 4
  %130 = getelementptr i8, ptr %126, i32 %128
  store i8 %124, ptr %130, align 1
  %131 = load i16, ptr %121, align 4
  %132 = lshr i16 %131, 8
  %133 = trunc i16 %132 to i8
  %134 = load ptr, ptr %125, align 4
  %135 = load i32, ptr %127, align 4
  %136 = add i32 %135, 1
  store i32 %136, ptr %127, align 4
  %137 = getelementptr i8, ptr %134, i32 %135
  store i8 %133, ptr %137, align 1
  %138 = load i32, ptr %2, align 4
  %139 = sub i32 16, %138
  %140 = lshr i32 2, %139
  %141 = trunc i32 %140 to i16
  %142 = add i32 %138, -13
  br label %147

143:                                              ; preds = %117
  %144 = trunc i32 %119 to i16
  %145 = or i16 %110, %144
  %146 = add nsw i32 %111, 3
  br label %147

147:                                              ; preds = %143, %120
  %148 = phi i16 [ %145, %143 ], [ %141, %120 ]
  %149 = phi i32 [ %146, %143 ], [ %142, %120 ]
  store i32 %149, ptr %2, align 4
  %150 = load i16, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 256, i32 1), align 2
  %151 = zext i16 %150 to i32
  %152 = sub nsw i32 16, %151
  %153 = icmp sgt i32 %149, %152
  %154 = load i16, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 256), align 2
  %155 = zext i16 %154 to i32
  %156 = shl i32 %155, %149
  %157 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  %158 = trunc i32 %156 to i16
  %159 = or i16 %148, %158
  store i16 %159, ptr %157, align 4
  br i1 %153, label %160, label %182

160:                                              ; preds = %147
  %161 = trunc i16 %159 to i8
  %162 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 2
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 5
  %165 = load i32, ptr %164, align 4
  %166 = add i32 %165, 1
  store i32 %166, ptr %164, align 4
  %167 = getelementptr i8, ptr %163, i32 %165
  store i8 %161, ptr %167, align 1
  %168 = load i16, ptr %157, align 4
  %169 = lshr i16 %168, 8
  %170 = trunc i16 %169 to i8
  %171 = load ptr, ptr %162, align 4
  %172 = load i32, ptr %164, align 4
  %173 = add i32 %172, 1
  store i32 %173, ptr %164, align 4
  %174 = getelementptr i8, ptr %171, i32 %172
  store i8 %170, ptr %174, align 1
  %175 = load i32, ptr %2, align 4
  %176 = sub i32 16, %175
  %177 = lshr i32 %155, %176
  %178 = trunc i32 %177 to i16
  store i16 %178, ptr %157, align 4
  %179 = add nsw i32 %151, -16
  %180 = add i32 %179, %175
  %181 = trunc i32 %177 to i8
  br label %185

182:                                              ; preds = %147
  %183 = add i32 %149, %151
  %184 = trunc i16 %159 to i8
  br label %185

185:                                              ; preds = %182, %160
  %186 = phi i8 [ %184, %182 ], [ %181, %160 ]
  %187 = phi i32 [ %183, %182 ], [ %180, %160 ]
  store i32 %187, ptr %2, align 4
  %188 = load i32, ptr %71, align 4
  %189 = add i32 %188, 10
  store i32 %189, ptr %71, align 4
  %190 = icmp eq i32 %187, 16
  br i1 %190, label %191, label %206

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  %193 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 2
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 5
  %196 = load i32, ptr %195, align 4
  %197 = add i32 %196, 1
  store i32 %197, ptr %195, align 4
  %198 = getelementptr i8, ptr %194, i32 %196
  store i8 %186, ptr %198, align 1
  %199 = load i16, ptr %192, align 4
  %200 = lshr i16 %199, 8
  %201 = trunc i16 %200 to i8
  %202 = load ptr, ptr %193, align 4
  %203 = load i32, ptr %195, align 4
  %204 = add i32 %203, 1
  store i32 %204, ptr %195, align 4
  %205 = getelementptr i8, ptr %202, i32 %203
  store i8 %201, ptr %205, align 1
  store i16 0, ptr %192, align 4
  br label %220

206:                                              ; preds = %185
  %207 = icmp sgt i32 %187, 7
  br i1 %207, label %208, label %222

208:                                              ; preds = %206
  %209 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  %210 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 2
  %211 = load ptr, ptr %210, align 4
  %212 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 5
  %213 = load i32, ptr %212, align 4
  %214 = add i32 %213, 1
  store i32 %214, ptr %212, align 4
  %215 = getelementptr i8, ptr %211, i32 %213
  store i8 %186, ptr %215, align 1
  %216 = load i16, ptr %209, align 4
  %217 = lshr i16 %216, 8
  store i16 %217, ptr %209, align 4
  %218 = load i32, ptr %2, align 4
  %219 = add i32 %218, -8
  br label %220

220:                                              ; preds = %208, %191
  %221 = phi i32 [ %219, %208 ], [ 0, %191 ]
  store i32 %221, ptr %2, align 4
  br label %222

222:                                              ; preds = %220, %206, %109
  store i32 7, ptr %112, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zlib_tr_flush_block(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 32
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %283

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 7
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 2
  br i1 %11, label %12, label %63

12:                                               ; preds = %8
  %13 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 36, i32 0
  %14 = load i16, ptr %13, align 4
  %15 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 36, i32 1
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 36, i32 2
  %19 = load i16, ptr %18, align 4
  %20 = zext i16 %19 to i32
  %21 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 36, i32 3
  %22 = load i16, ptr %21, align 4
  %23 = zext i16 %22 to i32
  %24 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 36, i32 4
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  %27 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 36, i32 5
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  %30 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 36, i32 6
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  br label %33

33:                                               ; preds = %33, %12
  %34 = phi i32 [ %40, %33 ], [ 0, %12 ]
  %35 = phi i32 [ %36, %33 ], [ 7, %12 ]
  %36 = add nuw nsw i32 %35, 1
  %37 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 36, i32 %35
  %38 = load i16, ptr %37, align 4
  %39 = zext i16 %38 to i32
  %40 = add i32 %34, %39
  %41 = icmp eq i32 %36, 128
  br i1 %41, label %42, label %33

42:                                               ; preds = %33
  %43 = zext i16 %14 to i32
  %44 = add nuw nsw i32 %17, %43
  %45 = add nuw nsw i32 %44, %20
  %46 = add nuw nsw i32 %45, %23
  %47 = add nuw nsw i32 %46, %26
  %48 = add nuw nsw i32 %47, %29
  %49 = add nuw nsw i32 %48, %32
  br label %50

50:                                               ; preds = %50, %42
  %51 = phi i32 [ %57, %50 ], [ %49, %42 ]
  %52 = phi i32 [ %53, %50 ], [ 128, %42 ]
  %53 = add nuw nsw i32 %52, 1
  %54 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 36, i32 %52
  %55 = load i16, ptr %54, align 4
  %56 = zext i16 %55 to i32
  %57 = add i32 %51, %56
  %58 = icmp eq i32 %53, 256
  br i1 %58, label %59, label %50

59:                                               ; preds = %50
  %60 = lshr i32 %40, 2
  %61 = icmp ule i32 %57, %60
  %62 = zext i1 %61 to i8
  store i8 %62, ptr %9, align 4
  br label %63

63:                                               ; preds = %59, %8
  %64 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 39
  tail call fastcc void @build_tree(ptr noundef %0, ptr noundef %64)
  %65 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 40
  tail call fastcc void @build_tree(ptr noundef %0, ptr noundef %65)
  %66 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 36
  %67 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 39, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 36, i32 0, i32 1
  %70 = load i16, ptr %69, align 2
  %71 = add i32 %68, 1
  %72 = getelementptr %struct.ct_data_s, ptr %66, i32 %71, i32 1
  store i16 -1, ptr %72, align 2
  %73 = icmp slt i32 %68, 0
  br i1 %73, label %134, label %74

74:                                               ; preds = %63
  %75 = icmp eq i16 %70, 0
  %76 = select i1 %75, i32 3, i32 4
  %77 = select i1 %75, i32 138, i32 7
  %78 = zext i16 %70 to i32
  %79 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 16
  %80 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 18
  %81 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 17
  br label %82

82:                                               ; preds = %128, %74
  %83 = phi i32 [ %76, %74 ], [ %132, %128 ]
  %84 = phi i32 [ %77, %74 ], [ %131, %128 ]
  %85 = phi i32 [ 0, %74 ], [ %130, %128 ]
  %86 = phi i32 [ %78, %74 ], [ %92, %128 ]
  %87 = phi i32 [ -1, %74 ], [ %129, %128 ]
  %88 = phi i32 [ 0, %74 ], [ %89, %128 ]
  %89 = add i32 %88, 1
  %90 = getelementptr %struct.ct_data_s, ptr %66, i32 %89, i32 1
  %91 = load i16, ptr %90, align 2
  %92 = zext i16 %91 to i32
  %93 = add nsw i32 %85, 1
  %94 = icmp slt i32 %93, %84
  %95 = icmp eq i32 %86, %92
  %96 = select i1 %94, i1 %95, i1 false
  br i1 %96, label %128, label %97

97:                                               ; preds = %82
  %98 = icmp slt i32 %93, %83
  br i1 %98, label %99, label %104

99:                                               ; preds = %97
  %100 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 %86
  %101 = load i16, ptr %100, align 4
  %102 = trunc i32 %93 to i16
  %103 = add i16 %101, %102
  store i16 %103, ptr %100, align 4
  br label %123

104:                                              ; preds = %97
  %105 = icmp eq i32 %86, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %104
  %107 = icmp eq i32 %86, %87
  br i1 %107, label %112, label %108

108:                                              ; preds = %106
  %109 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 %86
  %110 = load i16, ptr %109, align 4
  %111 = add i16 %110, 1
  store i16 %111, ptr %109, align 4
  br label %112

112:                                              ; preds = %108, %106
  %113 = load i16, ptr %79, align 4
  %114 = add i16 %113, 1
  store i16 %114, ptr %79, align 4
  br label %123

115:                                              ; preds = %104
  %116 = icmp slt i32 %85, 10
  br i1 %116, label %117, label %120

117:                                              ; preds = %115
  %118 = load i16, ptr %81, align 4
  %119 = add i16 %118, 1
  store i16 %119, ptr %81, align 4
  br label %123

120:                                              ; preds = %115
  %121 = load i16, ptr %80, align 4
  %122 = add i16 %121, 1
  store i16 %122, ptr %80, align 4
  br label %123

123:                                              ; preds = %120, %117, %112, %99
  %124 = icmp eq i16 %91, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %123
  %126 = select i1 %95, i32 6, i32 7
  %127 = select i1 %95, i32 3, i32 4
  br label %128

128:                                              ; preds = %125, %123, %82
  %129 = phi i32 [ %87, %82 ], [ %86, %123 ], [ %86, %125 ]
  %130 = phi i32 [ %93, %82 ], [ 0, %123 ], [ 0, %125 ]
  %131 = phi i32 [ %84, %82 ], [ 138, %123 ], [ %126, %125 ]
  %132 = phi i32 [ %83, %82 ], [ 3, %123 ], [ %127, %125 ]
  %133 = icmp sgt i32 %89, %68
  br i1 %133, label %134, label %82

134:                                              ; preds = %128, %63
  %135 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 37
  %136 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 40, i32 1
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 37, i32 0, i32 1
  %139 = load i16, ptr %138, align 2
  %140 = add i32 %137, 1
  %141 = getelementptr %struct.ct_data_s, ptr %135, i32 %140, i32 1
  store i16 -1, ptr %141, align 2
  %142 = icmp slt i32 %137, 0
  br i1 %142, label %203, label %143

143:                                              ; preds = %134
  %144 = icmp eq i16 %139, 0
  %145 = select i1 %144, i32 3, i32 4
  %146 = select i1 %144, i32 138, i32 7
  %147 = zext i16 %139 to i32
  %148 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 16
  %149 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 18
  %150 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 17
  br label %151

151:                                              ; preds = %197, %143
  %152 = phi i32 [ %145, %143 ], [ %201, %197 ]
  %153 = phi i32 [ %146, %143 ], [ %200, %197 ]
  %154 = phi i32 [ 0, %143 ], [ %199, %197 ]
  %155 = phi i32 [ %147, %143 ], [ %161, %197 ]
  %156 = phi i32 [ -1, %143 ], [ %198, %197 ]
  %157 = phi i32 [ 0, %143 ], [ %158, %197 ]
  %158 = add i32 %157, 1
  %159 = getelementptr %struct.ct_data_s, ptr %135, i32 %158, i32 1
  %160 = load i16, ptr %159, align 2
  %161 = zext i16 %160 to i32
  %162 = add nsw i32 %154, 1
  %163 = icmp slt i32 %162, %153
  %164 = icmp eq i32 %155, %161
  %165 = select i1 %163, i1 %164, i1 false
  br i1 %165, label %197, label %166

166:                                              ; preds = %151
  %167 = icmp slt i32 %162, %152
  br i1 %167, label %168, label %173

168:                                              ; preds = %166
  %169 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 %155
  %170 = load i16, ptr %169, align 4
  %171 = trunc i32 %162 to i16
  %172 = add i16 %170, %171
  store i16 %172, ptr %169, align 4
  br label %192

173:                                              ; preds = %166
  %174 = icmp eq i32 %155, 0
  br i1 %174, label %184, label %175

175:                                              ; preds = %173
  %176 = icmp eq i32 %155, %156
  br i1 %176, label %181, label %177

177:                                              ; preds = %175
  %178 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 %155
  %179 = load i16, ptr %178, align 4
  %180 = add i16 %179, 1
  store i16 %180, ptr %178, align 4
  br label %181

181:                                              ; preds = %177, %175
  %182 = load i16, ptr %148, align 4
  %183 = add i16 %182, 1
  store i16 %183, ptr %148, align 4
  br label %192

184:                                              ; preds = %173
  %185 = icmp slt i32 %154, 10
  br i1 %185, label %186, label %189

186:                                              ; preds = %184
  %187 = load i16, ptr %150, align 4
  %188 = add i16 %187, 1
  store i16 %188, ptr %150, align 4
  br label %192

189:                                              ; preds = %184
  %190 = load i16, ptr %149, align 4
  %191 = add i16 %190, 1
  store i16 %191, ptr %149, align 4
  br label %192

192:                                              ; preds = %189, %186, %181, %168
  %193 = icmp eq i16 %160, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %192
  %195 = select i1 %164, i32 6, i32 7
  %196 = select i1 %164, i32 3, i32 4
  br label %197

197:                                              ; preds = %194, %192, %151
  %198 = phi i32 [ %156, %151 ], [ %155, %192 ], [ %155, %194 ]
  %199 = phi i32 [ %162, %151 ], [ 0, %192 ], [ 0, %194 ]
  %200 = phi i32 [ %153, %151 ], [ 138, %192 ], [ %195, %194 ]
  %201 = phi i32 [ %152, %151 ], [ 3, %192 ], [ %196, %194 ]
  %202 = icmp sgt i32 %158, %137
  br i1 %202, label %203, label %151

203:                                              ; preds = %197, %134
  %204 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 41
  tail call fastcc void @build_tree(ptr noundef %0, ptr noundef %204) #10
  %205 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 15, i32 1
  %206 = load i16, ptr %205, align 2
  %207 = icmp eq i16 %206, 0
  br i1 %207, label %208, label %269

208:                                              ; preds = %203
  %209 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 1, i32 1
  %210 = load i16, ptr %209, align 2
  %211 = icmp eq i16 %210, 0
  br i1 %211, label %212, label %269

212:                                              ; preds = %208
  %213 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 14, i32 1
  %214 = load i16, ptr %213, align 2
  %215 = icmp eq i16 %214, 0
  br i1 %215, label %216, label %269

216:                                              ; preds = %212
  %217 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 2, i32 1
  %218 = load i16, ptr %217, align 2
  %219 = icmp eq i16 %218, 0
  br i1 %219, label %220, label %269

220:                                              ; preds = %216
  %221 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 13, i32 1
  %222 = load i16, ptr %221, align 2
  %223 = icmp eq i16 %222, 0
  br i1 %223, label %224, label %269

224:                                              ; preds = %220
  %225 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 3, i32 1
  %226 = load i16, ptr %225, align 2
  %227 = icmp eq i16 %226, 0
  br i1 %227, label %228, label %269

228:                                              ; preds = %224
  %229 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 12, i32 1
  %230 = load i16, ptr %229, align 2
  %231 = icmp eq i16 %230, 0
  br i1 %231, label %232, label %269

232:                                              ; preds = %228
  %233 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 4, i32 1
  %234 = load i16, ptr %233, align 2
  %235 = icmp eq i16 %234, 0
  br i1 %235, label %236, label %269

236:                                              ; preds = %232
  %237 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 11, i32 1
  %238 = load i16, ptr %237, align 2
  %239 = icmp eq i16 %238, 0
  br i1 %239, label %240, label %269

240:                                              ; preds = %236
  %241 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 5, i32 1
  %242 = load i16, ptr %241, align 2
  %243 = icmp eq i16 %242, 0
  br i1 %243, label %244, label %269

244:                                              ; preds = %240
  %245 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 10, i32 1
  %246 = load i16, ptr %245, align 2
  %247 = icmp eq i16 %246, 0
  br i1 %247, label %248, label %269

248:                                              ; preds = %244
  %249 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 6, i32 1
  %250 = load i16, ptr %249, align 2
  %251 = icmp eq i16 %250, 0
  br i1 %251, label %252, label %269

252:                                              ; preds = %248
  %253 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 9, i32 1
  %254 = load i16, ptr %253, align 2
  %255 = icmp eq i16 %254, 0
  br i1 %255, label %256, label %269

256:                                              ; preds = %252
  %257 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 7, i32 1
  %258 = load i16, ptr %257, align 2
  %259 = icmp eq i16 %258, 0
  br i1 %259, label %260, label %269

260:                                              ; preds = %256
  %261 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 8, i32 1
  %262 = load i16, ptr %261, align 2
  %263 = icmp eq i16 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %260
  %265 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 0, i32 1
  %266 = load i16, ptr %265, align 2
  %267 = icmp eq i16 %266, 0
  %268 = select i1 %267, i32 2, i32 3
  br label %269

269:                                              ; preds = %264, %260, %256, %252, %248, %244, %240, %236, %232, %228, %224, %220, %216, %212, %208, %203
  %270 = phi i32 [ 18, %203 ], [ 17, %208 ], [ 16, %212 ], [ 15, %216 ], [ 14, %220 ], [ 13, %224 ], [ 12, %228 ], [ 11, %232 ], [ 10, %236 ], [ 9, %240 ], [ 8, %244 ], [ 7, %248 ], [ 6, %252 ], [ 5, %256 ], [ 4, %260 ], [ %268, %264 ]
  %271 = mul nuw nsw i32 %270, 3
  %272 = add nuw nsw i32 %271, 17
  %273 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 51
  %274 = load i32, ptr %273, align 4
  %275 = add i32 %272, %274
  store i32 %275, ptr %273, align 4
  %276 = add i32 %275, 10
  %277 = lshr i32 %276, 3
  %278 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 52
  %279 = load i32, ptr %278, align 4
  %280 = add i32 %279, 10
  %281 = lshr i32 %280, 3
  %282 = tail call i32 @llvm.umin.i32(i32 %281, i32 %277)
  br label %285

283:                                              ; preds = %4
  %284 = add i32 %2, 5
  br label %285

285:                                              ; preds = %283, %269
  %286 = phi i32 [ 0, %283 ], [ %270, %269 ]
  %287 = phi i32 [ %284, %283 ], [ %281, %269 ]
  %288 = phi i32 [ %284, %283 ], [ %282, %269 ]
  %289 = add i32 %2, 4
  %290 = icmp ule i32 %289, %288
  %291 = icmp ne ptr %1, null
  %292 = and i1 %291, %290
  br i1 %292, label %293, label %294

293:                                              ; preds = %285
  tail call void @zlib_tr_stored_block(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %530

294:                                              ; preds = %285
  %295 = icmp eq i32 %287, %288
  %296 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 57
  %297 = load i32, ptr %296, align 4
  %298 = icmp sgt i32 %297, 13
  br i1 %295, label %299, label %337

299:                                              ; preds = %294
  %300 = add i32 %3, 2
  %301 = shl i32 %300, %297
  %302 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  %303 = load i16, ptr %302, align 4
  %304 = trunc i32 %301 to i16
  %305 = or i16 %303, %304
  store i16 %305, ptr %302, align 4
  br i1 %298, label %306, label %327

306:                                              ; preds = %299
  %307 = trunc i16 %305 to i8
  %308 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 2
  %309 = load ptr, ptr %308, align 4
  %310 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 5
  %311 = load i32, ptr %310, align 4
  %312 = add i32 %311, 1
  store i32 %312, ptr %310, align 4
  %313 = getelementptr i8, ptr %309, i32 %311
  store i8 %307, ptr %313, align 1
  %314 = load i16, ptr %302, align 4
  %315 = lshr i16 %314, 8
  %316 = trunc i16 %315 to i8
  %317 = load ptr, ptr %308, align 4
  %318 = load i32, ptr %310, align 4
  %319 = add i32 %318, 1
  store i32 %319, ptr %310, align 4
  %320 = getelementptr i8, ptr %317, i32 %318
  store i8 %316, ptr %320, align 1
  %321 = and i32 %300, 65535
  %322 = load i32, ptr %296, align 4
  %323 = sub i32 16, %322
  %324 = lshr i32 %321, %323
  %325 = trunc i32 %324 to i16
  store i16 %325, ptr %302, align 4
  %326 = add i32 %322, -13
  br label %329

327:                                              ; preds = %299
  %328 = add nsw i32 %297, 3
  br label %329

329:                                              ; preds = %327, %306
  %330 = phi i32 [ %328, %327 ], [ %326, %306 ]
  store i32 %330, ptr %296, align 4
  tail call fastcc void @compress_block(ptr noundef %0, ptr noundef nonnull @static_ltree, ptr noundef nonnull @static_dtree)
  %331 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 52
  %332 = load i32, ptr %331, align 4
  %333 = add i32 %332, 3
  %334 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 53
  %335 = load i32, ptr %334, align 4
  %336 = add i32 %333, %335
  store i32 %336, ptr %334, align 4
  br label %530

337:                                              ; preds = %294
  %338 = add i32 %3, 4
  %339 = shl i32 %338, %297
  %340 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  %341 = load i16, ptr %340, align 4
  %342 = trunc i32 %339 to i16
  %343 = or i16 %341, %342
  br i1 %298, label %344, label %365

344:                                              ; preds = %337
  store i16 %343, ptr %340, align 4
  %345 = trunc i16 %343 to i8
  %346 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 2
  %347 = load ptr, ptr %346, align 4
  %348 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 5
  %349 = load i32, ptr %348, align 4
  %350 = add i32 %349, 1
  store i32 %350, ptr %348, align 4
  %351 = getelementptr i8, ptr %347, i32 %349
  store i8 %345, ptr %351, align 1
  %352 = load i16, ptr %340, align 4
  %353 = lshr i16 %352, 8
  %354 = trunc i16 %353 to i8
  %355 = load ptr, ptr %346, align 4
  %356 = load i32, ptr %348, align 4
  %357 = add i32 %356, 1
  store i32 %357, ptr %348, align 4
  %358 = getelementptr i8, ptr %355, i32 %356
  store i8 %354, ptr %358, align 1
  %359 = and i32 %338, 65535
  %360 = load i32, ptr %296, align 4
  %361 = sub i32 16, %360
  %362 = lshr i32 %359, %361
  %363 = trunc i32 %362 to i16
  %364 = add i32 %360, -13
  br label %367

365:                                              ; preds = %337
  %366 = add nsw i32 %297, 3
  br label %367

367:                                              ; preds = %365, %344
  %368 = phi i16 [ %343, %365 ], [ %363, %344 ]
  %369 = phi i32 [ %366, %365 ], [ %364, %344 ]
  store i32 %369, ptr %296, align 4
  %370 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 39, i32 1
  %371 = load i32, ptr %370, align 4
  %372 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 40, i32 1
  %373 = load i32, ptr %372, align 4
  %374 = icmp sgt i32 %369, 11
  br i1 %374, label %375, label %401

375:                                              ; preds = %367
  %376 = add i32 %371, -256
  %377 = shl i32 %376, %369
  %378 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  %379 = trunc i32 %377 to i16
  %380 = or i16 %368, %379
  store i16 %380, ptr %378, align 4
  %381 = trunc i16 %380 to i8
  %382 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 2
  %383 = load ptr, ptr %382, align 4
  %384 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 5
  %385 = load i32, ptr %384, align 4
  %386 = add i32 %385, 1
  store i32 %386, ptr %384, align 4
  %387 = getelementptr i8, ptr %383, i32 %385
  store i8 %381, ptr %387, align 1
  %388 = load i16, ptr %378, align 4
  %389 = lshr i16 %388, 8
  %390 = trunc i16 %389 to i8
  %391 = load ptr, ptr %382, align 4
  %392 = load i32, ptr %384, align 4
  %393 = add i32 %392, 1
  store i32 %393, ptr %384, align 4
  %394 = getelementptr i8, ptr %391, i32 %392
  store i8 %390, ptr %394, align 1
  %395 = and i32 %376, 65535
  %396 = load i32, ptr %296, align 4
  %397 = sub i32 16, %396
  %398 = lshr i32 %395, %397
  %399 = trunc i32 %398 to i16
  %400 = add i32 %396, -11
  br label %407

401:                                              ; preds = %367
  %402 = add i32 %371, 65280
  %403 = shl i32 %402, %369
  %404 = trunc i32 %403 to i16
  %405 = or i16 %368, %404
  %406 = add nsw i32 %369, 5
  br label %407

407:                                              ; preds = %401, %375
  %408 = phi i16 [ %405, %401 ], [ %399, %375 ]
  %409 = phi i32 [ %406, %401 ], [ %400, %375 ]
  store i32 %409, ptr %296, align 4
  %410 = icmp sgt i32 %409, 11
  %411 = shl i32 %373, %409
  br i1 %410, label %412, label %436

412:                                              ; preds = %407
  %413 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  %414 = trunc i32 %411 to i16
  %415 = or i16 %408, %414
  store i16 %415, ptr %413, align 4
  %416 = trunc i16 %415 to i8
  %417 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 2
  %418 = load ptr, ptr %417, align 4
  %419 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 5
  %420 = load i32, ptr %419, align 4
  %421 = add i32 %420, 1
  store i32 %421, ptr %419, align 4
  %422 = getelementptr i8, ptr %418, i32 %420
  store i8 %416, ptr %422, align 1
  %423 = load i16, ptr %413, align 4
  %424 = lshr i16 %423, 8
  %425 = trunc i16 %424 to i8
  %426 = load ptr, ptr %417, align 4
  %427 = load i32, ptr %419, align 4
  %428 = add i32 %427, 1
  store i32 %428, ptr %419, align 4
  %429 = getelementptr i8, ptr %426, i32 %427
  store i8 %425, ptr %429, align 1
  %430 = and i32 %373, 65535
  %431 = load i32, ptr %296, align 4
  %432 = sub i32 16, %431
  %433 = lshr i32 %430, %432
  %434 = trunc i32 %433 to i16
  %435 = add i32 %431, -11
  br label %440

436:                                              ; preds = %407
  %437 = trunc i32 %411 to i16
  %438 = or i16 %408, %437
  %439 = add nsw i32 %409, 5
  br label %440

440:                                              ; preds = %436, %412
  %441 = phi i16 [ %438, %436 ], [ %434, %412 ]
  %442 = phi i32 [ %439, %436 ], [ %435, %412 ]
  store i32 %442, ptr %296, align 4
  %443 = icmp sgt i32 %442, 12
  br i1 %443, label %444, label %470

444:                                              ; preds = %440
  %445 = add nsw i32 %286, -3
  %446 = shl i32 %445, %442
  %447 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  %448 = trunc i32 %446 to i16
  %449 = or i16 %441, %448
  store i16 %449, ptr %447, align 4
  %450 = trunc i16 %449 to i8
  %451 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 2
  %452 = load ptr, ptr %451, align 4
  %453 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 5
  %454 = load i32, ptr %453, align 4
  %455 = add i32 %454, 1
  store i32 %455, ptr %453, align 4
  %456 = getelementptr i8, ptr %452, i32 %454
  store i8 %450, ptr %456, align 1
  %457 = load i16, ptr %447, align 4
  %458 = lshr i16 %457, 8
  %459 = trunc i16 %458 to i8
  %460 = load ptr, ptr %451, align 4
  %461 = load i32, ptr %453, align 4
  %462 = add i32 %461, 1
  store i32 %462, ptr %453, align 4
  %463 = getelementptr i8, ptr %460, i32 %461
  store i8 %459, ptr %463, align 1
  %464 = and i32 %445, 65535
  %465 = load i32, ptr %296, align 4
  %466 = sub i32 16, %465
  %467 = lshr i32 %464, %466
  %468 = trunc i32 %467 to i16
  %469 = add i32 %465, -12
  br label %476

470:                                              ; preds = %440
  %471 = add nuw nsw i32 %286, 65533
  %472 = shl nuw nsw i32 %471, %442
  %473 = trunc i32 %472 to i16
  %474 = or i16 %441, %473
  %475 = add nsw i32 %442, 4
  br label %476

476:                                              ; preds = %470, %444
  %477 = phi i16 [ %474, %470 ], [ %468, %444 ]
  %478 = phi i32 [ %475, %470 ], [ %469, %444 ]
  store i32 %478, ptr %296, align 4
  %479 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  %480 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 2
  %481 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 5
  br label %482

482:                                              ; preds = %516, %476
  %483 = phi i16 [ %477, %476 ], [ %517, %516 ]
  %484 = phi i32 [ %478, %476 ], [ %518, %516 ]
  %485 = phi i32 [ 0, %476 ], [ %519, %516 ]
  %486 = icmp sgt i32 %484, 13
  %487 = getelementptr [19 x i8], ptr @bl_order, i32 0, i32 %485
  %488 = load i8, ptr %487, align 1
  %489 = zext i8 %488 to i32
  %490 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 %489, i32 1
  %491 = load i16, ptr %490, align 2
  %492 = zext i16 %491 to i32
  %493 = shl i32 %492, %484
  %494 = trunc i32 %493 to i16
  %495 = or i16 %483, %494
  store i16 %495, ptr %479, align 4
  br i1 %486, label %496, label %514

496:                                              ; preds = %482
  %497 = trunc i16 %495 to i8
  %498 = load ptr, ptr %480, align 4
  %499 = load i32, ptr %481, align 4
  %500 = add i32 %499, 1
  store i32 %500, ptr %481, align 4
  %501 = getelementptr i8, ptr %498, i32 %499
  store i8 %497, ptr %501, align 1
  %502 = load i16, ptr %479, align 4
  %503 = lshr i16 %502, 8
  %504 = trunc i16 %503 to i8
  %505 = load ptr, ptr %480, align 4
  %506 = load i32, ptr %481, align 4
  %507 = add i32 %506, 1
  store i32 %507, ptr %481, align 4
  %508 = getelementptr i8, ptr %505, i32 %506
  store i8 %504, ptr %508, align 1
  %509 = load i32, ptr %296, align 4
  %510 = sub i32 16, %509
  %511 = lshr i32 %492, %510
  %512 = trunc i32 %511 to i16
  store i16 %512, ptr %479, align 4
  %513 = add i32 %509, -13
  br label %516

514:                                              ; preds = %482
  %515 = add nsw i32 %484, 3
  br label %516

516:                                              ; preds = %514, %496
  %517 = phi i16 [ %495, %514 ], [ %512, %496 ]
  %518 = phi i32 [ %515, %514 ], [ %513, %496 ]
  store i32 %518, ptr %296, align 4
  %519 = add nuw nsw i32 %485, 1
  %520 = icmp eq i32 %485, %286
  br i1 %520, label %521, label %482

521:                                              ; preds = %516
  %522 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 36
  tail call fastcc void @send_tree(ptr noundef %0, ptr noundef %522, i32 noundef %371) #10
  %523 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 37
  tail call fastcc void @send_tree(ptr noundef %0, ptr noundef %523, i32 noundef %373) #10
  tail call fastcc void @compress_block(ptr noundef %0, ptr noundef %522, ptr noundef %523)
  %524 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 51
  %525 = load i32, ptr %524, align 4
  %526 = add i32 %525, 3
  %527 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 53
  %528 = load i32, ptr %527, align 4
  %529 = add i32 %526, %528
  store i32 %529, ptr %527, align 4
  br label %530

530:                                              ; preds = %521, %329, %293
  tail call fastcc void @init_block(ptr noundef %0)
  %531 = icmp eq i32 %3, 0
  br i1 %531, label %532, label %535

532:                                              ; preds = %530
  %533 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 53
  %534 = load i32, ptr %533, align 4
  br label %573

535:                                              ; preds = %530
  %536 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 57
  %537 = load i32, ptr %536, align 4
  %538 = icmp sgt i32 %537, 8
  br i1 %538, label %539, label %556

539:                                              ; preds = %535
  %540 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  %541 = load i16, ptr %540, align 4
  %542 = trunc i16 %541 to i8
  %543 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 2
  %544 = load ptr, ptr %543, align 4
  %545 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 5
  %546 = load i32, ptr %545, align 4
  %547 = add i32 %546, 1
  store i32 %547, ptr %545, align 4
  %548 = getelementptr i8, ptr %544, i32 %546
  store i8 %542, ptr %548, align 1
  %549 = load i16, ptr %540, align 4
  %550 = lshr i16 %549, 8
  %551 = trunc i16 %550 to i8
  %552 = load ptr, ptr %543, align 4
  %553 = load i32, ptr %545, align 4
  %554 = add i32 %553, 1
  store i32 %554, ptr %545, align 4
  %555 = getelementptr i8, ptr %552, i32 %553
  store i8 %551, ptr %555, align 1
  br label %568

556:                                              ; preds = %535
  %557 = icmp sgt i32 %537, 0
  br i1 %557, label %558, label %568

558:                                              ; preds = %556
  %559 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  %560 = load i16, ptr %559, align 4
  %561 = trunc i16 %560 to i8
  %562 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 2
  %563 = load ptr, ptr %562, align 4
  %564 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 5
  %565 = load i32, ptr %564, align 4
  %566 = add i32 %565, 1
  store i32 %566, ptr %564, align 4
  %567 = getelementptr i8, ptr %563, i32 %565
  store i8 %561, ptr %567, align 1
  br label %568

568:                                              ; preds = %558, %556, %539
  %569 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  store i16 0, ptr %569, align 4
  store i32 0, ptr %536, align 4
  %570 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 53
  %571 = load i32, ptr %570, align 4
  %572 = add i32 %571, 7
  store i32 %572, ptr %570, align 4
  br label %573

573:                                              ; preds = %568, %532
  %574 = phi i32 [ %534, %532 ], [ %572, %568 ]
  %575 = lshr i32 %574, 3
  ret i32 %575
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @build_tree(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.tree_desc_s, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.static_tree_desc_s, ptr %5, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 44
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 45
  store i32 573, ptr %10, align 4
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %21, label %15

12:                                               ; preds = %34
  %13 = load i32, ptr %9, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %60

15:                                               ; preds = %12, %2
  %16 = phi i32 [ %35, %12 ], [ -1, %2 ]
  %17 = phi i32 [ %13, %12 ], [ 0, %2 ]
  %18 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 51
  %19 = icmp eq ptr %6, null
  %20 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 52
  br label %38

21:                                               ; preds = %34, %2
  %22 = phi i32 [ %35, %34 ], [ -1, %2 ]
  %23 = phi i32 [ %36, %34 ], [ 0, %2 ]
  %24 = getelementptr %struct.ct_data_s, ptr %3, i32 %23
  %25 = load i16, ptr %24, align 2
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = load i32, ptr %9, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %9, align 4
  %30 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 43, i32 %29
  store i32 %23, ptr %30, align 4
  %31 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 46, i32 %23
  store i8 0, ptr %31, align 1
  br label %34

32:                                               ; preds = %21
  %33 = getelementptr %struct.ct_data_s, ptr %3, i32 %23, i32 1
  store i16 0, ptr %33, align 2
  br label %34

34:                                               ; preds = %32, %27
  %35 = phi i32 [ %23, %27 ], [ %22, %32 ]
  %36 = add nuw nsw i32 %23, 1
  %37 = icmp eq i32 %36, %8
  br i1 %37, label %12, label %21

38:                                               ; preds = %57, %15
  %39 = phi i32 [ %17, %15 ], [ %58, %57 ]
  %40 = phi i32 [ %16, %15 ], [ %43, %57 ]
  %41 = icmp slt i32 %40, 2
  %42 = add i32 %40, 1
  %43 = select i1 %41, i32 %42, i32 %40
  %44 = select i1 %41, i32 %42, i32 0
  %45 = add nsw i32 %39, 1
  store i32 %45, ptr %9, align 4
  %46 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 43, i32 %45
  store i32 %44, ptr %46, align 4
  %47 = getelementptr %struct.ct_data_s, ptr %3, i32 %44
  store i16 1, ptr %47, align 2
  %48 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 46, i32 %44
  store i8 0, ptr %48, align 1
  %49 = load i32, ptr %18, align 4
  %50 = add i32 %49, -1
  store i32 %50, ptr %18, align 4
  br i1 %19, label %57, label %51

51:                                               ; preds = %38
  %52 = getelementptr %struct.ct_data_s, ptr %6, i32 %44, i32 1
  %53 = load i16, ptr %52, align 2
  %54 = zext i16 %53 to i32
  %55 = load i32, ptr %20, align 4
  %56 = sub i32 %55, %54
  store i32 %56, ptr %20, align 4
  br label %57

57:                                               ; preds = %51, %38
  %58 = load i32, ptr %9, align 4
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %38, label %60

60:                                               ; preds = %57, %12
  %61 = phi i32 [ %35, %12 ], [ %43, %57 ]
  %62 = getelementptr inbounds %struct.tree_desc_s, ptr %1, i32 0, i32 1
  store i32 %61, ptr %62, align 4
  %63 = load i32, ptr %9, align 4
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = lshr i32 %63, 1
  br label %72

67:                                               ; preds = %127
  %68 = load i32, ptr %9, align 4
  br label %69

69:                                               ; preds = %67, %60
  %70 = phi i32 [ %68, %67 ], [ %63, %60 ]
  %71 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 43, i32 1
  br label %134

72:                                               ; preds = %131, %65
  %73 = phi i32 [ %133, %131 ], [ %63, %65 ]
  %74 = phi i32 [ %132, %131 ], [ %66, %65 ]
  %75 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 43, i32 %74
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 46, i32 %76
  %78 = shl nuw i32 %74, 1
  %79 = icmp sgt i32 %78, %73
  br i1 %79, label %127, label %80

80:                                               ; preds = %72
  %81 = getelementptr %struct.ct_data_s, ptr %3, i32 %76
  br label %82

82:                                               ; preds = %122, %80
  %83 = phi i32 [ %73, %80 ], [ %125, %122 ]
  %84 = phi i32 [ %78, %80 ], [ %124, %122 ]
  %85 = phi i32 [ %74, %80 ], [ %108, %122 ]
  %86 = icmp slt i32 %84, %83
  br i1 %86, label %87, label %107

87:                                               ; preds = %82
  %88 = or i32 %84, 1
  %89 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 43, i32 %88
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr %struct.ct_data_s, ptr %3, i32 %90
  %92 = load i16, ptr %91, align 2
  %93 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 43, i32 %84
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr %struct.ct_data_s, ptr %3, i32 %94
  %96 = load i16, ptr %95, align 2
  %97 = icmp ult i16 %92, %96
  br i1 %97, label %106, label %98

98:                                               ; preds = %87
  %99 = icmp eq i16 %92, %96
  br i1 %99, label %100, label %107

100:                                              ; preds = %98
  %101 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 46, i32 %90
  %102 = load i8, ptr %101, align 1
  %103 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 46, i32 %94
  %104 = load i8, ptr %103, align 1
  %105 = icmp ugt i8 %102, %104
  br i1 %105, label %107, label %106

106:                                              ; preds = %100, %87
  br label %107

107:                                              ; preds = %106, %100, %98, %82
  %108 = phi i32 [ %88, %106 ], [ %84, %100 ], [ %84, %98 ], [ %84, %82 ]
  %109 = load i16, ptr %81, align 2
  %110 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 43, i32 %108
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr %struct.ct_data_s, ptr %3, i32 %111
  %113 = load i16, ptr %112, align 2
  %114 = icmp ult i16 %109, %113
  br i1 %114, label %127, label %115

115:                                              ; preds = %107
  %116 = icmp eq i16 %109, %113
  br i1 %116, label %117, label %122

117:                                              ; preds = %115
  %118 = load i8, ptr %77, align 1
  %119 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 46, i32 %111
  %120 = load i8, ptr %119, align 1
  %121 = icmp ugt i8 %118, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %117, %115
  %123 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 43, i32 %85
  store i32 %111, ptr %123, align 4
  %124 = shl i32 %108, 1
  %125 = load i32, ptr %9, align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %82

127:                                              ; preds = %122, %117, %107, %72
  %128 = phi i32 [ %74, %72 ], [ %108, %122 ], [ %85, %117 ], [ %85, %107 ]
  %129 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 43, i32 %128
  store i32 %76, ptr %129, align 4
  %130 = icmp sgt i32 %74, 1
  br i1 %130, label %131, label %67

131:                                              ; preds = %127
  %132 = add nsw i32 %74, -1
  %133 = load i32, ptr %9, align 4
  br label %72

134:                                              ; preds = %264, %69
  %135 = phi i32 [ %267, %264 ], [ %70, %69 ]
  %136 = phi i32 [ %216, %264 ], [ %8, %69 ]
  %137 = load i32, ptr %71, align 4
  %138 = add i32 %135, -1
  store i32 %138, ptr %9, align 4
  %139 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 43, i32 %135
  %140 = load i32, ptr %139, align 4
  store i32 %140, ptr %71, align 4
  %141 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 46, i32 %140
  %142 = icmp slt i32 %138, 2
  br i1 %142, label %190, label %143

143:                                              ; preds = %134
  %144 = getelementptr %struct.ct_data_s, ptr %3, i32 %140
  br label %145

145:                                              ; preds = %185, %143
  %146 = phi i32 [ %138, %143 ], [ %188, %185 ]
  %147 = phi i32 [ 2, %143 ], [ %187, %185 ]
  %148 = phi i32 [ 1, %143 ], [ %171, %185 ]
  %149 = icmp slt i32 %147, %146
  br i1 %149, label %150, label %170

150:                                              ; preds = %145
  %151 = or i32 %147, 1
  %152 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 43, i32 %151
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr %struct.ct_data_s, ptr %3, i32 %153
  %155 = load i16, ptr %154, align 2
  %156 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 43, i32 %147
  %157 = load i32, ptr %156, align 4
  %158 = getelementptr %struct.ct_data_s, ptr %3, i32 %157
  %159 = load i16, ptr %158, align 2
  %160 = icmp ult i16 %155, %159
  br i1 %160, label %169, label %161

161:                                              ; preds = %150
  %162 = icmp eq i16 %155, %159
  br i1 %162, label %163, label %170

163:                                              ; preds = %161
  %164 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 46, i32 %153
  %165 = load i8, ptr %164, align 1
  %166 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 46, i32 %157
  %167 = load i8, ptr %166, align 1
  %168 = icmp ugt i8 %165, %167
  br i1 %168, label %170, label %169

169:                                              ; preds = %163, %150
  br label %170

170:                                              ; preds = %169, %163, %161, %145
  %171 = phi i32 [ %151, %169 ], [ %147, %163 ], [ %147, %161 ], [ %147, %145 ]
  %172 = load i16, ptr %144, align 2
  %173 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 43, i32 %171
  %174 = load i32, ptr %173, align 4
  %175 = getelementptr %struct.ct_data_s, ptr %3, i32 %174
  %176 = load i16, ptr %175, align 2
  %177 = icmp ult i16 %172, %176
  br i1 %177, label %190, label %178

178:                                              ; preds = %170
  %179 = icmp eq i16 %172, %176
  br i1 %179, label %180, label %185

180:                                              ; preds = %178
  %181 = load i8, ptr %141, align 1
  %182 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 46, i32 %174
  %183 = load i8, ptr %182, align 1
  %184 = icmp ugt i8 %181, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %180, %178
  %186 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 43, i32 %148
  store i32 %174, ptr %186, align 4
  %187 = shl i32 %171, 1
  %188 = load i32, ptr %9, align 4
  %189 = icmp sgt i32 %187, %188
  br i1 %189, label %190, label %145

190:                                              ; preds = %185, %180, %170, %134
  %191 = phi i32 [ 1, %134 ], [ %171, %185 ], [ %148, %180 ], [ %148, %170 ]
  %192 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 43, i32 %191
  store i32 %140, ptr %192, align 4
  %193 = load i32, ptr %71, align 4
  %194 = load i32, ptr %10, align 4
  %195 = add i32 %194, -1
  store i32 %195, ptr %10, align 4
  %196 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 43, i32 %195
  store i32 %137, ptr %196, align 4
  %197 = load i32, ptr %10, align 4
  %198 = add i32 %197, -1
  store i32 %198, ptr %10, align 4
  %199 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 43, i32 %198
  store i32 %193, ptr %199, align 4
  %200 = getelementptr %struct.ct_data_s, ptr %3, i32 %137
  %201 = load i16, ptr %200, align 2
  %202 = getelementptr %struct.ct_data_s, ptr %3, i32 %193
  %203 = load i16, ptr %202, align 2
  %204 = add i16 %203, %201
  %205 = getelementptr %struct.ct_data_s, ptr %3, i32 %136
  store i16 %204, ptr %205, align 2
  %206 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 46, i32 %137
  %207 = load i8, ptr %206, align 1
  %208 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 46, i32 %193
  %209 = load i8, ptr %208, align 1
  %210 = tail call i8 @llvm.umax.i8(i8 %207, i8 %209)
  %211 = add i8 %210, 1
  %212 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 46, i32 %136
  store i8 %211, ptr %212, align 1
  %213 = trunc i32 %136 to i16
  %214 = getelementptr %struct.ct_data_s, ptr %3, i32 %193, i32 1
  store i16 %213, ptr %214, align 2
  %215 = getelementptr %struct.ct_data_s, ptr %3, i32 %137, i32 1
  store i16 %213, ptr %215, align 2
  %216 = add i32 %136, 1
  store i32 %136, ptr %71, align 4
  %217 = load i32, ptr %9, align 4
  %218 = icmp slt i32 %217, 2
  br i1 %218, label %264, label %219

219:                                              ; preds = %259, %190
  %220 = phi i32 [ %262, %259 ], [ %217, %190 ]
  %221 = phi i32 [ %261, %259 ], [ 2, %190 ]
  %222 = phi i32 [ %245, %259 ], [ 1, %190 ]
  %223 = icmp slt i32 %221, %220
  br i1 %223, label %224, label %244

224:                                              ; preds = %219
  %225 = or i32 %221, 1
  %226 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 43, i32 %225
  %227 = load i32, ptr %226, align 4
  %228 = getelementptr %struct.ct_data_s, ptr %3, i32 %227
  %229 = load i16, ptr %228, align 2
  %230 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 43, i32 %221
  %231 = load i32, ptr %230, align 4
  %232 = getelementptr %struct.ct_data_s, ptr %3, i32 %231
  %233 = load i16, ptr %232, align 2
  %234 = icmp ult i16 %229, %233
  br i1 %234, label %243, label %235

235:                                              ; preds = %224
  %236 = icmp eq i16 %229, %233
  br i1 %236, label %237, label %244

237:                                              ; preds = %235
  %238 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 46, i32 %227
  %239 = load i8, ptr %238, align 1
  %240 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 46, i32 %231
  %241 = load i8, ptr %240, align 1
  %242 = icmp ugt i8 %239, %241
  br i1 %242, label %244, label %243

243:                                              ; preds = %237, %224
  br label %244

244:                                              ; preds = %243, %237, %235, %219
  %245 = phi i32 [ %225, %243 ], [ %221, %237 ], [ %221, %235 ], [ %221, %219 ]
  %246 = load i16, ptr %205, align 2
  %247 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 43, i32 %245
  %248 = load i32, ptr %247, align 4
  %249 = getelementptr %struct.ct_data_s, ptr %3, i32 %248
  %250 = load i16, ptr %249, align 2
  %251 = icmp ult i16 %246, %250
  br i1 %251, label %264, label %252

252:                                              ; preds = %244
  %253 = icmp eq i16 %246, %250
  br i1 %253, label %254, label %259

254:                                              ; preds = %252
  %255 = load i8, ptr %212, align 1
  %256 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 46, i32 %248
  %257 = load i8, ptr %256, align 1
  %258 = icmp ugt i8 %255, %257
  br i1 %258, label %259, label %264

259:                                              ; preds = %254, %252
  %260 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 43, i32 %222
  store i32 %248, ptr %260, align 4
  %261 = shl i32 %245, 1
  %262 = load i32, ptr %9, align 4
  %263 = icmp sgt i32 %261, %262
  br i1 %263, label %264, label %219

264:                                              ; preds = %259, %254, %244, %190
  %265 = phi i32 [ 1, %190 ], [ %245, %259 ], [ %222, %254 ], [ %222, %244 ]
  %266 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 43, i32 %265
  store i32 %136, ptr %266, align 4
  %267 = load i32, ptr %9, align 4
  %268 = icmp sgt i32 %267, 1
  br i1 %268, label %134, label %269

269:                                              ; preds = %264
  %270 = load i32, ptr %71, align 4
  %271 = load i32, ptr %10, align 4
  %272 = add i32 %271, -1
  store i32 %272, ptr %10, align 4
  %273 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 43, i32 %272
  store i32 %270, ptr %273, align 4
  %274 = load ptr, ptr %1, align 4
  %275 = load i32, ptr %62, align 4
  %276 = load ptr, ptr %4, align 4
  %277 = load ptr, ptr %276, align 4
  %278 = getelementptr inbounds %struct.static_tree_desc_s, ptr %276, i32 0, i32 1
  %279 = load ptr, ptr %278, align 4
  %280 = getelementptr inbounds %struct.static_tree_desc_s, ptr %276, i32 0, i32 2
  %281 = load i32, ptr %280, align 4
  %282 = getelementptr inbounds %struct.static_tree_desc_s, ptr %276, i32 0, i32 4
  %283 = load i32, ptr %282, align 4
  %284 = getelementptr i8, ptr %0, i32 2868
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(32) %284, i8 0, i32 32, i1 false) #10
  %285 = load i32, ptr %10, align 4
  %286 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 43, i32 %285
  %287 = load i32, ptr %286, align 4
  %288 = getelementptr %struct.ct_data_s, ptr %274, i32 %287, i32 1
  store i16 0, ptr %288, align 2
  %289 = load i32, ptr %10, align 4
  %290 = add i32 %289, 1
  %291 = icmp slt i32 %290, 573
  br i1 %291, label %292, label %407

292:                                              ; preds = %269
  %293 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 51
  %294 = icmp eq ptr %277, null
  %295 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 52
  br label %296

296:                                              ; preds = %341, %292
  %297 = phi i32 [ %290, %292 ], [ %342, %341 ]
  %298 = phi i32 [ 0, %292 ], [ %313, %341 ]
  %299 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 43, i32 %297
  %300 = load i32, ptr %299, align 4
  %301 = getelementptr %struct.ct_data_s, ptr %274, i32 %300
  %302 = getelementptr %struct.ct_data_s, ptr %274, i32 %300, i32 1
  %303 = load i16, ptr %302, align 2
  %304 = zext i16 %303 to i32
  %305 = getelementptr %struct.ct_data_s, ptr %274, i32 %304, i32 1
  %306 = load i16, ptr %305, align 2
  %307 = zext i16 %306 to i32
  %308 = add nuw nsw i32 %307, 1
  %309 = icmp sgt i32 %283, %307
  %310 = select i1 %309, i32 %308, i32 %283
  %311 = xor i1 %309, true
  %312 = zext i1 %311 to i32
  %313 = add i32 %298, %312
  %314 = trunc i32 %310 to i16
  store i16 %314, ptr %302, align 2
  %315 = icmp sgt i32 %300, %275
  br i1 %315, label %341, label %316

316:                                              ; preds = %296
  %317 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 42, i32 %310
  %318 = load i16, ptr %317, align 2
  %319 = add i16 %318, 1
  store i16 %319, ptr %317, align 2
  %320 = icmp slt i32 %300, %281
  br i1 %320, label %325, label %321

321:                                              ; preds = %316
  %322 = sub i32 %300, %281
  %323 = getelementptr i32, ptr %279, i32 %322
  %324 = load i32, ptr %323, align 4
  br label %325

325:                                              ; preds = %321, %316
  %326 = phi i32 [ %324, %321 ], [ 0, %316 ]
  %327 = load i16, ptr %301, align 2
  %328 = zext i16 %327 to i32
  %329 = add i32 %326, %310
  %330 = mul i32 %329, %328
  %331 = load i32, ptr %293, align 4
  %332 = add i32 %330, %331
  store i32 %332, ptr %293, align 4
  br i1 %294, label %341, label %333

333:                                              ; preds = %325
  %334 = getelementptr %struct.ct_data_s, ptr %277, i32 %300, i32 1
  %335 = load i16, ptr %334, align 2
  %336 = zext i16 %335 to i32
  %337 = add i32 %326, %336
  %338 = mul i32 %337, %328
  %339 = load i32, ptr %295, align 4
  %340 = add i32 %338, %339
  store i32 %340, ptr %295, align 4
  br label %341

341:                                              ; preds = %333, %325, %296
  %342 = add i32 %297, 1
  %343 = icmp eq i32 %342, 573
  br i1 %343, label %344, label %296

344:                                              ; preds = %341
  %345 = icmp eq i32 %313, 0
  br i1 %345, label %407, label %346

346:                                              ; preds = %344
  %347 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 42, i32 %283
  br label %348

348:                                              ; preds = %356, %346
  %349 = phi i32 [ %363, %356 ], [ %313, %346 ]
  br label %350

350:                                              ; preds = %350, %348
  %351 = phi i32 [ %283, %348 ], [ %352, %350 ]
  %352 = add i32 %351, -1
  %353 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 42, i32 %352
  %354 = load i16, ptr %353, align 2
  %355 = icmp eq i16 %354, 0
  br i1 %355, label %350, label %356

356:                                              ; preds = %350
  %357 = add i16 %354, -1
  store i16 %357, ptr %353, align 2
  %358 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 42, i32 %351
  %359 = load i16, ptr %358, align 2
  %360 = add i16 %359, 2
  store i16 %360, ptr %358, align 2
  %361 = load i16, ptr %347, align 2
  %362 = add i16 %361, -1
  store i16 %362, ptr %347, align 2
  %363 = add i32 %349, -2
  %364 = icmp sgt i32 %363, 0
  br i1 %364, label %348, label %365

365:                                              ; preds = %356
  %366 = icmp eq i32 %283, 0
  br i1 %366, label %407, label %367

367:                                              ; preds = %404, %365
  %368 = phi i16 [ %406, %404 ], [ %362, %365 ]
  %369 = phi i32 [ %402, %404 ], [ %283, %365 ]
  %370 = phi i32 [ %401, %404 ], [ 573, %365 ]
  %371 = trunc i32 %369 to i16
  %372 = icmp eq i16 %368, 0
  br i1 %372, label %400, label %373

373:                                              ; preds = %367
  %374 = zext i16 %368 to i32
  br label %375

375:                                              ; preds = %397, %373
  %376 = phi i32 [ %398, %397 ], [ %374, %373 ]
  %377 = phi i32 [ %380, %397 ], [ %370, %373 ]
  br label %378

378:                                              ; preds = %378, %375
  %379 = phi i32 [ %380, %378 ], [ %377, %375 ]
  %380 = add i32 %379, -1
  %381 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 43, i32 %380
  %382 = load i32, ptr %381, align 4
  %383 = icmp sgt i32 %382, %275
  br i1 %383, label %378, label %384

384:                                              ; preds = %378
  %385 = getelementptr %struct.ct_data_s, ptr %274, i32 %382, i32 1
  %386 = load i16, ptr %385, align 2
  %387 = zext i16 %386 to i32
  %388 = icmp eq i32 %369, %387
  br i1 %388, label %397, label %389

389:                                              ; preds = %384
  %390 = getelementptr %struct.ct_data_s, ptr %274, i32 %382
  %391 = sub i32 %369, %387
  %392 = load i16, ptr %390, align 2
  %393 = zext i16 %392 to i32
  %394 = mul i32 %391, %393
  %395 = load i32, ptr %293, align 4
  %396 = add i32 %394, %395
  store i32 %396, ptr %293, align 4
  store i16 %371, ptr %385, align 2
  br label %397

397:                                              ; preds = %389, %384
  %398 = add nsw i32 %376, -1
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %375

400:                                              ; preds = %397, %367
  %401 = phi i32 [ %370, %367 ], [ %380, %397 ]
  %402 = add i32 %369, -1
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %407, label %404

404:                                              ; preds = %400
  %405 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 42, i32 %402
  %406 = load i16, ptr %405, align 2
  br label %367

407:                                              ; preds = %400, %365, %344, %269
  tail call fastcc void @gen_codes(ptr noundef %3, i32 noundef %61, ptr noundef %284)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @compress_block(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 49
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 57
  %9 = load i32, ptr %8, align 4
  br label %230

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 50
  %12 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 47
  %13 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 57
  %14 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  %15 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 2
  %16 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 5
  br label %17

17:                                               ; preds = %226, %10
  %18 = phi i32 [ %24, %226 ], [ 0, %10 ]
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr i16, ptr %19, i32 %18
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = load ptr, ptr %12, align 4
  %24 = add nuw i32 %18, 1
  %25 = getelementptr i8, ptr %23, i32 %18
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i16 %21, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %17
  %30 = getelementptr %struct.ct_data_s, ptr %1, i32 %27
  %31 = getelementptr %struct.ct_data_s, ptr %1, i32 %27, i32 1
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = load i32, ptr %13, align 4
  %35 = sub nsw i32 16, %33
  %36 = icmp sgt i32 %34, %35
  %37 = load i16, ptr %30, align 2
  %38 = zext i16 %37 to i32
  %39 = shl i32 %38, %34
  %40 = load i16, ptr %14, align 4
  %41 = trunc i32 %39 to i16
  %42 = or i16 %40, %41
  store i16 %42, ptr %14, align 4
  br i1 %36, label %43, label %62

43:                                               ; preds = %29
  %44 = trunc i16 %42 to i8
  %45 = load ptr, ptr %15, align 4
  %46 = load i32, ptr %16, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %16, align 4
  %48 = getelementptr i8, ptr %45, i32 %46
  store i8 %44, ptr %48, align 1
  %49 = load i16, ptr %14, align 4
  %50 = lshr i16 %49, 8
  %51 = trunc i16 %50 to i8
  %52 = load ptr, ptr %15, align 4
  %53 = load i32, ptr %16, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %16, align 4
  %55 = getelementptr i8, ptr %52, i32 %53
  store i8 %51, ptr %55, align 1
  %56 = load i32, ptr %13, align 4
  %57 = sub i32 16, %56
  %58 = lshr i32 %38, %57
  %59 = trunc i32 %58 to i16
  store i16 %59, ptr %14, align 4
  %60 = add nsw i32 %33, -16
  %61 = add i32 %60, %56
  br label %224

62:                                               ; preds = %29
  %63 = add i32 %34, %33
  br label %224

64:                                               ; preds = %17
  %65 = getelementptr [256 x i8], ptr @length_code, i32 0, i32 %27
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = add nuw nsw i32 %67, 257
  %69 = getelementptr %struct.ct_data_s, ptr %1, i32 %68
  %70 = getelementptr %struct.ct_data_s, ptr %1, i32 %68, i32 1
  %71 = load i16, ptr %70, align 2
  %72 = zext i16 %71 to i32
  %73 = load i32, ptr %13, align 4
  %74 = sub nsw i32 16, %72
  %75 = icmp sgt i32 %73, %74
  %76 = load i16, ptr %69, align 2
  %77 = zext i16 %76 to i32
  %78 = shl i32 %77, %73
  %79 = load i16, ptr %14, align 4
  %80 = trunc i32 %78 to i16
  %81 = or i16 %79, %80
  store i16 %81, ptr %14, align 4
  br i1 %75, label %82, label %101

82:                                               ; preds = %64
  %83 = trunc i16 %81 to i8
  %84 = load ptr, ptr %15, align 4
  %85 = load i32, ptr %16, align 4
  %86 = add i32 %85, 1
  store i32 %86, ptr %16, align 4
  %87 = getelementptr i8, ptr %84, i32 %85
  store i8 %83, ptr %87, align 1
  %88 = load i16, ptr %14, align 4
  %89 = lshr i16 %88, 8
  %90 = trunc i16 %89 to i8
  %91 = load ptr, ptr %15, align 4
  %92 = load i32, ptr %16, align 4
  %93 = add i32 %92, 1
  store i32 %93, ptr %16, align 4
  %94 = getelementptr i8, ptr %91, i32 %92
  store i8 %90, ptr %94, align 1
  %95 = load i32, ptr %13, align 4
  %96 = sub i32 16, %95
  %97 = lshr i32 %77, %96
  %98 = trunc i32 %97 to i16
  store i16 %98, ptr %14, align 4
  %99 = add nsw i32 %72, -16
  %100 = add i32 %99, %95
  br label %103

101:                                              ; preds = %64
  %102 = add i32 %73, %72
  br label %103

103:                                              ; preds = %101, %82
  %104 = phi i16 [ %81, %101 ], [ %98, %82 ]
  %105 = phi i32 [ %102, %101 ], [ %100, %82 ]
  store i32 %105, ptr %13, align 4
  %106 = getelementptr [29 x i32], ptr @extra_lbits, i32 0, i32 %67
  %107 = load i32, ptr %106, align 4
  %108 = add nsw i32 %67, -28
  %109 = icmp ult i32 %108, -20
  br i1 %109, label %144, label %110

110:                                              ; preds = %103
  %111 = getelementptr [29 x i32], ptr @base_length, i32 0, i32 %67
  %112 = load i32, ptr %111, align 4
  %113 = sub i32 %27, %112
  %114 = sub i32 16, %107
  %115 = icmp sgt i32 %105, %114
  %116 = shl i32 %113, %105
  %117 = trunc i32 %116 to i16
  %118 = or i16 %104, %117
  store i16 %118, ptr %14, align 4
  br i1 %115, label %119, label %139

119:                                              ; preds = %110
  %120 = trunc i16 %118 to i8
  %121 = load ptr, ptr %15, align 4
  %122 = load i32, ptr %16, align 4
  %123 = add i32 %122, 1
  store i32 %123, ptr %16, align 4
  %124 = getelementptr i8, ptr %121, i32 %122
  store i8 %120, ptr %124, align 1
  %125 = load i16, ptr %14, align 4
  %126 = lshr i16 %125, 8
  %127 = trunc i16 %126 to i8
  %128 = load ptr, ptr %15, align 4
  %129 = load i32, ptr %16, align 4
  %130 = add i32 %129, 1
  store i32 %130, ptr %16, align 4
  %131 = getelementptr i8, ptr %128, i32 %129
  store i8 %127, ptr %131, align 1
  %132 = and i32 %113, 65535
  %133 = load i32, ptr %13, align 4
  %134 = sub i32 16, %133
  %135 = lshr i32 %132, %134
  %136 = trunc i32 %135 to i16
  store i16 %136, ptr %14, align 4
  %137 = add i32 %107, -16
  %138 = add i32 %137, %133
  br label %141

139:                                              ; preds = %110
  %140 = add i32 %107, %105
  br label %141

141:                                              ; preds = %139, %119
  %142 = phi i16 [ %118, %139 ], [ %136, %119 ]
  %143 = phi i32 [ %140, %139 ], [ %138, %119 ]
  store i32 %143, ptr %13, align 4
  br label %144

144:                                              ; preds = %141, %103
  %145 = phi i16 [ %142, %141 ], [ %104, %103 ]
  %146 = phi i32 [ %143, %141 ], [ %105, %103 ]
  %147 = add nsw i32 %22, -1
  %148 = icmp ult i32 %147, 256
  %149 = lshr i32 %147, 7
  %150 = add nuw nsw i32 %149, 256
  %151 = select i1 %148, i32 %147, i32 %150
  %152 = getelementptr [512 x i8], ptr @dist_code, i32 0, i32 %151
  %153 = load i8, ptr %152, align 1
  %154 = zext i8 %153 to i32
  %155 = getelementptr %struct.ct_data_s, ptr %2, i32 %154
  %156 = getelementptr %struct.ct_data_s, ptr %2, i32 %154, i32 1
  %157 = load i16, ptr %156, align 2
  %158 = zext i16 %157 to i32
  %159 = sub nsw i32 16, %158
  %160 = icmp sgt i32 %146, %159
  %161 = load i16, ptr %155, align 2
  %162 = zext i16 %161 to i32
  %163 = shl i32 %162, %146
  %164 = trunc i32 %163 to i16
  %165 = or i16 %145, %164
  store i16 %165, ptr %14, align 4
  br i1 %160, label %166, label %185

166:                                              ; preds = %144
  %167 = trunc i16 %165 to i8
  %168 = load ptr, ptr %15, align 4
  %169 = load i32, ptr %16, align 4
  %170 = add i32 %169, 1
  store i32 %170, ptr %16, align 4
  %171 = getelementptr i8, ptr %168, i32 %169
  store i8 %167, ptr %171, align 1
  %172 = load i16, ptr %14, align 4
  %173 = lshr i16 %172, 8
  %174 = trunc i16 %173 to i8
  %175 = load ptr, ptr %15, align 4
  %176 = load i32, ptr %16, align 4
  %177 = add i32 %176, 1
  store i32 %177, ptr %16, align 4
  %178 = getelementptr i8, ptr %175, i32 %176
  store i8 %174, ptr %178, align 1
  %179 = load i32, ptr %13, align 4
  %180 = sub i32 16, %179
  %181 = lshr i32 %162, %180
  %182 = trunc i32 %181 to i16
  store i16 %182, ptr %14, align 4
  %183 = add nsw i32 %158, -16
  %184 = add i32 %183, %179
  br label %187

185:                                              ; preds = %144
  %186 = add i32 %146, %158
  br label %187

187:                                              ; preds = %185, %166
  %188 = phi i16 [ %165, %185 ], [ %182, %166 ]
  %189 = phi i32 [ %186, %185 ], [ %184, %166 ]
  store i32 %189, ptr %13, align 4
  %190 = getelementptr [30 x i32], ptr @extra_dbits, i32 0, i32 %154
  %191 = load i32, ptr %190, align 4
  %192 = icmp ult i8 %153, 4
  br i1 %192, label %226, label %193

193:                                              ; preds = %187
  %194 = getelementptr [30 x i32], ptr @base_dist, i32 0, i32 %154
  %195 = load i32, ptr %194, align 4
  %196 = sub i32 %147, %195
  %197 = sub i32 16, %191
  %198 = icmp sgt i32 %189, %197
  %199 = shl i32 %196, %189
  %200 = trunc i32 %199 to i16
  %201 = or i16 %188, %200
  store i16 %201, ptr %14, align 4
  br i1 %198, label %202, label %222

202:                                              ; preds = %193
  %203 = trunc i16 %201 to i8
  %204 = load ptr, ptr %15, align 4
  %205 = load i32, ptr %16, align 4
  %206 = add i32 %205, 1
  store i32 %206, ptr %16, align 4
  %207 = getelementptr i8, ptr %204, i32 %205
  store i8 %203, ptr %207, align 1
  %208 = load i16, ptr %14, align 4
  %209 = lshr i16 %208, 8
  %210 = trunc i16 %209 to i8
  %211 = load ptr, ptr %15, align 4
  %212 = load i32, ptr %16, align 4
  %213 = add i32 %212, 1
  store i32 %213, ptr %16, align 4
  %214 = getelementptr i8, ptr %211, i32 %212
  store i8 %210, ptr %214, align 1
  %215 = and i32 %196, 65535
  %216 = load i32, ptr %13, align 4
  %217 = sub i32 16, %216
  %218 = lshr i32 %215, %217
  %219 = trunc i32 %218 to i16
  store i16 %219, ptr %14, align 4
  %220 = add i32 %191, -16
  %221 = add i32 %220, %216
  br label %224

222:                                              ; preds = %193
  %223 = add i32 %191, %189
  br label %224

224:                                              ; preds = %222, %202, %62, %43
  %225 = phi i32 [ %63, %62 ], [ %61, %43 ], [ %223, %222 ], [ %221, %202 ]
  store i32 %225, ptr %13, align 4
  br label %226

226:                                              ; preds = %224, %187
  %227 = phi i32 [ %189, %187 ], [ %225, %224 ]
  %228 = load i32, ptr %4, align 4
  %229 = icmp ult i32 %24, %228
  br i1 %229, label %17, label %230

230:                                              ; preds = %226, %7
  %231 = phi i32 [ %9, %7 ], [ %227, %226 ]
  %232 = getelementptr %struct.ct_data_s, ptr %1, i32 256
  %233 = getelementptr %struct.ct_data_s, ptr %1, i32 256, i32 1
  %234 = load i16, ptr %233, align 2
  %235 = zext i16 %234 to i32
  %236 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 57
  %237 = sub nsw i32 16, %235
  %238 = icmp sgt i32 %231, %237
  %239 = load i16, ptr %232, align 2
  %240 = zext i16 %239 to i32
  %241 = shl i32 %240, %231
  %242 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  %243 = load i16, ptr %242, align 4
  %244 = trunc i32 %241 to i16
  %245 = or i16 %243, %244
  store i16 %245, ptr %242, align 4
  br i1 %238, label %246, label %267

246:                                              ; preds = %230
  %247 = trunc i16 %245 to i8
  %248 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 2
  %249 = load ptr, ptr %248, align 4
  %250 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 5
  %251 = load i32, ptr %250, align 4
  %252 = add i32 %251, 1
  store i32 %252, ptr %250, align 4
  %253 = getelementptr i8, ptr %249, i32 %251
  store i8 %247, ptr %253, align 1
  %254 = load i16, ptr %242, align 4
  %255 = lshr i16 %254, 8
  %256 = trunc i16 %255 to i8
  %257 = load ptr, ptr %248, align 4
  %258 = load i32, ptr %250, align 4
  %259 = add i32 %258, 1
  store i32 %259, ptr %250, align 4
  %260 = getelementptr i8, ptr %257, i32 %258
  store i8 %256, ptr %260, align 1
  %261 = load i32, ptr %236, align 4
  %262 = sub i32 16, %261
  %263 = lshr i32 %240, %262
  %264 = trunc i32 %263 to i16
  store i16 %264, ptr %242, align 4
  %265 = add nsw i32 %235, -16
  %266 = add i32 %265, %261
  br label %269

267:                                              ; preds = %230
  %268 = add i32 %231, %235
  br label %269

269:                                              ; preds = %267, %246
  %270 = phi i32 [ %268, %267 ], [ %266, %246 ]
  store i32 %270, ptr %236, align 4
  %271 = load i16, ptr %233, align 2
  %272 = zext i16 %271 to i32
  %273 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 55
  store i32 %272, ptr %273, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zlib_tr_tally(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = trunc i32 %1 to i16
  %5 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 50
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 49
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i16, ptr %6, i32 %8
  store i16 %4, ptr %9, align 2
  %10 = trunc i32 %2 to i8
  %11 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 47
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %7, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %7, align 4
  %15 = getelementptr i8, ptr %12, i32 %13
  store i8 %10, ptr %15, align 1
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 36, i32 %2
  br label %39

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 54
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4
  %23 = add i32 %1, -1
  %24 = getelementptr [256 x i8], ptr @length_code, i32 0, i32 %2
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = add nuw nsw i32 %26, 257
  %28 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 36, i32 %27
  %29 = load i16, ptr %28, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %28, align 4
  %31 = icmp ult i32 %23, 256
  %32 = lshr i32 %23, 7
  %33 = add nuw nsw i32 %32, 256
  %34 = select i1 %31, i32 %23, i32 %33
  %35 = getelementptr [512 x i8], ptr @dist_code, i32 0, i32 %34
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 %37
  br label %39

39:                                               ; preds = %19, %17
  %40 = phi ptr [ %38, %19 ], [ %18, %17 ]
  %41 = load i16, ptr %40, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %40, align 4
  %43 = load i32, ptr %7, align 4
  %44 = and i32 %43, 4095
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %79

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 32
  %48 = load i32, ptr %47, align 4
  %49 = icmp sgt i32 %48, 2
  br i1 %49, label %50, label %79

50:                                               ; preds = %46
  %51 = shl i32 %43, 3
  %52 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 26
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 22
  %55 = load i32, ptr %54, align 4
  br label %56

56:                                               ; preds = %56, %50
  %57 = phi i32 [ 0, %50 ], [ %67, %56 ]
  %58 = phi i32 [ %51, %50 ], [ %66, %56 ]
  %59 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 37, i32 %57
  %60 = load i16, ptr %59, align 4
  %61 = zext i16 %60 to i32
  %62 = getelementptr [30 x i32], ptr @extra_dbits, i32 0, i32 %57
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, 5
  %65 = mul i32 %64, %61
  %66 = add i32 %65, %58
  %67 = add nuw nsw i32 %57, 1
  %68 = icmp eq i32 %67, 30
  br i1 %68, label %69, label %56

69:                                               ; preds = %56
  %70 = sub i32 %53, %55
  %71 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 54
  %72 = load i32, ptr %71, align 4
  %73 = lshr i32 %43, 1
  %74 = icmp uge i32 %72, %73
  %75 = lshr i32 %66, 3
  %76 = lshr i32 %70, 1
  %77 = icmp uge i32 %75, %76
  %78 = select i1 %74, i1 true, i1 %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %69, %46, %39
  %80 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 48
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, -1
  %83 = icmp eq i32 %43, %82
  %84 = zext i1 %83 to i32
  br label %85

85:                                               ; preds = %79, %69
  %86 = phi i32 [ 1, %69 ], [ %84, %79 ]
  ret i32 %86
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gen_codes(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #7 {
  %4 = alloca [16 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #10
  store i16 0, ptr %4, align 2, !annotation !9
  %5 = load i16, ptr %2, align 2
  %6 = zext i16 %5 to i32
  %7 = shl nuw nsw i32 %6, 1
  %8 = trunc i32 %7 to i16
  %9 = getelementptr inbounds [16 x i16], ptr %4, i32 0, i32 1
  store i16 %8, ptr %9, align 2
  %10 = and i32 %7, 65534
  %11 = getelementptr i16, ptr %2, i32 1
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = add nuw nsw i32 %10, %13
  %15 = shl nuw nsw i32 %14, 1
  %16 = trunc i32 %15 to i16
  %17 = getelementptr inbounds [16 x i16], ptr %4, i32 0, i32 2
  store i16 %16, ptr %17, align 2
  %18 = and i32 %15, 65534
  %19 = getelementptr i16, ptr %2, i32 2
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = add nuw nsw i32 %18, %21
  %23 = shl nuw nsw i32 %22, 1
  %24 = trunc i32 %23 to i16
  %25 = getelementptr inbounds [16 x i16], ptr %4, i32 0, i32 3
  store i16 %24, ptr %25, align 2
  %26 = and i32 %23, 65534
  %27 = getelementptr i16, ptr %2, i32 3
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = add nuw nsw i32 %26, %29
  %31 = shl nuw nsw i32 %30, 1
  %32 = trunc i32 %31 to i16
  %33 = getelementptr inbounds [16 x i16], ptr %4, i32 0, i32 4
  store i16 %32, ptr %33, align 2
  %34 = and i32 %31, 65534
  %35 = getelementptr i16, ptr %2, i32 4
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i32
  %38 = add nuw nsw i32 %34, %37
  %39 = shl nuw nsw i32 %38, 1
  %40 = trunc i32 %39 to i16
  %41 = getelementptr inbounds [16 x i16], ptr %4, i32 0, i32 5
  store i16 %40, ptr %41, align 2
  %42 = and i32 %39, 65534
  %43 = getelementptr i16, ptr %2, i32 5
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  %46 = add nuw nsw i32 %42, %45
  %47 = shl nuw nsw i32 %46, 1
  %48 = trunc i32 %47 to i16
  %49 = getelementptr inbounds [16 x i16], ptr %4, i32 0, i32 6
  store i16 %48, ptr %49, align 2
  %50 = and i32 %47, 65534
  %51 = getelementptr i16, ptr %2, i32 6
  %52 = load i16, ptr %51, align 2
  %53 = zext i16 %52 to i32
  %54 = add nuw nsw i32 %50, %53
  %55 = shl nuw nsw i32 %54, 1
  %56 = trunc i32 %55 to i16
  %57 = getelementptr inbounds [16 x i16], ptr %4, i32 0, i32 7
  store i16 %56, ptr %57, align 2
  %58 = and i32 %55, 65534
  %59 = getelementptr i16, ptr %2, i32 7
  %60 = load i16, ptr %59, align 2
  %61 = zext i16 %60 to i32
  %62 = add nuw nsw i32 %58, %61
  %63 = shl nuw nsw i32 %62, 1
  %64 = trunc i32 %63 to i16
  %65 = getelementptr inbounds [16 x i16], ptr %4, i32 0, i32 8
  store i16 %64, ptr %65, align 2
  %66 = and i32 %63, 65534
  %67 = getelementptr i16, ptr %2, i32 8
  %68 = load i16, ptr %67, align 2
  %69 = zext i16 %68 to i32
  %70 = add nuw nsw i32 %66, %69
  %71 = shl nuw nsw i32 %70, 1
  %72 = trunc i32 %71 to i16
  %73 = getelementptr inbounds [16 x i16], ptr %4, i32 0, i32 9
  store i16 %72, ptr %73, align 2
  %74 = and i32 %71, 65534
  %75 = getelementptr i16, ptr %2, i32 9
  %76 = load i16, ptr %75, align 2
  %77 = zext i16 %76 to i32
  %78 = add nuw nsw i32 %74, %77
  %79 = shl nuw nsw i32 %78, 1
  %80 = trunc i32 %79 to i16
  %81 = getelementptr inbounds [16 x i16], ptr %4, i32 0, i32 10
  store i16 %80, ptr %81, align 2
  %82 = and i32 %79, 65534
  %83 = getelementptr i16, ptr %2, i32 10
  %84 = load i16, ptr %83, align 2
  %85 = zext i16 %84 to i32
  %86 = add nuw nsw i32 %82, %85
  %87 = shl nuw nsw i32 %86, 1
  %88 = trunc i32 %87 to i16
  %89 = getelementptr inbounds [16 x i16], ptr %4, i32 0, i32 11
  store i16 %88, ptr %89, align 2
  %90 = and i32 %87, 65534
  %91 = getelementptr i16, ptr %2, i32 11
  %92 = load i16, ptr %91, align 2
  %93 = zext i16 %92 to i32
  %94 = add nuw nsw i32 %90, %93
  %95 = shl nuw nsw i32 %94, 1
  %96 = trunc i32 %95 to i16
  %97 = getelementptr inbounds [16 x i16], ptr %4, i32 0, i32 12
  store i16 %96, ptr %97, align 2
  %98 = and i32 %95, 65534
  %99 = getelementptr i16, ptr %2, i32 12
  %100 = load i16, ptr %99, align 2
  %101 = zext i16 %100 to i32
  %102 = add nuw nsw i32 %98, %101
  %103 = shl nuw nsw i32 %102, 1
  %104 = trunc i32 %103 to i16
  %105 = getelementptr inbounds [16 x i16], ptr %4, i32 0, i32 13
  store i16 %104, ptr %105, align 2
  %106 = and i32 %103, 65534
  %107 = getelementptr i16, ptr %2, i32 13
  %108 = load i16, ptr %107, align 2
  %109 = zext i16 %108 to i32
  %110 = add nuw nsw i32 %106, %109
  %111 = shl nuw nsw i32 %110, 1
  %112 = trunc i32 %111 to i16
  %113 = getelementptr inbounds [16 x i16], ptr %4, i32 0, i32 14
  store i16 %112, ptr %113, align 2
  %114 = getelementptr i16, ptr %2, i32 14
  %115 = load i16, ptr %114, align 2
  %116 = trunc i32 %111 to i16
  %117 = add i16 %115, %116
  %118 = shl i16 %117, 1
  %119 = getelementptr inbounds [16 x i16], ptr %4, i32 0, i32 15
  store i16 %118, ptr %119, align 2
  %120 = icmp slt i32 %1, 0
  br i1 %120, label %140, label %121

121:                                              ; preds = %137, %3
  %122 = phi i32 [ %138, %137 ], [ 0, %3 ]
  %123 = getelementptr %struct.ct_data_s, ptr %0, i32 %122, i32 1
  %124 = load i16, ptr %123, align 2
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %121
  %127 = zext i16 %124 to i32
  %128 = getelementptr %struct.ct_data_s, ptr %0, i32 %122
  %129 = getelementptr [16 x i16], ptr %4, i32 0, i32 %127
  %130 = load i16, ptr %129, align 2
  %131 = add i16 %130, 1
  store i16 %131, ptr %129, align 2
  %132 = zext i16 %130 to i32
  %133 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %132) #11, !srcloc !8
  %134 = sub nsw i32 32, %127
  %135 = lshr i32 %133, %134
  %136 = trunc i32 %135 to i16
  store i16 %136, ptr %128, align 2
  br label %137

137:                                              ; preds = %126, %121
  %138 = add i32 %122, 1
  %139 = icmp sgt i32 %138, %1
  br i1 %139, label %140, label %121

140:                                              ; preds = %137, %3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @send_tree(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #5 {
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %338, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ct_data_s, ptr %1, i32 0, i32 1
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, 0
  %9 = select i1 %8, i32 138, i32 7
  %10 = select i1 %8, i32 3, i32 4
  %11 = zext i16 %7 to i32
  %12 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 57
  %13 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 56
  %14 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 2
  %15 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 5
  %16 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 16
  %17 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 16, i32 1
  %18 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 18
  %19 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 18, i32 1
  %20 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 17
  %21 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 17, i32 1
  br label %22

22:                                               ; preds = %332, %5
  %23 = phi i32 [ 0, %5 ], [ %29, %332 ]
  %24 = phi i32 [ -1, %5 ], [ %336, %332 ]
  %25 = phi i32 [ %11, %5 ], [ %32, %332 ]
  %26 = phi i32 [ 0, %5 ], [ %335, %332 ]
  %27 = phi i32 [ %9, %5 ], [ %334, %332 ]
  %28 = phi i32 [ %10, %5 ], [ %333, %332 ]
  %29 = add i32 %23, 1
  %30 = getelementptr %struct.ct_data_s, ptr %1, i32 %29, i32 1
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = add nsw i32 %26, 1
  %34 = icmp slt i32 %33, %27
  %35 = icmp eq i32 %25, %32
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %332, label %37

37:                                               ; preds = %22
  %38 = icmp slt i32 %33, %28
  br i1 %38, label %39, label %81

39:                                               ; preds = %37
  %40 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 %25
  %41 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 %25, i32 1
  %42 = load i32, ptr %12, align 4
  br label %43

43:                                               ; preds = %77, %39
  %44 = phi i32 [ %78, %77 ], [ %42, %39 ]
  %45 = phi i32 [ %79, %77 ], [ %33, %39 ]
  %46 = load i16, ptr %41, align 2
  %47 = zext i16 %46 to i32
  %48 = sub nsw i32 16, %47
  %49 = icmp sgt i32 %44, %48
  %50 = load i16, ptr %40, align 4
  %51 = zext i16 %50 to i32
  %52 = shl i32 %51, %44
  %53 = load i16, ptr %13, align 4
  %54 = trunc i32 %52 to i16
  %55 = or i16 %53, %54
  store i16 %55, ptr %13, align 4
  br i1 %49, label %56, label %75

56:                                               ; preds = %43
  %57 = trunc i16 %55 to i8
  %58 = load ptr, ptr %14, align 4
  %59 = load i32, ptr %15, align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr %15, align 4
  %61 = getelementptr i8, ptr %58, i32 %59
  store i8 %57, ptr %61, align 1
  %62 = load i16, ptr %13, align 4
  %63 = lshr i16 %62, 8
  %64 = trunc i16 %63 to i8
  %65 = load ptr, ptr %14, align 4
  %66 = load i32, ptr %15, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %15, align 4
  %68 = getelementptr i8, ptr %65, i32 %66
  store i8 %64, ptr %68, align 1
  %69 = load i32, ptr %12, align 4
  %70 = sub i32 16, %69
  %71 = lshr i32 %51, %70
  %72 = trunc i32 %71 to i16
  store i16 %72, ptr %13, align 4
  %73 = add nsw i32 %47, -16
  %74 = add i32 %73, %69
  br label %77

75:                                               ; preds = %43
  %76 = add i32 %44, %47
  br label %77

77:                                               ; preds = %75, %56
  %78 = phi i32 [ %76, %75 ], [ %74, %56 ]
  store i32 %78, ptr %12, align 4
  %79 = add i32 %45, -1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %327, label %43

81:                                               ; preds = %37
  %82 = icmp eq i32 %25, 0
  br i1 %82, label %191, label %83

83:                                               ; preds = %81
  %84 = icmp eq i32 %25, %24
  br i1 %84, label %85, label %87

85:                                               ; preds = %83
  %86 = load i32, ptr %12, align 4
  br label %124

87:                                               ; preds = %83
  %88 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 %25
  %89 = getelementptr %struct.deflate_state, ptr %0, i32 0, i32 38, i32 %25, i32 1
  %90 = load i16, ptr %89, align 2
  %91 = zext i16 %90 to i32
  %92 = load i32, ptr %12, align 4
  %93 = sub nsw i32 16, %91
  %94 = icmp sgt i32 %92, %93
  %95 = load i16, ptr %88, align 4
  %96 = zext i16 %95 to i32
  %97 = shl i32 %96, %92
  %98 = load i16, ptr %13, align 4
  %99 = trunc i32 %97 to i16
  %100 = or i16 %98, %99
  store i16 %100, ptr %13, align 4
  br i1 %94, label %101, label %120

101:                                              ; preds = %87
  %102 = trunc i16 %100 to i8
  %103 = load ptr, ptr %14, align 4
  %104 = load i32, ptr %15, align 4
  %105 = add i32 %104, 1
  store i32 %105, ptr %15, align 4
  %106 = getelementptr i8, ptr %103, i32 %104
  store i8 %102, ptr %106, align 1
  %107 = load i16, ptr %13, align 4
  %108 = lshr i16 %107, 8
  %109 = trunc i16 %108 to i8
  %110 = load ptr, ptr %14, align 4
  %111 = load i32, ptr %15, align 4
  %112 = add i32 %111, 1
  store i32 %112, ptr %15, align 4
  %113 = getelementptr i8, ptr %110, i32 %111
  store i8 %109, ptr %113, align 1
  %114 = load i32, ptr %12, align 4
  %115 = sub i32 16, %114
  %116 = lshr i32 %96, %115
  %117 = trunc i32 %116 to i16
  store i16 %117, ptr %13, align 4
  %118 = add nsw i32 %91, -16
  %119 = add i32 %118, %114
  br label %122

120:                                              ; preds = %87
  %121 = add i32 %92, %91
  br label %122

122:                                              ; preds = %120, %101
  %123 = phi i32 [ %121, %120 ], [ %119, %101 ]
  store i32 %123, ptr %12, align 4
  br label %124

124:                                              ; preds = %122, %85
  %125 = phi i32 [ %123, %122 ], [ %86, %85 ]
  %126 = phi i32 [ %26, %122 ], [ %33, %85 ]
  %127 = load i16, ptr %17, align 2
  %128 = zext i16 %127 to i32
  %129 = sub nsw i32 16, %128
  %130 = icmp sgt i32 %125, %129
  %131 = load i16, ptr %16, align 4
  %132 = zext i16 %131 to i32
  %133 = shl i32 %132, %125
  %134 = load i16, ptr %13, align 4
  %135 = trunc i32 %133 to i16
  %136 = or i16 %134, %135
  br i1 %130, label %137, label %156

137:                                              ; preds = %124
  store i16 %136, ptr %13, align 4
  %138 = trunc i16 %136 to i8
  %139 = load ptr, ptr %14, align 4
  %140 = load i32, ptr %15, align 4
  %141 = add i32 %140, 1
  store i32 %141, ptr %15, align 4
  %142 = getelementptr i8, ptr %139, i32 %140
  store i8 %138, ptr %142, align 1
  %143 = load i16, ptr %13, align 4
  %144 = lshr i16 %143, 8
  %145 = trunc i16 %144 to i8
  %146 = load ptr, ptr %14, align 4
  %147 = load i32, ptr %15, align 4
  %148 = add i32 %147, 1
  store i32 %148, ptr %15, align 4
  %149 = getelementptr i8, ptr %146, i32 %147
  store i8 %145, ptr %149, align 1
  %150 = load i32, ptr %12, align 4
  %151 = sub i32 16, %150
  %152 = lshr i32 %132, %151
  %153 = trunc i32 %152 to i16
  %154 = add nsw i32 %128, -16
  %155 = add i32 %154, %150
  br label %158

156:                                              ; preds = %124
  %157 = add i32 %125, %128
  br label %158

158:                                              ; preds = %156, %137
  %159 = phi i16 [ %136, %156 ], [ %153, %137 ]
  %160 = phi i32 [ %157, %156 ], [ %155, %137 ]
  store i32 %160, ptr %12, align 4
  %161 = icmp sgt i32 %160, 14
  br i1 %161, label %162, label %185

162:                                              ; preds = %158
  %163 = add i32 %126, -3
  %164 = shl i32 %163, %160
  %165 = trunc i32 %164 to i16
  %166 = or i16 %159, %165
  store i16 %166, ptr %13, align 4
  %167 = trunc i16 %166 to i8
  %168 = load ptr, ptr %14, align 4
  %169 = load i32, ptr %15, align 4
  %170 = add i32 %169, 1
  store i32 %170, ptr %15, align 4
  %171 = getelementptr i8, ptr %168, i32 %169
  store i8 %167, ptr %171, align 1
  %172 = load i16, ptr %13, align 4
  %173 = lshr i16 %172, 8
  %174 = trunc i16 %173 to i8
  %175 = load ptr, ptr %14, align 4
  %176 = load i32, ptr %15, align 4
  %177 = add i32 %176, 1
  store i32 %177, ptr %15, align 4
  %178 = getelementptr i8, ptr %175, i32 %176
  store i8 %174, ptr %178, align 1
  %179 = and i32 %163, 65535
  %180 = load i32, ptr %12, align 4
  %181 = sub i32 16, %180
  %182 = lshr i32 %179, %181
  %183 = trunc i32 %182 to i16
  store i16 %183, ptr %13, align 4
  %184 = add i32 %180, -14
  br label %325

185:                                              ; preds = %158
  %186 = add i32 %126, 65533
  %187 = shl i32 %186, %160
  %188 = trunc i32 %187 to i16
  %189 = or i16 %159, %188
  store i16 %189, ptr %13, align 4
  %190 = add nsw i32 %160, 2
  br label %325

191:                                              ; preds = %81
  %192 = icmp slt i32 %26, 10
  br i1 %192, label %193, label %259

193:                                              ; preds = %191
  %194 = load i16, ptr %21, align 2
  %195 = zext i16 %194 to i32
  %196 = load i32, ptr %12, align 4
  %197 = sub nsw i32 16, %195
  %198 = icmp sgt i32 %196, %197
  %199 = load i16, ptr %20, align 4
  %200 = zext i16 %199 to i32
  %201 = shl i32 %200, %196
  %202 = load i16, ptr %13, align 4
  %203 = trunc i32 %201 to i16
  %204 = or i16 %202, %203
  br i1 %198, label %205, label %224

205:                                              ; preds = %193
  store i16 %204, ptr %13, align 4
  %206 = trunc i16 %204 to i8
  %207 = load ptr, ptr %14, align 4
  %208 = load i32, ptr %15, align 4
  %209 = add i32 %208, 1
  store i32 %209, ptr %15, align 4
  %210 = getelementptr i8, ptr %207, i32 %208
  store i8 %206, ptr %210, align 1
  %211 = load i16, ptr %13, align 4
  %212 = lshr i16 %211, 8
  %213 = trunc i16 %212 to i8
  %214 = load ptr, ptr %14, align 4
  %215 = load i32, ptr %15, align 4
  %216 = add i32 %215, 1
  store i32 %216, ptr %15, align 4
  %217 = getelementptr i8, ptr %214, i32 %215
  store i8 %213, ptr %217, align 1
  %218 = load i32, ptr %12, align 4
  %219 = sub i32 16, %218
  %220 = lshr i32 %200, %219
  %221 = trunc i32 %220 to i16
  %222 = add nsw i32 %195, -16
  %223 = add i32 %222, %218
  br label %226

224:                                              ; preds = %193
  %225 = add i32 %196, %195
  br label %226

226:                                              ; preds = %224, %205
  %227 = phi i16 [ %204, %224 ], [ %221, %205 ]
  %228 = phi i32 [ %225, %224 ], [ %223, %205 ]
  store i32 %228, ptr %12, align 4
  %229 = icmp sgt i32 %228, 13
  br i1 %229, label %230, label %253

230:                                              ; preds = %226
  %231 = add i32 %26, -2
  %232 = shl i32 %231, %228
  %233 = trunc i32 %232 to i16
  %234 = or i16 %227, %233
  store i16 %234, ptr %13, align 4
  %235 = trunc i16 %234 to i8
  %236 = load ptr, ptr %14, align 4
  %237 = load i32, ptr %15, align 4
  %238 = add i32 %237, 1
  store i32 %238, ptr %15, align 4
  %239 = getelementptr i8, ptr %236, i32 %237
  store i8 %235, ptr %239, align 1
  %240 = load i16, ptr %13, align 4
  %241 = lshr i16 %240, 8
  %242 = trunc i16 %241 to i8
  %243 = load ptr, ptr %14, align 4
  %244 = load i32, ptr %15, align 4
  %245 = add i32 %244, 1
  store i32 %245, ptr %15, align 4
  %246 = getelementptr i8, ptr %243, i32 %244
  store i8 %242, ptr %246, align 1
  %247 = and i32 %231, 65535
  %248 = load i32, ptr %12, align 4
  %249 = sub i32 16, %248
  %250 = lshr i32 %247, %249
  %251 = trunc i32 %250 to i16
  store i16 %251, ptr %13, align 4
  %252 = add i32 %248, -13
  br label %325

253:                                              ; preds = %226
  %254 = add nsw i32 %26, 65534
  %255 = shl i32 %254, %228
  %256 = trunc i32 %255 to i16
  %257 = or i16 %227, %256
  store i16 %257, ptr %13, align 4
  %258 = add nsw i32 %228, 3
  br label %325

259:                                              ; preds = %191
  %260 = load i16, ptr %19, align 2
  %261 = zext i16 %260 to i32
  %262 = load i32, ptr %12, align 4
  %263 = sub nsw i32 16, %261
  %264 = icmp sgt i32 %262, %263
  %265 = load i16, ptr %18, align 4
  %266 = zext i16 %265 to i32
  %267 = shl i32 %266, %262
  %268 = load i16, ptr %13, align 4
  %269 = trunc i32 %267 to i16
  %270 = or i16 %268, %269
  br i1 %264, label %271, label %290

271:                                              ; preds = %259
  store i16 %270, ptr %13, align 4
  %272 = trunc i16 %270 to i8
  %273 = load ptr, ptr %14, align 4
  %274 = load i32, ptr %15, align 4
  %275 = add i32 %274, 1
  store i32 %275, ptr %15, align 4
  %276 = getelementptr i8, ptr %273, i32 %274
  store i8 %272, ptr %276, align 1
  %277 = load i16, ptr %13, align 4
  %278 = lshr i16 %277, 8
  %279 = trunc i16 %278 to i8
  %280 = load ptr, ptr %14, align 4
  %281 = load i32, ptr %15, align 4
  %282 = add i32 %281, 1
  store i32 %282, ptr %15, align 4
  %283 = getelementptr i8, ptr %280, i32 %281
  store i8 %279, ptr %283, align 1
  %284 = load i32, ptr %12, align 4
  %285 = sub i32 16, %284
  %286 = lshr i32 %266, %285
  %287 = trunc i32 %286 to i16
  %288 = add nsw i32 %261, -16
  %289 = add i32 %288, %284
  br label %292

290:                                              ; preds = %259
  %291 = add i32 %262, %261
  br label %292

292:                                              ; preds = %290, %271
  %293 = phi i16 [ %270, %290 ], [ %287, %271 ]
  %294 = phi i32 [ %291, %290 ], [ %289, %271 ]
  store i32 %294, ptr %12, align 4
  %295 = icmp sgt i32 %294, 9
  br i1 %295, label %296, label %319

296:                                              ; preds = %292
  %297 = add nsw i32 %26, -10
  %298 = shl i32 %297, %294
  %299 = trunc i32 %298 to i16
  %300 = or i16 %293, %299
  store i16 %300, ptr %13, align 4
  %301 = trunc i16 %300 to i8
  %302 = load ptr, ptr %14, align 4
  %303 = load i32, ptr %15, align 4
  %304 = add i32 %303, 1
  store i32 %304, ptr %15, align 4
  %305 = getelementptr i8, ptr %302, i32 %303
  store i8 %301, ptr %305, align 1
  %306 = load i16, ptr %13, align 4
  %307 = lshr i16 %306, 8
  %308 = trunc i16 %307 to i8
  %309 = load ptr, ptr %14, align 4
  %310 = load i32, ptr %15, align 4
  %311 = add i32 %310, 1
  store i32 %311, ptr %15, align 4
  %312 = getelementptr i8, ptr %309, i32 %310
  store i8 %308, ptr %312, align 1
  %313 = and i32 %297, 65535
  %314 = load i32, ptr %12, align 4
  %315 = sub i32 16, %314
  %316 = lshr i32 %313, %315
  %317 = trunc i32 %316 to i16
  store i16 %317, ptr %13, align 4
  %318 = add i32 %314, -9
  br label %325

319:                                              ; preds = %292
  %320 = add nuw i32 %26, 65526
  %321 = shl i32 %320, %294
  %322 = trunc i32 %321 to i16
  %323 = or i16 %293, %322
  store i16 %323, ptr %13, align 4
  %324 = add nsw i32 %294, 7
  br label %325

325:                                              ; preds = %319, %296, %253, %230, %185, %162
  %326 = phi i32 [ %190, %185 ], [ %184, %162 ], [ %258, %253 ], [ %252, %230 ], [ %324, %319 ], [ %318, %296 ]
  store i32 %326, ptr %12, align 4
  br label %327

327:                                              ; preds = %325, %77
  %328 = icmp eq i16 %31, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %327
  %330 = select i1 %35, i32 3, i32 4
  %331 = select i1 %35, i32 6, i32 7
  br label %332

332:                                              ; preds = %329, %327, %22
  %333 = phi i32 [ %28, %22 ], [ 3, %327 ], [ %330, %329 ]
  %334 = phi i32 [ %27, %22 ], [ 138, %327 ], [ %331, %329 ]
  %335 = phi i32 [ %33, %22 ], [ 0, %327 ], [ 0, %329 ]
  %336 = phi i32 [ %24, %22 ], [ %25, %327 ], [ %25, %329 ]
  %337 = icmp sgt i32 %29, %2
  br i1 %337, label %338, label %22

338:                                              ; preds = %332, %3
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }

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
!8 = !{i64 1004233}
!9 = !{!"auto-init"}
