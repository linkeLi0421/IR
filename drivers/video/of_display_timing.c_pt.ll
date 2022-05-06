; ModuleID = '/llk/IR/drivers/video/of_display_timing.c_pt.bc'
source_filename = "../drivers/video/of_display_timing.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_display_timing:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_display_timing\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_display_timing:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_display_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_display_timings\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_display_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.display_timing = type { %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, i32 }
%struct.timing_entry = type { i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.display_timings = type { i32, i32, ptr }

@__kstrtab_of_get_display_timing = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_display_timing = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_display_timing = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_display_timing to i32), ptr @__kstrtab_of_get_display_timing, ptr @__kstrtabns_of_get_display_timing }, section "___ksymtab_gpl+of_get_display_timing", align 4
@.str = private unnamed_addr constant [16 x i8] c"display-timings\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"\013%pOF: could not find display-timings node\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"\013%pOF: could not allocate struct disp'\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"native-mode\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"\013%pOF: no timing specifications given\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"\013%pOF: no timings specified\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"\013%pOF: could not allocate timings array\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"\013%pOF: could not allocate display_timing struct\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"\013%pOF: error in timing %d\0A\00", align 1
@__kstrtab_of_get_display_timings = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_display_timings = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_display_timings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_display_timings to i32), ptr @__kstrtab_of_get_display_timings, ptr @__kstrtabns_of_get_display_timings }, section "___ksymtab_gpl+of_get_display_timings", align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"hback-porch\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"hfront-porch\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"hactive\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"hsync-len\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"vback-porch\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"vfront-porch\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"vactive\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"vsync-len\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"vsync-active\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"hsync-active\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"de-active\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"pixelclk-active\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"syncclk-active\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"doublescan\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"doubleclk\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"\013%pOF: error reading timing properties\0A\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"\013%pOF: could not find property %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"\013%pOF: illegal timing specification in %s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_of_get_display_timing, ptr @__ksymtab_of_get_display_timings], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_get_display_timing(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %0, ptr noundef %1) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call fastcc i32 @of_parse_display_timing(ptr noundef nonnull %6, ptr noundef %2)
  tail call void @of_node_put(ptr noundef nonnull %6) #8
  br label %10

10:                                               ; preds = %8, %5, %3
  %11 = phi i32 [ %9, %8 ], [ -22, %3 ], [ -2, %5 ]
  ret i32 %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @of_parse_display_timing(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(112) %1, i8 0, i32 112, i1 false)
  %4 = getelementptr inbounds %struct.display_timing, ptr %1, i32 0, i32 3
  %5 = tail call fastcc i32 @parse_timing_property(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %4)
  %6 = getelementptr inbounds %struct.display_timing, ptr %1, i32 0, i32 2
  %7 = tail call fastcc i32 @parse_timing_property(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %6)
  %8 = or i32 %7, %5
  %9 = getelementptr inbounds %struct.display_timing, ptr %1, i32 0, i32 1
  %10 = tail call fastcc i32 @parse_timing_property(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef %9)
  %11 = or i32 %8, %10
  %12 = getelementptr inbounds %struct.display_timing, ptr %1, i32 0, i32 4
  %13 = tail call fastcc i32 @parse_timing_property(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef %12)
  %14 = or i32 %11, %13
  %15 = getelementptr inbounds %struct.display_timing, ptr %1, i32 0, i32 7
  %16 = tail call fastcc i32 @parse_timing_property(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef %15)
  %17 = or i32 %14, %16
  %18 = getelementptr inbounds %struct.display_timing, ptr %1, i32 0, i32 6
  %19 = tail call fastcc i32 @parse_timing_property(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %18)
  %20 = or i32 %17, %19
  %21 = getelementptr inbounds %struct.display_timing, ptr %1, i32 0, i32 5
  %22 = tail call fastcc i32 @parse_timing_property(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef %21)
  %23 = or i32 %20, %22
  %24 = getelementptr inbounds %struct.display_timing, ptr %1, i32 0, i32 8
  %25 = tail call fastcc i32 @parse_timing_property(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %24)
  %26 = or i32 %23, %25
  %27 = tail call fastcc i32 @parse_timing_property(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef %1)
  %28 = or i32 %26, %27
  %29 = getelementptr inbounds %struct.display_timing, ptr %1, i32 0, i32 9
  store i32 0, ptr %29, align 4
  %30 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %38

