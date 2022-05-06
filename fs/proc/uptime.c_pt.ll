; ModuleID = '/llk/IR/fs/proc/uptime.c_pt.bc'
source_filename = "../fs/proc/uptime.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.kernel_cpustat = type { [10 x i64] }
%struct.timespec64 = type { i64, i32 }

@__initcall__kmod_proc__196_45_proc_uptime_init5 = internal global ptr @proc_uptime_init, section ".initcall5.init", align 4
@.str = private unnamed_addr constant [7 x i8] c"uptime\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%lu.%02lu %lu.%02lu\0A\00", align 1
@kernel_cpustat = external dso_local global %struct.kernel_cpustat, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_proc__196_45_proc_uptime_init5], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @proc_uptime_init() #0 section ".init.text" {
  %1 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @uptime_proc_show, ptr noundef null) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uptime_proc_show(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca %struct.timespec64, align 8
  %4 = alloca %struct.kernel_cpustat, align 8
  %5 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #8
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %8, %2
  %9 = phi i32 [ %17, %8 ], [ %5, %2 ]
  %10 = phi i64 [ %16, %8 ], [ 0, %2 ]
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i32 80, i1 false), !annotation !8
  %11 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, ptrtoint (ptr @kernel_cpustat to i32)
  %14 = inttoptr i32 %13 to ptr
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef align 8 dereferenceable(80) %14, i32 80, i1 false) #7
  %15 = call i64 @get_idle_time(ptr noundef nonnull %4, i32 noundef %9) #7
  %16 = add i64 %15, %10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #7
  %17 = call i32 @cpumask_next(i32 noundef %9, ptr noundef nonnull @__cpu_possible_mask) #8
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %8, label %20

20:                                               ; preds = %8, %2
  %21 = phi i64 [ 0, %2 ], [ %16, %8 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %22 = call i64 @ktime_get_with_offset(i32 noundef 1) #7
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %3, i64 noundef %22) #7
  %23 = load i64, ptr %3, align 8
  %24 = getelementptr inbounds i8, ptr %3, i32 8
  %25 = load i32, ptr %24, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  %26 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %21, i32 0) #9, !srcloc !9
  %27 = extractvalue { i64, i32 } %26, 0
  %28 = extractvalue { i64, i32 } %26, 1
  %29 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %21, i64 %27, i32 %28) #9, !srcloc !10
  %30 = extractvalue { i64, i32 } %29, 0
  %31 = trunc i64 %21 to i32
  %32 = lshr i64 %30, 29
  %33 = trunc i64 %32 to i32
  %34 = mul i32 %33, -1000000000
  %35 = add i32 %34, %31
  %36 = trunc i64 %23 to i32
  %37 = sdiv i32 %25, 10000000
  %38 = sdiv i32 %35, 10000000
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %36, i32 noundef %37, i32 noundef %33, i32 noundef %38) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_idle_time(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind readnone }

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
!9 = !{i64 691741, i64 691768, i64 691790, i64 691818}
!10 = !{i64 692149, i64 692176, i64 692209, i64 692230, i64 692257, i64 692283}
