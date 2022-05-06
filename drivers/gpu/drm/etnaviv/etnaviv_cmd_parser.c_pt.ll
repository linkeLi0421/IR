; ModuleID = '/llk/IR/drivers/gpu/drm/etnaviv/etnaviv_cmd_parser.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_cmd_parser.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon = type { i16, i16 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.etnaviv_gpu = type { ptr, ptr, ptr, %struct.mutex, %struct.etnaviv_chip_identity, i32, ptr, %struct.drm_gpu_scheduler, i8, i8, %struct.etnaviv_cmdbuf, i32, [1 x i32], [30 x %struct.etnaviv_event], %struct.completion, %struct.spinlock, i32, %struct.mutex, %struct.idr, i32, i32, %struct.wait_queue_head, i64, %struct.spinlock, %struct.work_struct, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.etnaviv_chip_identity = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.etnaviv_cmdbuf = type { ptr, i32, ptr, i32, i32 }
%struct.etnaviv_event = type { ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.drm_etnaviv_gem_submit_reloc = type { i32, i32, i64, i32 }

@etnaviv_states = internal global [2048 x i32] zeroinitializer, align 4
@etnaviv_sensitive_states = internal unnamed_addr constant [45 x %struct.anon] [%struct.anon { i16 1152, i16 1 }, %struct.anon { i16 1162, i16 1 }, %struct.anon { i16 1166, i16 1 }, %struct.anon { i16 1185, i16 1 }, %struct.anon { i16 1187, i16 1 }, %struct.anon { i16 1217, i16 1 }, %struct.anon { i16 1220, i16 1 }, %struct.anon { i16 1222, i16 1 }, %struct.anon { i16 18944, i16 4 }, %struct.anon { i16 18984, i16 4 }, %struct.anon { i16 18992, i16 4 }, %struct.anon { i16 19036, i16 4 }, %struct.anon { i16 19072, i16 8 }, %struct.anon { i16 19152, i16 8 }, %struct.anon { i16 19168, i16 8 }, %struct.anon { i16 19256, i16 8 }, %struct.anon { i16 401, i16 1 }, %struct.anon { i16 403, i16 1 }, %struct.anon { i16 416, i16 8 }, %struct.anon { i16 539, i16 1 }, %struct.anon { i16 1034, i16 1 }, %struct.anon { i16 1284, i16 1 }, %struct.anon { i16 1292, i16 1 }, %struct.anon { i16 1302, i16 1 }, %struct.anon { i16 1304, i16 8 }, %struct.anon { i16 1312, i16 8 }, %struct.anon { i16 1344, i16 8 }, %struct.anon { i16 1352, i16 8 }, %struct.anon { i16 1410, i16 1 }, %struct.anon { i16 1412, i16 1 }, %struct.anon { i16 1430, i16 1 }, %struct.anon { i16 1431, i16 1 }, %struct.anon { i16 1433, i16 1 }, %struct.anon { i16 1434, i16 1 }, %struct.anon { i16 1449, i16 1 }, %struct.anon { i16 1456, i16 8 }, %struct.anon { i16 1464, i16 8 }, %struct.anon { i16 1488, i16 8 }, %struct.anon { i16 1520, i16 8 }, %struct.anon { i16 1528, i16 8 }, %struct.anon { i16 2304, i16 224 }, %struct.anon { i16 3593, i16 1 }, %struct.anon { i16 16896, i16 512 }, %struct.anon { i16 20864, i16 16 }, %struct.anon { i16 20992, i16 64 }], section ".init.rodata", align 2
@.str = private unnamed_addr constant [39 x i8] c"%s: op %u not permitted at offset %tu\0A\00", align 1
@__func__.etnaviv_cmd_validate_one = private unnamed_addr constant [25 x i8] c"etnaviv_cmd_validate_one\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"%s: commands overflow end of buffer: %tu > %u\0A\00", align 1
@etnaviv_validate_load_state._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.etnaviv_validate_load_state = private unnamed_addr constant [28 x i8] c"etnaviv_validate_load_state\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"%s: load state touches restricted state 0x%x at offset %u\0A\00", align 1
@etnaviv_warn_if_non_sensitive.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"%s: relocation for non-sensitive state 0x%x at offset %u\0A\00", align 1
@__func__.etnaviv_warn_if_non_sensitive = private unnamed_addr constant [30 x i8] c"etnaviv_warn_if_non_sensitive\00", align 1
@cmd_length = internal unnamed_addr constant <{ [13 x i8], [19 x i8] }> <{ [13 x i8] c"\00\00\00\02\00\04\06\00\00\02\00\00\04", [19 x i8] zeroinitializer }>, align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @etnaviv_validate_init() local_unnamed_addr #0 section ".init.text" {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %9, %1 ]
  %3 = getelementptr [45 x %struct.anon], ptr @etnaviv_sensitive_states, i32 0, i32 %2
  %4 = load i16, ptr %3, align 2
  %5 = zext i16 %4 to i32
  %6 = getelementptr [45 x %struct.anon], ptr @etnaviv_sensitive_states, i32 0, i32 %2, i32 1
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  tail call void @__bitmap_set(ptr noundef nonnull @etnaviv_states, i32 noundef %5, i32 noundef %8) #5
  %9 = add nuw nsw i32 %2, 1
  %10 = icmp eq i32 %9, 45
  br i1 %10, label %11, label %1

11:                                               ; preds = %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @etnaviv_cmd_validate_one(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr i32, ptr %1, i32 %2
  %7 = icmp ugt ptr %6, %1
  br i1 %7, label %8, label %132

8:                                                ; preds = %5
  %9 = ptrtoint ptr %1 to i32
  %10 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 2
  br label %11

11:                                               ; preds = %126, %8
  %12 = phi ptr [ %1, %8 ], [ %130, %126 ]
  %13 = phi i32 [ %4, %8 ], [ %128, %126 ]
  %14 = phi ptr [ %3, %8 ], [ %127, %126 ]
  %15 = load i32, ptr %12, align 4
  %16 = lshr i32 %15, 27
  switch i32 %16, label %116 [
    i32 1, label %17
    i32 4, label %109
  ]

17:                                               ; preds = %11
  %18 = lshr i32 %15, 16
  %19 = and i32 %18, 1023
  %20 = add nuw nsw i32 %19, 2
  %21 = and i32 %20, 2046
  %22 = getelementptr i32, ptr %12, i32 %21
  %23 = icmp ugt ptr %22, %6
  br i1 %23, label %126, label %24

24:                                               ; preds = %17
  %25 = and i32 %15, 65535
  %26 = getelementptr i32, ptr %12, i32 1
  %27 = add nuw nsw i32 %19, %25
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 65536) #5
  %29 = tail call i32 @_find_next_bit_le(ptr noundef nonnull @etnaviv_states, i32 noundef %28, i32 noundef %25) #5
  %30 = icmp ult i32 %29, %28
  br i1 %30, label %31, label %77

31:                                               ; preds = %24
  %32 = ptrtoint ptr %26 to i32
  %33 = sub i32 %32, %9
  br label %34

34:                                               ; preds = %66, %31
  %35 = phi ptr [ %14, %31 ], [ %67, %66 ]
  %36 = phi i32 [ %13, %31 ], [ %68, %66 ]
  %37 = phi i32 [ %29, %31 ], [ %70, %66 ]
  %38 = sub i32 %37, %25
  %39 = shl i32 %38, 2
  %40 = add i32 %33, %39
  %41 = and i32 %40, -4
  %42 = shl i32 %37, 2
  %43 = icmp eq i32 %36, 0
  br i1 %43, label %72, label %44

44:                                               ; preds = %34
  %45 = load i32, ptr %35, align 8
  %46 = icmp ult i32 %45, %41
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load i1, ptr @etnaviv_warn_if_non_sensitive.__print_once, align 1
  br i1 %48, label %51, label %49

49:                                               ; preds = %47
  store i1 true, ptr @etnaviv_warn_if_non_sensitive.__print_once, align 1
  %50 = load ptr, ptr %10, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.etnaviv_warn_if_non_sensitive, i32 noundef %42, i32 noundef %45) #6
  br label %51