32:                                               ; preds = %2
  %33 = load i32, ptr %3, align 4
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 4, i32 8
  %36 = load i32, ptr %29, align 4
  %37 = or i32 %35, %36
  store i32 %37, ptr %29, align 4
  br label %38

38:                                               ; preds = %32, %2
  %39 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, ptr %3, align 4
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 1, i32 2
  %45 = load i32, ptr %29, align 4
  %46 = or i32 %44, %45
  store i32 %46, ptr %29, align 4
  br label %47

47:                                               ; preds = %41, %38
  %48 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, ptr %3, align 4
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 16, i32 32
  %54 = load i32, ptr %29, align 4
  %55 = or i32 %53, %54
  store i32 %55, ptr %29, align 4
  br label %56

56:                                               ; preds = %50, %47
  %57 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32, ptr %3, align 4
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, i32 128, i32 64
  %63 = load i32, ptr %29, align 4
  %64 = or i32 %62, %63
  store i32 %64, ptr %29, align 4
  br label %65

65:                                               ; preds = %59, %56
  %66 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %67 = icmp sgt i32 %66, -1
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, ptr %3, align 4
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, i32 4096, i32 2048
  %72 = load i32, ptr %29, align 4
  %73 = or i32 %71, %72
  br label %83

74:                                               ; preds = %65
  %75 = load i32, ptr %29, align 4
  %76 = and i32 %75, 192
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %74
  %79 = and i32 %75, 64
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i32 4096, i32 2048
  %82 = or i32 %81, %75
  br label %83

83:                                               ; preds = %78, %68
  %84 = phi i32 [ %82, %78 ], [ %73, %68 ]
  store i32 %84, ptr %29, align 4
  br label %85

85:                                               ; preds = %83, %74
  %86 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef null) #8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, ptr %29, align 4
  %90 = or i32 %89, 256
  store i32 %90, ptr %29, align 4
  br label %91

91:                                               ; preds = %88, %85
  %92 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef null) #8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, ptr %29, align 4
  %96 = or i32 %95, 512
  store i32 %96, ptr %29, align 4
  br label %97

97:                                               ; preds = %94, %91
  %98 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef null) #8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, ptr %29, align 4
  %102 = or i32 %101, 1024
  store i32 %102, ptr %29, align 4
  br label %103

103:                                              ; preds = %100, %97
  %104 = icmp eq i32 %28, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %103
  %106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %0) #9
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ -22, %105 ], [ 0, %103 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %108
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_get_display_timings(ptr noundef %0) #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %86, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %0, ptr noundef nonnull @.str) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %0) #9
  br label %86

9:                                                ; preds = %4
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 12) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %0) #9
  br label %85

15:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #8, !annotation !8
  %16 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %5, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #8
  %17 = icmp ne i32 %16, 0
  %18 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  %19 = icmp eq ptr %18, null
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = call ptr @of_get_next_child(ptr noundef nonnull %5, ptr noundef null) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %0) #9
  br label %83

26:                                               ; preds = %21, %15
  %27 = phi ptr [ %22, %21 ], [ %18, %15 ]
  %28 = call ptr @of_get_next_child(ptr noundef nonnull %5, ptr noundef null) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, ptr %11, align 8
  br label %39

31:                                               ; preds = %31, %26
  %32 = phi i32 [ %34, %31 ], [ 0, %26 ]
  %33 = phi ptr [ %35, %31 ], [ %28, %26 ]
  %34 = add i32 %32, 1
  %35 = call ptr @of_get_next_child(ptr noundef nonnull %5, ptr noundef nonnull %33) #8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %31

37:                                               ; preds = %31
  store i32 %34, ptr %11, align 8
  %38 = icmp eq i32 %34, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %37, %30
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %0) #9
  br label %83

41:                                               ; preds = %37
  %42 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %34, i32 4) #8
  %43 = extractvalue { i32, i1 } %42, 1
  br i1 %43, label %44, label %46, !prof !9

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.display_timings, ptr %11, i32 0, i32 2
  store ptr null, ptr %45, align 8
  br label %51

