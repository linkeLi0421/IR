; ModuleID = '/llk/IR/fs/proc/loadavg.c_pt.bc'
source_filename = "../fs/proc/loadavg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }

@__initcall__kmod_proc__212_33_proc_loadavg_init5 = internal global ptr @proc_loadavg_init, section ".initcall5.init", align 4
@.str = private unnamed_addr constant [8 x i8] c"loadavg\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"%lu.%02lu %lu.%02lu %lu.%02lu %u/%d %d\0A\00", align 1
@nr_threads = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_proc__212_33_proc_loadavg_init5], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @proc_loadavg_init() #0 section ".init.text" {
  %1 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @loadavg_proc_show, ptr noundef null) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @loadavg_proc_show(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !8
  call void @get_avenrun(ptr noundef nonnull %3, i32 noundef 10, i32 noundef 0) #6
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 11
  %6 = and i32 %4, 2047
  %7 = mul nuw nsw i32 %6, 100
  %8 = lshr i32 %7, 11
  %9 = getelementptr inbounds [3 x i32], ptr %3, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 11
  %12 = and i32 %10, 2047
  %13 = mul nuw nsw i32 %12, 100
  %14 = lshr i32 %13, 11
  %15 = getelementptr inbounds [3 x i32], ptr %3, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %16, 11
  %18 = and i32 %16, 2047
  %19 = mul nuw nsw i32 %18, 100
  %20 = lshr i32 %19, 11
  %21 = call i32 @nr_running() #6
  %22 = load i32, ptr @nr_threads, align 4
  %23 = tail call ptr @llvm.thread.pointer() #6
  %24 = call ptr @task_active_pid_ns(ptr noundef %23) #6
  %25 = getelementptr inbounds %struct.idr, ptr %24, i32 0, i32 2
  %26 = load volatile i32, ptr %25, align 4
  %27 = add i32 %26, -1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %5, i32 noundef %8, i32 noundef %11, i32 noundef %14, i32 noundef %17, i32 noundef %20, i32 noundef %21, i32 noundef %22, i32 noundef %27) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_avenrun(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_running() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }

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