51:                                               ; preds = %49, %47
  br label %52

52:                                               ; preds = %57, %51
  %53 = phi ptr [ %58, %57 ], [ %35, %51 ]
  %54 = phi i32 [ %59, %57 ], [ %36, %51 ]
  %55 = load i32, ptr %53, align 8
  %56 = icmp ult i32 %55, %41
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = getelementptr %struct.drm_etnaviv_gem_submit_reloc, ptr %53, i32 1
  %59 = add i32 %54, -1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %72, label %52

61:                                               ; preds = %52, %44
  %62 = phi i32 [ %45, %44 ], [ %55, %52 ]
  %63 = phi ptr [ %35, %44 ], [ %53, %52 ]
  %64 = phi i32 [ %36, %44 ], [ %54, %52 ]
  %65 = icmp eq i32 %62, %41
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = getelementptr %struct.drm_etnaviv_gem_submit_reloc, ptr %63, i32 1
  %68 = add i32 %64, -1
  %69 = add i32 %37, 1
  %70 = tail call i32 @_find_next_bit_le(ptr noundef nonnull @etnaviv_states, i32 noundef %28, i32 noundef %69) #5
  %71 = icmp ult i32 %70, %28
  br i1 %71, label %34, label %77

72:                                               ; preds = %61, %57, %34
  %73 = tail call i32 @___ratelimit(ptr noundef nonnull @etnaviv_validate_load_state._rs, ptr noundef nonnull @__func__.etnaviv_validate_load_state) #5
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %142, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr %10, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %76, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.etnaviv_validate_load_state, i32 noundef %42, i32 noundef %41) #6
  br label %142