46:                                               ; preds = %41
  %47 = extractvalue { i32, i1 } %42, 0
  %48 = call noalias align 64 ptr @__kmalloc(i32 noundef %47, i32 noundef 3520) #11
  %49 = getelementptr inbounds %struct.display_timings, ptr %11, i32 0, i32 2
  store ptr %48, ptr %49, align 8
  %50 = icmp eq ptr %48, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %46, %44
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull %0) #9
  br label %83

53:                                               ; preds = %46
  store i32 0, ptr %11, align 8
  %54 = getelementptr inbounds %struct.display_timings, ptr %11, i32 0, i32 1
  store i32 0, ptr %54, align 4
  %55 = call ptr @of_get_next_child(ptr noundef nonnull %5, ptr noundef null) #8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %81, label %57

57:                                               ; preds = %74, %53
  %58 = phi i32 [ %78, %74 ], [ 0, %53 ]
  %59 = phi ptr [ %79, %74 ], [ %55, %53 ]
  %60 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %61 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3520, i32 noundef 112) #10
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %0) #9
  br label %82

65:                                               ; preds = %57
  %66 = call fastcc i32 @of_parse_display_timing(ptr noundef nonnull %59, ptr noundef nonnull %61)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = add i32 %58, 1
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %0, i32 noundef %69) #9
  call void @kfree(ptr noundef nonnull %61) #8
  br label %82

71:                                               ; preds = %65
  %72 = icmp eq ptr %27, %59
  br i1 %72, label %73, label %74

73:                                               ; preds = %71
  store i32 %58, ptr %54, align 4
  br label %74

74:                                               ; preds = %73, %71
  %75 = load ptr, ptr %49, align 8
  %76 = getelementptr ptr, ptr %75, i32 %58
  store ptr %61, ptr %76, align 4
  %77 = load i32, ptr %11, align 8
  %78 = add i32 %77, 1
  store i32 %78, ptr %11, align 8
  %79 = call ptr @of_get_next_child(ptr noundef nonnull %5, ptr noundef nonnull %59) #8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %57

81:                                               ; preds = %74, %53
  call void @of_node_put(ptr noundef nonnull %5) #8
  call void @of_node_put(ptr noundef nonnull %27) #8
  br label %86

82:                                               ; preds = %68, %63
  call void @of_node_put(ptr noundef nonnull %27) #8
  call void @display_timings_release(ptr noundef nonnull %11) #8
  br label %83

83:                                               ; preds = %82, %51, %39, %24
  %84 = phi ptr [ %11, %39 ], [ null, %82 ], [ %11, %51 ], [ %11, %24 ]
  call void @kfree(ptr noundef %84) #8
  br label %85

85:                                               ; preds = %83, %13
  call void @of_node_put(ptr noundef nonnull %5) #8
  br label %86

86:                                               ; preds = %85, %81, %7, %1
  %87 = phi ptr [ null, %85 ], [ %11, %81 ], [ null, %7 ], [ null, %1 ]
  ret ptr %87
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @display_timings_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @parse_timing_property(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = call ptr @of_find_property(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %0, ptr noundef %1) #9
  br label %23

9:                                                ; preds = %3
  %10 = load i32, ptr %4, align 4
  %11 = lshr i32 %10, 2
  switch i32 %11, label %21 [
    i32 1, label %12
    i32 3, label %18
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.timing_entry, ptr %2, i32 0, i32 1
  %14 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef %1, ptr noundef %13, i32 noundef 1, i32 noundef 0) #8
  %15 = call i32 @llvm.smin.i32(i32 %14, i32 0) #8
  %16 = load i32, ptr %13, align 4
  store i32 %16, ptr %2, align 4
  %17 = getelementptr inbounds %struct.timing_entry, ptr %2, i32 0, i32 2
  store i32 %16, ptr %17, align 4
  br label %23

18:                                               ; preds = %9
  %19 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 3, i32 noundef 0) #8
  %20 = call i32 @llvm.smin.i32(i32 %19, i32 0) #8
  br label %23

21:                                               ; preds = %9
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %0, ptr noundef %1) #9
  br label %23

23:                                               ; preds = %21, %18, %12, %7
  %24 = phi i32 [ -22, %21 ], [ -22, %7 ], [ %15, %12 ], [ %20, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
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
