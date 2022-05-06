; ModuleID = '/llk/IR/fs/ntfs/unistr.c_pt.bc'
source_filename = "../fs/ntfs/unistr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.FILE_NAME_ATTR = type <{ i64, i64, i64, i64, i64, i64, i64, i32, %union.anon, i8, i8, [0 x i16] }>
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32 }
%struct.ntfs_volume = type { ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i8, i8, i16, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, i64, i64, i64, i64, i32, ptr, i32, ptr, ptr, ptr, %struct.rw_semaphore, ptr, %struct.rw_semaphore, ptr, i16, i8, i8, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@legal_ansi_char_array = internal unnamed_addr constant [64 x i8] c"\00\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\17\07\18\17\17\17\17\17\17\17\18\16\16\17\07\00\17\17\17\17\17\17\17\17\17\17\04\16\18\16\18\18", align 1
@ntfs_name_cache = external dso_local local_unnamed_addr global ptr, align 4
@__func__.ntfs_nlstoucs = private unnamed_addr constant [14 x i8] c"ntfs_nlstoucs\00", align 1
@.str = private unnamed_addr constant [67 x i8] c"Failed to allocate buffer for converted name from ntfs_name_cache.\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Received NULL pointer.\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"Name using character set %s contains characters that cannot be converted to Unicode.\00", align 1
@.str.3 = private unnamed_addr constant [78 x i8] c"Name is too long (maximum length for a name on NTFS is %d Unicode characters.\00", align 1
@__func__.ntfs_ucstonls = private unnamed_addr constant [14 x i8] c"ntfs_ucstonls\00", align 1
@.str.4 = private unnamed_addr constant [136 x i8] c"Unicode name contains characters that cannot be converted to character set %s.  You might want to try to use the mount option nls=utf8.\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Failed to allocate name!\00", align 1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @ntfs_are_names_equal(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = icmp eq i32 %1, %3
  br i1 %8, label %9, label %52

9:                                                ; preds = %7
  %10 = icmp eq i32 %4, 0
  %11 = icmp eq i32 %1, 0
  br i1 %10, label %12, label %25

12:                                               ; preds = %9
  br i1 %11, label %52, label %13

13:                                               ; preds = %20, %12
  %14 = phi i32 [ %22, %20 ], [ 0, %12 ]
  %15 = getelementptr i16, ptr %0, i32 %14
  %16 = load i16, ptr %15, align 2
  %17 = getelementptr i16, ptr %2, i32 %14
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %16, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %13
  %21 = icmp eq i16 %16, 0
  %22 = add nuw i32 %14, 1
  %23 = icmp eq i32 %22, %1
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %52, label %13

25:                                               ; preds = %9
  br i1 %11, label %52, label %26

26:                                               ; preds = %47, %25
  %27 = phi i32 [ %49, %47 ], [ 0, %25 ]
  %28 = getelementptr i16, ptr %0, i32 %27
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = icmp ult i32 %30, %6
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = getelementptr i16, ptr %5, i32 %30
  %34 = load i16, ptr %33, align 2
  br label %35

35:                                               ; preds = %32, %26
  %36 = phi i16 [ %34, %32 ], [ %29, %26 ]
  %37 = getelementptr i16, ptr %2, i32 %27
  %38 = load i16, ptr %37, align 2
  %39 = zext i16 %38 to i32
  %40 = icmp ult i32 %39, %6
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = getelementptr i16, ptr %5, i32 %39
  %43 = load i16, ptr %42, align 2
  br label %44

44:                                               ; preds = %41, %35
  %45 = phi i16 [ %43, %41 ], [ %38, %35 ]
  %46 = icmp eq i16 %36, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = icmp eq i16 %36, 0
  %49 = add nuw i32 %27, 1
  %50 = icmp eq i32 %49, %1
  %51 = select i1 %48, i1 true, i1 %50
  br i1 %51, label %52, label %26

52:                                               ; preds = %47, %44, %25, %20, %13, %12, %7
  %53 = phi i1 [ false, %7 ], [ true, %12 ], [ true, %25 ], [ %19, %13 ], [ %19, %20 ], [ %46, %44 ], [ %46, %47 ]
  ret i1 %53
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ntfs_ucsncmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %14, %3
  %6 = phi i32 [ %16, %14 ], [ 0, %3 ]
  %7 = getelementptr i16, ptr %0, i32 %6
  %8 = load i16, ptr %7, align 2
  %9 = getelementptr i16, ptr %1, i32 %6
  %10 = load i16, ptr %9, align 2
  %11 = icmp ult i16 %8, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %5
  %13 = icmp ugt i16 %8, %10
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = icmp eq i16 %8, 0
  %16 = add nuw i32 %6, 1
  %17 = icmp eq i32 %16, %2
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %19, label %5

19:                                               ; preds = %14, %12, %5, %3
  %20 = phi i32 [ 0, %3 ], [ 0, %14 ], [ 1, %12 ], [ -1, %5 ]
  ret i32 %20
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ntfs_ucsncasecmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %35, label %7

7:                                                ; preds = %30, %5
  %8 = phi i32 [ %32, %30 ], [ 0, %5 ]
  %9 = getelementptr i16, ptr %0, i32 %8
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = icmp ult i32 %11, %4
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = getelementptr i16, ptr %3, i32 %11
  %15 = load i16, ptr %14, align 2
  br label %16

16:                                               ; preds = %13, %7
  %17 = phi i16 [ %15, %13 ], [ %10, %7 ]
  %18 = getelementptr i16, ptr %1, i32 %8
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = icmp ult i32 %20, %4
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = getelementptr i16, ptr %3, i32 %20
  %24 = load i16, ptr %23, align 2
  br label %25

25:                                               ; preds = %22, %16
  %26 = phi i16 [ %24, %22 ], [ %19, %16 ]
  %27 = icmp ult i16 %17, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = icmp ugt i16 %17, %26
  br i1 %29, label %35, label %30

30:                                               ; preds = %28
  %31 = icmp eq i16 %17, 0
  %32 = add nuw i32 %8, 1
  %33 = icmp eq i32 %32, %2
  %34 = select i1 %31, i1 true, i1 %33
  br i1 %34, label %35, label %7

35:                                               ; preds = %30, %28, %25, %5
  %36 = phi i32 [ 0, %5 ], [ 0, %30 ], [ 1, %28 ], [ -1, %25 ]
  ret i32 %36
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ntfs_collate_names(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7) local_unnamed_addr #1 {
  %9 = tail call i32 @llvm.umin.i32(i32 %1, i32 %3)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %53, label %11

11:                                               ; preds = %8
  %12 = icmp eq i32 %5, 0
  %13 = shl i32 %9, 1
  %14 = getelementptr i8, ptr %0, i32 %13
  br label %18

15:                                               ; preds = %51
  %16 = add nuw i32 %19, 1
  %17 = icmp eq i32 %16, %9
  br i1 %17, label %53, label %18

18:                                               ; preds = %15, %11
  %19 = phi i32 [ 0, %11 ], [ %16, %15 ]
  %20 = phi ptr [ %0, %11 ], [ %22, %15 ]
  %21 = phi ptr [ %2, %11 ], [ %24, %15 ]
  %22 = getelementptr i16, ptr %20, i32 1
  %23 = load i16, ptr %20, align 2
  %24 = getelementptr i16, ptr %21, i32 1
  %25 = load i16, ptr %21, align 2
  br i1 %12, label %39, label %26

26:                                               ; preds = %18
  %27 = zext i16 %23 to i32
  %28 = icmp ult i32 %27, %7
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr i16, ptr %6, i32 %27
  %31 = load i16, ptr %30, align 2
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i16 [ %31, %29 ], [ %23, %26 ]
  %34 = zext i16 %25 to i32
  %35 = icmp ult i32 %34, %7
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr i16, ptr %6, i32 %34
  %38 = load i16, ptr %37, align 2
  br label %39

39:                                               ; preds = %36, %32, %18
  %40 = phi i16 [ %33, %36 ], [ %33, %32 ], [ %23, %18 ]
  %41 = phi i16 [ %38, %36 ], [ %25, %32 ], [ %25, %18 ]
  %42 = icmp ult i16 %40, 64
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = zext i16 %40 to i32
  %45 = getelementptr [64 x i8], ptr @legal_ansi_char_array, i32 0, i32 %44
  %46 = load i8, ptr %45, align 1
  %47 = and i8 %46, 8
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %43, %39
  %50 = icmp ult i16 %40, %41
  br i1 %50, label %68, label %51

51:                                               ; preds = %49
  %52 = icmp ugt i16 %40, %41
  br i1 %52, label %68, label %15

53:                                               ; preds = %15, %8
  %54 = phi ptr [ %0, %8 ], [ %14, %15 ]
  %55 = icmp ult i32 %1, %3
  br i1 %55, label %68, label %56

56:                                               ; preds = %53
  %57 = icmp eq i32 %1, %3
  br i1 %57, label %68, label %58

58:                                               ; preds = %56
  %59 = load i16, ptr %54, align 2
  %60 = icmp ult i16 %59, 64
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = zext i16 %59 to i32
  %63 = getelementptr [64 x i8], ptr @legal_ansi_char_array, i32 0, i32 %62
  %64 = load i8, ptr %63, align 1
  %65 = and i8 %64, 8
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61, %58
  br label %68

68:                                               ; preds = %67, %61, %56, %53, %51, %49, %43
  %69 = phi i32 [ 1, %67 ], [ -1, %53 ], [ 0, %56 ], [ %4, %61 ], [ 1, %51 ], [ -1, %49 ], [ %4, %43 ]
  ret i32 %69
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ntfs_upcase_name(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %15, %4
  %7 = phi i32 [ %16, %15 ], [ 0, %4 ]
  %8 = getelementptr i16, ptr %0, i32 %7
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = icmp ult i32 %10, %3
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = getelementptr i16, ptr %2, i32 %10
  %14 = load i16, ptr %13, align 2
  store i16 %14, ptr %8, align 2
  br label %15

15:                                               ; preds = %12, %6
  %16 = add nuw i32 %7, 1
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %6

18:                                               ; preds = %15, %4
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ntfs_file_upcase_value(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.FILE_NAME_ATTR, ptr %0, i32 0, i32 11
  %5 = getelementptr inbounds %struct.FILE_NAME_ATTR, ptr %0, i32 0, i32 9
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp eq i8 %6, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %18, %3
  %10 = phi i32 [ %19, %18 ], [ 0, %3 ]
  %11 = getelementptr i16, ptr %4, i32 %10
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp ult i32 %13, %2
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr i16, ptr %1, i32 %13
  %17 = load i16, ptr %16, align 2
  store i16 %17, ptr %11, align 2
  br label %18

18:                                               ; preds = %15, %9
  %19 = add nuw nsw i32 %10, 1
  %20 = icmp eq i32 %19, %7
  br i1 %20, label %21, label %9

21:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ntfs_file_compare_values(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #4 {
  %7 = getelementptr inbounds %struct.FILE_NAME_ATTR, ptr %0, i32 0, i32 11
  %8 = getelementptr inbounds %struct.FILE_NAME_ATTR, ptr %0, i32 0, i32 9
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr inbounds %struct.FILE_NAME_ATTR, ptr %1, i32 0, i32 9
  %11 = load i8, ptr %10, align 1
  %12 = tail call i8 @llvm.umin.i8(i8 %9, i8 %11)
  %13 = zext i8 %12 to i32
  %14 = icmp eq i8 %12, 0
  br i1 %14, label %58, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.FILE_NAME_ATTR, ptr %1, i32 0, i32 11
  %17 = icmp eq i32 %3, 0
  %18 = shl nuw nsw i32 %13, 1
  %19 = getelementptr i8, ptr %7, i32 %18
  br label %23

20:                                               ; preds = %56
  %21 = add nuw nsw i32 %24, 1
  %22 = icmp eq i32 %21, %13
  br i1 %22, label %58, label %23

23:                                               ; preds = %20, %15
  %24 = phi i32 [ 0, %15 ], [ %21, %20 ]
  %25 = phi ptr [ %7, %15 ], [ %27, %20 ]
  %26 = phi ptr [ %16, %15 ], [ %29, %20 ]
  %27 = getelementptr i16, ptr %25, i32 1
  %28 = load i16, ptr %25, align 2
  %29 = getelementptr i16, ptr %26, i32 1
  %30 = load i16, ptr %26, align 2
  br i1 %17, label %44, label %31

31:                                               ; preds = %23
  %32 = zext i16 %28 to i32
  %33 = icmp ult i32 %32, %5
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = getelementptr i16, ptr %4, i32 %32
  %36 = load i16, ptr %35, align 2
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i16 [ %36, %34 ], [ %28, %31 ]
  %39 = zext i16 %30 to i32
  %40 = icmp ult i32 %39, %5
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = getelementptr i16, ptr %4, i32 %39
  %43 = load i16, ptr %42, align 2
  br label %44

44:                                               ; preds = %41, %37, %23
  %45 = phi i16 [ %38, %41 ], [ %38, %37 ], [ %28, %23 ]
  %46 = phi i16 [ %43, %41 ], [ %30, %37 ], [ %30, %23 ]
  %47 = icmp ult i16 %45, 64
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = zext i16 %45 to i32
  %50 = getelementptr [64 x i8], ptr @legal_ansi_char_array, i32 0, i32 %49
  %51 = load i8, ptr %50, align 1
  %52 = and i8 %51, 8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %48, %44
  %55 = icmp ult i16 %45, %46
  br i1 %55, label %73, label %56

56:                                               ; preds = %54
  %57 = icmp ugt i16 %45, %46
  br i1 %57, label %73, label %20

58:                                               ; preds = %20, %6
  %59 = phi ptr [ %7, %6 ], [ %19, %20 ]
  %60 = icmp ult i8 %9, %11
  br i1 %60, label %73, label %61

61:                                               ; preds = %58
  %62 = icmp eq i8 %9, %11
  br i1 %62, label %73, label %63

63:                                               ; preds = %61
  %64 = load i16, ptr %59, align 2
  %65 = icmp ult i16 %64, 64
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = zext i16 %64 to i32
  %68 = getelementptr [64 x i8], ptr @legal_ansi_char_array, i32 0, i32 %67
  %69 = load i8, ptr %68, align 1
  %70 = and i8 %69, 8
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66, %63
  br label %73

73:                                               ; preds = %72, %66, %61, %58, %56, %54, %48
  %74 = phi i32 [ 1, %72 ], [ -1, %58 ], [ 0, %61 ], [ %2, %66 ], [ %2, %48 ], [ -1, %54 ], [ 1, %56 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ntfs_nlstoucs(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #5 {
  %5 = alloca i16, align 2
  %6 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 40
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 0, ptr %5, align 2, !annotation !8
  %8 = icmp eq ptr %1, null
  br i1 %8, label %40, label %9, !prof !9

9:                                                ; preds = %4
  %10 = load ptr, ptr @ntfs_name_cache, align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %10, i32 noundef 3136) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %13, !prof !9

13:                                               ; preds = %9
  %14 = icmp sgt i32 %2, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.nls_table, ptr %7, i32 0, i32 3
  br label %17

17:                                               ; preds = %30, %15
  %18 = phi i32 [ 0, %15 ], [ %31, %30 ]
  %19 = phi i32 [ 0, %15 ], [ %33, %30 ]
  %20 = load ptr, ptr %16, align 4
  %21 = getelementptr i8, ptr %1, i32 %19
  %22 = sub i32 %2, %19
  %23 = call i32 %20(ptr noundef %21, i32 noundef %22, ptr noundef nonnull %5) #10
  %24 = icmp sgt i32 %23, -1
  %25 = icmp ult i32 %18, 255
  %26 = select i1 %24, i1 %25, i1 false, !prof !10
  br i1 %26, label %27, label %42, !prof !10

27:                                               ; preds = %17
  %28 = load i16, ptr %5, align 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %35, label %30, !prof !9

30:                                               ; preds = %27
  %31 = add nuw nsw i32 %18, 1
  %32 = getelementptr i16, ptr %11, i32 %18
  store i16 %28, ptr %32, align 2
  %33 = add i32 %23, %19
  %34 = icmp slt i32 %33, %2
  br i1 %34, label %17, label %35

35:                                               ; preds = %30, %27, %13
  %36 = phi i32 [ 0, %13 ], [ %18, %27 ], [ %31, %30 ]
  %37 = getelementptr i16, ptr %11, i32 %36
  store i16 0, ptr %37, align 2
  store ptr %11, ptr %3, align 4
  br label %49

38:                                               ; preds = %9
  %39 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_nlstoucs, ptr noundef %39, ptr noundef nonnull @.str) #10
  br label %49

40:                                               ; preds = %4
  %41 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_nlstoucs, ptr noundef %41, ptr noundef nonnull @.str.1) #10
  br label %49

42:                                               ; preds = %17
  %43 = load ptr, ptr @ntfs_name_cache, align 4
  call void @kmem_cache_free(ptr noundef %43, ptr noundef nonnull %11) #10
  %44 = icmp slt i32 %23, 0
  %45 = load ptr, ptr %0, align 8
  br i1 %44, label %46, label %48

46:                                               ; preds = %42
  %47 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_nlstoucs, ptr noundef %45, ptr noundef nonnull @.str.2, ptr noundef %47) #10
  br label %49

48:                                               ; preds = %42
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_nlstoucs, ptr noundef %45, ptr noundef nonnull @.str.3, i32 noundef 255) #10
  br label %49

49:                                               ; preds = %48, %46, %40, %38, %35
  %50 = phi i32 [ %36, %35 ], [ -12, %38 ], [ -22, %40 ], [ -84, %46 ], [ -36, %48 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ntfs_ucstonls(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3, i32 noundef %4) local_unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 40
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %1, null
  br i1 %8, label %69, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 4
  %11 = icmp eq ptr %10, null
  %12 = icmp ne i32 %4, 0
  %13 = or i1 %12, %11
  br i1 %13, label %14, label %71

14:                                               ; preds = %9
  br i1 %11, label %15, label %20

15:                                               ; preds = %14
  %16 = mul i32 %2, 6
  %17 = or i32 %16, 1
  %18 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %17, i32 noundef 3136) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %82, label %20

20:                                               ; preds = %15, %14
  %21 = phi ptr [ %10, %14 ], [ %18, %15 ]
  %22 = phi i32 [ %4, %14 ], [ %16, %15 ]
  %23 = icmp sgt i32 %2, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.nls_table, ptr %7, i32 0, i32 2
  br label %26

26:                                               ; preds = %38, %24
  %27 = phi i32 [ %22, %24 ], [ %40, %38 ]
  %28 = phi i32 [ 0, %24 ], [ %42, %38 ]
  %29 = phi i32 [ 0, %24 ], [ %43, %38 ]
  %30 = phi ptr [ %21, %24 ], [ %39, %38 ]
  %31 = getelementptr i16, ptr %1, i32 %29
  %32 = load ptr, ptr %25, align 4
  %33 = load i16, ptr %31, align 2
  %34 = getelementptr i8, ptr %30, i32 %28
  %35 = sub i32 %27, %28
  %36 = tail call i32 %32(i16 noundef zeroext %33, ptr noundef %34, i32 noundef %35) #10
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %57, %26
  %39 = phi ptr [ %30, %26 ], [ %55, %57 ]
  %40 = phi i32 [ %27, %26 ], [ %58, %57 ]
  %41 = phi i32 [ %36, %26 ], [ %63, %57 ]
  %42 = add i32 %41, %28
  %43 = add nuw nsw i32 %29, 1
  %44 = icmp eq i32 %43, %2
  br i1 %44, label %65, label %26

45:                                               ; preds = %57, %26
  %46 = phi i32 [ %63, %57 ], [ %36, %26 ]
  %47 = phi i32 [ %58, %57 ], [ %27, %26 ]
  %48 = phi ptr [ %55, %57 ], [ %30, %26 ]
  switch i32 %46, label %71 [
    i32 0, label %65
    i32 -36, label %49
  ]

49:                                               ; preds = %45
  %50 = load ptr, ptr %3, align 4
  %51 = icmp eq ptr %48, %50
  br i1 %51, label %71, label %52

52:                                               ; preds = %49
  %53 = add i32 %47, 64
  %54 = and i32 %53, -64
  %55 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %54, i32 noundef 3136) #11
  %56 = icmp eq ptr %55, null
  br i1 %56, label %71, label %57

57:                                               ; preds = %52
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %55, ptr align 1 %48, i32 %47, i1 false)
  %58 = add i32 %54, -1
  tail call void @kfree(ptr noundef %48) #10
  %59 = load ptr, ptr %25, align 4
  %60 = load i16, ptr %31, align 2
  %61 = getelementptr i8, ptr %55, i32 %28
  %62 = sub i32 %58, %28
  %63 = tail call i32 %59(i16 noundef zeroext %60, ptr noundef %61, i32 noundef %62) #10
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %38, label %45

