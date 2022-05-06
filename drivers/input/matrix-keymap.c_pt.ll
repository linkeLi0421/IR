; ModuleID = '/llk/IR/drivers/input/matrix-keymap.c_pt.bc'
source_filename = "../drivers/input/matrix-keymap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_matrix_keypad_parse_properties:\09\09\09\09\09"
module asm "\09.asciz \09\22matrix_keypad_parse_properties\22\09\09\09\09\09"
module asm "__kstrtabns_matrix_keypad_parse_properties:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_matrix_keypad_build_keymap:\09\09\09\09\09"
module asm "\09.asciz \09\22matrix_keypad_build_keymap\22\09\09\09\09\09"
module asm "__kstrtabns_matrix_keypad_build_keymap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.matrix_keymap_data = type { ptr, i32 }

@.str = private unnamed_addr constant [16 x i8] c"keypad,num-rows\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"keypad,num-columns\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"number of keypad rows/columns not specified\0A\00", align 1
@__kstrtab_matrix_keypad_parse_properties = external dso_local constant [0 x i8], align 1
@__kstrtabns_matrix_keypad_parse_properties = external dso_local constant [0 x i8], align 1
@__ksymtab_matrix_keypad_parse_properties = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @matrix_keypad_parse_properties to i32), ptr @__kstrtab_matrix_keypad_parse_properties, ptr @__kstrtabns_matrix_keypad_parse_properties }, section "___ksymtab_gpl+matrix_keypad_parse_properties", align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"drivers/input/matrix-keymap.c\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Unable to allocate memory for keymap\00", align 1
@__kstrtab_matrix_keypad_build_keymap = external dso_local constant [0 x i8], align 1
@__kstrtabns_matrix_keypad_build_keymap = external dso_local constant [0 x i8], align 1
@__ksymtab_matrix_keypad_build_keymap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @matrix_keypad_build_keymap to i32), ptr @__kstrtab_matrix_keypad_build_keymap, ptr @__kstrtabns_matrix_keypad_build_keymap }, section "___ksymtab+matrix_keypad_build_keymap", align 4
@__UNIQUE_ID_file206 = internal constant [47 x i8] c"matrix_keymap.file=drivers/input/matrix-keymap\00", section ".modinfo", align 1
@__UNIQUE_ID_license207 = internal constant [26 x i8] c"matrix_keymap.license=GPL\00", section ".modinfo", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"%s: invalid keymap entry 0x%x (row: %d, col: %d, rows: %d, cols: %d)\0A\00", align 1
@__func__.matrix_keypad_map_key = private unnamed_addr constant [22 x i8] c"matrix_keypad_map_key\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"linux,keymap\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"missing or malformed property %s: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"%s size overflow (%d vs max %u)\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"failed to read %s property: %d\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_file206, ptr @__UNIQUE_ID_license207, ptr @__ksymtab_matrix_keypad_build_keymap, ptr @__ksymtab_matrix_keypad_parse_properties], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @matrix_keypad_parse_properties(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  store i32 0, ptr %2, align 4
  store i32 0, ptr %1, align 4
  %4 = tail call i32 @device_property_read_u32_array(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %1, i32 noundef 1) #5
  %5 = tail call i32 @device_property_read_u32_array(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %2, i32 noundef 1) #5
  %6 = load i32, ptr %1, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %2, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2) #6
  br label %12

12:                                               ; preds = %11, %8
  %13 = phi i32 [ -22, %11 ], [ 0, %8 ]
  ret i32 %13
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @matrix_keypad_build_keymap(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef %5) #0 {
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %6
  %9 = add i32 %3, -1
  %10 = icmp eq i32 %9, 0
  %11 = tail call i32 @llvm.ctlz.i32(i32 %9, i1 false) #5, !range !8
  %12 = sub nuw nsw i32 32, %11
  %13 = select i1 %10, i32 0, i32 %12
  br label %14

14:                                               ; preds = %8, %6
  %15 = phi i32 [ %13, %8 ], [ -1, %6 ]
  %16 = shl i32 %2, %15
  %17 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 40, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 161, i32 noundef 9, ptr noundef null) #5
  br label %146

21:                                               ; preds = %14
  %22 = icmp eq ptr %4, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %21
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 2) #5
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %32, label %26, !prof !9

26:                                               ; preds = %23
  %27 = extractvalue { i32, i1 } %24, 0
  %28 = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %18, i32 noundef %27, i32 noundef 3520) #5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load ptr, ptr %17, align 4
  br label %32

32:                                               ; preds = %30, %23
  %33 = phi ptr [ %31, %30 ], [ %18, %23 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.4) #6
  br label %146

34:                                               ; preds = %26, %21
  %35 = phi ptr [ %4, %21 ], [ %28, %26 ]
  %36 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 17
  store ptr %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 16
  store i32 2, ptr %37, align 8
  %38 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 15
  store i32 %16, ptr %38, align 4
  %39 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %40, 2
  store i32 %41, ptr %39, align 4
  %42 = icmp eq ptr %0, null
  br i1 %42, label %78, label %43

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.matrix_keymap_data, ptr %0, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %142, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 6
  br label %49

49:                                               ; preds = %62, %47
  %50 = phi i32 [ 0, %47 ], [ %75, %62 ]
  %51 = load ptr, ptr %0, align 4
  %52 = getelementptr i32, ptr %51, i32 %50
  %53 = load i32, ptr %52, align 4
  %54 = lshr i32 %53, 24
  %55 = lshr i32 %53, 16
  %56 = and i32 %55, 255
  %57 = icmp ult i32 %54, %2
  %58 = icmp ult i32 %56, %3
  %59 = and i1 %57, %58
  br i1 %59, label %62, label %60