77:                                               ; preds = %66, %24
  %78 = phi ptr [ %14, %24 ], [ %67, %66 ]
  %79 = phi i32 [ %13, %24 ], [ %68, %66 ]
  %80 = phi i32 [ %29, %24 ], [ %70, %66 ]
  %81 = icmp eq i32 %79, 0
  br i1 %81, label %126, label %82

82:                                               ; preds = %77
  %83 = ptrtoint ptr %26 to i32
  %84 = shl nuw nsw i32 %19, 2
  %85 = sub i32 %83, %9
  %86 = add i32 %85, %84
  %87 = and i32 %86, -4
  %88 = shl i32 %80, 2
  %89 = load i32, ptr %78, align 8
  %90 = sub i32 %88, %87
  %91 = add i32 %90, %89
  %92 = icmp ult i32 %89, %87
  br i1 %92, label %93, label %126

93:                                               ; preds = %82
  %94 = load i1, ptr @etnaviv_warn_if_non_sensitive.__print_once, align 1
  br i1 %94, label %97, label %95

95:                                               ; preds = %93
  store i1 true, ptr @etnaviv_warn_if_non_sensitive.__print_once, align 1
  %96 = load ptr, ptr %10, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %96, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.etnaviv_warn_if_non_sensitive, i32 noundef %91, i32 noundef %89) #6
  br label %97

97:                                               ; preds = %95, %93
  %98 = mul i32 %79, 24
  %99 = getelementptr i8, ptr %78, i32 %98
  br label %100

100:                                              ; preds = %105, %97
  %101 = phi ptr [ %78, %97 ], [ %106, %105 ]
  %102 = phi i32 [ %79, %97 ], [ %107, %105 ]
  %103 = load i32, ptr %101, align 8
  %104 = icmp ult i32 %103, %87
  br i1 %104, label %105, label %126

105:                                              ; preds = %100
  %106 = getelementptr %struct.drm_etnaviv_gem_submit_reloc, ptr %101, i32 1
  %107 = add i32 %102, -1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %126, label %100

109:                                              ; preds = %11
  %110 = lshr i32 %15, 8
  %111 = and i32 %110, 255
  %112 = icmp eq i32 %111, 0
  %113 = shl nuw nsw i32 %111, 1
  %114 = add nuw nsw i32 %113, 2
  %115 = select i1 %112, i32 514, i32 %114
  br label %126

116:                                              ; preds = %11
  %117 = getelementptr [32 x i8], ptr @cmd_length, i32 0, i32 %16
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp eq i8 %118, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load ptr, ptr %10, align 8
  %123 = ptrtoint ptr %12 to i32
  %124 = sub i32 %123, %9
  %125 = ashr exact i32 %124, 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.etnaviv_cmd_validate_one, i32 noundef %16, i32 noundef %125) #6
  br label %142

126:                                              ; preds = %116, %109, %105, %100, %82, %77, %17
  %127 = phi ptr [ %14, %116 ], [ %14, %109 ], [ %14, %17 ], [ %78, %82 ], [ %78, %77 ], [ %99, %105 ], [ %101, %100 ]
  %128 = phi i32 [ %13, %116 ], [ %13, %109 ], [ %13, %17 ], [ %79, %82 ], [ 0, %77 ], [ 0, %105 ], [ %102, %100 ]
  %129 = phi i32 [ %119, %116 ], [ %115, %109 ], [ %21, %17 ], [ %21, %82 ], [ %21, %77 ], [ %21, %100 ], [ %21, %105 ]
  %130 = getelementptr i32, ptr %12, i32 %129
  %131 = icmp ult ptr %130, %6
  br i1 %131, label %11, label %132

132:                                              ; preds = %126, %5
  %133 = phi ptr [ %1, %5 ], [ %130, %126 ]
  %134 = icmp ugt ptr %133, %6
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 2
  %137 = load ptr, ptr %136, align 8
  %138 = ptrtoint ptr %133 to i32
  %139 = ptrtoint ptr %1 to i32
  %140 = sub i32 %138, %139
  %141 = ashr exact i32 %140, 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.etnaviv_cmd_validate_one, i32 noundef %141, i32 noundef %2) #6
  br label %142

142:                                              ; preds = %135, %132, %121, %75, %72
  %143 = phi i1 [ false, %135 ], [ true, %132 ], [ false, %121 ], [ false, %72 ], [ false, %75 ]
  ret i1 %143
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