65:                                               ; preds = %45, %38, %20
  %66 = phi i32 [ 0, %20 ], [ %28, %45 ], [ %42, %38 ]
  %67 = phi ptr [ %21, %20 ], [ %48, %45 ], [ %39, %38 ]
  %68 = getelementptr i8, ptr %67, i32 %66
  store i8 0, ptr %68, align 1
  store ptr %67, ptr %3, align 4
  br label %84

69:                                               ; preds = %5
  %70 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_ucstonls, ptr noundef %70, ptr noundef nonnull @.str.1) #10
  br label %84

71:                                               ; preds = %52, %49, %45, %9
  %72 = phi ptr [ %10, %9 ], [ %48, %49 ], [ %48, %45 ], [ %48, %52 ]
  %73 = phi i32 [ -36, %9 ], [ -36, %52 ], [ %46, %45 ], [ -36, %49 ]
  %74 = load ptr, ptr %0, align 8
  %75 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_ucstonls, ptr noundef %74, ptr noundef nonnull @.str.4, ptr noundef %75) #10
  %76 = load ptr, ptr %3, align 4
  %77 = icmp eq ptr %72, %76
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  tail call void @kfree(ptr noundef %72) #10
  br label %79

79:                                               ; preds = %78, %71
  %80 = icmp eq i32 %73, -36
  %81 = select i1 %80, i32 -36, i32 -84
  br label %84

82:                                               ; preds = %15
  %83 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_ucstonls, ptr noundef %83, ptr noundef nonnull @.str.5) #10
  br label %84

84:                                               ; preds = %82, %79, %69, %65
  %85 = phi i32 [ %81, %79 ], [ %66, %65 ], [ -12, %82 ], [ -22, %69 ]
  ret i32 %85
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #9

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