60:                                               ; preds = %49
  %61 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.matrix_keypad_map_key, i32 noundef %53, i32 noundef %54, i32 noundef %56, i32 noundef %2, i32 noundef %3) #6
  br label %146

62:                                               ; preds = %49
  %63 = trunc i32 %53 to i16
  %64 = load ptr, ptr %36, align 4
  %65 = shl i32 %54, %15
  %66 = add i32 %65, %56
  %67 = getelementptr i16, ptr %64, i32 %66
  store i16 %63, ptr %67, align 2
  %68 = and i32 %53, 31
  %69 = shl nuw i32 1, %68
  %70 = lshr i32 %53, 5
  %71 = and i32 %70, 2047
  %72 = getelementptr i32, ptr %48, i32 %71
  %73 = load i32, ptr %72, align 4
  %74 = or i32 %73, %69
  store i32 %74, ptr %72, align 4
  %75 = add nuw i32 %50, 1
  %76 = load i32, ptr %44, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %49, label %142

78:                                               ; preds = %34
  %79 = load ptr, ptr %17, align 4
  br i1 %7, label %86, label %80

80:                                               ; preds = %78
  %81 = add i32 %3, -1
  %82 = icmp eq i32 %81, 0
  %83 = tail call i32 @llvm.ctlz.i32(i32 %81, i1 false) #5, !range !8
  %84 = sub nuw nsw i32 32, %83
  %85 = select i1 %82, i32 0, i32 %84
  br label %86

86:                                               ; preds = %80, %78
  %87 = phi i32 [ %85, %80 ], [ -1, %78 ]
  %88 = shl i32 %2, %87
  %89 = icmp eq ptr %1, null
  %90 = select i1 %89, ptr @.str.6, ptr %1
  %91 = tail call i32 @device_property_read_u32_array(ptr noundef %79, ptr noundef %90, ptr noundef null, i32 noundef 0) #5
  %92 = icmp slt i32 %91, 1
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.7, ptr noundef %90, i32 noundef %91) #6
  %94 = icmp eq i32 %91, 0
  %95 = select i1 %94, i32 -22, i32 %91
  br label %146

96:                                               ; preds = %86
  %97 = icmp ugt i32 %91, %88
  br i1 %97, label %98, label %99

98:                                               ; preds = %96
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.8, ptr noundef %90, i32 noundef %91, i32 noundef %88) #6
  br label %146

99:                                               ; preds = %96
  %100 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %91, i32 4) #5
  %101 = extractvalue { i32, i1 } %100, 1
  br i1 %101, label %146, label %102, !prof !9

102:                                              ; preds = %99
  %103 = extractvalue { i32, i1 } %100, 0
  %104 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %103, i32 noundef 3264) #7
  %105 = icmp eq ptr %104, null
  br i1 %105, label %146, label %106

106:                                              ; preds = %102
  %107 = tail call i32 @device_property_read_u32_array(ptr noundef %79, ptr noundef %90, ptr noundef nonnull %104, i32 noundef %91) #5
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 6
  br label %112

111:                                              ; preds = %106
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.9, ptr noundef %90, i32 noundef %107) #6
  br label %139

112:                                              ; preds = %124, %109
  %113 = phi i32 [ 0, %109 ], [ %137, %124 ]
  %114 = getelementptr i32, ptr %104, i32 %113
  %115 = load i32, ptr %114, align 4
  %116 = lshr i32 %115, 24
  %117 = lshr i32 %115, 16
  %118 = and i32 %117, 255
  %119 = icmp ult i32 %116, %2
  %120 = icmp ult i32 %118, %3
  %121 = and i1 %119, %120
  br i1 %121, label %124, label %122

122:                                              ; preds = %112
  %123 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.matrix_keypad_map_key, i32 noundef %115, i32 noundef %116, i32 noundef %118, i32 noundef %2, i32 noundef %3) #6
  br label %139

124:                                              ; preds = %112
  %125 = trunc i32 %115 to i16
  %126 = load ptr, ptr %36, align 4
  %127 = shl i32 %116, %87
  %128 = add i32 %127, %118
  %129 = getelementptr i16, ptr %126, i32 %128
  store i16 %125, ptr %129, align 2
  %130 = and i32 %115, 31
  %131 = shl nuw i32 1, %130
  %132 = lshr i32 %115, 5
  %133 = and i32 %132, 2047
  %134 = getelementptr i32, ptr %110, i32 %133
  %135 = load i32, ptr %134, align 4
  %136 = or i32 %135, %131
  store i32 %136, ptr %134, align 4
  %137 = add nuw nsw i32 %113, 1
  %138 = icmp eq i32 %137, %91
  br i1 %138, label %141, label %112

139:                                              ; preds = %122, %111
  %140 = phi i32 [ -22, %122 ], [ %107, %111 ]
  tail call void @kfree(ptr noundef nonnull %104) #5
  br label %146

141:                                              ; preds = %124
  tail call void @kfree(ptr noundef nonnull %104) #5
  br label %142

142:                                              ; preds = %141, %62, %43
  %143 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 6
  %144 = load i32, ptr %143, align 4
  %145 = and i32 %144, -2
  store i32 %145, ptr %143, align 4
  br label %146

146:                                              ; preds = %142, %139, %102, %99, %98, %93, %60, %32, %20
  %147 = phi i32 [ -22, %20 ], [ -22, %60 ], [ 0, %142 ], [ -12, %32 ], [ %140, %139 ], [ -12, %99 ], [ -12, %102 ], [ -22, %98 ], [ %95, %93 ]
  ret i32 %147
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind allocsize(0) }

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
!8 = !{i32 0, i32 33}
!9 = !{!"branch_weights", i32 1, i32 2000}
